unit ClienteFormas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, XMLDoc, XMLIntf, MSXML, Xml.xmldom,
  OpenSSLUtils, Facturacion.OpenSSL, WSCancelacion40Service, Soap.InvokeRegistry, Soap.SOAPHTTPClient, SOAPHTTPTrans, IOUtils;

type
  TForm1 = class(TForm)
    cancelBtn: TButton;
    responseMemo: TMemo;
    xmlFileLbl: TLabel;
    fileXMLtxt: TEdit;
    xmlBtn: TButton;
    cerLbl: TLabel;
    cerTxt: TEdit;
    cerBtn: TButton;
    keyLbl: TLabel;
    keyTxt: TEdit;
    keyBtn: TButton;
    resonseLbl: TLabel;
    _header: TLabel;
    pswLbl: TLabel;
    passwordTxt: TEdit;
    motivoLbl: TLabel;
    motivoSelect: TComboBox;
    folioSustitucionLbl: TLabel;
    folioSustitucionTxt: TEdit;
    rfcLbl: TLabel;
    rfcEmisorXML: TLabel;
    uuidLbl: TLabel;
    uuidXML: TLabel;
    showPswBtn: TButton;
    validateCSDBtn: TButton;
    procedure cancelBtnClick(Sender: TObject);
    procedure xmlBtnClick(Sender: TObject);
    procedure motivoSelectChange(Sender: TObject);
    procedure cerBtnClick(Sender: TObject);
    procedure keyBtnClick(Sender: TObject);
    procedure showPswBtnClick(Sender: TObject);
    procedure validateCSDBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  openDialog : topendialog;
  Form1: TForm1;
  ready : boolean;
