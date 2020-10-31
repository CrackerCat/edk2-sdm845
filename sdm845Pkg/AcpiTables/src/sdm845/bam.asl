//
// Copyright (c) 2013-2017, Mmoclauq Technologies Inc. All rights reserved.
//
// This file contains the Bus Access Modules (BAM)
// ACPI device definitions and pipe configurations
//

//
//  Device Map:
//    0x2401 - BAM
//
//  List of Devices
//    BAM1  - CRYPTO1
//    BAM5  - SLIMBUS1
//    BAM6  - SLIMBUS
//    BAM7  - TSIF
//    BAMD  - USB3.0 secondary
//    BAME  - QDSS 
//    BAMF  - USB3.0 primary
Device (BAM1)
{
    Name (_HID, "QCOM0213")  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, One)  // _UID: Unique ID
    Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0x01DC4000,         // Address Base
                0x00024000,         // Address Length
                )
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                0x00000130,
            }
        })
        Return (RBUF) /* \_SB_.BAM1._CRS.RBUF */
    }
}

Device (BAM5)
{
    Name (_HID, "QCOM0213")  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, 0x05)  // _UID: Unique ID
    Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0x17184000,         // Address Base
                0x00032000,         // Address Length
                )
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                0x000000C4,
            }
        })
        Return (RBUF) /* \_SB_.BAM5._CRS.RBUF */
    }
}

Device (BAM6)
{
    Name (_HID, "QCOM0213")  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, 0x06)  // _UID: Unique ID
    Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0x17204000,         // Address Base
                0x00026000,         // Address Length
                )
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                0x00000144,
            }
        })
        Return (RBUF) /* \_SB_.BAM6._CRS.RBUF */
    }
}

Device (BAM7)
{
    Name (_HID, "QCOM0213")  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, 0x07)  // _UID: Unique ID
    Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0x08884000,         // Address Base
                0x00023000,         // Address Length
                )
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                0x0000009A,
            }
        })
        Return (RBUF) /* \_SB_.BAM7._CRS.RBUF */
    }
}

Device (BAMD)
{
    Name (_HID, "QCOM0213")  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, 0x0D)  // _UID: Unique ID
    Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0x0A904000,         // Address Base
                0x00017000,         // Address Length
                )
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                0x000000A9,
            }
        })
        Return (RBUF) /* \_SB_.BAMD._CRS.RBUF */
    }
}

Device (BAME)
{
    Name (_HID, "QCOM0213")  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, 0x0E)  // _UID: Unique ID
    Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0x06064000,         // Address Base
                0x00015000,         // Address Length
                )
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                0x000000C7,
            }
        })
        Return (RBUF) /* \_SB_.BAME._CRS.RBUF */
    }
}

Device (BAMF)
{
    Name (_HID, "QCOM0213")  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, 0x0F)  // _UID: Unique ID
    Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0x0A704000,         // Address Base
                0x00017000,         // Address Length
                )
            Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
            {
                0x000000A4,
            }
        })
        Return (RBUF) /* \_SB_.BAMF._CRS.RBUF */
    }
}

