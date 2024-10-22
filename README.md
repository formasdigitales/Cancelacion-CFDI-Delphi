
# Cancelación CFDI Delphi

Proyecto de Cancelación CFDI 

## Requerimientos

* Delphi 12 Community Edition https://www.embarcadero.com/products/delphi/starter
* Certificados CSD (.CER y .KEY)
* Contraseña de certificados
* Archivo XML a cancelar

El archivo ClienteFormas.pas se encuentra todo el código para la cancelación del CFDI y ClienteFormas.dfm es el archivo en donde se encuentra la interfaz del proyecto.

```Delphi
function GetMotivoCancelacion() : string;
```
Es la función que permite obtener el motivo de cancelación que permite el SAT.

```Delphi
function CancelarCfdi(const rfcEmisor: string; const uuid :string; const cerPath : string;
                      const keyPath : string; const password : string ) : string;
```
Es la función principal la cual permitira realizar la cancelación, la función realiza conexión al WS y envia los datos que requiere el WS.

```Delphi
procedure getEmisorUUID(const xmlPath : string);
```
Permite obtener el RFC del emisor del XML cargado y el UUID del mismo.

```Delphi
procedure TForm1.motivoSelectChange(Sender: TObject);
```
Permite habilitar o deshabilitar el input de folio de sustitución este es requerido unicamente cuando el motivo de cancelación es 01

```Delphi
procedure TForm1.showPswBtnClick(Sender: TObject);
```
Permite mostrar u ocultar la contraseña del CSD

```Delphi
function validateInputs : boolean;
```
Valida los campos necesarios (carga de xml,archivo CER,archivo key y contraseña).

```Delphi
procedure TForm1.xmlBtnClick(Sender: TObject);
```
Permite cargar el XML que se desea cancelar.

```Delphi
procedure TForm1.cerBtnClick(Sender: TObject);

procedure TForm1.keyBtnClick(Sender: TObject);
```
Permite seleccionar el archivo CER y KEY 

```Delphi
procedure TForm1.cancelBtnClick(Sender: TObject);
```
Permite iniciar el proceso de cancelación con los datos capturados.

Si los datos capturados fueron correctos y el servicio del SAT esta funcionando correctamente deberia responder con un codigo 201 que significa que la petición fue aceptada por el SAT.
