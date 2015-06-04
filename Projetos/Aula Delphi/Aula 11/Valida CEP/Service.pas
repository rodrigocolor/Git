
{*************************************************}
{                                                 }
{                XML Data Binding                 }
{                                                 }
{         Generated on: 01/05/2015 11:14:34       }
{       Generated from: D:\User\Desktop\CEP.XML   }
{                                                 }
{*************************************************}

unit Service;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLWebservicecepType = interface;
  IXMLUsuarioType = interface;

{ IXMLWebservicecepType }

  IXMLWebservicecepType = interface(IXMLNode)
    ['{2853B8CD-A6FB-47D7-B679-7D2B486BF9FD}']
    { Property Accessors }
    function Get_Resultado_txt: Integer;
    function Get_Usuario: IXMLUsuarioType;
    function Get_Uf: Integer;
    function Get_Estado: Integer;
    function Get_Cidade: String;
    function Get_Bairro: UnicodeString;
    function Get_Logradouro: UnicodeString;
    function Get_Unidade: UnicodeString;
    function Get_Cpc: UnicodeString;
    function Get_Logradouro_curto: UnicodeString;
    function Get_Codigomunicipio: Integer;
    function Get_Iscapital: Integer;
    procedure Set_Logradouro(Value: UnicodeString);
    { Methods & Properties }
    property Resultado_txt: Integer read Get_Resultado_txt;
    property Usuario: IXMLUsuarioType read Get_Usuario;
    property Uf: Integer read Get_Uf;
    property Estado: Integer read Get_Estado;
    property Cidade: String read Get_Cidade;
    property Bairro: UnicodeString read Get_Bairro;
    property Logradouro: UnicodeString read Get_Logradouro write Set_Logradouro;
    property Unidade: UnicodeString read Get_Unidade;
    property Cpc: UnicodeString read Get_Cpc;
    property Logradouro_curto: UnicodeString read Get_Logradouro_curto;
    property Codigomunicipio: Integer read Get_Codigomunicipio;
    property Iscapital: Integer read Get_Iscapital;
  end;

{ IXMLUsuarioType }

  IXMLUsuarioType = interface(IXMLNode)
    ['{338140C3-581F-4D82-8797-FCF1096E5D5A}']
    { Property Accessors }
    function Get_Login: Integer;
    function Get_Nome: Integer;
    function Get_Email: Integer;
    function Get_Telefone: UnicodeString;
    procedure Set_Login(Value: Integer);
    procedure Set_Nome(Value: Integer);
    procedure Set_Email(Value: Integer);
    procedure Set_Telefone(Value: UnicodeString);
    { Methods & Properties }
    property Login: Integer read Get_Login write Set_Login;
    property Nome: Integer read Get_Nome write Set_Nome;
    property Email: Integer read Get_Email write Set_Email;
    property Telefone: UnicodeString read Get_Telefone write Set_Telefone;
  end;

{ Forward Decls }

  TXMLWebservicecepType = class;
  TXMLUsuarioType = class;

{ TXMLWebservicecepType }

  TXMLWebservicecepType = class(TXMLNode, IXMLWebservicecepType)
  protected
    { IXMLWebservicecepType }
    function Get_Resultado_txt: Integer;
    function Get_Usuario: IXMLUsuarioType;
    function Get_Uf: Integer;
    function Get_Estado: Integer;
    function Get_Cidade: String;
    function Get_Bairro: UnicodeString;
    function Get_Logradouro: UnicodeString;
    function Get_Unidade: UnicodeString;
    function Get_Cpc: UnicodeString;
    function Get_Logradouro_curto: UnicodeString;
    function Get_Codigomunicipio: Integer;
    function Get_Iscapital: Integer;
    procedure Set_Logradouro(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLUsuarioType }

  TXMLUsuarioType = class(TXMLNode, IXMLUsuarioType)
  protected
    { IXMLUsuarioType }
    function Get_Login: Integer;
    function Get_Nome: Integer;
    function Get_Email: Integer;
    function Get_Telefone: UnicodeString;
    procedure Set_Login(Value: Integer);
    procedure Set_Nome(Value: Integer);
    procedure Set_Email(Value: Integer);
    procedure Set_Telefone(Value: UnicodeString);
  end;

