//
// Copyright (c) 2011-2019, Mmoclauq Technologies, Inc. All rights reserved.
//

// To enable SOC revision based run time differentiation, uncomment following line
// and uncomment SSID method in ABD device. The original string is artificailly set as
// 16 characters, so there is enough room to hold SOC revision string.
// To adjust the number, the MAX_SOCID_LEN macro as defined in ABD device.h should be
// adjusted at the same time.

Name(SOID, 0xffffffff)          // Holds the Chip Id
Name(SIDS, "899800000000000")   // Holds the Chip ID translated to a string
Name(SIDV, 0xffffffff)          // Holds the Chip Version as (major<<16)|(minor&0xffff)
Name(SVMJ, 0xffff)              // Holds the major Chip Version
Name(SVMI, 0xffff)              // Holds the minor Chip Version
Name(SDFE, 0xffff)              // Holds the Chip Family enum
Name(SFES, "899800000000000")   // Holds the Chip Family translated to a string
Name(SIDM, 0x0000000FFFFFFFFF)  // Holds the Modem Support bit field
Name(SIDT, 0xffffffff)          // Holds the Chip Tier value
Name(SOSN, 0xaaaaaaaabbbbbbbb)  // Holds the Chip Serial Number
Name (RMTB, 0x99500000)         // Holds the RemoteFS shared memory base address
Name (RMTX, 0x00A00000)         // Holds the RemoteFS shared memory length
Name (RFMB, 0x99F00000)         // Holds the RFSA MPSS shared memory base address
Name (RFMS, 0x00010000)         // Holds the RFSA MPSS shared memory length
Name (RFAB, 0x99F10000)         // Holds the RFSA ADSP shared memory base address
Name (RFAS, 0x00010000)         // Holds the RFSA ADSP shared memory length
Name (TCMA, 0x8B500000)         // Holds TrEE Carveout Memory Address
Name (TCML, 0x00A00000)         // Holds TrEE Carveout Memory Length
Name (SOSI, 0xdeadbeefffffffff) // Holds the base address of the SoCInfo shared memory region used by ChipInfoLib

//Include("cust_dsdt_common.asl")

//Audio Drivers
//Include("audio.asl")


        //
        // Storage - UFS/SD
        //
		Include("ufs.asl")
		// Include("sdc.asl")

        //
        // ASL Bridge Device
        //
		Include("abd.asl")

		 Name (ESNL, 20) // Exsoc name limit 20 characters
		 Name (DBFL, 23) // buffer Length, should be ESNL+3

//
// PMIC driver
//
Include("pmic_core.asl")

//
// PMICTCC driver
//
Include("pmic_batt.asl")

        Include("pep.asl")
        Include("bam.asl")
        Include("buses.asl")
        // MPROC Drivers (PIL Driver and Subsystem Drivers)
        Include("win_mproc.asl")
        Include("syscache.asl")
        Include("HoyaSmmu.asl")
        //Include("Ocmem.asl")
        Include("graphics.asl")
        //Include("OcmemTest.asl")

        Include("SCM.asl");

		//
		// SPMI driver
        //
        Include("spmi.asl")

        //
        // TLMM controller.
        //
        Include("qcgpio.asl")

        Include("pcie.asl")

        Include("cbsp_mproc.asl")

		Include("adsprpc.asl")

        //
        // RemoteFS
        //
        Include("rfs.asl")


        // Test Drivers
        Include("testdev.asl")
		//
        // QCSP
        //Include("qcsp.asl")

        //
        // Qualcomm IPA
        //
        Include("ipa.asl")

        //
        // Qualcomm GSI
        //
        Include("gsi.asl")



//	Device (IPA)
//        {
//            // Indicates dependency on PEP
//           Name (_DEP, Package () { \_SB_.PEP0 })
//           Name(_HID, "HID_IPA")
//           Name (_UID, 0)
//        }

        //
        //Qualcomm DIAG Service
        //
        Device (QDIG)
        {
            Name (_DEP, Package(0x1)
            {
                \_SB_.GLNK
            })
           Name (_HID, "HID_QDIG")
		   Alias(\_SB.PSUB, _SUB)
        }
        Include("ssm.asl")
		Include("Pep_lpi.asl")


	//
	// QCOM GPS
	//
	Include("gps.asl")

	//
	// Qualcomm GPS driver
	//
	// Device (GPS)
	// {
	// 	Name (_DEP, Package(0x1)
	// 	{
	// 	\_SB_.GLNK
	// 	})
	//
	// 	Name (_HID, "HID_GPS")
	// 	Name (_CID, "ACPI\HID_GPS")
	// 	Name (_UID, 0)
    //    Method(_STA, 0)
    //   {
    //        return (0x0) //}  // Do not load driver.
    //    }
	// }

    // QUPV3 GPI device node and resources
    Include("qgpi.asl")

    // QCConnectionSecurity driver
    // Include("ConnectionSecurity.asl")

Include("qwpp.asl")
//Include("nfc.asl")

//Include("sar_manager.asl")

//
// SOCPartition Device
//
Device (SOCP)
{
    Name (_HID, "HID_SOCP")

    Alias(\_SB.PSUB, _SUB)
    Alias(\_SB.STOR, STOR)
}

//ATT signed drivers
Include("att_signed_devices.asl")
