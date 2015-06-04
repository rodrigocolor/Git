//-------------------------------------------------------------------------------------------------
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
//------------------------------------------------------------------------------------------------
program GetWMI_Info;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  WbemScripting_TLB,
  Variants,
  ActiveX,
  ComObj;
  

  
// O m�todo Load carrega uma inst�ncia espec�fica de um provedor.

procedure  Invoke_Msft_Providers_Load;
const
  WbemUser    ='';
  WbemPassword='';
  WbemComputer='localhost';
var
  FSWbemLocator : ISWbemLocator;
  FWMIService   : ISWbemServices;
  FWbemObject   : ISWbemObject;
  FInParams     : ISWbemObject;
  FOutParams    : ISWbemObject;
  varValue      : OleVariant;
begin
  FSWbemLocator := CoSWbemLocator.Create;
  FWMIService   := FSWbemLocator.ConnectServer(WbemComputer, 'root\CIMV2', WbemUser, WbemPassword, '', '', 0, nil);
  FWbemObject   := FWMIService.Get('Msft_Providers',0,nil);
  FInParams     := FWbemObject.Methods_.Item('Load',0).InParameters.SpawnInstance_(0);  
  
  FOutParams    := FWMIService.ExecMethod('Msft_Providers', 'Load', FInParams,0 , nil);
  Writeln(Format('ReturnValue  %s',[FOutParams.Properties_.Item('ReturnValue',0).Get_Value]));
  
end;


begin
 try
    CoInitialize(nil);
    try
      Invoke_Msft_Providers_Load;
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