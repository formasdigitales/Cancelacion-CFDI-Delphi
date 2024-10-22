// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://dev33.facturacfdi.mx/WSCancelacion40Service?wsdl
//  >Import : http://dev33.facturacfdi.mx/WSCancelacion40Service?wsdl>0
//  >Import : http://dev33.facturacfdi.mx:80/WSCancelacion40Service?xsd=1
//  >Import : http://dev33.facturacfdi.mx/WSCancelacion40Service?wsdl>1
//  >Import : http://dev33.facturacfdi.mx:80/WSCancelacion40Service?xsd=2
//  >Import : http://dev33.facturacfdi.mx/WSCancelacion40Service?wsdl>2
//  >Import : http://dev33.facturacfdi.mx:80/WSCancelacion40Service?xsd=3
// Encoding : UTF-8
// Version  : 1.0
// (17/10/2024 04:31:47 p. m. - - $Rev: 116709 $)
// ************************************************************************ //

unit WSCancelacion40Service;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;
  IS_ATTR = $0010;
  IS_TEXT = $0020;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:schema          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:ID              - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:anyURI          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  wsFolios40           = class;                 { "http://wservicios/"[GblCplx] }
  accesos              = class;                 { "http://wservicios/"[GblCplx] }
  folio                = class;                 { "http://wservicios/"[GblCplx] }
  wsFolio              = class;                 { "http://wservicios/"[GblCplx] }
  wsCancelacionResponse = class;                { "http://wservicios/"[GblCplx] }
  RSAKeyValueType      = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  RSAKeyValue          = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  SignedInfoType       = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  SignedInfo           = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  SignatureValueType   = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  SignatureValue       = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  SignatureType        = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  DigestMethodType     = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  TransformType        = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  Transform            = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  ReferenceType        = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  CanonicalizationMethodType = class;           { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  ObjectType           = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  DigestMethod         = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  CanonicalizationMethod = class;               { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  DSAKeyValueType      = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  DSAKeyValue          = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  RetrievalMethodType  = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  Signature            = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  Reference            = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  Object_              = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  X509IssuerSerialType = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  SignatureMethodType  = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  SignatureMethod      = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  PGPDataType          = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  PGPData              = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  X509DataType         = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  RetrievalMethod      = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  KeyInfoType          = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  KeyInfo              = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  X509Data             = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }

  Array_Of_X509Data = array of X509Data;        { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }
  Array_Of_RetrievalMethod = array of RetrievalMethod;   { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }
  Array_Of_wsFolios40 = array of wsFolios40;    { "http://wservicios/"[GblUbnd] }
  Array_Of_X509IssuerSerialType = array of X509IssuerSerialType;   { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }
  Array_Of_ReferenceType = array of ReferenceType;   { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }
  Array_Of_ObjectType = array of ObjectType;    { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }
  wsFoliosResponse = array of folio;            { "http://wservicios/"[GblCplx] }
  Array_Of_PGPData = array of PGPData;          { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }


  // ************************************************************************ //
  // XML       : wsFolios40, global, <complexType>
  // Namespace : http://wservicios/
  // ************************************************************************ //
  wsFolios40 = class(TRemotable)
  private
    Ffolio: wsFolio;
    Ffolio_Specified: boolean;
    procedure Setfolio(Index: Integer; const AwsFolio: wsFolio);
    function  folio_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property folio: wsFolio  Index (IS_OPTN or IS_UNQL) read Ffolio write Setfolio stored folio_Specified;
  end;



  // ************************************************************************ //
  // XML       : accesos, global, <complexType>
  // Namespace : http://wservicios/
  // ************************************************************************ //
  accesos = class(TRemotable)
  private
    Fpassword: string;
    Fpassword_Specified: boolean;
    Fusuario: string;
    Fusuario_Specified: boolean;
    procedure Setpassword(Index: Integer; const Astring: string);
    function  password_Specified(Index: Integer): boolean;
    procedure Setusuario(Index: Integer; const Astring: string);
    function  usuario_Specified(Index: Integer): boolean;
  published
    property password: string  Index (IS_OPTN or IS_UNQL) read Fpassword write Setpassword stored password_Specified;
    property usuario:  string  Index (IS_OPTN or IS_UNQL) read Fusuario write Setusuario stored usuario_Specified;
  end;



  // ************************************************************************ //
  // XML       : folio, global, <complexType>
  // Namespace : http://wservicios/
  // ************************************************************************ //
  folio = class(TRemotable)
  private
    FestatusUUID: string;
    FestatusUUID_Specified: boolean;
    Fmensaje: string;
    Fmensaje_Specified: boolean;
    Fuuid: string;
    Fuuid_Specified: boolean;
    procedure SetestatusUUID(Index: Integer; const Astring: string);
    function  estatusUUID_Specified(Index: Integer): boolean;
    procedure Setmensaje(Index: Integer; const Astring: string);
    function  mensaje_Specified(Index: Integer): boolean;
    procedure Setuuid(Index: Integer; const Astring: string);
    function  uuid_Specified(Index: Integer): boolean;
  published
    property estatusUUID: string  Index (IS_OPTN or IS_UNQL) read FestatusUUID write SetestatusUUID stored estatusUUID_Specified;
    property mensaje:     string  Index (IS_OPTN or IS_UNQL) read Fmensaje write Setmensaje stored mensaje_Specified;
    property uuid:        string  Index (IS_OPTN or IS_UNQL) read Fuuid write Setuuid stored uuid_Specified;
  end;



  // ************************************************************************ //
  // XML       : wsFolio, global, <complexType>
  // Namespace : http://wservicios/
  // ************************************************************************ //
  wsFolio = class(TRemotable)
  private
    FfolioSustitucion: string;
    FfolioSustitucion_Specified: boolean;
    Fmotivo: string;
    Fmotivo_Specified: boolean;
    Fuuid: string;
    Fuuid_Specified: boolean;
    procedure SetfolioSustitucion(Index: Integer; const Astring: string);
    function  folioSustitucion_Specified(Index: Integer): boolean;
    procedure Setmotivo(Index: Integer; const Astring: string);
    function  motivo_Specified(Index: Integer): boolean;
    procedure Setuuid(Index: Integer; const Astring: string);
    function  uuid_Specified(Index: Integer): boolean;
  published
    property folioSustitucion: string  Index (IS_OPTN or IS_UNQL) read FfolioSustitucion write SetfolioSustitucion stored folioSustitucion_Specified;
    property motivo:           string  Index (IS_OPTN or IS_UNQL) read Fmotivo write Setmotivo stored motivo_Specified;
    property uuid:             string  Index (IS_OPTN or IS_UNQL) read Fuuid write Setuuid stored uuid_Specified;
  end;



  // ************************************************************************ //
  // XML       : wsCancelacionResponse, global, <complexType>
  // Namespace : http://wservicios/
  // ************************************************************************ //
  wsCancelacionResponse = class(TRemotable)
  private
    Facuse: string;
    Facuse_Specified: boolean;
    FcodEstatus: string;
    FcodEstatus_Specified: boolean;
    Ffolios: wsFoliosResponse;
    Ffolios_Specified: boolean;
    Fmensaje: string;
    Fmensaje_Specified: boolean;
    procedure Setacuse(Index: Integer; const Astring: string);
    function  acuse_Specified(Index: Integer): boolean;
    procedure SetcodEstatus(Index: Integer; const Astring: string);
    function  codEstatus_Specified(Index: Integer): boolean;
    procedure Setfolios(Index: Integer; const AwsFoliosResponse: wsFoliosResponse);
    function  folios_Specified(Index: Integer): boolean;
    procedure Setmensaje(Index: Integer; const Astring: string);
    function  mensaje_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property acuse:      string            Index (IS_OPTN or IS_UNQL) read Facuse write Setacuse stored acuse_Specified;
    property codEstatus: string            Index (IS_OPTN or IS_UNQL) read FcodEstatus write SetcodEstatus stored codEstatus_Specified;
    property folios:     wsFoliosResponse  Index (IS_OPTN or IS_UNQL) read Ffolios write Setfolios stored folios_Specified;
    property mensaje:    string            Index (IS_OPTN or IS_UNQL) read Fmensaje write Setmensaje stored mensaje_Specified;
  end;

  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }
  TransformsType = array of TransformType;      { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }


  // ************************************************************************ //
  // XML       : RSAKeyValueType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  RSAKeyValueType = class(TRemotable)
  private
    FModulus: TByteSOAPArray;
    FExponent: TByteSOAPArray;
  published
    property Modulus:  TByteSOAPArray  read FModulus write FModulus;
    property Exponent: TByteSOAPArray  read FExponent write FExponent;
  end;



  // ************************************************************************ //
  // XML       : RSAKeyValue, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  RSAKeyValue = class(RSAKeyValueType)
  private
  published
  end;


  { ================== WARNING ================== }
  { WARNING - Attribute - Name:RSAKeyValue, Type:RSAKeyValue }
  { WARNING - Attribute - Name:DSAKeyValue, Type:DSAKeyValue }
  KeyValueType    = TXMLData;       { "http://www.w3.org/2000/09/xmldsig#"[GblCplxMxd] }



  // ************************************************************************ //
  // XML       : SignedInfoType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignedInfoType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FCanonicalizationMethod: CanonicalizationMethodType;
    FSignatureMethod: SignatureMethodType;
    FReference: Array_Of_ReferenceType;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:                     string                      Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
    property CanonicalizationMethod: CanonicalizationMethodType  read FCanonicalizationMethod write FCanonicalizationMethod;
    property SignatureMethod:        SignatureMethodType         read FSignatureMethod write FSignatureMethod;
    property Reference:              Array_Of_ReferenceType      Index (IS_UNBD) read FReference write FReference;
  end;



  // ************************************************************************ //
  // XML       : SignedInfo, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignedInfo = class(SignedInfoType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SignatureValueType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignatureValueType = class(TRemotable)
  private
    FText: TByteSOAPArray;
    FId: string;
    FId_Specified: boolean;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
  published
    property Text: TByteSOAPArray  Index (IS_TEXT) read FText write FText;
    property Id:   string          Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
  end;



  // ************************************************************************ //
  // XML       : SignatureValue, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignatureValue = class(SignatureValueType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SignatureType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignatureType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FSignedInfo: SignedInfoType;
    FSignatureValue: SignatureValueType;
    FKeyInfo: KeyInfoType;
    FKeyInfo_Specified: boolean;
    FObject_: Array_Of_ObjectType;
    FObject__Specified: boolean;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    procedure SetKeyInfo(Index: Integer; const AKeyInfoType: KeyInfoType);
    function  KeyInfo_Specified(Index: Integer): boolean;
    procedure SetObject_(Index: Integer; const AArray_Of_ObjectType: Array_Of_ObjectType);
    function  Object__Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:             string               Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
    property SignedInfo:     SignedInfoType       read FSignedInfo write FSignedInfo;
    property SignatureValue: SignatureValueType   read FSignatureValue write FSignatureValue;
    property KeyInfo:        KeyInfoType          Index (IS_OPTN) read FKeyInfo write SetKeyInfo stored KeyInfo_Specified;
    property Object_:        Array_Of_ObjectType  Index (IS_OPTN or IS_UNBD) read FObject_ write SetObject_ stored Object__Specified;
  end;



  // ************************************************************************ //
  // XML       : DigestMethodType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  DigestMethodType = class(TRemotable)
  private
    FAlgorithm: string;
  published
    property Algorithm: string  Index (IS_ATTR) read FAlgorithm write FAlgorithm;
  end;



  // ************************************************************************ //
  // XML       : TransformType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  TransformType = class(TRemotable)
  private
    FAlgorithm: string;
    FXPath: Array_Of_string;
    FXPath_Specified: boolean;
    procedure SetXPath(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  XPath_Specified(Index: Integer): boolean;
  published
    property Algorithm: string           Index (IS_ATTR) read FAlgorithm write FAlgorithm;
    property XPath:     Array_Of_string  Index (IS_OPTN or IS_UNBD) read FXPath write SetXPath stored XPath_Specified;
  end;



  // ************************************************************************ //
  // XML       : Transform, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  Transform = class(TransformType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ReferenceType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  ReferenceType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FURI: string;
    FURI_Specified: boolean;
    FType_: string;
    FType__Specified: boolean;
    FTransforms: TransformsType;
    FTransforms_Specified: boolean;
    FDigestMethod: DigestMethodType;
    FDigestValue: TByteSOAPArray;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    procedure SetURI(Index: Integer; const Astring: string);
    function  URI_Specified(Index: Integer): boolean;
    procedure SetType_(Index: Integer; const Astring: string);
    function  Type__Specified(Index: Integer): boolean;
    procedure SetTransforms(Index: Integer; const ATransformsType: TransformsType);
    function  Transforms_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:           string            Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
    property URI:          string            Index (IS_ATTR or IS_OPTN) read FURI write SetURI stored URI_Specified;
    property Type_:        string            Index (IS_ATTR or IS_OPTN) read FType_ write SetType_ stored Type__Specified;
    property Transforms:   TransformsType    Index (IS_OPTN) read FTransforms write SetTransforms stored Transforms_Specified;
    property DigestMethod: DigestMethodType  read FDigestMethod write FDigestMethod;
    property DigestValue:  TByteSOAPArray    read FDigestValue write FDigestValue;
  end;



  // ************************************************************************ //
  // XML       : CanonicalizationMethodType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  CanonicalizationMethodType = class(TRemotable)
  private
    FAlgorithm: string;
  published
    property Algorithm: string  Index (IS_ATTR) read FAlgorithm write FAlgorithm;
  end;



  // ************************************************************************ //
  // XML       : ObjectType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  ObjectType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FMimeType: string;
    FMimeType_Specified: boolean;
    FEncoding: string;
    FEncoding_Specified: boolean;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    procedure SetMimeType(Index: Integer; const Astring: string);
    function  MimeType_Specified(Index: Integer): boolean;
    procedure SetEncoding(Index: Integer; const Astring: string);
    function  Encoding_Specified(Index: Integer): boolean;
  published
    property Id:       string  Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
    property MimeType: string  Index (IS_ATTR or IS_OPTN) read FMimeType write SetMimeType stored MimeType_Specified;
    property Encoding: string  Index (IS_ATTR or IS_OPTN) read FEncoding write SetEncoding stored Encoding_Specified;
  end;



  // ************************************************************************ //
  // XML       : DigestMethod, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  DigestMethod = class(DigestMethodType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : CanonicalizationMethod, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  CanonicalizationMethod = class(CanonicalizationMethodType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DSAKeyValueType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  DSAKeyValueType = class(TRemotable)
  private
    FP: TByteSOAPArray;
    FP_Specified: boolean;
    FQ: TByteSOAPArray;
    FQ_Specified: boolean;
    FG: TByteSOAPArray;
    FG_Specified: boolean;
    FY: TByteSOAPArray;
    FJ: TByteSOAPArray;
    FJ_Specified: boolean;
    FSeed: TByteSOAPArray;
    FSeed_Specified: boolean;
    FPgenCounter: TByteSOAPArray;
    FPgenCounter_Specified: boolean;
    procedure SetP(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
    function  P_Specified(Index: Integer): boolean;
    procedure SetQ(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
    function  Q_Specified(Index: Integer): boolean;
    procedure SetG(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
    function  G_Specified(Index: Integer): boolean;
    procedure SetJ(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
    function  J_Specified(Index: Integer): boolean;
    procedure SetSeed(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
    function  Seed_Specified(Index: Integer): boolean;
    procedure SetPgenCounter(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
    function  PgenCounter_Specified(Index: Integer): boolean;
  published
    property P:           TByteSOAPArray  Index (IS_OPTN) read FP write SetP stored P_Specified;
    property Q:           TByteSOAPArray  Index (IS_OPTN) read FQ write SetQ stored Q_Specified;
    property G:           TByteSOAPArray  Index (IS_OPTN) read FG write SetG stored G_Specified;
    property Y:           TByteSOAPArray  read FY write FY;
    property J:           TByteSOAPArray  Index (IS_OPTN) read FJ write SetJ stored J_Specified;
    property Seed:        TByteSOAPArray  Index (IS_OPTN) read FSeed write SetSeed stored Seed_Specified;
    property PgenCounter: TByteSOAPArray  Index (IS_OPTN) read FPgenCounter write SetPgenCounter stored PgenCounter_Specified;
  end;



  // ************************************************************************ //
  // XML       : DSAKeyValue, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  DSAKeyValue = class(DSAKeyValueType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : RetrievalMethodType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  RetrievalMethodType = class(TRemotable)
  private
    FURI: string;
    FURI_Specified: boolean;
    FType_: string;
    FType__Specified: boolean;
    FTransforms: TransformsType;
    FTransforms_Specified: boolean;
    procedure SetURI(Index: Integer; const Astring: string);
    function  URI_Specified(Index: Integer): boolean;
    procedure SetType_(Index: Integer; const Astring: string);
    function  Type__Specified(Index: Integer): boolean;
    procedure SetTransforms(Index: Integer; const ATransformsType: TransformsType);
    function  Transforms_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property URI:        string          Index (IS_ATTR or IS_OPTN) read FURI write SetURI stored URI_Specified;
    property Type_:      string          Index (IS_ATTR or IS_OPTN) read FType_ write SetType_ stored Type__Specified;
    property Transforms: TransformsType  Index (IS_OPTN) read FTransforms write SetTransforms stored Transforms_Specified;
  end;



  // ************************************************************************ //
  // XML       : Signature, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  Signature = class(SignatureType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Reference, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  Reference = class(ReferenceType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Object, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  Object_ = class(ObjectType)
  private
  published
  end;

  MgmtData        =  type string;      { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  Array_Of_MgmtData = array of MgmtData;        { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }
  KeyName         =  type string;      { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  Array_Of_KeyName = array of KeyName;          { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }
  KeyValue        = KeyValueType;      { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  Array_Of_KeyValue = array of KeyValue;        { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }


  // ************************************************************************ //
  // XML       : X509IssuerSerialType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  X509IssuerSerialType = class(TRemotable)
  private
    FX509IssuerName: string;
    FX509SerialNumber: Int64;
  published
    property X509IssuerName:   string  read FX509IssuerName write FX509IssuerName;
    property X509SerialNumber: Int64   read FX509SerialNumber write FX509SerialNumber;
  end;

  Array_Of_integer = array of Int64;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : SignatureMethodType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignatureMethodType = class(TRemotable)
  private
    FAlgorithm: string;
    FHMACOutputLength: Array_Of_integer;
    FHMACOutputLength_Specified: boolean;
    procedure SetHMACOutputLength(Index: Integer; const AArray_Of_integer: Array_Of_integer);
    function  HMACOutputLength_Specified(Index: Integer): boolean;
  published
    property Algorithm:        string            Index (IS_ATTR) read FAlgorithm write FAlgorithm;
    property HMACOutputLength: Array_Of_integer  Index (IS_OPTN or IS_UNBD) read FHMACOutputLength write SetHMACOutputLength stored HMACOutputLength_Specified;
  end;



  // ************************************************************************ //
  // XML       : SignatureMethod, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignatureMethod = class(SignatureMethodType)
  private
  published
  end;

  SPKIDataType = array of TByteSOAPArray;       { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }


  // ************************************************************************ //
  // XML       : PGPDataType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  PGPDataType = class(TRemotable)
  private
    FPGPKeyID: SPKIDataType;
    FPGPKeyID_Specified: boolean;
    FPGPKeyPacket: SPKIDataType;
    FPGPKeyPacket_Specified: boolean;
    procedure SetPGPKeyID(Index: Integer; const ASPKIDataType: SPKIDataType);
    function  PGPKeyID_Specified(Index: Integer): boolean;
    procedure SetPGPKeyPacket(Index: Integer; const ASPKIDataType: SPKIDataType);
    function  PGPKeyPacket_Specified(Index: Integer): boolean;
  published
    property PGPKeyID:     SPKIDataType  Index (IS_OPTN or IS_UNBD) read FPGPKeyID write SetPGPKeyID stored PGPKeyID_Specified;
    property PGPKeyPacket: SPKIDataType  Index (IS_OPTN or IS_UNBD) read FPGPKeyPacket write SetPGPKeyPacket stored PGPKeyPacket_Specified;
  end;



  // ************************************************************************ //
  // XML       : PGPData, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  PGPData = class(PGPDataType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : X509DataType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  X509DataType = class(TRemotable)
  private
    FX509Certificate: SPKIDataType;
    FX509Certificate_Specified: boolean;
    FX509SubjectName: Array_Of_string;
    FX509SubjectName_Specified: boolean;
    FX509CRL: SPKIDataType;
    FX509CRL_Specified: boolean;
    FX509SKI: SPKIDataType;
    FX509SKI_Specified: boolean;
    FX509IssuerSerial: Array_Of_X509IssuerSerialType;
    FX509IssuerSerial_Specified: boolean;
    procedure SetX509Certificate(Index: Integer; const ASPKIDataType: SPKIDataType);
    function  X509Certificate_Specified(Index: Integer): boolean;
    procedure SetX509SubjectName(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  X509SubjectName_Specified(Index: Integer): boolean;
    procedure SetX509CRL(Index: Integer; const ASPKIDataType: SPKIDataType);
    function  X509CRL_Specified(Index: Integer): boolean;
    procedure SetX509SKI(Index: Integer; const ASPKIDataType: SPKIDataType);
    function  X509SKI_Specified(Index: Integer): boolean;
    procedure SetX509IssuerSerial(Index: Integer; const AArray_Of_X509IssuerSerialType: Array_Of_X509IssuerSerialType);
    function  X509IssuerSerial_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property X509Certificate:  SPKIDataType                   Index (IS_OPTN or IS_UNBD) read FX509Certificate write SetX509Certificate stored X509Certificate_Specified;
    property X509SubjectName:  Array_Of_string                Index (IS_OPTN or IS_UNBD) read FX509SubjectName write SetX509SubjectName stored X509SubjectName_Specified;
    property X509CRL:          SPKIDataType                   Index (IS_OPTN or IS_UNBD) read FX509CRL write SetX509CRL stored X509CRL_Specified;
    property X509SKI:          SPKIDataType                   Index (IS_OPTN or IS_UNBD) read FX509SKI write SetX509SKI stored X509SKI_Specified;
    property X509IssuerSerial: Array_Of_X509IssuerSerialType  Index (IS_OPTN or IS_UNBD) read FX509IssuerSerial write SetX509IssuerSerial stored X509IssuerSerial_Specified;
  end;



  // ************************************************************************ //
  // XML       : RetrievalMethod, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  RetrievalMethod = class(RetrievalMethodType)
  private
  published
  end;

  SPKIData        =  type SPKIDataType;      { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  Array_Of_SPKIData = array of SPKIData;        { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }


  // ************************************************************************ //
  // XML       : KeyInfoType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  KeyInfoType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FKeyValue: Array_Of_KeyValue;
    FKeyValue_Specified: boolean;
    FKeyName: Array_Of_KeyName;
    FKeyName_Specified: boolean;
    FMgmtData: Array_Of_MgmtData;
    FMgmtData_Specified: boolean;
    FPGPData: Array_Of_PGPData;
    FPGPData_Specified: boolean;
    FX509Data: Array_Of_X509Data;
    FX509Data_Specified: boolean;
    FSPKIData: Array_Of_SPKIData;
    FSPKIData_Specified: boolean;
    FRetrievalMethod: Array_Of_RetrievalMethod;
    FRetrievalMethod_Specified: boolean;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    procedure SetKeyValue(Index: Integer; const AArray_Of_KeyValue: Array_Of_KeyValue);
    function  KeyValue_Specified(Index: Integer): boolean;
    procedure SetKeyName(Index: Integer; const AArray_Of_KeyName: Array_Of_KeyName);
    function  KeyName_Specified(Index: Integer): boolean;
    procedure SetMgmtData(Index: Integer; const AArray_Of_MgmtData: Array_Of_MgmtData);
    function  MgmtData_Specified(Index: Integer): boolean;
    procedure SetPGPData(Index: Integer; const AArray_Of_PGPData: Array_Of_PGPData);
    function  PGPData_Specified(Index: Integer): boolean;
    procedure SetX509Data(Index: Integer; const AArray_Of_X509Data: Array_Of_X509Data);
    function  X509Data_Specified(Index: Integer): boolean;
    procedure SetSPKIData(Index: Integer; const AArray_Of_SPKIData: Array_Of_SPKIData);
    function  SPKIData_Specified(Index: Integer): boolean;
    procedure SetRetrievalMethod(Index: Integer; const AArray_Of_RetrievalMethod: Array_Of_RetrievalMethod);
    function  RetrievalMethod_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:              string                    Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
    property KeyValue:        Array_Of_KeyValue         Index (IS_OPTN or IS_UNBD or IS_REF) read FKeyValue write SetKeyValue stored KeyValue_Specified;
    property KeyName:         Array_Of_KeyName          Index (IS_OPTN or IS_UNBD or IS_REF) read FKeyName write SetKeyName stored KeyName_Specified;
    property MgmtData:        Array_Of_MgmtData         Index (IS_OPTN or IS_UNBD or IS_REF) read FMgmtData write SetMgmtData stored MgmtData_Specified;
    property PGPData:         Array_Of_PGPData          Index (IS_OPTN or IS_UNBD or IS_REF) read FPGPData write SetPGPData stored PGPData_Specified;
    property X509Data:        Array_Of_X509Data         Index (IS_OPTN or IS_UNBD or IS_REF) read FX509Data write SetX509Data stored X509Data_Specified;
    property SPKIData:        Array_Of_SPKIData         Index (IS_OPTN or IS_UNBD or IS_REF) read FSPKIData write SetSPKIData stored SPKIData_Specified;
    property RetrievalMethod: Array_Of_RetrievalMethod  Index (IS_OPTN or IS_UNBD or IS_REF) read FRetrievalMethod write SetRetrievalMethod stored RetrievalMethod_Specified;
  end;



  // ************************************************************************ //
  // XML       : KeyInfo, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  KeyInfo = class(KeyInfoType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : X509Data, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  X509Data = class(X509DataType)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://wservicios/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : WSCancelacion40PortBinding
  // service   : WSCancelacion40Service
  // port      : WSCancelacion40Port
  // URL       : http://dev33.facturacfdi.mx:80/WSCancelacion40Service
  // ************************************************************************ //
  WSCancelacion40 = interface(IInvokable)
  ['{47984454-F1A5-120E-31A6-160C13DBDD2D}']
    function  Cancelacion40_2(const rfcEmisor: string; const fecha: string; const folios: Array_Of_wsFolios40; const signatureType: SignatureType; const accesos: accesos): wsCancelacionResponse; stdcall;
    function  Cancelacion40_1(const rfcEmisor: string; const fecha: string; const folios: Array_Of_wsFolios40; const publicKey: TByteSOAPArray; const privateKey: TByteSOAPArray; const password: string; 
                              const accesos: accesos): wsCancelacionResponse; stdcall;
    function  Cancelacion40_3(const nocertificado: string; const folios: Array_Of_wsFolios40; const accesos: accesos): wsCancelacionResponse; stdcall;
  end;

function GetWSCancelacion40(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): WSCancelacion40;


implementation
  uses System.SysUtils;

function GetWSCancelacion40(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): WSCancelacion40;
const
  defWSDL = 'http://dev33.facturacfdi.mx/WSCancelacion40Service?wsdl';
  defURL  = 'http://dev33.facturacfdi.mx:80/WSCancelacion40Service';
  defSvc  = 'WSCancelacion40Service';
  defPrt  = 'WSCancelacion40Port';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as WSCancelacion40);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor wsFolios40.Destroy;
begin
  System.SysUtils.FreeAndNil(Ffolio);
  inherited Destroy;
end;

procedure wsFolios40.Setfolio(Index: Integer; const AwsFolio: wsFolio);
begin
  Ffolio := AwsFolio;
  Ffolio_Specified := True;
end;

function wsFolios40.folio_Specified(Index: Integer): boolean;
begin
  Result := Ffolio_Specified;
end;

procedure accesos.Setpassword(Index: Integer; const Astring: string);
begin
  Fpassword := Astring;
  Fpassword_Specified := True;
end;

function accesos.password_Specified(Index: Integer): boolean;
begin
  Result := Fpassword_Specified;
end;

procedure accesos.Setusuario(Index: Integer; const Astring: string);
begin
  Fusuario := Astring;
  Fusuario_Specified := True;
end;

function accesos.usuario_Specified(Index: Integer): boolean;
begin
  Result := Fusuario_Specified;
end;

procedure folio.SetestatusUUID(Index: Integer; const Astring: string);
begin
  FestatusUUID := Astring;
  FestatusUUID_Specified := True;
end;

function folio.estatusUUID_Specified(Index: Integer): boolean;
begin
  Result := FestatusUUID_Specified;
end;

procedure folio.Setmensaje(Index: Integer; const Astring: string);
begin
  Fmensaje := Astring;
  Fmensaje_Specified := True;
end;

function folio.mensaje_Specified(Index: Integer): boolean;
begin
  Result := Fmensaje_Specified;
end;

procedure folio.Setuuid(Index: Integer; const Astring: string);
begin
  Fuuid := Astring;
  Fuuid_Specified := True;
end;

function folio.uuid_Specified(Index: Integer): boolean;
begin
  Result := Fuuid_Specified;
end;

procedure wsFolio.SetfolioSustitucion(Index: Integer; const Astring: string);
begin
  FfolioSustitucion := Astring;
  FfolioSustitucion_Specified := True;
end;

function wsFolio.folioSustitucion_Specified(Index: Integer): boolean;
begin
  Result := FfolioSustitucion_Specified;
end;

procedure wsFolio.Setmotivo(Index: Integer; const Astring: string);
begin
  Fmotivo := Astring;
  Fmotivo_Specified := True;
end;

function wsFolio.motivo_Specified(Index: Integer): boolean;
begin
  Result := Fmotivo_Specified;
end;

procedure wsFolio.Setuuid(Index: Integer; const Astring: string);
begin
  Fuuid := Astring;
  Fuuid_Specified := True;
end;

function wsFolio.uuid_Specified(Index: Integer): boolean;
begin
  Result := Fuuid_Specified;
end;

destructor wsCancelacionResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ffolios)-1 do
    System.SysUtils.FreeAndNil(Ffolios[I]);
  System.SetLength(Ffolios, 0);
  inherited Destroy;
end;

procedure wsCancelacionResponse.Setacuse(Index: Integer; const Astring: string);
begin
  Facuse := Astring;
  Facuse_Specified := True;
end;

function wsCancelacionResponse.acuse_Specified(Index: Integer): boolean;
begin
  Result := Facuse_Specified;
end;

procedure wsCancelacionResponse.SetcodEstatus(Index: Integer; const Astring: string);
begin
  FcodEstatus := Astring;
  FcodEstatus_Specified := True;
end;

function wsCancelacionResponse.codEstatus_Specified(Index: Integer): boolean;
begin
  Result := FcodEstatus_Specified;
end;

procedure wsCancelacionResponse.Setfolios(Index: Integer; const AwsFoliosResponse: wsFoliosResponse);
begin
  Ffolios := AwsFoliosResponse;
  Ffolios_Specified := True;
end;

function wsCancelacionResponse.folios_Specified(Index: Integer): boolean;
begin
  Result := Ffolios_Specified;
end;

procedure wsCancelacionResponse.Setmensaje(Index: Integer; const Astring: string);
begin
  Fmensaje := Astring;
  Fmensaje_Specified := True;
end;

function wsCancelacionResponse.mensaje_Specified(Index: Integer): boolean;
begin
  Result := Fmensaje_Specified;
end;

destructor SignedInfoType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FReference)-1 do
    System.SysUtils.FreeAndNil(FReference[I]);
  System.SetLength(FReference, 0);
  System.SysUtils.FreeAndNil(FCanonicalizationMethod);
  System.SysUtils.FreeAndNil(FSignatureMethod);
  inherited Destroy;
end;

procedure SignedInfoType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function SignedInfoType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure SignatureValueType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function SignatureValueType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

destructor SignatureType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FObject_)-1 do
    System.SysUtils.FreeAndNil(FObject_[I]);
  System.SetLength(FObject_, 0);
  System.SysUtils.FreeAndNil(FSignedInfo);
  System.SysUtils.FreeAndNil(FSignatureValue);
  System.SysUtils.FreeAndNil(FKeyInfo);
  inherited Destroy;
end;

procedure SignatureType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function SignatureType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure SignatureType.SetKeyInfo(Index: Integer; const AKeyInfoType: KeyInfoType);
begin
  FKeyInfo := AKeyInfoType;
  FKeyInfo_Specified := True;
end;

function SignatureType.KeyInfo_Specified(Index: Integer): boolean;
begin
  Result := FKeyInfo_Specified;
end;

procedure SignatureType.SetObject_(Index: Integer; const AArray_Of_ObjectType: Array_Of_ObjectType);
begin
  FObject_ := AArray_Of_ObjectType;
  FObject__Specified := True;
end;

function SignatureType.Object__Specified(Index: Integer): boolean;
begin
  Result := FObject__Specified;
end;

procedure TransformType.SetXPath(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FXPath := AArray_Of_string;
  FXPath_Specified := True;
end;

function TransformType.XPath_Specified(Index: Integer): boolean;
begin
  Result := FXPath_Specified;
end;

destructor ReferenceType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTransforms)-1 do
    System.SysUtils.FreeAndNil(FTransforms[I]);
  System.SetLength(FTransforms, 0);
  System.SysUtils.FreeAndNil(FDigestMethod);
  inherited Destroy;
end;

procedure ReferenceType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function ReferenceType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure ReferenceType.SetURI(Index: Integer; const Astring: string);
begin
  FURI := Astring;
  FURI_Specified := True;
end;

function ReferenceType.URI_Specified(Index: Integer): boolean;
begin
  Result := FURI_Specified;
end;

procedure ReferenceType.SetType_(Index: Integer; const Astring: string);
begin
  FType_ := Astring;
  FType__Specified := True;
end;

function ReferenceType.Type__Specified(Index: Integer): boolean;
begin
  Result := FType__Specified;
end;

procedure ReferenceType.SetTransforms(Index: Integer; const ATransformsType: TransformsType);
begin
  FTransforms := ATransformsType;
  FTransforms_Specified := True;
end;

function ReferenceType.Transforms_Specified(Index: Integer): boolean;
begin
  Result := FTransforms_Specified;
end;

procedure ObjectType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function ObjectType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure ObjectType.SetMimeType(Index: Integer; const Astring: string);
begin
  FMimeType := Astring;
  FMimeType_Specified := True;
end;

function ObjectType.MimeType_Specified(Index: Integer): boolean;
begin
  Result := FMimeType_Specified;
end;

procedure ObjectType.SetEncoding(Index: Integer; const Astring: string);
begin
  FEncoding := Astring;
  FEncoding_Specified := True;
end;

function ObjectType.Encoding_Specified(Index: Integer): boolean;
begin
  Result := FEncoding_Specified;
end;

procedure DSAKeyValueType.SetP(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
begin
  FP := ATByteSOAPArray;
  FP_Specified := True;
end;

function DSAKeyValueType.P_Specified(Index: Integer): boolean;
begin
  Result := FP_Specified;
end;

procedure DSAKeyValueType.SetQ(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
begin
  FQ := ATByteSOAPArray;
  FQ_Specified := True;
end;

function DSAKeyValueType.Q_Specified(Index: Integer): boolean;
begin
  Result := FQ_Specified;
end;

procedure DSAKeyValueType.SetG(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
begin
  FG := ATByteSOAPArray;
  FG_Specified := True;
end;

function DSAKeyValueType.G_Specified(Index: Integer): boolean;
begin
  Result := FG_Specified;
end;

procedure DSAKeyValueType.SetJ(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
begin
  FJ := ATByteSOAPArray;
  FJ_Specified := True;
end;

function DSAKeyValueType.J_Specified(Index: Integer): boolean;
begin
  Result := FJ_Specified;
end;

procedure DSAKeyValueType.SetSeed(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
begin
  FSeed := ATByteSOAPArray;
  FSeed_Specified := True;
end;

function DSAKeyValueType.Seed_Specified(Index: Integer): boolean;
begin
  Result := FSeed_Specified;
end;

procedure DSAKeyValueType.SetPgenCounter(Index: Integer; const ATByteSOAPArray: TByteSOAPArray);
begin
  FPgenCounter := ATByteSOAPArray;
  FPgenCounter_Specified := True;
end;

function DSAKeyValueType.PgenCounter_Specified(Index: Integer): boolean;
begin
  Result := FPgenCounter_Specified;
end;

destructor RetrievalMethodType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTransforms)-1 do
    System.SysUtils.FreeAndNil(FTransforms[I]);
  System.SetLength(FTransforms, 0);
  inherited Destroy;
end;

procedure RetrievalMethodType.SetURI(Index: Integer; const Astring: string);
begin
  FURI := Astring;
  FURI_Specified := True;
end;

function RetrievalMethodType.URI_Specified(Index: Integer): boolean;
begin
  Result := FURI_Specified;
end;

procedure RetrievalMethodType.SetType_(Index: Integer; const Astring: string);
begin
  FType_ := Astring;
  FType__Specified := True;
end;

function RetrievalMethodType.Type__Specified(Index: Integer): boolean;
begin
  Result := FType__Specified;
end;

procedure RetrievalMethodType.SetTransforms(Index: Integer; const ATransformsType: TransformsType);
begin
  FTransforms := ATransformsType;
  FTransforms_Specified := True;
end;

function RetrievalMethodType.Transforms_Specified(Index: Integer): boolean;
begin
  Result := FTransforms_Specified;
end;

procedure SignatureMethodType.SetHMACOutputLength(Index: Integer; const AArray_Of_integer: Array_Of_integer);
begin
  FHMACOutputLength := AArray_Of_integer;
  FHMACOutputLength_Specified := True;
end;

function SignatureMethodType.HMACOutputLength_Specified(Index: Integer): boolean;
begin
  Result := FHMACOutputLength_Specified;
end;

procedure PGPDataType.SetPGPKeyID(Index: Integer; const ASPKIDataType: SPKIDataType);
begin
  FPGPKeyID := ASPKIDataType;
  FPGPKeyID_Specified := True;
end;

function PGPDataType.PGPKeyID_Specified(Index: Integer): boolean;
begin
  Result := FPGPKeyID_Specified;
end;

procedure PGPDataType.SetPGPKeyPacket(Index: Integer; const ASPKIDataType: SPKIDataType);
begin
  FPGPKeyPacket := ASPKIDataType;
  FPGPKeyPacket_Specified := True;
end;

function PGPDataType.PGPKeyPacket_Specified(Index: Integer): boolean;
begin
  Result := FPGPKeyPacket_Specified;
end;

destructor X509DataType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FX509IssuerSerial)-1 do
    System.SysUtils.FreeAndNil(FX509IssuerSerial[I]);
  System.SetLength(FX509IssuerSerial, 0);
  inherited Destroy;
end;

procedure X509DataType.SetX509Certificate(Index: Integer; const ASPKIDataType: SPKIDataType);
begin
  FX509Certificate := ASPKIDataType;
  FX509Certificate_Specified := True;
end;

function X509DataType.X509Certificate_Specified(Index: Integer): boolean;
begin
  Result := FX509Certificate_Specified;
end;

procedure X509DataType.SetX509SubjectName(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FX509SubjectName := AArray_Of_string;
  FX509SubjectName_Specified := True;
end;

function X509DataType.X509SubjectName_Specified(Index: Integer): boolean;
begin
  Result := FX509SubjectName_Specified;
end;

procedure X509DataType.SetX509CRL(Index: Integer; const ASPKIDataType: SPKIDataType);
begin
  FX509CRL := ASPKIDataType;
  FX509CRL_Specified := True;
end;

function X509DataType.X509CRL_Specified(Index: Integer): boolean;
begin
  Result := FX509CRL_Specified;
end;

procedure X509DataType.SetX509SKI(Index: Integer; const ASPKIDataType: SPKIDataType);
begin
  FX509SKI := ASPKIDataType;
  FX509SKI_Specified := True;
end;

function X509DataType.X509SKI_Specified(Index: Integer): boolean;
begin
  Result := FX509SKI_Specified;
end;

procedure X509DataType.SetX509IssuerSerial(Index: Integer; const AArray_Of_X509IssuerSerialType: Array_Of_X509IssuerSerialType);
begin
  FX509IssuerSerial := AArray_Of_X509IssuerSerialType;
  FX509IssuerSerial_Specified := True;
end;

function X509DataType.X509IssuerSerial_Specified(Index: Integer): boolean;
begin
  Result := FX509IssuerSerial_Specified;
end;

destructor KeyInfoType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FKeyValue)-1 do
    System.SysUtils.FreeAndNil(FKeyValue[I]);
  System.SetLength(FKeyValue, 0);
  for I := 0 to System.Length(FPGPData)-1 do
    System.SysUtils.FreeAndNil(FPGPData[I]);
  System.SetLength(FPGPData, 0);
  for I := 0 to System.Length(FX509Data)-1 do
    System.SysUtils.FreeAndNil(FX509Data[I]);
  System.SetLength(FX509Data, 0);
  for I := 0 to System.Length(FRetrievalMethod)-1 do
    System.SysUtils.FreeAndNil(FRetrievalMethod[I]);
  System.SetLength(FRetrievalMethod, 0);
  inherited Destroy;
end;

procedure KeyInfoType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function KeyInfoType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure KeyInfoType.SetKeyValue(Index: Integer; const AArray_Of_KeyValue: Array_Of_KeyValue);
begin
  FKeyValue := AArray_Of_KeyValue;
  FKeyValue_Specified := True;
end;

function KeyInfoType.KeyValue_Specified(Index: Integer): boolean;
begin
  Result := FKeyValue_Specified;
end;

procedure KeyInfoType.SetKeyName(Index: Integer; const AArray_Of_KeyName: Array_Of_KeyName);
begin
  FKeyName := AArray_Of_KeyName;
  FKeyName_Specified := True;
end;

function KeyInfoType.KeyName_Specified(Index: Integer): boolean;
begin
  Result := FKeyName_Specified;
end;

procedure KeyInfoType.SetMgmtData(Index: Integer; const AArray_Of_MgmtData: Array_Of_MgmtData);
begin
  FMgmtData := AArray_Of_MgmtData;
  FMgmtData_Specified := True;
end;

function KeyInfoType.MgmtData_Specified(Index: Integer): boolean;
begin
  Result := FMgmtData_Specified;
end;

procedure KeyInfoType.SetPGPData(Index: Integer; const AArray_Of_PGPData: Array_Of_PGPData);
begin
  FPGPData := AArray_Of_PGPData;
  FPGPData_Specified := True;
end;

function KeyInfoType.PGPData_Specified(Index: Integer): boolean;
begin
  Result := FPGPData_Specified;
end;

procedure KeyInfoType.SetX509Data(Index: Integer; const AArray_Of_X509Data: Array_Of_X509Data);
begin
  FX509Data := AArray_Of_X509Data;
  FX509Data_Specified := True;
end;

function KeyInfoType.X509Data_Specified(Index: Integer): boolean;
begin
  Result := FX509Data_Specified;
end;

procedure KeyInfoType.SetSPKIData(Index: Integer; const AArray_Of_SPKIData: Array_Of_SPKIData);
begin
  FSPKIData := AArray_Of_SPKIData;
  FSPKIData_Specified := True;
end;

function KeyInfoType.SPKIData_Specified(Index: Integer): boolean;
begin
  Result := FSPKIData_Specified;
end;

procedure KeyInfoType.SetRetrievalMethod(Index: Integer; const AArray_Of_RetrievalMethod: Array_Of_RetrievalMethod);
begin
  FRetrievalMethod := AArray_Of_RetrievalMethod;
  FRetrievalMethod_Specified := True;
end;

function KeyInfoType.RetrievalMethod_Specified(Index: Integer): boolean;
begin
  Result := FRetrievalMethod_Specified;
end;

initialization
  { WSCancelacion40 }
  InvRegistry.RegisterInterface(TypeInfo(WSCancelacion40), 'http://wservicios/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(WSCancelacion40), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(WSCancelacion40), ioDocument);
  { WSCancelacion40.Cancelacion40_2 }
  InvRegistry.RegisterMethodInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_2', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_2', 'rfcEmisor', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_2', 'fecha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_2', 'folios', '',
                                '', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_2', 'signatureType', '',
                                '[Namespace="http://www.w3.org/2000/09/xmldsig#"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_2', 'accesos', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_2', 'return', '',
                                '', IS_UNQL);
  { WSCancelacion40.Cancelacion40_1 }
  InvRegistry.RegisterMethodInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_1', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_1', 'rfcEmisor', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_1', 'fecha', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_1', 'folios', '',
                                '', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_1', 'publicKey', '',
                                '', IS_NLBL or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_1', 'privateKey', '',
                                '', IS_NLBL or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_1', 'password', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_1', 'accesos', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_1', 'return', '',
                                '', IS_UNQL);
  { WSCancelacion40.Cancelacion40_3 }
  InvRegistry.RegisterMethodInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_3', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_3', 'nocertificado', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_3', 'folios', '',
                                '', IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_3', 'accesos', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(WSCancelacion40), 'Cancelacion40_3', 'return', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_X509Data), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_X509Data');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_RetrievalMethod), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_RetrievalMethod');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_wsFolios40), 'http://wservicios/', 'Array_Of_wsFolios40');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_X509IssuerSerialType), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_X509IssuerSerialType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ReferenceType), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_ReferenceType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ObjectType), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_ObjectType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(wsFoliosResponse), 'http://wservicios/', 'wsFoliosResponse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_PGPData), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_PGPData');
  RemClassRegistry.RegisterXSClass(wsFolios40, 'http://wservicios/', 'wsFolios40');
  RemClassRegistry.RegisterXSClass(accesos, 'http://wservicios/', 'accesos');
  RemClassRegistry.RegisterXSClass(folio, 'http://wservicios/', 'folio');
  RemClassRegistry.RegisterXSClass(wsFolio, 'http://wservicios/', 'wsFolio');
  RemClassRegistry.RegisterXSClass(wsCancelacionResponse, 'http://wservicios/', 'wsCancelacionResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wsCancelacionResponse), 'folios', '[ArrayItemName="folio"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TransformsType), 'http://www.w3.org/2000/09/xmldsig#', 'TransformsType');
  RemClassRegistry.RegisterXSClass(RSAKeyValueType, 'http://www.w3.org/2000/09/xmldsig#', 'RSAKeyValueType');
  RemClassRegistry.RegisterXSClass(RSAKeyValue, 'http://www.w3.org/2000/09/xmldsig#', 'RSAKeyValue');
  RemClassRegistry.RegisterXSInfo(TypeInfo(KeyValueType), 'http://www.w3.org/2000/09/xmldsig#', 'KeyValueType');
  RemClassRegistry.RegisterXSClass(SignedInfoType, 'http://www.w3.org/2000/09/xmldsig#', 'SignedInfoType');
  RemClassRegistry.RegisterXSClass(SignedInfo, 'http://www.w3.org/2000/09/xmldsig#', 'SignedInfo');
  RemClassRegistry.RegisterXSClass(SignatureValueType, 'http://www.w3.org/2000/09/xmldsig#', 'SignatureValueType');
  RemClassRegistry.RegisterXSClass(SignatureValue, 'http://www.w3.org/2000/09/xmldsig#', 'SignatureValue');
  RemClassRegistry.RegisterXSClass(SignatureType, 'http://www.w3.org/2000/09/xmldsig#', 'SignatureType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignatureType), 'Object_', '[ExtName="Object"]');
  RemClassRegistry.RegisterXSClass(DigestMethodType, 'http://www.w3.org/2000/09/xmldsig#', 'DigestMethodType');
  RemClassRegistry.RegisterXSClass(TransformType, 'http://www.w3.org/2000/09/xmldsig#', 'TransformType');
  RemClassRegistry.RegisterXSClass(Transform, 'http://www.w3.org/2000/09/xmldsig#', 'Transform');
  RemClassRegistry.RegisterXSClass(ReferenceType, 'http://www.w3.org/2000/09/xmldsig#', 'ReferenceType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReferenceType), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReferenceType), 'Transforms', '[ArrayItemName="Transform"]');
  RemClassRegistry.RegisterXSClass(CanonicalizationMethodType, 'http://www.w3.org/2000/09/xmldsig#', 'CanonicalizationMethodType');
  RemClassRegistry.RegisterXSClass(ObjectType, 'http://www.w3.org/2000/09/xmldsig#', 'ObjectType');
  RemClassRegistry.RegisterXSClass(DigestMethod, 'http://www.w3.org/2000/09/xmldsig#', 'DigestMethod');
  RemClassRegistry.RegisterXSClass(CanonicalizationMethod, 'http://www.w3.org/2000/09/xmldsig#', 'CanonicalizationMethod');
  RemClassRegistry.RegisterXSClass(DSAKeyValueType, 'http://www.w3.org/2000/09/xmldsig#', 'DSAKeyValueType');
  RemClassRegistry.RegisterXSClass(DSAKeyValue, 'http://www.w3.org/2000/09/xmldsig#', 'DSAKeyValue');
  RemClassRegistry.RegisterXSClass(RetrievalMethodType, 'http://www.w3.org/2000/09/xmldsig#', 'RetrievalMethodType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RetrievalMethodType), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RetrievalMethodType), 'Transforms', '[ArrayItemName="Transform"]');
  RemClassRegistry.RegisterXSClass(Signature, 'http://www.w3.org/2000/09/xmldsig#', 'Signature');
  RemClassRegistry.RegisterXSClass(Reference, 'http://www.w3.org/2000/09/xmldsig#', 'Reference');
  RemClassRegistry.RegisterXSClass(Object_, 'http://www.w3.org/2000/09/xmldsig#', 'Object_', 'Object');
  RemClassRegistry.RegisterXSInfo(TypeInfo(MgmtData), 'http://www.w3.org/2000/09/xmldsig#', 'MgmtData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_MgmtData), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_MgmtData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(KeyName), 'http://www.w3.org/2000/09/xmldsig#', 'KeyName');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_KeyName), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_KeyName');
  RemClassRegistry.RegisterXSInfo(TypeInfo(KeyValue), 'http://www.w3.org/2000/09/xmldsig#', 'KeyValue');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_KeyValue), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_KeyValue');
  RemClassRegistry.RegisterXSClass(X509IssuerSerialType, 'http://www.w3.org/2000/09/xmldsig#', 'X509IssuerSerialType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_integer), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_integer');
  RemClassRegistry.RegisterXSClass(SignatureMethodType, 'http://www.w3.org/2000/09/xmldsig#', 'SignatureMethodType');
  RemClassRegistry.RegisterXSClass(SignatureMethod, 'http://www.w3.org/2000/09/xmldsig#', 'SignatureMethod');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SPKIDataType), 'http://www.w3.org/2000/09/xmldsig#', 'SPKIDataType');
  RemClassRegistry.RegisterXSClass(PGPDataType, 'http://www.w3.org/2000/09/xmldsig#', 'PGPDataType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PGPDataType), 'PGPKeyID', '[ArrayItemName="SPKISexp"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PGPDataType), 'PGPKeyPacket', '[ArrayItemName="SPKISexp"]');
  RemClassRegistry.RegisterXSClass(PGPData, 'http://www.w3.org/2000/09/xmldsig#', 'PGPData');
  RemClassRegistry.RegisterXSClass(X509DataType, 'http://www.w3.org/2000/09/xmldsig#', 'X509DataType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(X509DataType), 'X509Certificate', '[ArrayItemName="SPKISexp"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(X509DataType), 'X509CRL', '[ArrayItemName="SPKISexp"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(X509DataType), 'X509SKI', '[ArrayItemName="SPKISexp"]');
  RemClassRegistry.RegisterXSClass(RetrievalMethod, 'http://www.w3.org/2000/09/xmldsig#', 'RetrievalMethod');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SPKIData), 'http://www.w3.org/2000/09/xmldsig#', 'SPKIData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_SPKIData), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_SPKIData');
  RemClassRegistry.RegisterXSClass(KeyInfoType, 'http://www.w3.org/2000/09/xmldsig#', 'KeyInfoType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'KeyValue', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'KeyName', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'MgmtData', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'PGPData', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'X509Data', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'SPKIData', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'RetrievalMethod', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSClass(KeyInfo, 'http://www.w3.org/2000/09/xmldsig#', 'KeyInfo');
  RemClassRegistry.RegisterXSClass(X509Data, 'http://www.w3.org/2000/09/xmldsig#', 'X509Data');

end.