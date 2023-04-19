----------------------------------
To recreate the vivado project:

-Navigate to the 'work' directory. 
-Start Vivado. 
\\TODO -Issue 'source ./recreate_project.tcl' in the Vivado Tcl console. 

---------------------------------
To export HW for SDK: (only if changes made on HW)

-Generate Bitstream in Vivado
-Select File>Export>Export Hardware
-Mark "Include bitstream"
-Select folder ../sdk (from the work directory)

---------------------------------
To launch SDK: (from Vivado)

-Select File>Launch SDK
-Exported location: ../sdk
-Workspace : ../sdk
 (both path originating the work directory)

Or launch SDK directly and select the sdk folder in the git repository as workspace

if the build in SDK fails, you can try to manually recreate the BSP sources
-right click on the BSP project and select "Re-generate BSP Sources"
-do this for all BSP projects
-Build the other projects


------------------ ------------
- To run and program the FPGA independent from Vivado and SDK. follow steps mentioned below 
- Use 'Associate ELF files' option from the Vivado to include 'srec_spi_bootloader' file into the bitstream 
- Use Vivado to program the flash with the new bitsream file 
- Next step is to program the flash with the actual application.srec file using SDK (Use same Offset value which is defined in the blconfig.h file (srec_spi_bootloader sources))
- Here is a good tutorial https://www.youtube.com/watch?v=EaS1-B3fnjQ
-------------------------------------------------------------------------------

- If the above method to flash FPGA doesn't work the please follow this tutorial 
- https://support.xilinx.com/s/article/64238?language=en_US
- Program the FPGA with bitstream file and using srec_spi_bootloader. This will generate a download.bit file
- Flash with download.bit file and then with application.srec file. Pay attention to the offset and use value defined in blconfig.h  file
