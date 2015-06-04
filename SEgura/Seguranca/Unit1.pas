unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, WinSock,
  JvComponentBase, JvComputerInfoEx;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    btnNomeUsusarui: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
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
    Button1: TButton;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Memo1: TMemo;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    btnCpu: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnNomeUsusaruiClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Get(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnCpuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetSerialMotherBoard: String;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uBiblioteca, ReadRegistryInfo, FastCodeCPUID, cpuid;
{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  ShowMessage(GetSerialMotherBoard);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);

Var
  Serial: DWord;
  DirLen, Flags: DWord;
  DLabel: Array [0 .. 11] of Char;
begin
  GetVolumeInformation(PChar('c:'), DLabel, 12, @Serial, DirLen, Flags, nil, 0);
  ShowMessage(IntToHex(Serial, 8));
end;

procedure TForm1.BitBtn3Click(Sender: TObject);

var
  W, h: String;
begin
  W := INtTOStr(screen.Width);
  h := INtTOStr(screen.Height);
  ShowMessage(W + ' x ' + h);
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  ShowMessage(GetWindowsKey + '   -     ' + GetWindowsSO);
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
  function GetEnvVarValue(const VarName: string): string;
  var
    BufSize: Integer; // buffer size required for value
  begin
    // Get required buffer size (inc. terminal #0)
    BufSize := GetEnvironmentVariable(PChar(VarName), nil, 0);
    if BufSize > 0 then
    begin
      // Read env var value into result string
      SetLength(Result, BufSize - 1);
      GetEnvironmentVariable(PChar(VarName), PChar(Result), BufSize);
    end
    else
      // No such environment variable
      Result := '';
  end;

{
  ---List of different variables---
  ALLUSERSPROFILE
  APPDATA
  CLIENTNAME
  CommonProgramFiles
  COMPUTERNAME
  ComSpec
  HOMEDRIVE
  HOMEPATH
  LOGONSERVER
  NUMBER_OF_PROCESSORS
  OS
  Path
  PATHEXT
  PCToolsDir
  PROCESSOR_ARCHITECTURE
  PROCESSOR_IDENTIFIER
  PROCESSOR_LEVEL
  PROCESSOR_REVISION
  ProgramFiles
  SESSIONNAME
  SystemDrive
  SystemRoot
  TEMP
  TMP
  USERDOMAIN
  USERNAME
  USERPROFILE
  windir
}
begin
  Memo1.Lines.Add(GetEnvVarValue('ALLUSERSPROFILE'));
  Memo1.Lines.Add(GetEnvVarValue('APPDATA'));
  Memo1.Lines.Add(GetEnvVarValue('CLIENTNAME'));
  Memo1.Lines.Add(GetEnvVarValue('CommonProgramFiles'));
  Memo1.Lines.Add(GetEnvVarValue('COMPUTERNAME'));
  Memo1.Lines.Add(GetEnvVarValue('ComSpec'));
  Memo1.Lines.Add(GetEnvVarValue('HOMEDRIVE'));
  Memo1.Lines.Add(GetEnvVarValue('HOMEPATH'));
  Memo1.Lines.Add(GetEnvVarValue('LOGONSERVER'));
  Memo1.Lines.Add(GetEnvVarValue('NUMBER_OF_PROCESSORS'));
  Memo1.Lines.Add(GetEnvVarValue('OS'));
  Memo1.Lines.Add(GetEnvVarValue('Path'));
  Memo1.Lines.Add(GetEnvVarValue('PROCESSOR_IDENTIFIER'));
  Memo1.Lines.Add(GetEnvVarValue('PROCESSOR_LEVEL'));
  Memo1.Lines.Add(GetEnvVarValue('PROCESSOR_REVISION'));
    Memo1.Lines.Add(GetEnvVarValue('PROCESSOR_ARCHITECTURE'));
      Memo1.Lines.Add(GetEnvVarValue('PATHEXT'));
        Memo1.Lines.Add(GetEnvVarValue('USERPROFILE'));

end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
//5howMessage(IntToStr(cpuid));
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
showmessage(GetComputerGUID);
end;

procedure TForm1.btnCpuClick(Sender: TObject);
begin
showmessage(inttostr(FastCodeCPUID.CPU.L2CacheSize));
end;

procedure TForm1.btnNomeUsusaruiClick(Sender: TObject);
var
  Usuario: PChar;
  Tamanho: Cardinal;
begin
  ShowMessage(getUserName);

end;

function TForm1.GetSerialMotherBoard: String;
var
  a, b, c, d: LongWord;
begin
  asm push EAX
    push EBX
    push ECX
    push EDX
    mov eax, 1
    db $0F, $A2
    mov a, EAX
    mov b, EBX
    mov c, ECX
    mov d, EDX
    pop EDX
    pop  ECX
    pop  EBX
    pop EAX
  end;
  Result := IntToHex(a, 8) + '-' + IntToHex(b, 8) + '-' + IntToHex(c, 8) + '-' +
    IntToHex(d, 8);
end;

function GetCPUSpeed: Double;
const
  DelayTime = 500;
var
  TimerHi, TimerLo: DWord;
  PriorityClass, Priority: Integer;
begin
  try
    PriorityClass := GetPriorityClass(GetCurrentProcess);
    Priority := GetThreadPriority(GetCurrentThread);
    SetPriorityClass(GetCurrentProcess, REALTIME_PRIORITY_CLASS);
    SetThreadPriority(GetCurrentThread, THREAD_PRIORITY_TIME_CRITICAL);
    Sleep(10);
    asm
      dw 310Fh // rdtsc
      mov TimerLo, eax
      mov TimerHi, edx
    end;
    Sleep(DelayTime);
    asm
      dw 310Fh // rdtsc
      sub eax, TimerLo
      sbb edx, TimerHi
      mov TimerLo, eax
      mov TimerHi, edx
    end;
    SetThreadPriority(GetCurrentThread, Priority);
    SetPriorityClass(GetCurrentProcess, PriorityClass);
    Result := TimerLo / (1000.0 * DelayTime);
  except
  end;
end;

function Retorna_IP: string;
var
  p: PHostEnt;
  s: array [0 .. 128] of Char;
  p2: PAnsiChar;
  wVersionRequested: WORD;
  wsaData: TWSAData;
begin
  wVersionRequested := MAKEWORD(1, 1);
  WSAStartup(wVersionRequested, wsaData);
  GetHostName(@s, 128);
  p := GetHostByName(@s);
  p2 := (iNet_ntoa(PInAddr(p^.h_addr_list^)^));
  Result := p2;
  WSACleanup;
end;

function Retorna_Nome: string;
var
  p: PHostEnt;
  s: array [0 .. 128] of Char;
  p2: PChar;
  wVersionRequested: WORD;
  wsaData: TWSAData;
begin
  wVersionRequested := MAKEWORD(1, 1);
  WSAStartup(wVersionRequested, wsaData);
  GetHostName(@s, 128);
  p := GetHostByName(@s);
  Result := p^.h_Name;
end;

function Retorna_Dominio: string;
var
  hProcesso, hTokenAcesso: THandle;
  Buffer: PChar;
  Usuario: array [0 .. 31] of Char;
  Dominio: array [0 .. 31] of Char;

  TamanhoBufferInfo: Cardinal;
  TamanhoUsuario: Cardinal;
  TamanhoDominio: Cardinal;
  snu: SID_NAME_USE;

begin
  TamanhoBufferInfo := 1000;
  TamanhoUsuario := sizeof(Usuario);
  TamanhoDominio := sizeof(Dominio);

  hProcesso := GetCurrentProcess;
  if OpenProcessToken(hProcesso, TOKEN_READ, hTokenAcesso) then
    try
      GetMem(Buffer, TamanhoBufferInfo);
      try
        if GetTokenInformation(hTokenAcesso, TokenUser, Buffer,
          TamanhoBufferInfo, TamanhoBufferInfo) then
          LookupAccountSid(nil, PSIDAndAttributes(Buffer)^.sid, Usuario,
            TamanhoUsuario, Dominio, TamanhoDominio, snu)
        else
          // RaiseLastOSError;
        finally
          FreeMem(Buffer);
        end;
        Result := Dominio;
      finally
        CloseHandle(hTokenAcesso);
      end
    end;

  function Retorna_Usuario: string;
  begin

    Result := getUserName;
  end;

  function Retorna_Memoria: string;
  var
    MemoryStatus: TMemoryStatus;
  begin
    MemoryStatus.dwLength := sizeof(MemoryStatus);
    GlobalMemoryStatus(MemoryStatus);
    Result := 'Total de memória física : ' + FormatFloat('#0,000',
      MemoryStatus.dwTotalPhys);
    (*
      {typedef struct _MEMORYSTATUS}
      DWORD dwLength; // sizeof(MEMORYSTATUS)
      DWORD dwMemoryLoad; // percentual de memória em uso
      DWORD dwTotalPhys; // bytes de memória física
      DWORD dwAvailPhys; // bytes livres de memória física
      DWORD dwTotalPageFile; // bytes de paginação de arquivo
      DWORD dwAvailPageFile; // bytes livres de paginação de arquivo
      DWORD dwTotalVirtual; // bytes em uso de espaço de endereço
      DWORD dwAvailVirtual; // bytes livres}
    *)
  end;

  procedure ChangeByteOrder(var Data; Size: Integer);
  var
    ptr: PChar;
    i: Integer;
    c: Char;
  begin
    ptr := @Data;
    for i := 0 to (Size shr 1) - 1 do
    begin
      c := ptr^;
      ptr^ := (ptr + 1)^;
      (ptr + 1)^ := c;
      Inc(ptr, 2);
    end;
  end;

  { função que pega o serial number FÍSICO do HD e retorna string }

  function GetIdeDiskSerialNumber: String;
  type
    TSrbIoControl = packed record
      HeaderLength: ULONG;
      Signature: Array [0 .. 7] of Char;
      Timeout: ULONG;
      ControlCode: ULONG;
      ReturnCode: ULONG;
      Length: ULONG;
    end;

    SRB_IO_CONTROL = TSrbIoControl;
    PSrbIoControl = ^TSrbIoControl;

    TIDERegs = packed record
      bFeaturesReg: Byte; // especificar "comandos" SMART
      bSectorCountReg: Byte; // registro de contador de setor
      bSectorNumberReg: Byte; // registro de número de setores
      bCylLowReg: Byte; // valor de cilindro (byte mais baixo)
      bCylHighReg: Byte; // valor de cilindro (byte mais alto)
      bDriveHeadReg: Byte; // registro de drive/cabeça
      bCommandReg: Byte; // comando IDE
      bReserved: Byte; // reservado- tem que ser zero
    end;

    IDEREGS = TIDERegs;
    PIDERegs = ^TIDERegs;

    TSendCmdInParams = packed record
      cBufferSize: DWord;
      irDriveRegs: TIDERegs;
      bDriveNumber: Byte;
      bReserved: Array [0 .. 2] of Byte;
      dwReserved: Array [0 .. 3] of DWord;
      bBuffer: Array [0 .. 0] of Byte;
    end;

    SENDCMDINPARAMS = TSendCmdInParams;
    PSendCmdInParams = ^TSendCmdInParams;

    TIdSector = packed record
      wGenConfig: WORD;
      wNumCyls: WORD;
      wReserved: WORD;
      wNumHeads: WORD;
      wBytesPerTrack: WORD;
      wBytesPerSector: WORD;
      wSectorsPerTrack: WORD;
      wVendorUnique: Array [0 .. 2] of WORD;
      sSerialNumber: Array [0 .. 19] of Char;
      wBufferType: WORD;
      wBufferSize: WORD;
      wECCSize: WORD;
      sFirmwareRev: Array [0 .. 7] of Char;
      sModelNumber: Array [0 .. 39] of Char;
      wMoreVendorUnique: WORD;
      wDoubleWordIO: WORD;
      wCapabilities: WORD;
      wReserved1: WORD;
      wPIOTiming: WORD;
      wDMATiming: WORD;
      wBS: WORD;
      wNumCurrentCyls: WORD;
      wNumCurrentHeads: WORD;
      wNumCurrentSectorsPerTrack: WORD;
      ulCurrentSectorCapacity: ULONG;
      wMultSectorStuff: WORD;
      ulTotalAddressableSectors: ULONG;
      wSingleWordDMA: WORD;
      wMultiWordDMA: WORD;
      bReserved: Array [0 .. 127] of Byte;
    end;

    PIdSector = ^TIdSector;

  const
    IDE_ID_FUNCTION = $EC;
    IDENTIFY_BUFFER_SIZE = 512;
    DFP_RECEIVE_DRIVE_DATA = $0007C088;
    IOCTL_SCSI_MINIPORT = $0004D008;
    IOCTL_SCSI_MINIPORT_IDENTIFY = $001B0501;
    DataSize = sizeof(TSendCmdInParams) - 1 + IDENTIFY_BUFFER_SIZE;
    BufferSize = sizeof(SRB_IO_CONTROL) + DataSize;
    W9xBufferSize = IDENTIFY_BUFFER_SIZE + 16;
  var
    hDevice: THandle;
    cbBytesReturned: DWord;
    pInData: PSendCmdInParams;
    pOutData: Pointer; // PSendCmdOutParams
    Buffer: Array [0 .. BufferSize - 1] of Byte;
    srbControl: TSrbIoControl absolute Buffer;

  begin
    Result := '';
    FillChar(Buffer, BufferSize, #0);

    if (Win32Platform = VER_PLATFORM_WIN32_NT )or (1 =1 )then
    // Windows NT, Windows 2000, Windows XP
    begin
      // recuperar handle da porta SCSI
      hDevice := CreateFile('\\.\C:',
        // Nota: '\\.\C:' precisa de privilégios administrativos
        GENERIC_READ or GENERIC_WRITE, FILE_SHARE_READ or FILE_SHARE_WRITE, nil,
        OPEN_EXISTING, 0, 0);
      if hDevice = INVALID_HANDLE_VALUE then
        Exit;
      try
        srbControl.HeaderLength := sizeof(SRB_IO_CONTROL);
        System.Move('SCSIDISK', srbControl.Signature, 8);
        srbControl.Timeout := 2;
        srbControl.Length := DataSize;
        srbControl.ControlCode := IOCTL_SCSI_MINIPORT_IDENTIFY;
        pInData := PSendCmdInParams(PChar(@Buffer) + sizeof(SRB_IO_CONTROL));
        pOutData := pInData;
        with pInData^ do
        begin
          cBufferSize := IDENTIFY_BUFFER_SIZE;
          bDriveNumber := 0;
          with irDriveRegs do
          begin
            bFeaturesReg := 0;
            bSectorCountReg := 1;
            bSectorNumberReg := 1;
            bCylLowReg := 0;
            bCylHighReg := 0;
            bDriveHeadReg := $A0;
            bCommandReg := IDE_ID_FUNCTION;
          end;
        end;
        if not DeviceIoControl(hDevice, IOCTL_SCSI_MINIPORT, @Buffer,
          BufferSize, @Buffer, BufferSize, cbBytesReturned, nil) then
          Exit;
      finally
        CloseHandle(hDevice);
      end;
    end
    else
    begin
      // Windows 95 OSR2, Windows 98, Windows ME
      hDevice := CreateFile('\\.\SMARTVSD', 0, 0, nil, CREATE_NEW, 0, 0);
      if hDevice = INVALID_HANDLE_VALUE then
        Exit;
      try
        pInData := PSendCmdInParams(@Buffer);
        pOutData := @pInData^.bBuffer;
        with pInData^ do
        begin
          cBufferSize := IDENTIFY_BUFFER_SIZE;
          bDriveNumber := 0;
          with irDriveRegs do
          begin
            bFeaturesReg := 0;
            bSectorCountReg := 1;
            bSectorNumberReg := 1;
            bCylLowReg := 0;
            bCylHighReg := 0;
            bDriveHeadReg := $A0;
            bCommandReg := IDE_ID_FUNCTION;
          end;
        end;
        if not DeviceIoControl(hDevice, DFP_RECEIVE_DRIVE_DATA, pInData,
          sizeof(TSendCmdInParams) - 1, pOutData, W9xBufferSize,
          cbBytesReturned, nil) then
          Exit;
      finally
        CloseHandle(hDevice);
      end;
    end;
    with PIdSector(PChar(pOutData) + 16)^ do
    begin
      ChangeByteOrder(sSerialNumber, sizeof(sSerialNumber));
      SetString(Result, sSerialNumber, sizeof(sSerialNumber));
    end;
  end;

  procedure TForm1.Get(Sender: TObject);
  var
    Temp, Platform, Version: String;
    osInfo: TOSVersionInfo;
    cpuspeed: string;
  begin

    osInfo.dwOSVersionInfoSize := sizeof(osInfo);
    GetVersionEx(osInfo);
    Version := INtTOStr(osInfo.dwMinorVersion);
    Temp := INtTOStr(osInfo.dwBuildNumber and $0FFFF);
    Temp := String(osInfo.szCSDVersion);
    if (Length(Temp) > 0) then
      if (Temp[1] <> ' ') then
        Temp := ' ' + Temp;
    Version := Version + Temp;

    Label10.caption := Version;

    case osInfo.dwPlatformId of
      VER_PLATFORM_WIN32s:
        Platform := 'Win32s';
      VER_PLATFORM_WIN32_WINDOWS:
        begin
          if (osInfo.dwMinorVersion = 0) then
            Platform := 'Windows 95'
          else if (osInfo.dwMinorVersion = 10) then
            Platform := 'Windows 98'
          else
            Platform := 'Windows Me';
        end;
      VER_PLATFORM_WIN32_NT:
        case osInfo.dwMajorVersion of
          3:
            Platform := 'Windows NT 3';
          4:
            Platform := 'Windows NT 4.0';
          5:
            case osInfo.dwMinorVersion of
              0:
                Platform :=
                  'Windows 2000, Windows Vista ou Windows Server 2008';
              1:
                Platform := 'Windows XP';
              2:
                Platform :=
                  'Windows Server 2003 R2, 2003 ou XP Professional X64 Edition';
            else
              Platform := 'Windows Version +';
            end;
        end;
    end;

    cpuspeed := Format('%f MHz', [GetCPUSpeed]);
    Label1.caption := 'Nome máquina: ' + Retorna_Nome;
    Label2.caption := 'IP: ' + Retorna_IP;
    Label3.caption := 'Domínio: ' + Retorna_Dominio;
    Label4.caption := 'Velocidade do CPU: ' + cpuspeed + ' (valor aproximado)';
    Label5.caption := 'Nome do usuário na rede: ' + Retorna_Usuario;
    Label6.caption := 'Memória RAM: ' + Retorna_Memoria;
    Label8.caption := 'Tamanho do Disco: ' + FormatFloat('#0,000',
      DiskSize(0) div 1024);
    Label7.caption := 'Espaço Livre: ' + FormatFloat('#0,000',
      DiskFree(0) div 1024);
    Label9.caption := 'Serial Físico do HD: ' + Trim(GetIdeDiskSerialNumber);
    Label10.caption := Platform;

  end;

end.
