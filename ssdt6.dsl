/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180105 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt6.dat, Mon Jul 30 16:01:44 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008D (141)
 *     Revision         0x01
 *     Checksum         0x04
 *     OEM ID           "PmRef"
 *     OEM Table ID     "ApCst"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20061109 (537268489)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "ApCst", 0x00003000)
{
    External (_PR_.CPU0._CST, IntObj)
    External (_PR_.CPU1, DeviceObj)
    External (_PR_.CPU2, DeviceObj)
    External (_PR_.CPU3, DeviceObj)

    Scope (\_PR.CPU1)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_PR.CPU0._CST) /* External reference */
        }
    }

    Scope (\_PR.CPU2)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_PR.CPU0._CST) /* External reference */
        }
    }

    Scope (\_PR.CPU3)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_PR.CPU0._CST) /* External reference */
        }
    }
}

