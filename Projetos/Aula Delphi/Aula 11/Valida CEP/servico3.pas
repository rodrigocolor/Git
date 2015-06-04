
{******************************************************}
{                                                      }
{                   XML Data Binding                   }
{                                                      }
{         Generated on: 03/05/2015 02:15:49            }
{       Generated from: D:\User\Desktop\servico3.xml   }
{   Settings stored in: D:\User\Desktop\servico3.xdb   }
{                                                      }
{******************************************************}

unit servico3;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLResultType = interface;
  IXMLEstado_infoType = interface;
  IXMLCidade_infoType = interface;

{ IXMLResultType }

  IXMLResultType = interface(IXMLNode)
    ['{4AFAE4A9-CB84-49C3-A89B-6D77DCD4749D}']
    { Property Accessors }
    function Get_Bairro: Integer;
    function Get_Cidade: Integer;
    function Get_Endereço: UnicodeString;
    function Get_Estado_info: IXMLEstado_infoType;
    function Get_Cep: Integer;
    function Get_Cidade_info: IXMLCidade_infoType;
    function Get_Endereco: UnicodeString;
    function Get_Estado: Integer;
    function Get_Cliente: Integer;
    procedure Set_Bairro(Value: Integer);
    procedure Set_Cidade(Value: Integer);
    procedure Set_Endereço(Value: UnicodeString);
    procedure Set_Cep(Value: Integer);
    procedure Set_Endereco(Value: UnicodeString);
    procedure Set_Estado(Value: Integer);
    procedure Set_Cliente(Value: Integer);
    { Methods & Properties }
    property Bairro: Integer read Get_Bairro write Set_Bairro;
    property Cidade: Integer read Get_Cidade write Set_Cidade;
    property Endereço: UnicodeString read Get_Endereço write Set_Endereço;
    property Estado_info: IXMLEstado_infoType read Get_Estado_info;
    property Cep: Integer read Get_Cep write Set_Cep;
    property Cidade_info: IXMLCidade_infoType read Get_Cidade_info;
    property Endereco: UnicodeString read Get_Endereco write Set_Endereco;
    property Estado: Integer read Get_Estado write Set_Estado;
    property Cliente: Integer read Get_Cliente write Set_Cliente;
  end;

{ IXMLEstado_infoType }

  IXMLEstado_infoType = interface(IXMLNode)
    ['{72A1CA99-B6BF-4851-804C-7C6AFA235717}']
    { Property Accessors }
    function Get_Area_km2: UnicodeString;
    function Get_Codigo_ibge: Integer;
    function Get_Nome: Integer;
    procedure Set_Area_km2(Value: UnicodeString);
    procedure Set_Codigo_ibge(Value: Integer);
    procedure Set_Nome(Value: Integer);
    { Methods & Properties }
    property Area_km2: UnicodeString read Get_Area_km2 write Set_Area_km2;
    property Codigo_ibge: Integer read Get_Codigo_ibge write Set_Codigo_ibge;
    property Nome: Integer read Get_Nome write Set_Nome;
  end;

{ IXMLCidade_infoType }

  IXMLCidade_infoType = interface(IXMLNode)
    ['{724AD4D9-BD4F-4886-985E-D81EF349291B}']
    { Property Accessors }
    function Get_Area_km2: UnicodeString;
    function Get_Codigo_ibge: Integer;
    procedure Set_Area_km2(Value: UnicodeString);
    procedure Set_Codigo_ibge(Value: Integer);
    { Methods & Properties }
    property Area_km2: UnicodeString read Get_Area_km2 write Set_Area_km2;
    property Codigo_ibge: Integer read Get_Codigo_ibge write Set_Codigo_ibge;
  end;

{ Forward Decls }

  TXMLResultType = class;
  TXMLEstado_infoType = class;
  TXMLCidade_infoType = class;

{ TXMLResultType }

  TXMLResultType = class(TXMLNode, IXMLResultType)
  protected
    { IXMLResultType }
    function Get_Bairro: Integer;
    function Get_Cidade: Integer;
    function Get_Endereço: UnicodeString;
    function Get_Estado_info: IXMLEstado_infoType;
    function Get_Cep: Integer;
    function Get_Cidade_info: IXMLCidade_infoType;
    function Get_Endereco: UnicodeString;
    function Get_Estado: Integer;
    function Get_Cliente: Integer;
    procedure Set_Bairro(Value: Integer);
    procedure Set_Cidade(Value: Integer);
    procedure Set_Endereço(Value: UnicodeString);
    procedure Set_Cep(Value: Integer);
    procedure Set_Endereco(Value: UnicodeString);
    procedure Set_Estado(Value: Integer);
    procedure Set_Cliente(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLEstado_infoType }

  TXMLEstado_infoType = class(TXMLNode, IXMLEstado_infoType)
  protected
    { IXMLEstado_infoType }
    function Get_Area_km2: UnicodeString;
    function Get_Codigo_ibge: Integer;
    function Get_Nome: Integer;
    procedure Set_Area_km2(Value: UnicodeString);
    procedure Set_Codigo_ibge(Value: Integer);
    procedure Set_Nome(Value: Integer);
  end;

