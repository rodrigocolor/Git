//-----------------------------------------------------------------------------------------------------
//     This code was generated by the Wmi Delphi Code Creator http://theroadtodelphi.wordpress.com
//     Version: 1.9.5.0 
//
//
//
//     LIABILITY DISCLAIMER
//     THIS GENERATED CODE IS DISTRIBUTED "AS IS". NO WARRANTY OF ANY KIND IS EXPRESSED OR IMPLIED.
//     YOU USE IT AT YOUR OWN RISK. THE AUTHOR NOT WILL BE LIABLE FOR DATA LOSS,
//     DAMAGES AND LOSS OF PROFITS OR ANY OTHER KIND OF LOSS WHILE USING OR MISUSING THIS CODE.
//
//
//----------------------------------------------------------------------------------------------------
program GetWMI_Info;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  ActiveX,
  ComObj,
  Variants;
  

    
// Estatísticas do servidor IPHTTPS neste computador.

procedure  GetWin32_PerfFormattedData_Counters_IPHTTPSGlobalInfo;
const
  WbemUser            ='';
  WbemPassword        ='';
  WbemComputer        ='localhost';
  wbemFlagForwardOnly = $00000020;
var
  FSWbemLocator : OLEVariant;
  FWMIService   : OLEVariant;
  FWbemObjectSet: OLEVariant;
  FWbemObject   : OLEVariant;
  oEnum         : IEnumvariant;
  iValue        : LongWord;
begin;
  FSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
  FWMIService   := FSWbemLocator.ConnectServer(WbemComputer, 'root\CIMV2', WbemUser, WbemPassword);
  FWbemObjectSet:= FWMIService.ExecQuery('SELECT * FROM Win32_PerfFormattedData_Counters_IPHTTPSGlobal','WQL',wbemFlagForwardOnly);
  oEnum         := IUnknown(FWbemObjectSet._NewEnum) as IEnumVariant;
  while oEnum.Next(1, FWbemObject, iValue) = 0 do
  begin
    Writeln(Format('Caption                            %s',[String(FWbemObject.Caption)]));// String
    Writeln(Format('Description                        %s',[String(FWbemObject.Description)]));// String
    Writeln(Format('DropsNeighborresolutiontimeouts    %d',[Integer(FWbemObject.DropsNeighborresolutiontimeouts)]));// Uint64
    Writeln(Format('ErrorsAuthenticationErrors         %d',[Integer(FWbemObject.ErrorsAuthenticationErrors)]));// Uint64
    Writeln(Format('ErrorsReceiveerrorsontheserver     %d',[Integer(FWbemObject.ErrorsReceiveerrorsontheserver)]));// Uint64
    Writeln(Format('ErrorsTransmiterrorsontheserver    %d',[Integer(FWbemObject.ErrorsTransmiterrorsontheserver)]));// Uint64
    Writeln(Format('Frequency_Object                   %d',[Integer(FWbemObject.Frequency_Object)]));// Uint64
    Writeln(Format('Frequency_PerfTime                 %d',[Integer(FWbemObject.Frequency_PerfTime)]));// Uint64
    Writeln(Format('Frequency_Sys100NS                 %d',[Integer(FWbemObject.Frequency_Sys100NS)]));// Uint64
    Writeln(Format('InTotalbytesreceived               %d',[Integer(FWbemObject.InTotalbytesreceived)]));// Uint64
    Writeln(Format('InTotalpacketsreceived             %d',[Integer(FWbemObject.InTotalpacketsreceived)]));// Uint64
    Writeln(Format('Name                               %s',[String(FWbemObject.Name)]));// String
    Writeln(Format('OutTotalbytesforwarded             %d',[Integer(FWbemObject.OutTotalbytesforwarded)]));// Uint64
    Writeln(Format('OutTotalbytessent                  %d',[Integer(FWbemObject.OutTotalbytessent)]));// Uint64
    Writeln(Format('OutTotalpacketssent                %d',[Integer(FWbemObject.OutTotalpacketssent)]));// Uint64
    Writeln(Format('SessionsTotalsessions              %d',[Integer(FWbemObject.SessionsTotalsessions)]));// Uint64
    Writeln(Format('Timestamp_Object                   %d',[Integer(FWbemObject.Timestamp_Object)]));// Uint64
    Writeln(Format('Timestamp_PerfTime                 %d',[Integer(FWbemObject.Timestamp_PerfTime)]));// Uint64
    Writeln(Format('Timestamp_Sys100NS                 %d',[Integer(FWbemObject.Timestamp_Sys100NS)]));// Uint64
	    
    Writeln('');
    FWbemObject:=Unassigned;
  end;
end;


begin
 try
    CoInitialize(nil);
    try
      GetWin32_PerfFormattedData_Counters_IPHTTPSGlobalInfo;
    finally
      CoUninitialize;
    end;
 except
    on E:EOleException do
        Writeln(Format('EOleException %s %x', [E.Message,E.ErrorCode])); 
    on E:Exception do
        Writeln(E.Classname, ':', E.Message);
 end;
 Writeln('Press Enter to exit');
 Readln;      
end.