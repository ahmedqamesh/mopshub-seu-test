## Recreating the vivado project:
1. Navigate to the 'work' directory. 
2. Start Vivado  using the command `source ./vivado/recreate_project.tcl` in the Vivado Tcl console.
3. Generate the bitstream file.
4. Export Hardware HW for SDK (From File > Export > Export Hardware, make sure to check “Include bitstream” setting:)
5. Follow the SDK Steps to create a bootloader and program the board section at the following manual [How To Store Your SDK Project in SPI Flash]([1111](https://digilent.com/reference/learn/programmable-logic/tutorials/htsspisf/start?_ga=2.186859688.1885957646.1685468583-1869752114.1684483189)

## Installation and usage
**To run SEU test:**
1. Go to the directory : `$Proj_dir/python` . 
2. Use the command `/usr/bin/python3 test_seu.py -c 2 -f 1 F 1`.<br/>
**Note:** The file  works with some arguments:<pre><code>-h :help
-m  :Manual mode
-d  :Activate debug output
-c  :chip id 
-n  :number of FPGA to use 
-t  :Shift hold time in s
-f  :Shift Frequency in kHz
-F  :Shift Frequency in Hz
-a  :ADC monitoring Intervall in s</code></pre>
3. The script will produce an output directory under `$Proj_dir/python/irradiation_data` for the specified chip<br/>
output_file: $HOME/python/irradiation_data/CHIP_NAME/SEU_Hold_Test_Info.txt.

**For analysis:** use the command `/usr/bin/python3 analyze_Irradiation_data.py --all irradiation_data/<DATA DIR>`.<br/>