{ TXMLCidade_infoType }

  TXMLCidade_infoType = class(TXMLNode, IXMLCidade_infoType)
  protected
    { IXMLCidade_infoType }
    function Get_Area_km2: UnicodeString;
    function Get_Codigo_ibge: Integer;
    procedure Set_Area_km2(Value: UnicodeString);
    procedure Set_Codigo_ibge(Value: Integer);
  end;

{ Global Functions }

function Getresult(Doc: IXMLDocument): IXMLResultType;
function Loadresult(const FileName: string): IXMLResultType;
function Newresult: IXMLResultType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function Getresult(Doc: IXMLDocument): IXMLResultType;
begin
  Result := Doc.GetDocBinding('result', TXMLResultType, TargetNamespace) as IXMLResultType;
end;

function Loadresult(const FileName: string): IXMLResultType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('result', TXMLResultType, TargetNamespace) as IXMLResultType;
end;

function Newresult: IXMLResultType;
begin
  Result := NewXMLDocument.GetDocBinding('result', TXMLResultType, TargetNamespace) as IXMLResultType;
end;

{ TXMLResultType }

procedure TXMLResultType.AfterConstruction;
begin
  RegisterChildNode('estado_info', TXMLEstado_infoType);
  RegisterChildNode('cidade_info', TXMLCidade_infoType);
  inherited;
end;

function TXMLResultType.Get_Bairro: Integer;
begin
  Result := ChildNodes['bairro'].NodeValue;
end;

procedure TXMLResultType.Set_Bairro(Value: Integer);
begin
  ChildNodes['bairro'].NodeValue := Value;
end;

function TXMLResultType.Get_Cidade: Integer;
begin
  Result := ChildNodes['cidade'].NodeValue;
end;

procedure TXMLResultType.Set_Cidade(Value: Integer);
begin
  ChildNodes['cidade'].NodeValue := Value;
end;

function TXMLResultType.Get_Endereço: UnicodeString;
begin
  Result := ChildNodes['endereço'].Text;
end;

procedure TXMLResultType.Set_Endereço(Value: UnicodeString);
begin
  ChildNodes['endereço'].NodeValue := Value;
end;

function TXMLResultType.Get_Estado_info: IXMLEstado_infoType;
begin
  Result := ChildNodes['estado_info'] as IXMLEstado_infoType;
end;

function TXMLResultType.Get_Cep: Integer;
begin
  Result := ChildNodes['cep'].NodeValue;
end;

procedure TXMLResultType.Set_Cep(Value: Integer);
begin
  ChildNodes['cep'].NodeValue := Value;
end;

function TXMLResultType.Get_Cidade_info: IXMLCidade_infoType;
begin
  Result := ChildNodes['cidade_info'] as IXMLCidade_infoType;
end;

function TXMLResultType.Get_Endereco: UnicodeString;
begin
  Result := ChildNodes['endereco'].Text;
end;

procedure TXMLResultType.Set_Endereco(Value: UnicodeString);
begin
  ChildNodes['endereco'].NodeValue := Value;
end;

function TXMLResultType.Get_Estado: Integer;
begin
  Result := ChildNodes['estado'].NodeValue;
end;

procedure TXMLResultType.Set_Estado(Value: Integer);
begin
  ChildNodes['estado'].NodeValue := Value;
end;

function TXMLResultType.Get_Cliente: Integer;
begin
  Result := ChildNodes['cliente'].NodeValue;
end;

procedure TXMLResultType.Set_Cliente(Value: Integer);
begin
  ChildNodes['cliente'].NodeValue := Value;
end;

{ TXMLEstado_infoType }

function TXMLEstado_infoType.Get_Area_km2: UnicodeString;
begin
  Result := ChildNodes['area_km2'].Text;
end;

procedure TXMLEstado_infoType.Set_Area_km2(Value: UnicodeString);
begin
  ChildNodes['area_km2'].NodeValue := Value;
end;

function TXMLEstado_infoType.Get_Codigo_ibge: Integer;
begin
  Result := ChildNodes['codigo_ibge'].NodeValue;
end;

procedure TXMLEstado_infoType.Set_Codigo_ibge(Value: Integer);
begin
  ChildNodes['codigo_ibge'].NodeValue := Value;
end;

function TXMLEstado_infoType.Get_Nome: Integer;
begin
  Result := ChildNodes['nome'].NodeValue;
end;

procedure TXMLEstado_infoType.Set_Nome(Value: Integer);
begin
  ChildNodes['nome'].NodeValue := Value;
end;

{ TXMLCidade_infoType }

function TXMLCidade_infoType.Get_Area_km2: UnicodeString;
begin
  Result := ChildNodes['area_km2'].Text;
end;

procedure TXMLCidade_infoType.Set_Area_km2(Value: UnicodeString);
begin
  ChildNodes['area_km2'].NodeValue := Value;
end;

function TXMLCidade_infoType.Get_Codigo_ibge: Integer;
begin
  Result := ChildNodes['codigo_ibge'].NodeValue;
end;

procedure TXMLCidade_infoType.Set_Codigo_ibge(Value: Integer);
begin
  ChildNodes['codigo_ibge'].NodeValue := Value;
end;

end.