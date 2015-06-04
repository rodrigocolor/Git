unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, registry;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label14: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

type
  TCPUID = array [1 .. 4] of Longint;
  TVendor = array [0 .. 11] of char;

function GetCPUID: TCPUID; assembler; register;
asm
  PUSH    EBX         { Save affected register }
  PUSH    EDI
  MOV     EDI,EAX     { @Resukt }
  MOV     EAX,1
  DW      $A20F       { CPUID Command }
  STOSD			          { CPUID[1] }
  MOV     EAX,EBX
  STOSD               { CPUID[2] }
  MOV     EAX,ECX
  STOSD               { CPUID[3] }
  MOV     EAX,EDX
  STOSD               { CPUID[4] }
  POP     EDI					{ Restore registers }
  POP     EBX
end;

function GetCPUVendor: TVendor; assembler; register;
asm
  PUSH    EBX					{ Save affected register }
  PUSH    EDI
  MOV     EDI,EAX			{ @Result (TVendor) }
  MOV     EAX,0
  DW      $A20F				{ CPUID Command }
  MOV     EAX,EBX
  XCHG		EBX,ECX     { save ECX result }
  MOV			ECX,4
@1:
  STOSB
  SHR     EAX,8
  LOOP    @1
  MOV     EAX,EDX
  MOV			ECX,4
@2:
  STOSB
  SHR     EAX,8
  LOOP    @2
  MOV     EAX,EBX
  MOV			ECX,4
@3:
  STOSB
  SHR     EAX,8
  LOOP    @3
  POP     EDI					{ Restore registers }
  POP     EBX
end;

function GetCPUSpeed: Double;
const
  DelayTime = 500;
var
  TimerHi, TimerLo: DWORD;
  PriorityClass, Priority: Integer;
begin
  PriorityClass := GetPriorityClass(GetCurrentProcess);
  Priority := GetThreadPriority(GetCurrentThread);

  SetPriorityClass(GetCurrentProcess, REALTIME_PRIORITY_CLASS);
  SetThreadPriority(GetCurrentThread, THREAD_PRIORITY_TIME_CRITICAL);

  Sleep(10);
  asm
    dw 310Fh
    mov TimerLo, eax
    mov TimerHi, edx
  end;
  Sleep(DelayTime);
  asm
    dw 310Fh
    sub eax, TimerLo
    sbb edx, TimerHi
    mov TimerLo, eax
    mov TimerHi, edx
  end;

  SetThreadPriority(GetCurrentThread, Priority);
  SetPriorityClass(GetCurrentProcess, PriorityClass);

  result := TimerLo / (1000 * DelayTime);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  reg, reg1, reg3: Tregistry;
  SysInfo: TSystemInfo;
  CPUID: TCPUID;
  I: Integer;
begin
  for I := Low(CPUID) to High(CPUID) do
    CPUID[I] := -1;
  CPUID := GetCPUID;
  Label22.Caption := IntToHex(CPUID[1], 8);
  Label23.Caption := IntToHex(CPUID[2], 8);
  Label32.Caption := IntToHex(CPUID[3], 8);
  Label33.Caption := IntToHex(CPUID[4], 8);
  Label34.Caption := (Format('%f MHz', [GetCPUSpeed]));

  GetSystemInfo(SysInfo);
  with SysInfo do
    reg := Tregistry.create;
  reg1 := Tregistry.create;
  reg3 := Tregistry.create;

  Label35.Caption := intTostr(SysInfo.dwProcessorType);

  reg.RootKey := HKEY_LOCAL_MACHINE;
  reg.OpenKey('hardware\description\system\centralprocessor\0', false);
  Label1.Caption := reg.ReadString('identifier');
  Label2.Caption := reg.ReadString('processornamestring');
  Label3.Caption := reg.ReadString('vendoridentifier');

  reg1.RootKey := HKEY_LOCAL_MACHINE;
  reg1.OpenKey
    ('system\controlset001\control\session manager\environment', false);
  Label4.Caption := reg1.ReadString('comspec');
  Label5.Caption := reg1.ReadString('fp_no_host_check');
  Label6.Caption := reg1.ReadString('number_of_processors');
  Label7.Caption := reg1.ReadString('os');
  Label8.Caption := reg1.ReadString('processor_architecture');
  Label9.Caption := reg1.ReadString('processor_revision');
  Label10.Caption := reg1.ReadString('processor_level');
  reg3.RootKey := HKEY_LOCAL_MACHINE;
  reg3.OpenKey
    ('system\controlset001\control\class\{50127dc3-0f36-415e-a6cc-4cb3be910b65}\0000',
    false);
  Label11.Caption := reg3.ReadString('driverdate');
  Label13.Caption := reg3.ReadString('driverdesc');
  Label15.Caption := reg3.ReadString('driverversion');
  Label16.Caption := reg3.ReadString('infpath');
  Label17.Caption := reg3.ReadString('infsection');
  Label18.Caption := reg3.ReadString('matchingdeviceid');

end;

end.