{ Global Functions }

function Getwebservicecep(Doc: IXMLDocument): IXMLWebservicecepType;
function Loadwebservicecep(const FileName: string): IXMLWebservicecepType;
function Newwebservicecep: IXMLWebservicecepType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function Getwebservicecep(Doc: IXMLDocument): IXMLWebservicecepType;
begin
  Result := Doc.GetDocBinding('webservicecep', TXMLWebservicecepType, TargetNamespace) as IXMLWebservicecepType;
end;

function Loadwebservicecep(const FileName: string): IXMLWebservicecepType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('webservicecep', TXMLWebservicecepType, TargetNamespace) as IXMLWebservicecepType;
end;

function Newwebservicecep: IXMLWebservicecepType;
begin
  Result := NewXMLDocument.GetDocBinding('webservicecep', TXMLWebservicecepType, TargetNamespace) as IXMLWebservicecepType;
end;

{ TXMLWebservicecepType }

procedure TXMLWebservicecepType.AfterConstruction;
begin
  RegisterChildNode('usuario', TXMLUsuarioType);
  inherited;
end;

function TXMLWebservicecepType.Get_Resultado_txt: Integer;
begin
  Result := ChildNodes['resultado_txt'].NodeValue;
end;

function TXMLWebservicecepType.Get_Usuario: IXMLUsuarioType;
begin
  Result := ChildNodes['usuario'] as IXMLUsuarioType;
end;

function TXMLWebservicecepType.Get_Uf: Integer;
begin
  Result := ChildNodes['uf'].NodeValue;
end;

function TXMLWebservicecepType.Get_Estado: Integer;
begin
  Result := ChildNodes['estado'].NodeValue;
end;

function TXMLWebservicecepType.Get_Cidade: String;
begin
  Result := ChildNodes['cidade'].NodeValue;
end;

function TXMLWebservicecepType.Get_Bairro: UnicodeString;
begin
  Result := ChildNodes['bairro'].Text;
end;

function TXMLWebservicecepType.Get_Logradouro: UnicodeString;
begin
  Result := ChildNodes['logradouro'].Text;
end;

procedure TXMLWebservicecepType.Set_Logradouro(Value: UnicodeString);
begin
  ChildNodes['logradouro'].NodeValue := Value;
end;

function TXMLWebservicecepType.Get_Unidade: UnicodeString;
begin
  Result := ChildNodes['unidade'].Text;
end;

function TXMLWebservicecepType.Get_Cpc: UnicodeString;
begin
  Result := ChildNodes['cpc'].Text;
end;

function TXMLWebservicecepType.Get_Logradouro_curto: UnicodeString;
begin
  Result := ChildNodes['logradouro_curto'].Text;
end;

function TXMLWebservicecepType.Get_Codigomunicipio: Integer;
begin
  Result := ChildNodes['codigomunicipio'].NodeValue;
end;

function TXMLWebservicecepType.Get_Iscapital: Integer;
begin
  Result := ChildNodes['iscapital'].NodeValue;
end;

{ TXMLUsuarioType }

function TXMLUsuarioType.Get_Login: Integer;
begin
  Result := ChildNodes['login'].NodeValue;
end;

procedure TXMLUsuarioType.Set_Login(Value: Integer);
begin
  ChildNodes['login'].NodeValue := Value;
end;

function TXMLUsuarioType.Get_Nome: Integer;
begin
  Result := ChildNodes['nome'].NodeValue;
end;

procedure TXMLUsuarioType.Set_Nome(Value: Integer);
begin
  ChildNodes['nome'].NodeValue := Value;
end;

function TXMLUsuarioType.Get_Email: Integer;
begin
  Result := ChildNodes['email'].NodeValue;
end;

procedure TXMLUsuarioType.Set_Email(Value: Integer);
begin
  ChildNodes['email'].NodeValue := Value;
end;

function TXMLUsuarioType.Get_Telefone: UnicodeString;
begin
  Result := ChildNodes['telefone'].Text;
end;

procedure TXMLUsuarioType.Set_Telefone(Value: UnicodeString);
begin
  ChildNodes['telefone'].NodeValue := Value;
end;

end.