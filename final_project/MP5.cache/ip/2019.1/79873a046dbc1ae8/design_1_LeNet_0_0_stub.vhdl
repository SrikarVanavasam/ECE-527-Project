-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Nov  6 13:44:18 2023
-- Host        : yh_dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_LeNet_0_0_stub.vhdl
-- Design      : design_1_LeNet_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_input_r_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_input_r_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_input_r_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_input_r_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_r_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_r_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_r_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_r_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_input_r_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_r_AWVALID : out STD_LOGIC;
    m_axi_input_r_AWREADY : in STD_LOGIC;
    m_axi_input_r_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_input_r_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_r_WLAST : out STD_LOGIC;
    m_axi_input_r_WVALID : out STD_LOGIC;
    m_axi_input_r_WREADY : in STD_LOGIC;
    m_axi_input_r_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_r_BVALID : in STD_LOGIC;
    m_axi_input_r_BREADY : out STD_LOGIC;
    m_axi_input_r_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_input_r_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_input_r_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_input_r_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_r_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_r_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_r_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_r_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_input_r_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_input_r_ARVALID : out STD_LOGIC;
    m_axi_input_r_ARREADY : in STD_LOGIC;
    m_axi_input_r_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_input_r_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_input_r_RLAST : in STD_LOGIC;
    m_axi_input_r_RVALID : in STD_LOGIC;
    m_axi_input_r_RREADY : out STD_LOGIC;
    m_axi_weights_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_weights_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_weights_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_weights_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_weights_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_weights_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_weights_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_weights_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_weights_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_weights_AWVALID : out STD_LOGIC;
    m_axi_weights_AWREADY : in STD_LOGIC;
    m_axi_weights_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_weights_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_weights_WLAST : out STD_LOGIC;
    m_axi_weights_WVALID : out STD_LOGIC;
    m_axi_weights_WREADY : in STD_LOGIC;
    m_axi_weights_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_weights_BVALID : in STD_LOGIC;
    m_axi_weights_BREADY : out STD_LOGIC;
    m_axi_weights_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_weights_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_weights_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_weights_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_weights_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_weights_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_weights_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_weights_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_weights_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_weights_ARVALID : out STD_LOGIC;
    m_axi_weights_ARREADY : in STD_LOGIC;
    m_axi_weights_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_weights_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_weights_RLAST : in STD_LOGIC;
    m_axi_weights_RVALID : in STD_LOGIC;
    m_axi_weights_RREADY : out STD_LOGIC;
    m_axi_bias_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bias_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bias_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bias_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bias_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bias_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bias_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bias_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bias_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bias_AWVALID : out STD_LOGIC;
    m_axi_bias_AWREADY : in STD_LOGIC;
    m_axi_bias_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bias_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bias_WLAST : out STD_LOGIC;
    m_axi_bias_WVALID : out STD_LOGIC;
    m_axi_bias_WREADY : in STD_LOGIC;
    m_axi_bias_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bias_BVALID : in STD_LOGIC;
    m_axi_bias_BREADY : out STD_LOGIC;
    m_axi_bias_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bias_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bias_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bias_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bias_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bias_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bias_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bias_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bias_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bias_ARVALID : out STD_LOGIC;
    m_axi_bias_ARREADY : in STD_LOGIC;
    m_axi_bias_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bias_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bias_RLAST : in STD_LOGIC;
    m_axi_bias_RVALID : in STD_LOGIC;
    m_axi_bias_RREADY : out STD_LOGIC;
    m_axi_output_r_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_output_r_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_output_r_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_output_r_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_r_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_r_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_r_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_r_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_output_r_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_r_AWVALID : out STD_LOGIC;
    m_axi_output_r_AWREADY : in STD_LOGIC;
    m_axi_output_r_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_output_r_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_r_WLAST : out STD_LOGIC;
    m_axi_output_r_WVALID : out STD_LOGIC;
    m_axi_output_r_WREADY : in STD_LOGIC;
    m_axi_output_r_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_r_BVALID : in STD_LOGIC;
    m_axi_output_r_BREADY : out STD_LOGIC;
    m_axi_output_r_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_output_r_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_output_r_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_output_r_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_r_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_r_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_r_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_r_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_output_r_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_output_r_ARVALID : out STD_LOGIC;
    m_axi_output_r_ARREADY : in STD_LOGIC;
    m_axi_output_r_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_output_r_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_output_r_RLAST : in STD_LOGIC;
    m_axi_output_r_RVALID : in STD_LOGIC;
    m_axi_output_r_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_AXILiteS_AWADDR[3:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[3:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_input_r_AWADDR[31:0],m_axi_input_r_AWLEN[7:0],m_axi_input_r_AWSIZE[2:0],m_axi_input_r_AWBURST[1:0],m_axi_input_r_AWLOCK[1:0],m_axi_input_r_AWREGION[3:0],m_axi_input_r_AWCACHE[3:0],m_axi_input_r_AWPROT[2:0],m_axi_input_r_AWQOS[3:0],m_axi_input_r_AWVALID,m_axi_input_r_AWREADY,m_axi_input_r_WDATA[31:0],m_axi_input_r_WSTRB[3:0],m_axi_input_r_WLAST,m_axi_input_r_WVALID,m_axi_input_r_WREADY,m_axi_input_r_BRESP[1:0],m_axi_input_r_BVALID,m_axi_input_r_BREADY,m_axi_input_r_ARADDR[31:0],m_axi_input_r_ARLEN[7:0],m_axi_input_r_ARSIZE[2:0],m_axi_input_r_ARBURST[1:0],m_axi_input_r_ARLOCK[1:0],m_axi_input_r_ARREGION[3:0],m_axi_input_r_ARCACHE[3:0],m_axi_input_r_ARPROT[2:0],m_axi_input_r_ARQOS[3:0],m_axi_input_r_ARVALID,m_axi_input_r_ARREADY,m_axi_input_r_RDATA[31:0],m_axi_input_r_RRESP[1:0],m_axi_input_r_RLAST,m_axi_input_r_RVALID,m_axi_input_r_RREADY,m_axi_weights_AWADDR[31:0],m_axi_weights_AWLEN[7:0],m_axi_weights_AWSIZE[2:0],m_axi_weights_AWBURST[1:0],m_axi_weights_AWLOCK[1:0],m_axi_weights_AWREGION[3:0],m_axi_weights_AWCACHE[3:0],m_axi_weights_AWPROT[2:0],m_axi_weights_AWQOS[3:0],m_axi_weights_AWVALID,m_axi_weights_AWREADY,m_axi_weights_WDATA[31:0],m_axi_weights_WSTRB[3:0],m_axi_weights_WLAST,m_axi_weights_WVALID,m_axi_weights_WREADY,m_axi_weights_BRESP[1:0],m_axi_weights_BVALID,m_axi_weights_BREADY,m_axi_weights_ARADDR[31:0],m_axi_weights_ARLEN[7:0],m_axi_weights_ARSIZE[2:0],m_axi_weights_ARBURST[1:0],m_axi_weights_ARLOCK[1:0],m_axi_weights_ARREGION[3:0],m_axi_weights_ARCACHE[3:0],m_axi_weights_ARPROT[2:0],m_axi_weights_ARQOS[3:0],m_axi_weights_ARVALID,m_axi_weights_ARREADY,m_axi_weights_RDATA[31:0],m_axi_weights_RRESP[1:0],m_axi_weights_RLAST,m_axi_weights_RVALID,m_axi_weights_RREADY,m_axi_bias_AWADDR[31:0],m_axi_bias_AWLEN[7:0],m_axi_bias_AWSIZE[2:0],m_axi_bias_AWBURST[1:0],m_axi_bias_AWLOCK[1:0],m_axi_bias_AWREGION[3:0],m_axi_bias_AWCACHE[3:0],m_axi_bias_AWPROT[2:0],m_axi_bias_AWQOS[3:0],m_axi_bias_AWVALID,m_axi_bias_AWREADY,m_axi_bias_WDATA[31:0],m_axi_bias_WSTRB[3:0],m_axi_bias_WLAST,m_axi_bias_WVALID,m_axi_bias_WREADY,m_axi_bias_BRESP[1:0],m_axi_bias_BVALID,m_axi_bias_BREADY,m_axi_bias_ARADDR[31:0],m_axi_bias_ARLEN[7:0],m_axi_bias_ARSIZE[2:0],m_axi_bias_ARBURST[1:0],m_axi_bias_ARLOCK[1:0],m_axi_bias_ARREGION[3:0],m_axi_bias_ARCACHE[3:0],m_axi_bias_ARPROT[2:0],m_axi_bias_ARQOS[3:0],m_axi_bias_ARVALID,m_axi_bias_ARREADY,m_axi_bias_RDATA[31:0],m_axi_bias_RRESP[1:0],m_axi_bias_RLAST,m_axi_bias_RVALID,m_axi_bias_RREADY,m_axi_output_r_AWADDR[31:0],m_axi_output_r_AWLEN[7:0],m_axi_output_r_AWSIZE[2:0],m_axi_output_r_AWBURST[1:0],m_axi_output_r_AWLOCK[1:0],m_axi_output_r_AWREGION[3:0],m_axi_output_r_AWCACHE[3:0],m_axi_output_r_AWPROT[2:0],m_axi_output_r_AWQOS[3:0],m_axi_output_r_AWVALID,m_axi_output_r_AWREADY,m_axi_output_r_WDATA[31:0],m_axi_output_r_WSTRB[3:0],m_axi_output_r_WLAST,m_axi_output_r_WVALID,m_axi_output_r_WREADY,m_axi_output_r_BRESP[1:0],m_axi_output_r_BVALID,m_axi_output_r_BREADY,m_axi_output_r_ARADDR[31:0],m_axi_output_r_ARLEN[7:0],m_axi_output_r_ARSIZE[2:0],m_axi_output_r_ARBURST[1:0],m_axi_output_r_ARLOCK[1:0],m_axi_output_r_ARREGION[3:0],m_axi_output_r_ARCACHE[3:0],m_axi_output_r_ARPROT[2:0],m_axi_output_r_ARQOS[3:0],m_axi_output_r_ARVALID,m_axi_output_r_ARREADY,m_axi_output_r_RDATA[31:0],m_axi_output_r_RRESP[1:0],m_axi_output_r_RLAST,m_axi_output_r_RVALID,m_axi_output_r_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "LeNet,Vivado 2019.1";
begin
end;
