// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Thu Aug 23 16:29:17 2018
// Host        : BAOCHUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/hard_projects/wave_producer/dds_1/dds_1.srcs/sources_1/ip/rom/rom_stub.v
// Design      : rom
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_1,Vivado 2015.4" *)
module rom(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[7:0],douta[7:0]" */;
  input clka;
  input [7:0]addra;
  output [7:0]douta;
endmodule