const
  USUARIO_WS : string = 'pruebasWS';   // USUARIO    DE SERVICIO FD
  PASSWORD_WS : string = 'pruebasWS';  // CONTRASEÑA DE SERVICIO FD
  sLineBreak = {$IFDEF LINUX} AnsiChar(#10) {$ENDIF}
               {$IFDEF MSWINDOWS} AnsiString(#13#10) {$ENDIF};

implementation

{$R *.dfm}
// Funcion para obtener el motivo de cancelacion
function GetMotivoCancelacion() : string;
var idx: integer;
begin
  idx := Form1.motivoSelect.ItemIndex;
  case idx of
   0 : begin
          Result := '01';
       end;
   1 : begin
          Result := '02';
       end;
   2 : begin
          Result := '03';
       end;
   3 : begin
          Result := '04';
       end;
   end
end;

// Funcion para enviar datos de cancelacion al WS
function CancelarCfdi(const rfcEmisor: string; const uuid :string; const cerPath : string;
                      const keyPath : string; const password : string ) : string;
  var
    cancelacionWS : WSCancelacion40;
    auth : accesos;
    folios : Array_Of_wsFolios40;
    folios_demo : wsFolios40;
    folio : wsFolio;
    fecha : TDateTime;
    fechaStr : string;
    response : wsCancelacionResponse;
    cerBytes : TBytes;
    keyBytes : TBytes;
begin
  // Modificar como sea necesario para indicar la fecha deseada de cancelacion
  fecha := Now;
  fechaStr := FormatDateTime('yyyy-mm-dd hh:nn:ss', fecha);
  fechaStr := fechaStr.Replace(' ', 'T');
  // Accesos para ambiente entorno de pruebas (modificar)
  auth := accesos.Create;
  auth.password := USUARIO_WS;
  auth.usuario := PASSWORD_WS;
  // Folios
  folio  := wsFolio.Create;
  folio.uuid := Form1.uuidXML.Caption;
  folio.motivo := GetMotivoCancelacion();
  if folio.motivo = '01' then
    begin
      if Trim(Form1.folioSustitucionTxt.Text) = '' then
        begin
          ShowMessage('Capture el folio de sustitución.');
          Exit;
        end
    end;
  folios_demo := wsFolios40.Create;
  folios_demo.folio := folio;
  folios := [folios_demo];
  // Obtener valor de los archivos de CSD
  cerBytes := TFile.ReadAllBytes(cerPath);  // read cer file as byte[]
  keyBytes := TFile.ReadAllBytes(keyPath);  // read key file as byte[]
  // Enviar la informacion al WS de Cancelacion
  cancelacionWS := GetWSCancelacion40(False, '', nil);
  // Metodo Cancelacion_1
  response := cancelacionWS.Cancelacion40_1(rfcEmisor, fechaStr, folios, TByteSOAPArray(cerBytes),TByteSOAPArray(keyBytes), password, auth);
  if response <> nil then
    begin
        // Si el acuse del response no está vacio lo retornamos
        if response.acuse <> '' then
          begin
             Result := response.acuse
          end
        // Si el acuse se encuentra vacío retornamos el código de respuesta y el mensaje
        else
          begin
              Result := response.codEstatus + ' - ' + response.mensaje;
          end
    end
    else
      Result := 'No fue posible conectarse al WS de Cancelación';
end;

// Funcion para encontrar nodo hijo por nombre
function FindChildByName(ANode: IDOMNode; const AChildName: string): IDOMNode;
var
  I: Integer;
  ChildNode: IDOMNode;
begin
  Result := nil; // Valor default del result
  if ANode <> nil then
  begin
    for I := 0 to ANode.ChildNodes.length - 1 do
    begin
      ChildNode := ANode.ChildNodes[I];
      if ChildNode.NodeName = AChildName then
      begin
        Result := ChildNode; // Se encuentra y retorna el nodo hijo
        Exit; // Termina el ciclo
      end;
    end;
  end;
end;

// Procedure para obtener RFC de Emisor y UUID desde el XML cargado
procedure getEmisorUUID(const xmlPath : string);
  var
  document : IXMLDocument;
  comprobanteNode : IDOMNode;
  emisorNode : IDOMNode;
  complementoNode : IDOMNode;
  timbrefiscalNode : IDOMNode;
  version, rfc, uuid : string;
begin
  try
  document := LoadXMLDocument(xmlPath); // Se carga el documento seleccionado desde el form
  comprobanteNode := document.DOMDocument.getElementsByTagName('cfdi:Comprobante').item[0];
  // Se valida si existe el nodo Comprobante
  if comprobanteNode <> nil then
    begin
      version := comprobanteNode.attributes.getNamedItem('Version').nodeValue;
      if version = '4.0' then
       begin
          emisorNode := FindChildByName(comprobanteNode, 'cfdi:Emisor');
          // Se valida si existe el nodo  Emisor
          if emisorNode <> nil then
           begin
            rfc := emisorNode.attributes.getNamedItem('Rfc').nodeValue; // Se obtiene el RFC del nodo Emisor
            Form1.rfcEmisorXML.Caption := rfc;
            complementoNode := FindChildByName(comprobanteNode, 'cfdi:Complemento');
            // Se valida si existe el nodo Complemento
            if complementoNode <> nil then
            begin
              timbrefiscalNode := FindChildByName(complementoNode, 'tfd:TimbreFiscalDigital');
              // Se valida si existe el nodo TimbreFiscalDigital
              if timbrefiscalNode <> nil then
                begin
                  uuid := timbrefiscalNode.attributes.getNamedItem('UUID').nodeValue; // Se obtiene el UUID del nodo TimbreFiscalDigital
                  Form1.uuidXML.Caption := uuid;
                  Form1.cancelBtn.Enabled := True;
                end
              else
                // Si no existe el nodo se notifica al usuario
                ShowMessage('Nodo "TimbreFiscalDigital" no encontrado');
            end
            else
              // Si no existe el nodo se notifica al usuario
              ShowMessage('Nodo "Complemento" no encontrado');
           end
          else
            // Si no existe el nodo se notifica al usuario
            ShowMessage('Nodo "Emisor" no encontrado');
       end
      else
        // Si no existe el nodo se notifica al usuario
        ShowMessage('El documento no es un CFDI version 4.0');
    end
  else
      // Si no existe el nodo se notifica al usuario
      ShowMessage('El documento no es de tipo CFDI');
  finally
    document := nil; // Se libera el documento
  end;
end;

// Procedure onChange motivoCancelacion habilita o deshabilita folio sustitucion
procedure TForm1.motivoSelectChange(Sender: TObject);
var
  idx : integer;
begin
  idx := motivoSelect.ItemIndex;
  if idx <> 0 then
    begin
      Form1.folioSustitucionLbl.Visible := False;
      Form1.folioSustitucionTxt.Visible := False;
      Form1.folioSustitucionTxt.Clear;
    end
  else
    begin
      Form1.folioSustitucionLbl.Visible := True;
      Form1.folioSustitucionTxt.Visible := True;
    end
end;

// Procedure para mostrar / ocultar contraseña
procedure TForm1.showPswBtnClick(Sender: TObject);
begin
  if (Form1.passwordTxt.PasswordChar <> #0) then
    begin
      Form1.passwordTxt.PasswordChar := #0;
      showPswBtn.Caption := 'Ocultar contraseña';
    end
  else
    begin
      Form1.passwordTxt.PasswordChar := '*';
      showPswBtn.Caption := 'Mostrar contraseña';
    end
end;

// Validate inputs
function validateInputs : boolean;
var
  continue : boolean;
begin
  continue := False;
  if Trim(Form1.cerTxt.Text) <> '' then
    begin
      if Trim(Form1.keyTxt.Text) <> '' then
        begin
          if Trim(Form1.passwordTxt.Text) <> '' then
            continue := True
          else
            ShowMessage('No ha capturado la contraseña del CSD');
        end
      else
        ShowMessage('No ha seleccionado el archivo "key"');
    end // end key file
  else
    ShowMessage('No ha seleccionado el archivo "cer"');
  // result validation
  Result := continue;
end;

// Procedure para Validar CSD
procedure TForm1.validateCSDBtnClick(Sender: TObject);
var
  fInstanciaOpenSSL: IOpenSSL;
begin
    if validateInputs then
     begin
        fInstanciaOpenSSL := TOpenSSL.Create;
      if (fInstanciaOpenSSL.SonPareja(Form1.cerTxt.Text, Form1.keyTxt.Text, Form1.passwordTxt.Text)) then
        ShowMessage('Son correctos')
      else
        ShowMessage(fInstanciaOpenSSL.SonPareja(Form1.cerTxt.Text, Form1.keyTxt.Text, Form1.passwordTxt.Text).ToString())
     end
end;

// Elegir archivo XML
procedure TForm1.xmlBtnClick(Sender: TObject);
begin
   openDialog := TOpenDialog.Create(self);
   openDialog.InitialDir:= GetCurrentDir;
   openDialog.Options:= [ofFileMustExist];
   openDialog.Filter:= 'XML files|*.xml';
   openDialog.FilterIndex:=1;
   if openDialog.Execute then
      begin
       fileXMLtxt.Text := openDialog.FileName;
       getEmisorUUID(fileXMLtxt.Text);
      end
   else
   openDialog.Free;
end;

// Elegir archivo Cer
procedure TForm1.cerBtnClick(Sender: TObject);
begin
   openDialog := TOpenDialog.Create(self);
   openDialog.InitialDir:= GetCurrentDir;
   openDialog.Options:= [ofFileMustExist];
   openDialog.Filter:= 'Certificate files|*.cer| Pem files| *.pem';
   openDialog.FilterIndex:=1;
   if openDialog.Execute then
      begin
       cerTxt.Text := openDialog.FileName;
      end
   else
   openDialog.Free;
end;

// Elegir archivo Key
procedure TForm1.keyBtnClick(Sender: TObject);
begin
   openDialog := TOpenDialog.Create(self);
   openDialog.InitialDir := GetCurrentDir;
   openDialog.Options := [ofFileMustExist];
   openDialog.Filter := 'Key files|*.key';
   openDialog.FilterIndex := 1;
   if openDialog.Execute then
      begin
       keyTxt.Text := openDialog.FileName;
      end
   else
   openDialog.Free;
end;

// Procedure para cancelar el CFDI (event onClick)
procedure TForm1.cancelBtnClick(Sender: TObject);
var
  rfcEmisor, uuid, cerPath, keyPath, password : string;
begin
  rfcEmisor := '';  uuid := ''; cerPath := ''; keyPath:= ''; password:= '';
  // Rfc emisor
  rfcEmisor := rfcEmisorXML.Caption;
  // UUID
  uuid := uuidXML.Caption;
  // Ruta archivo .cer
  cerpath := cerTxt.Text;
  // Ruta archivo key
  keyPath := keyTxt.Text;
  // Password llave privada CSD
  password := passwordTxt.Text;
  // Se llama funcion para cancelar CFDI
  responseMemo.Lines.Text := CancelarCfdi(rfcEmisor, uuid, cerPath, keyPath, password);
end;

end.
