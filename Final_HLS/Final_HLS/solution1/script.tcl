############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Final_HLS
set_top my_prj_accelerator
add_files ../my-conifer-prj/firmware/parameters.h -cflags "-std=c++11"
add_files ../my-conifer-prj/firmware/my_prj.h -cflags "-std=c++11"
add_files ../my-conifer-prj/firmware/my_prj.cpp -cflags "-std=c++11"
add_files ../my-conifer-prj/firmware/BDT.h -cflags "-std=c++11"
add_files ../my-conifer-prj/firmware/BDT.cpp -cflags "-std=c++11"
open_solution "solution1"
set_part {xc7z020-clg400-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./Final_HLS/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
