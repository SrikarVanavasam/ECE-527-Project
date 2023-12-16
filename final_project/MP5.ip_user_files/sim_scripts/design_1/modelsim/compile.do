vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_5
vlib modelsim_lib/msim/processing_system7_vip_v1_0_7
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/axi_timer_v2_0_21
vlib modelsim_lib/msim/xlconstant_v1_1_6
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_19
vlib modelsim_lib/msim/fifo_generator_v13_2_4
vlib modelsim_lib/msim/axi_data_fifo_v2_1_18
vlib modelsim_lib/msim/axi_crossbar_v2_1_20
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_19

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 modelsim_lib/msim/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 modelsim_lib/msim/processing_system7_vip_v1_0_7
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap axi_timer_v2_0_21 modelsim_lib/msim/axi_timer_v2_0_21
vmap xlconstant_v1_1_6 modelsim_lib/msim/xlconstant_v1_1_6
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_19 modelsim_lib/msim/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 modelsim_lib/msim/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 modelsim_lib/msim/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 modelsim_lib/msim/axi_crossbar_v2_1_20
vmap axi_protocol_converter_v2_1_19 modelsim_lib/msim/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_21 -64 -93 \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/a788/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_timer_0_0/sim/design_1_axi_timer_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_4/bd_0/sim/bd_6cc2.v" \

vlog -work xlconstant_v1_1_6 -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_4/bd_0/ip/ip_0/sim/bd_6cc2_one_0.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_smc_4/bd_0/ip/ip_1/sim/bd_6cc2_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_4/bd_0/ip/ip_2/sim/bd_6cc2_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_4/bd_0/ip/ip_3/sim/bd_6cc2_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_4/bd_0/ip/ip_4/sim/bd_6cc2_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_4/bd_0/ip/ip_5/sim/bd_6cc2_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_4/bd_0/ip/ip_6/sim/bd_6cc2_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_4/bd_0/ip/ip_7/sim/bd_6cc2_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_4/bd_0/ip/ip_8/sim/bd_6cc2_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_4/bd_0/ip/ip_9/sim/bd_6cc2_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_4/bd_0/ip/ip_10/sim/bd_6cc2_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_4/bd_0/ip/ip_11/sim/bd_6cc2_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_4/bd_0/ip/ip_12/sim/bd_6cc2_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_4/sim/design_1_axi_smc_4.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_4/sim/design_1_rst_ps7_0_100M_4.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19 -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -64 -93 \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18 -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20 -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/copy_input.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/copy_output.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_1.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_2.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_3.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_4.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_5.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_6.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_7.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_8.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_9.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_10.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_11.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_12.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_13.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_14.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_15.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_16.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_17.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_18.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_19.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_20.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_21.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_22.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_23.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_24.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_25.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_26.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_27.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_28.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_29.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_30.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_31.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_32.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_33.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_34.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_35.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_36.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_37.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_38.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_39.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_40.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_41.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_42.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_43.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_44.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_45.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_46.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_47.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_48.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_49.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_50.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_51.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_52.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_53.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_54.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_55.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_56.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_57.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_58.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_59.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_60.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_61.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_62.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_63.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_64.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_65.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_66.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_67.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_68.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_69.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_70.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_71.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_72.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_73.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_74.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/decision_function_75.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x0.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x1.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x2.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x3.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x4.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x5.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x6.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x7.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x8.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x9.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x10.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x11.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x12.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x13.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x14.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x15.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x16.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x17.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x18.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x19.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x20.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x21.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x22.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x23.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x24.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x25.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x26.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x27.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x28.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x29.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratobkb_x30.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratocud.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_acceleratodEe.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_accelerator_control_s_axi.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_accelerator_gmem_m_axi.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/tree_scores.v" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b0d5/hdl/verilog/my_prj_accelerator.v" \
"../../../bd/design_1/ip/design_1_my_prj_accelerator_0_0/sim/design_1_my_prj_accelerator_0_0.v" \

vlog -work axi_protocol_converter_v2_1_19 -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MP5.srcs/sources_1/bd/design_1/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../MP5.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

