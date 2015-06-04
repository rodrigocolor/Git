unit ReadRegistryInfo;
{ This unit reads a value from the the registry key
  HKEY_LOCAL_MACHINE. It accepts the SubKey you want to open and
  the name of the value you want to know as input paramters. It
  returns the values data or ERROR if there was a problem. }

interface

uses WinTypes;


function GetComputerGUID: String;

implementation

uses
  System.Win.Registry, System.SysUtils;

function GetComputerGUID: String;
var
  Reg: TRegistry;
  oGuid: TGUID;
  sGuid: String;
begin
  Result := '';
  // Attempt to retrieve the real key
  Reg := TRegistry.Create(KEY_READ OR KEY_WOW64_64KEY);
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKeyReadOnly('SOFTWARE\Microsoft\Cryptography') and Reg.ValueExists('MachineGuid') then
      Result := Reg.ReadString('MachineGuid');
    Reg.CloseKey;
  finally
    Reg.Free;
  end;
  // If retrieval fails, look for the surrogate
  if Result = '' then begin
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey('SOFTWARE\Microsoft\Cryptography', True) then begin
        if Reg.ValueExists('MachineGuid') then
          Result := Reg.ReadString('MachineGuid')
        else begin
          // If the surrogate doesn't exist, create it
          if CreateGUID(oGUID) = 0 then begin
            sGuid := Lowercase(GUIDToString(oGUID));
            Reg.WriteString('MachineGuid', Copy(sGuid, 2, Length(sGUID) - 2));
            Result := Reg.ReadString('MachineGuid');
          end;
        end;
      end;
      Reg.CloseKey;
    finally
      Reg.Free;
    end;
  end;
  if Result = '' then
    raise Exception.Create('Unable to access registry value in GetComputerGUID');
end;

end.
