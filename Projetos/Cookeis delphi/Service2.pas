
{*************************************************}
{                                                 }
{                XML Data Binding                 }
{                                                 }
{         Generated on: 03/05/2015 02:01:28       }
{       Generated from: D:\User\Desktop\XML.xml   }
{                                                 }
{*************************************************}

unit Service2;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLXmlcepType = interface;

{ IXMLXmlcepType }

  IXMLXmlcepType = interface(IXMLNode)
    ['{98FFB081-9B79-46F6-9169-E5FCDB7EC06B}']
    { Property Accessors }
    function Get_Cep: Integer;
    function Get_Logradouro: Integer;
    function Get_Complemento: Integer;
    function Get_Bairro: Integer;
    function Get_Localidade: Integer;
    function Get_Uf: Integer;
    function Get_Ibge: Integer;
    procedure Set_Cep(Value: Integer);
    procedure Set_Logradouro(Value: Integer);
    procedure Set_Complemento(Value: Integer);
    procedure Set_Bairro(Value: Integer);
    procedure Set_Localidade(Value: Integer);
    procedure Set_Uf(Value: Integer);
    procedure Set_Ibge(Value: Integer);
    { Methods & Properties }
    property Cep: Integer read Get_Cep write Set_Cep;
    property Logradouro: Integer read Get_Logradouro write Set_Logradouro;
    property Complemento: Integer read Get_Complemento write Set_Complemento;
    property Bairro: Integer read Get_Bairro write Set_Bairro;
    property Localidade: Integer read Get_Localidade write Set_Localidade;
    property Uf: Integer read Get_Uf write Set_Uf;
    property Ibge: Integer read Get_Ibge write Set_Ibge;
  end;

{ Forward Decls }

  TXMLXmlcepType = class;

{ TXMLXmlcepType }

  TXMLXmlcepType = class(TXMLNode, IXMLXmlcepType)
  protected
    { IXMLXmlcepType }
    function Get_Cep: Integer;
    function Get_Logradouro: Integer;
    function Get_Complemento: Integer;
    function Get_Bairro: Integer;
    function Get_Localidade: Integer;
    function Get_Uf: Integer;
    function Get_Ibge: Integer;
    procedure Set_Cep(Value: Integer);
    procedure Set_Logradouro(Value: Integer);
    procedure Set_Complemento(Value: Integer);
    procedure Set_Bairro(Value: Integer);
    procedure Set_Localidade(Value: Integer);
    procedure Set_Uf(Value: Integer);
    procedure Set_Ibge(Value: Integer);
  end;

{ Global Functions }

function Getxmlcep(Doc: IXMLDocument): IXMLXmlcepType;
function Loadxmlcep(const FileName: string): IXMLXmlcepType;
function Newxmlcep: IXMLXmlcepType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function Getxmlcep(Doc: IXMLDocument): IXMLXmlcepType;
begin
  Result := Doc.GetDocBinding('xmlcep', TXMLXmlcepType, TargetNamespace) as IXMLXmlcepType;
end;

function Loadxmlcep(const FileName: string): IXMLXmlcepType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('xmlcep', TXMLXmlcepType, TargetNamespace) as IXMLXmlcepType;
end;

function Newxmlcep: IXMLXmlcepType;
begin
  Result := NewXMLDocument.GetDocBinding('xmlcep', TXMLXmlcepType, TargetNamespace) as IXMLXmlcepType;
end;

{ TXMLXmlcepType }

function TXMLXmlcepType.Get_Cep: Integer;
begin
  Result := ChildNodes['cep'].NodeValue;
end;

procedure TXMLXmlcepType.Set_Cep(Value: Integer);
begin
  ChildNodes['cep'].NodeValue := Value;
end;

function TXMLXmlcepType.Get_Logradouro: Integer;
begin
  Result := ChildNodes['logradouro'].NodeValue;
end;

procedure TXMLXmlcepType.Set_Logradouro(Value: Integer);
begin
  ChildNodes['logradouro'].NodeValue := Value;
end;

function TXMLXmlcepType.Get_Complemento: Integer;
begin
  Result := ChildNodes['complemento'].NodeValue;
end;

procedure TXMLXmlcepType.Set_Complemento(Value: Integer);
begin
  ChildNodes['complemento'].NodeValue := Value;
end;

function TXMLXmlcepType.Get_Bairro: Integer;
begin
  Result := ChildNodes['bairro'].NodeValue;
end;

procedure TXMLXmlcepType.Set_Bairro(Value: Integer);
begin
  ChildNodes['bairro'].NodeValue := Value;
end;

function TXMLXmlcepType.Get_Localidade: Integer;
begin
  Result := ChildNodes['localidade'].NodeValue;
end;

procedure TXMLXmlcepType.Set_Localidade(Value: Integer);
begin
  ChildNodes['localidade'].NodeValue := Value;
end;

function TXMLXmlcepType.Get_Uf: Integer;
begin
  Result := ChildNodes['uf'].NodeValue;
end;

procedure TXMLXmlcepType.Set_Uf(Value: Integer);
begin
  ChildNodes['uf'].NodeValue := Value;
end;

function TXMLXmlcepType.Get_Ibge: Integer;
begin
  Result := ChildNodes['ibge'].NodeValue;
end;

procedure TXMLXmlcepType.Set_Ibge(Value: Integer);
begin
  ChildNodes['ibge'].NodeValue := Value;
end;

end.