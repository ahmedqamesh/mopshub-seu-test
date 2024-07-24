# path definitions for script
set MY_SCRIPT_PATH [exec dirname [exec readlink -f [info script]]]
# For windows users: Uncomment the line below, set the path below to your work directory and comment the line above
#set MY_SCRIPT_PATH "C:/my/windows/path/to/ControllerModbus/work"
set MY_WORKING_DIR [pwd]

# Debug output of path
puts "Script path $MY_SCRIPT_PATH" 
puts "Working directory $MY_WORKING_DIR" 

# Exectue script only if correct working path is set
if {$MY_SCRIPT_PATH == $MY_WORKING_DIR} {
# Create project in subfolder with defined part
  create_project TestSetup ./TestSetup -part xc7a35ticsg324-1L
# Set the FPGA board to use the board definitions
  set_property board_part digilentinc.com:arty:part0:1.1 [current_project]
# add constraint files
  add_files -fileset constrs_1 -norecurse ../srcs/constrs/constraints.xdc
# add HDL source files
  add_files -fileset sources_1 -norecurse ../srcs/sources/Inverter.v
  add_files -fileset sources_1 -norecurse ../srcs/sources/Encoder.v
  add_files -fileset sources_1 -norecurse ../srcs/sources/seu_shift_reg.v
  add_files -fileset sources_1 -norecurse ../srcs/sources/seu_shift_reg_tmr.v
  add_files -fileset sources_1 -norecurse ../srcs/sources/seu_shift_combined_struct.v
# add IP repository and update catalog
  set_property  ip_repo_paths  ../../fpga_ip/ipdefs [current_project]
  update_ip_catalog
# recreate block diagram
  source ../recreate_bd.tcl
# create wrapper for block diagram
  make_wrapper -files [get_files ./TestSetup/TestSetup.srcs/sources_1/bd/system/system.bd] -top
  add_files -norecurse ./TestSetup/TestSetup.srcs/sources_1/bd/system/hdl/system_wrapper.v
  update_compile_order -fileset sources_1
	set_property top system_wrapper [current_fileset]
	update_compile_order -fileset sources_1
} {
	puts "Do not run this script outside its directory. "
}

