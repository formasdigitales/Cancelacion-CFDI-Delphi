object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cliente Cancelacion :: Formas Digitales'
  ClientHeight = 679
  ClientWidth = 520
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clGrayText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object xmlFileLbl: TLabel
    Left = 16
    Top = 108
    Width = 68
    Height = 15
    Caption = 'Archivo XML'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object cerLbl: TLabel
    Left = 16
    Top = 172
    Width = 132
    Height = 15
    Caption = 'Archivo Certificado (.cer)'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object keyLbl: TLabel
    Left = 16
    Top = 236
    Width = 145
    Height = 15
    Caption = 'Archivo Llave Privada (.key)'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object resonseLbl: TLabel
    Left = 16
    Top = 487
    Width = 50
    Height = 15
    Caption = 'Response'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object _header: TLabel
    Left = 16
    Top = 12
    Width = 105
    Height = 21
    Caption = 'Cancelar CFDI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pswLbl: TLabel
    Left = 16
    Top = 300
    Width = 148
    Height = 15
    Caption = 'Contrase'#241'a de Llave Privada'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object motivoLbl: TLabel
    Left = 16
    Top = 364
    Width = 122
    Height = 15
    Caption = 'Motivo de Cancelaci'#243'n'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object folioSustitucionLbl: TLabel
    Left = 16
    Top = 428
    Width = 104
    Height = 15
    Caption = 'Folio de Sustituci'#243'n'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object rfcLbl: TLabel
    Left = 16
    Top = 52
    Width = 60
    Height = 15
    Caption = 'RFC Emisor'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object rfcEmisorXML: TLabel
    Left = 16
    Top = 73
    Width = 5
    Height = 15
    Caption = '-'
  end
  object uuidLbl: TLabel
    Left = 224
    Top = 52
    Width = 96
    Height = 15
    Caption = 'UUID (Folio Fiscal)'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object uuidXML: TLabel
    Left = 224
    Top = 73
    Width = 5
    Height = 15
    Caption = '-'
  end
  object cancelBtn: TButton
    Left = 333
    Top = 628
    Width = 173
    Height = 33
    Caption = 'Cancelar CFDI'
    Enabled = False
    TabOrder = 0
    OnClick = cancelBtnClick
  end
  object responseMemo: TMemo
    Left = 16
    Top = 508
    Width = 490
    Height = 105
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object fileXMLtxt: TEdit
    Left = 16
    Top = 129
    Width = 329
    Height = 23
    Enabled = False
    ReadOnly = True
    TabOrder = 2
  end
  object xmlBtn: TButton
    Left = 360
    Top = 128
    Width = 146
    Height = 25
    Caption = 'Seleccionar'
    TabOrder = 3
    OnClick = xmlBtnClick
  end
  object cerTxt: TEdit
    Left = 16
    Top = 193
    Width = 329
    Height = 23
    Enabled = False
    ReadOnly = True
    TabOrder = 4
  end
  object cerBtn: TButton
    Left = 360
    Top = 192
    Width = 146
    Height = 25
    Caption = 'Seleccionar'
    TabOrder = 5
    OnClick = cerBtnClick
  end
  object keyTxt: TEdit
    Left = 16
    Top = 257
    Width = 329
    Height = 23
    Enabled = False
    ReadOnly = True
    TabOrder = 6
  end
  object keyBtn: TButton
    Left = 360
    Top = 256
    Width = 146
    Height = 25
    Caption = 'Seleccionar'
    TabOrder = 7
    OnClick = keyBtnClick
  end
  object passwordTxt: TEdit
    Left = 16
    Top = 321
    Width = 329
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxLength = 50
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 8
  end
  object motivoSelect: TComboBox
    Left = 16
    Top = 385
    Width = 329
    Height = 23
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 9
    Text = '01 - Comprobante emitido con errores con relaci'#243'n'
    OnChange = motivoSelectChange
    Items.Strings = (
      '01 - Comprobante emitido con errores con relaci'#243'n'
      '02 - Comprobante emitido con errores sin relaci'#243'n'
      '03 - No se llev'#243' a cabo la operaci'#243'n'
      '04 - Operaci'#243'n nominativa relacionada en una factura global')
  end
  object folioSustitucionTxt: TEdit
    Left = 16
    Top = 449
    Width = 329
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxLength = 36
    ParentFont = False
    TabOrder = 10
  end
  object showPswBtn: TButton
    Left = 360
    Top = 320
    Width = 65
    Height = 25
    Caption = 'Mostrar'
    TabOrder = 11
    OnClick = showPswBtnClick
  end
  object validateCSDBtn: TButton
    Left = 431
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Validar'
    TabOrder = 12
    OnClick = validateCSDBtnClick
  end
end
