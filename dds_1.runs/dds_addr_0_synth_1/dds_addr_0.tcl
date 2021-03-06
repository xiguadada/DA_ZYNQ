# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7z020clg400-2

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir F:/hard_projects/wave_producer/dds_1/dds_1.cache/wt [current_project]
set_property parent.project_path F:/hard_projects/wave_producer/dds_1/dds_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  e:/soft_projects/fpga_minist/code/mnist_fpga-master/mnist_fpga-master/ipcore_dir
  f:/hard_projects/wave_producer/dds_1/dds_1.srcs/sources_1/ip
  f:/hard_projects/wave_producer/dds_1/dds_1.srcs/sources_1/ip/dds_addr
  f:/hard_projects/wave_producer/dds_1/dds_1.srcs/sources_1
} [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_ip f:/hard_projects/wave_producer/dds_1/dds_1.srcs/sources_1/ip/dds_addr_0/dds_addr_0.xci
set_property is_locked true [get_files f:/hard_projects/wave_producer/dds_1/dds_1.srcs/sources_1/ip/dds_addr_0/dds_addr_0.xci]

synth_design -top dds_addr_0 -part xc7z020clg400-2 -mode out_of_context
rename_ref -prefix_all dds_addr_0_
write_checkpoint -noxdef dds_addr_0.dcp
catch { report_utilization -file dds_addr_0_utilization_synth.rpt -pb dds_addr_0_utilization_synth.pb }
if { [catch {
  file copy -force F:/hard_projects/wave_producer/dds_1/dds_1.runs/dds_addr_0_synth_1/dds_addr_0.dcp f:/hard_projects/wave_producer/dds_1/dds_1.srcs/sources_1/ip/dds_addr_0/dds_addr_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub f:/hard_projects/wave_producer/dds_1/dds_1.srcs/sources_1/ip/dds_addr_0/dds_addr_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub f:/hard_projects/wave_producer/dds_1/dds_1.srcs/sources_1/ip/dds_addr_0/dds_addr_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim f:/hard_projects/wave_producer/dds_1/dds_1.srcs/sources_1/ip/dds_addr_0/dds_addr_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim f:/hard_projects/wave_producer/dds_1/dds_1.srcs/sources_1/ip/dds_addr_0/dds_addr_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir F:/hard_projects/wave_producer/dds_1/dds_1.ip_user_files/ip/dds_addr_0]} {
  catch { 
    file copy -force f:/hard_projects/wave_producer/dds_1/dds_1.srcs/sources_1/ip/dds_addr_0/dds_addr_0_stub.v F:/hard_projects/wave_producer/dds_1/dds_1.ip_user_files/ip/dds_addr_0
  }
}

if {[file isdir F:/hard_projects/wave_producer/dds_1/dds_1.ip_user_files/ip/dds_addr_0]} {
  catch { 
    file copy -force f:/hard_projects/wave_producer/dds_1/dds_1.srcs/sources_1/ip/dds_addr_0/dds_addr_0_stub.vhdl F:/hard_projects/wave_producer/dds_1/dds_1.ip_user_files/ip/dds_addr_0
  }
}
