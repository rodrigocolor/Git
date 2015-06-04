unit uBiblioteca;

interface

uses
Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs
, Winsock, Registry;
function cpuid: dword;
//-=-=-= Retorna o ip do pc
Function GetIP:string;
//-=-=-= Retorna o nome do usuário logado no Windows }
function getUserName: string;
//-=-=-= Retorna o nome do computador
function getComputerName: string;
//-=-=-= Retorna o diretório de instala. do windows

//-=-=-= Retorna diretório system do windows
function SysSystemDir: string;
//-=-=-= Retorna o diretorio temp
function getTempDir: string;

//-=-=-= via REGEDIT
//-=-=-= Retorna o nome do processador do pc
function GetProcessorName: string;
//-=-=-= Retorna o nome do sistema operacional utilizado
function GetWindowsSO: string;
//-=-=-= Retorna a chave do windows
function GetWindowsKey: string;




function getWinDir: string;
function getVersion(var Ver: _OSVERSIONINFOA): boolean;
//-=-=-= Retorna Versão do windows
function getVersionStr: string;


//-=-=-= Retorna o diretorio da sua aplicação
function getDirExe: String;
//-=-=-= Retorna a versão do seu aplicativo se vc utilizar o controle do delphi
function getVersaoExe: String;


implementation

Function GetIP:string;
//--> Declare a Winsock na clausula uses da unit
var
WSAData: TWSAData;
HostEnt: PHostEnt;
Name:string;
begin
WSAStartup(2, WSAData);
SetLength(Name, 255);
Gethostname(Pansichar(Name), 255);
SetLength(Name, StrLen(PChar(Name)));
HostEnt := gethostbyname(Pansichar(Name));
with HostEnt^ do
begin
Result := Format('%d.%d.%d.%d',
[Byte(h_addr^[0]),Byte(h_addr^[1]),
Byte(h_addr^[2]),Byte(h_addr^[3])]);
end;
WSACleanup;
end;

function GetProcessorName: string;
var
Reg: TRegistry;
begin
Reg := TRegistry.Create;
try
Reg.RootKey := HKEY_LOCAL_MACHINE;
if Reg.OpenKey('Hardware\Description\System\CentralProcessor\0', False) then
begin
Result := Reg.ReadString('ProcessorNameString');
Reg.CloseKey;
end;
finally
Reg.Free;
end;
end;

function GetWindowsSO: string;
var
Reg: TRegistry;
begin
Reg := TRegistry.Create;
try
Reg.RootKey := HKEY_LOCAL_MACHINE;
if Reg.OpenKey('SOFTWARE\MICROSOFT\WINDOWS NT\CURRENTVERSION', False) then
begin
Result := Reg.ReadString('ProductName');
Reg.CloseKey;
end;
finally
Reg.Free;
end;
end;

function GetWindowsKey: string;
var
Reg: TRegistry;
begin
Reg := TRegistry.Create;
try
Reg.RootKey := HKEY_LOCAL_MACHINE;
if Reg.OpenKey('SOFTWARE\MICROSOFT\WINDOWS NT\CURRENTVERSION', False) then
begin
Result := Reg.ReadString('ProductId');
Reg.CloseKey;
end;
finally
Reg.Free;
end;
end;

function getUserName: string;
var
I: DWord;
begin
I := 255;
SetLength(Result, I);
Windows.GetUserName(PChar(Result), I);
Result := string(PChar(Result));
end;

function getComputerName: string;
var
I: DWord;
begin
I := MAX_COMPUTERNAME_LENGTH + 1;
SetLength(Result, I);
Windows.GetComputerName(PChar(Result), I);
Result := string(PChar(Result));
end;

function getWinDir: string;
begin
SetLength(Result, MAX_PATH);
Windows.GetWindowsDirectory(PChar(Result), MAX_PATH);
Result := string(PChar(Result));
end;

function SysSystemDir: string;
begin
SetLength(Result, MAX_PATH);
if GetSystemDirectory(PChar(Result), MAX_PATH) > 0 then
Result := string(PChar(Result))
else
Result := '';
end;

function getVersion(var Ver: _OSVERSIONINFOA): boolean;
begin
Ver.dwOSVersionInfoSize := SizeOf(Ver);
//Result := GetVersionEx(Ver);
end;

function getVersionStr: string;
var
Ver: _OSVERSIONINFOA;
begin
if getVersion(Ver) then
Result := IntToStr(Ver.dwMajorVersion) + '.' + IntToStr(Ver.dwMinorVersion)
else
Result := '';
end;

function getTempDir: string;
begin
SetLength(Result, MAX_PATH);
if GetTempPath(MAX_PATH, PChar(Result)) > 0 then
Result := string(PChar(Result))
else
Result := '';
end;

function getDirExe: String;
begin
Result:= ExtractFilePath(Application.ExeName);
end;

Function getVersaoExe: String;
type
PFFI = ^vs_FixedFileInfo;
var
F : PFFI;
Handle : Dword;
Len : Longint;
Data : Pchar;
Buffer : Pointer;
Tamanho : Dword;
Parquivo: Pchar;
Arquivo : String;
begin
Arquivo := Application.ExeName;
Parquivo := StrAlloc(Length(Arquivo) + 1);
StrPcopy(Parquivo, Arquivo);
Len := GetFileVersionInfoSize(Parquivo, Handle);
Result := '';
if Len > 0 then
begin
Data:=StrAlloc(Len+1);
if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
begin
VerQueryValue(Data, '\',Buffer,Tamanho);
F := PFFI(Buffer);
Result := Format('%d.%d.%d.%d',
[HiWord(F^.dwFileVersionMs),
LoWord(F^.dwFileVersionMs),
HiWord(F^.dwFileVersionLs),
Loword(F^.dwFileVersionLs)]);
end;
StrDispose(Data);
end;
StrDispose(Parquivo);
end;


function cpuid: dword;
const
ID_BIT = $200000; // EFLAGS ID bit
type
TCPUID = array[1..4] of Longint;
var
CPUID: TCPUID;
I: integer;

function IsCPUID_Available: Boolean; register;
asm
PUSHFD {direct access to flags no possible, only via stack}
POP EAX {flags to EAX}
MOV EDX,EAX {save current flags}
XOR EAX,ID_BIT {not ID bit}
PUSH EAX {onto stack}
POPFD {from stack to flags, with not ID bit}
PUSHFD {back to stack}
POP EAX {get back to EAX}
XOR EAX,EDX {check if ID bit affected}
JZ @exit {no, CPUID not availavle}
MOV AL,True {Result=True}
@exit:
end;

function GetCPUID: TCPUID; assembler; register;
asm
PUSH EBX {Save affected register}
PUSH EDI
MOV EDI,EAX {@Resukt}
MOV EAX,1
DW $A20F {CPUID Command}
STOSD {CPUID[1]}
MOV EAX,EBX
STOSD {CPUID[2]}
MOV EAX,ECX
STOSD {CPUID[3]}
MOV EAX,EDX
STOSD {CPUID[4]}
POP EDI {Restore registers}
POP EBX
end;

begin
for I := Low(CPUID) to High(CPUID) do CPUID[I] := -1;
if IsCPUID_Available then CPUID := GetCPUID;
Result := 10000 * CPUID[1] + CPUID[4];
end;


end.
