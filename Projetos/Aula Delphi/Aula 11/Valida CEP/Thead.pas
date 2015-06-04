unit Thead;

interface

uses
  System.Classes, IdHTTP, System.TypInfo;

type
  Tservico = (sDevMedia, sViaCep, sPostMon);

  TBuscaCep = class(TThread)
  private
    function getGUID: string;
    procedure Execute; override;
  public
    servico: Tservico;
    inicio, fim: Integer;
    cont: string;
Cidade:string;
flag:Integer;
  end;

implementation

uses
  Service, System.IniFiles, System.SysUtils, Vcl.Forms, Winapi.ActiveX,
  Service2, servico3, CepTypes;

{ TMinhaThread }

procedure TBuscaCep.Execute;

var
  LXML: IXMLWebservicecepType;
  LXML1: IXMLXmlcepType;
  LXML2: IXMLResultType;
  LReturn: TStringStream;
  lpath: string;
  Lini, LControlIni: tinifile;
  ldata: TDate;
  i: Integer;
  IdHTTP1: tidHttp;
begin
  inherited;
  CoInitialize(nil);
  IdHTTP1 := tidHttp.Create(nil);
  ldata := Now;
  Lini := tinifile.Create(ExtractFilePath(Application.ExeName)+'c\' +
    IntToStr(inicio) + '-' + IntToStr(fim) + 'cep_rep.ini');
  LControlIni := tinifile.Create(ExtractFilePath(Application.ExeName) +'c\'+
    IntToStr(inicio) + '-' + IntToStr(fim) + 'cep_Control.ini');

  LReturn := TStringStream.Create;
  for i := LControlIni.ReadInteger('CepUpdateControl', 'Cont', inicio) to fim do
  begin
  flag:=0;
    cont := FormatFloat('00000000', i);
    LReturn.Clear;
    lpath := ExtractFilePath(Application.ExeName)+'x\' + getGUID +
      FormatFloat('00000000', i) + '.xml';
    Application.ProcessMessages;
    LControlIni.WriteInteger('CepUpdateControl', 'Cont', i);
    LControlIni.WriteString('CepXmlControl', 'Cep_' + FormatFloat('00000000',
      i), lpath);
    LControlIni.WriteString('CepXmlControl', 'Cep_' + FormatFloat('00000000', i)
      + 'Api', GetEnumName(TypeInfo(Tservico), Integer(servico)));
    if Lini.SectionExists('Cep' + FormatFloat('00000000', i)) then
    begin
      if Lini.ReadDate('Cep' + FormatFloat('00000000', i), 'date', Now()) <=
        ldata - 10 then
      begin;
        IdHTTP1.get(Cserv[Integer(servico) + 1] + FormatFloat('00000000', i) +
          Cservf[Integer(servico) + 1], LReturn);

        if IdHTTP1.ResponseCode = 302 then
                                 IdHTTP1.Destroy;
        LReturn.SaveToFile(lpath);
        case servico of
          sDevMedia:
            LXML := Loadwebservicecep(lpath);
          sViaCep:
            LXML1 := Loadxmlcep(lpath);
          sPostMon:
            LXML2 := Loadresult(lpath);
        end;
        case servico of
          sDevMedia:
            Lini.WriteString('Cep' + FormatFloat('00000000', i), 'c',
              stringReplace(LXML.XML, #13#10, ' ', [rfReplaceAll]));
          sViaCep:
            Lini.WriteString('Cep' + FormatFloat('00000000', i), 'c',
              stringReplace(LXML1.XML, #13#10, ' ', [rfReplaceAll]));
          sPostMon:
            Lini.WriteString('Cep' + FormatFloat('00000000', i), 'c',
              stringReplace(LXML2.XML, #13#10, ' ', [rfReplaceAll]));
        end;

        Lini.WriteDate('Cep' + FormatFloat('00000000', i), 'date', Now);

        Lini.WriteString('Cep' + FormatFloat('00000000', i), 'Api',
          GetEnumName(TypeInfo(Tservico), Integer(servico)));

      end
      else
      begin
        LReturn.WriteString(Lini.ReadString('Cep' + FormatFloat('00000000', i),
          'c', ''));
        LReturn.SaveToFile(lpath);
        LXML := Loadwebservicecep(lpath);
        DeleteFile(lpath);

      end;
    end
    else
    begin

      IdHTTP1.get(Cserv[Integer(servico) + 1] + FormatFloat('00000000', i) +
        Cservf[Integer(servico) + 1], LReturn);
        if IdHTTP1.ResponseCode = 302 then
                                 IdHTTP1.Destroy;
      LReturn.SaveToFile(lpath);
      case servico of
        sDevMedia:
          LXML := Loadwebservicecep(lpath);
        sViaCep:
          LXML1 := Loadxmlcep(lpath);
        sPostMon:
          LXML2 := Loadresult(lpath);
      end;
      case servico of
        sDevMedia:
          Lini.WriteString('Cep' + FormatFloat('00000000', i), 'c',
            stringReplace(LXML.XML, #13#10, ' ', [rfReplaceAll]));
        sViaCep:
          Lini.WriteString('Cep' + FormatFloat('00000000', i), 'c',
            stringReplace(LXML1.XML, #13#10, ' ', [rfReplaceAll]));
        sPostMon:
          Lini.WriteString('Cep' + FormatFloat('00000000', i), 'c',
            stringReplace(LXML2.XML, #13#10, ' ', [rfReplaceAll]));
      end;
      Lini.WriteDate('Cep' + FormatFloat('00000000', i), 'date', Now);

      Lini.WriteString('Cep' + FormatFloat('00000000', i), 'Api',
        GetEnumName(TypeInfo(Tservico), Integer(servico)));
    end;
    flag:=1;
           case servico of
        sDevMedia:
          cidade:= LXML.Cidade;
        sViaCep:
         cidade:=  LXML1.NodeName;
        sPostMon:
              cidade:=LXML2.Endereço ;
      end;
  end;
  // DeleteFile(lpath);
  LReturn.Free;
end;

function TBuscaCep.getGUID: string;
var
  ID: TGUID;
begin
  Result := '';
  if CoCreateGuid(ID) = S_OK then
    Result := GUIDToString(ID);
end;

end.
