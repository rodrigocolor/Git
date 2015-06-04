unit cpuid;


// CPU identification.
// This unit defines the GetCpuID function, which uses the CPUID
// instruction to get the processor type. GetCpuID returns True if the
// processor support the CPUID instruction and False if it does not.
// Older 486 and earlier processors do not support CPUID.

// Copyright © 1999 Tempest Software, Inc.

interface

const
  VendorIntel = 'GenuineIntel';
  VendorAMD   = 'AuthenticAMD';
  VendorCyrix = 'CyrixInstead';

type
  TCpuType = (cpuOriginalOEM, cpuOverdrive, cpuDual, cpuReserved);
  TCpuFeature = (cfFPU, cfVME, cfDE, cfPDE, cfTSC, cfMSR, cfMCE, cfCX8,
               cfAPIC, cfReserved10, cfReserved11, cfMTRR, cfPGE, cfMCA,
               cfCMOV, cfPAT, cfReserved17, cfReserved18, cfReserved19,
               cfReserved20, cfReserved21, cfReserved22, cfReserved23,
               cfMMX, cfFastFPU, cfReserved26, cfReserved27,
               cfReserved28, cfReserved29, cfReserved30, cfReserved31
              );
  TCpuFeatureSet = set of TCpuFeature;

  UInt4 = 0..15;
  TCpuId = packed record
    CpuType: TCpuType;
    Family: UInt4;
    Model: UInt4;
    Stepping: UInt4;
    Features: TCpuFeatureSet;
    Vendor: string[12];
  end;

// Get the CPU information and store it in Cpuid.
function GetCpuid(var Cpuid: TCpuid): Boolean;

implementation

function GetCpuid(var Cpuid: TCpuid): Boolean;
asm
  // Test whether the processor supports the CPUID instruction.
  // The test changes ECX and EDX.
  pushfd
  pop ecx             // Get the EFLAGS into ECX
  mov edx, ecx        // Save a copy of EFLAGS in EDX
  xor ecx, $200000    // Toggle the ID flag
  push ecx            // Try to set EFLAGS
  popfd
  pushfd              // Now test whether the change sticks
  pop ecx             // Get the new EFLAGS into ECX
  xor ecx, edx        // Compare with EDX
  je @NoCpuID         // If the bits are equal, the processor
                      // doesn't support the CPUID instruction

  // Okay to use CPUID instruction. Restore original EFLAGS
  push edx
  popfd

  // The CPUID instruction will trample EAX, so save the Cpuid argument
  // in ESI. Delphi requires ESI be preserved when the ASM block ends,
  // so save its previous value. Also save EBX, which CPUID will trample,
  // and which must be preserved.
  push esi
  push ebx
  mov esi, eax

  // Get the vendor name, which is the concatenation of the contents
  // of the EBX, EDX, and EAX registers, treated as three 4-byte
  // character arrays.
  xor eax, eax
  dw $a20f                                 // CPUID instruction
  mov BYTE(TCpuid(esi).Vendor), 12         // string length
  mov DWORD(TCpuid(esi).Vendor+1), ebx     // string content
  mov [OFFSET(TCpuid(esi).Vendor)+5], edx
  mov [OFFSET(TCpuid(esi).Vendor)+9], ecx

  // Get the processor information
  dw $a20f               // CPUID instruction
  mov TCpuid(esi).Features, edx

  // The signature comes in parts, most of which are 4 bits long.
  // Delphi doesn't support bit fields, so the TCpuid record uses bytes
  // to store these fields. That means unpacking the nibbles into bytes.
  mov edx, eax
  and al, $F
  mov TCpuid(esi).Stepping, al

  shr edx, 4
  mov eax, edx
  and al, $F
  mov TCpuid(esi).Model, al

  shr edx, 4
  mov eax, edx
  and al, $F
  mov TCpuid(esi).Family, al

  shr edx, 4
  mov eax, edx
  and al, $3
  mov TCpuid(esi).CpuType, al

  pop ebx             // restore the EBX and ESI registers
  pop esi
  mov al, 1           // Return True for success
  ret

@NoCpuId:
  xor eax, eax        // Return False for no CPUID instruction
end;

end.



