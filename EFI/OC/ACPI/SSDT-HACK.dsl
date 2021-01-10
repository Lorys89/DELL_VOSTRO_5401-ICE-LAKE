/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLFK8I5c.aml, Sun Jan 10 17:15:49 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003A6 (934)
 *     Revision         0x02
 *     Checksum         0xA1
 *     OEM ID           "DELL"
 *     OEM Table ID     "V-5401"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "DELL", "V-5401", 0x00000000)
{
    External (_SB_.AC__, DeviceObj)    // (from opcode)
    External (_SB_.ACOS, IntObj)    // (from opcode)
    External (_SB_.ACSE, IntObj)    // (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GFX0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.I2C1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.I2C1.TPD0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)    // (from opcode)
    External (_SB_.PR00, ProcessorObj)    // (from opcode)
    External (STAS, IntObj)    // (from opcode)
    External (TPDM, FieldUnitObj)    // (from opcode)
    External (XPRW, MethodObj)    // 2 Arguments (from opcode)

    Scope (\_SB)
    {
        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x04)
                {
                    "kUSBSleepPortCurrentLimit", 
                    0x0BB8, 
                    "kUSBWakePortCurrentLimit", 
                    0x0BB8
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Scope (PR00)
        {
            If (_OSI ("Darwin"))
            {
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Return (Package (0x02)
                    {
                        "plugin-type", 
                        One
                    })
                }
            }
        }

        Scope (AC)
        {
            If (_OSI ("Darwin"))
            {
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x6F, 
                    0x03
                })
            }
        }

        Scope (PCI0)
        {
            Device (MCHC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Scope (I2C1)
            {
                Scope (TPD0)
                {
                    If (_OSI ("Darwin"))
                    {
                        Name (OSYS, 0x07DC)
                    }
                }
            }

            Scope (GFX0)
            {
                Device (PNLF)
                {
                    Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
                    Name (_CID, "backlight")  // _CID: Compatible ID
                    Name (_UID, 0x13)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            Scope (LPCB)
            {
                Device (PMCR)
                {
                    Name (_HID, EisaId ("APP9876"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadWrite,
                            0xFE000000,         // Address Base
                            0x00010000,         // Address Length
                            )
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Device (EC)
                {
                    Name (_HID, "ACID0001")  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Scope (PS2K)
                {
                    Name (RMCF, Package (0x04)
                    {
                        "Keyboard", 
                        Package (0x02)
                        {
                            "RemapPrntScr", 
                            ">y"
                        }, 

                        "Keyboard", 
                        Package (0x02)
                        {
                            "Custom PS2 Map", 
                            Package (0x03)
                            {
                                Package (0x00){}, 
                                "46=0", 
                                "e045=0"
                            }
                        }
                    })
                }
            }
        }
    }

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            Store (One, STAS)
            Store (Zero, TPDM)
            Store (0x80, \_SB.ACOS)
            Store (Zero, \_SB.ACSE)
        }
    }

    Method (GPRW, 2, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            If (LEqual (0x6D, Arg0))
            {
                Return (Package (0x02)
                {
                    0x6D, 
                    Zero
                })
            }

            If (LEqual (0x0D, Arg0))
            {
                Return (Package (0x02)
                {
                    0x0D, 
                    Zero
                })
            }
        }

        Return (XPRW (Arg0, Arg1))
    }
}

