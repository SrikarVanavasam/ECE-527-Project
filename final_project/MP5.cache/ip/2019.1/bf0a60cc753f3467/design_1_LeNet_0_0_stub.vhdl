-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Nov  5 15:58:58 2023
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
    m_axi_DATA_INPUT_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_INPUT_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_INPUT_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_INPUT_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_INPUT_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_INPUT_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_INPUT_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_INPUT_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_INPUT_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_INPUT_AWVALID : out STD_LOGIC;
    m_axi_DATA_INPUT_AWREADY : in STD_LOGIC;
    m_axi_DATA_INPUT_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_INPUT_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_INPUT_WLAST : out STD_LOGIC;
    m_axi_DATA_INPUT_WVALID : out STD_LOGIC;
    m_axi_DATA_INPUT_WREADY : in STD_LOGIC;
    m_axi_DATA_INPUT_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_INPUT_BVALID : in STD_LOGIC;
    m_axi_DATA_INPUT_BREADY : out STD_LOGIC;
    m_axi_DATA_INPUT_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_INPUT_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_INPUT_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_INPUT_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_INPUT_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_INPUT_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_INPUT_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_INPUT_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_INPUT_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_INPUT_ARVALID : out STD_LOGIC;
    m_axi_DATA_INPUT_ARREADY : in STD_LOGIC;
    m_axi_DATA_INPUT_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_INPUT_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_INPUT_RLAST : in STD_LOGIC;
    m_axi_DATA_INPUT_RVALID : in STD_LOGIC;
    m_axi_DATA_INPUT_RREADY : out STD_LOGIC;
    m_axi_DATA_WEIGHTS_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_WEIGHTS_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_WEIGHTS_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_WEIGHTS_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_WEIGHTS_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_WEIGHTS_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_WEIGHTS_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_WEIGHTS_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_WEIGHTS_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_WEIGHTS_AWVALID : out STD_LOGIC;
    m_axi_DATA_WEIGHTS_AWREADY : in STD_LOGIC;
    m_axi_DATA_WEIGHTS_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_WEIGHTS_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_WEIGHTS_WLAST : out STD_LOGIC;
    m_axi_DATA_WEIGHTS_WVALID : out STD_LOGIC;
    m_axi_DATA_WEIGHTS_WREADY : in STD_LOGIC;
    m_axi_DATA_WEIGHTS_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_WEIGHTS_BVALID : in STD_LOGIC;
    m_axi_DATA_WEIGHTS_BREADY : out STD_LOGIC;
    m_axi_DATA_WEIGHTS_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_WEIGHTS_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_WEIGHTS_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_WEIGHTS_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_WEIGHTS_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_WEIGHTS_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_WEIGHTS_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_WEIGHTS_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_WEIGHTS_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_WEIGHTS_ARVALID : out STD_LOGIC;
    m_axi_DATA_WEIGHTS_ARREADY : in STD_LOGIC;
    m_axi_DATA_WEIGHTS_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_WEIGHTS_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_WEIGHTS_RLAST : in STD_LOGIC;
    m_axi_DATA_WEIGHTS_RVALID : in STD_LOGIC;
    m_axi_DATA_WEIGHTS_RREADY : out STD_LOGIC;
    m_axi_DATA_BIAS_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BIAS_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_BIAS_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BIAS_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BIAS_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BIAS_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BIAS_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BIAS_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BIAS_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BIAS_AWVALID : out STD_LOGIC;
    m_axi_DATA_BIAS_AWREADY : in STD_LOGIC;
    m_axi_DATA_BIAS_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BIAS_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BIAS_WLAST : out STD_LOGIC;
    m_axi_DATA_BIAS_WVALID : out STD_LOGIC;
    m_axi_DATA_BIAS_WREADY : in STD_LOGIC;
    m_axi_DATA_BIAS_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BIAS_BVALID : in STD_LOGIC;
    m_axi_DATA_BIAS_BREADY : out STD_LOGIC;
    m_axi_DATA_BIAS_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BIAS_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_BIAS_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BIAS_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BIAS_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BIAS_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BIAS_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BIAS_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_BIAS_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_BIAS_ARVALID : out STD_LOGIC;
    m_axi_DATA_BIAS_ARREADY : in STD_LOGIC;
    m_axi_DATA_BIAS_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_BIAS_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_BIAS_RLAST : in STD_LOGIC;
    m_axi_DATA_BIAS_RVALID : in STD_LOGIC;
    m_axi_DATA_BIAS_RREADY : out STD_LOGIC;
    m_axi_DATA_OUTPUT_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_OUTPUT_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_OUTPUT_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_OUTPUT_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_OUTPUT_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_OUTPUT_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_OUTPUT_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_OUTPUT_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_OUTPUT_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_OUTPUT_AWVALID : out STD_LOGIC;
    m_axi_DATA_OUTPUT_AWREADY : in STD_LOGIC;
    m_axi_DATA_OUTPUT_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_OUTPUT_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_OUTPUT_WLAST : out STD_LOGIC;
    m_axi_DATA_OUTPUT_WVALID : out STD_LOGIC;
    m_axi_DATA_OUTPUT_WREADY : in STD_LOGIC;
    m_axi_DATA_OUTPUT_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_OUTPUT_BVALID : in STD_LOGIC;
    m_axi_DATA_OUTPUT_BREADY : out STD_LOGIC;
    m_axi_DATA_OUTPUT_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_OUTPUT_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DATA_OUTPUT_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_OUTPUT_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_OUTPUT_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_OUTPUT_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_OUTPUT_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_OUTPUT_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DATA_OUTPUT_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DATA_OUTPUT_ARVALID : out STD_LOGIC;
    m_axi_DATA_OUTPUT_ARREADY : in STD_LOGIC;
    m_axi_DATA_OUTPUT_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DATA_OUTPUT_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DATA_OUTPUT_RLAST : in STD_LOGIC;
    m_axi_DATA_OUTPUT_RVALID : in STD_LOGIC;
    m_axi_DATA_OUTPUT_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_AXILiteS_AWADDR[3:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[3:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_DATA_INPUT_AWADDR[31:0],m_axi_DATA_INPUT_AWLEN[7:0],m_axi_DATA_INPUT_AWSIZE[2:0],m_axi_DATA_INPUT_AWBURST[1:0],m_axi_DATA_INPUT_AWLOCK[1:0],m_axi_DATA_INPUT_AWREGION[3:0],m_axi_DATA_INPUT_AWCACHE[3:0],m_axi_DATA_INPUT_AWPROT[2:0],m_axi_DATA_INPUT_AWQOS[3:0],m_axi_DATA_INPUT_AWVALID,m_axi_DATA_INPUT_AWREADY,m_axi_DATA_INPUT_WDATA[31:0],m_axi_DATA_INPUT_WSTRB[3:0],m_axi_DATA_INPUT_WLAST,m_axi_DATA_INPUT_WVALID,m_axi_DATA_INPUT_WREADY,m_axi_DATA_INPUT_BRESP[1:0],m_axi_DATA_INPUT_BVALID,m_axi_DATA_INPUT_BREADY,m_axi_DATA_INPUT_ARADDR[31:0],m_axi_DATA_INPUT_ARLEN[7:0],m_axi_DATA_INPUT_ARSIZE[2:0],m_axi_DATA_INPUT_ARBURST[1:0],m_axi_DATA_INPUT_ARLOCK[1:0],m_axi_DATA_INPUT_ARREGION[3:0],m_axi_DATA_INPUT_ARCACHE[3:0],m_axi_DATA_INPUT_ARPROT[2:0],m_axi_DATA_INPUT_ARQOS[3:0],m_axi_DATA_INPUT_ARVALID,m_axi_DATA_INPUT_ARREADY,m_axi_DATA_INPUT_RDATA[31:0],m_axi_DATA_INPUT_RRESP[1:0],m_axi_DATA_INPUT_RLAST,m_axi_DATA_INPUT_RVALID,m_axi_DATA_INPUT_RREADY,m_axi_DATA_WEIGHTS_AWADDR[31:0],m_axi_DATA_WEIGHTS_AWLEN[7:0],m_axi_DATA_WEIGHTS_AWSIZE[2:0],m_axi_DATA_WEIGHTS_AWBURST[1:0],m_axi_DATA_WEIGHTS_AWLOCK[1:0],m_axi_DATA_WEIGHTS_AWREGION[3:0],m_axi_DATA_WEIGHTS_AWCACHE[3:0],m_axi_DATA_WEIGHTS_AWPROT[2:0],m_axi_DATA_WEIGHTS_AWQOS[3:0],m_axi_DATA_WEIGHTS_AWVALID,m_axi_DATA_WEIGHTS_AWREADY,m_axi_DATA_WEIGHTS_WDATA[31:0],m_axi_DATA_WEIGHTS_WSTRB[3:0],m_axi_DATA_WEIGHTS_WLAST,m_axi_DATA_WEIGHTS_WVALID,m_axi_DATA_WEIGHTS_WREADY,m_axi_DATA_WEIGHTS_BRESP[1:0],m_axi_DATA_WEIGHTS_BVALID,m_axi_DATA_WEIGHTS_BREADY,m_axi_DATA_WEIGHTS_ARADDR[31:0],m_axi_DATA_WEIGHTS_ARLEN[7:0],m_axi_DATA_WEIGHTS_ARSIZE[2:0],m_axi_DATA_WEIGHTS_ARBURST[1:0],m_axi_DATA_WEIGHTS_ARLOCK[1:0],m_axi_DATA_WEIGHTS_ARREGION[3:0],m_axi_DATA_WEIGHTS_ARCACHE[3:0],m_axi_DATA_WEIGHTS_ARPROT[2:0],m_axi_DATA_WEIGHTS_ARQOS[3:0],m_axi_DATA_WEIGHTS_ARVALID,m_axi_DATA_WEIGHTS_ARREADY,m_axi_DATA_WEIGHTS_RDATA[31:0],m_axi_DATA_WEIGHTS_RRESP[1:0],m_axi_DATA_WEIGHTS_RLAST,m_axi_DATA_WEIGHTS_RVALID,m_axi_DATA_WEIGHTS_RREADY,m_axi_DATA_BIAS_AWADDR[31:0],m_axi_DATA_BIAS_AWLEN[7:0],m_axi_DATA_BIAS_AWSIZE[2:0],m_axi_DATA_BIAS_AWBURST[1:0],m_axi_DATA_BIAS_AWLOCK[1:0],m_axi_DATA_BIAS_AWREGION[3:0],m_axi_DATA_BIAS_AWCACHE[3:0],m_axi_DATA_BIAS_AWPROT[2:0],m_axi_DATA_BIAS_AWQOS[3:0],m_axi_DATA_BIAS_AWVALID,m_axi_DATA_BIAS_AWREADY,m_axi_DATA_BIAS_WDATA[31:0],m_axi_DATA_BIAS_WSTRB[3:0],m_axi_DATA_BIAS_WLAST,m_axi_DATA_BIAS_WVALID,m_axi_DATA_BIAS_WREADY,m_axi_DATA_BIAS_BRESP[1:0],m_axi_DATA_BIAS_BVALID,m_axi_DATA_BIAS_BREADY,m_axi_DATA_BIAS_ARADDR[31:0],m_axi_DATA_BIAS_ARLEN[7:0],m_axi_DATA_BIAS_ARSIZE[2:0],m_axi_DATA_BIAS_ARBURST[1:0],m_axi_DATA_BIAS_ARLOCK[1:0],m_axi_DATA_BIAS_ARREGION[3:0],m_axi_DATA_BIAS_ARCACHE[3:0],m_axi_DATA_BIAS_ARPROT[2:0],m_axi_DATA_BIAS_ARQOS[3:0],m_axi_DATA_BIAS_ARVALID,m_axi_DATA_BIAS_ARREADY,m_axi_DATA_BIAS_RDATA[31:0],m_axi_DATA_BIAS_RRESP[1:0],m_axi_DATA_BIAS_RLAST,m_axi_DATA_BIAS_RVALID,m_axi_DATA_BIAS_RREADY,m_axi_DATA_OUTPUT_AWADDR[31:0],m_axi_DATA_OUTPUT_AWLEN[7:0],m_axi_DATA_OUTPUT_AWSIZE[2:0],m_axi_DATA_OUTPUT_AWBURST[1:0],m_axi_DATA_OUTPUT_AWLOCK[1:0],m_axi_DATA_OUTPUT_AWREGION[3:0],m_axi_DATA_OUTPUT_AWCACHE[3:0],m_axi_DATA_OUTPUT_AWPROT[2:0],m_axi_DATA_OUTPUT_AWQOS[3:0],m_axi_DATA_OUTPUT_AWVALID,m_axi_DATA_OUTPUT_AWREADY,m_axi_DATA_OUTPUT_WDATA[31:0],m_axi_DATA_OUTPUT_WSTRB[3:0],m_axi_DATA_OUTPUT_WLAST,m_axi_DATA_OUTPUT_WVALID,m_axi_DATA_OUTPUT_WREADY,m_axi_DATA_OUTPUT_BRESP[1:0],m_axi_DATA_OUTPUT_BVALID,m_axi_DATA_OUTPUT_BREADY,m_axi_DATA_OUTPUT_ARADDR[31:0],m_axi_DATA_OUTPUT_ARLEN[7:0],m_axi_DATA_OUTPUT_ARSIZE[2:0],m_axi_DATA_OUTPUT_ARBURST[1:0],m_axi_DATA_OUTPUT_ARLOCK[1:0],m_axi_DATA_OUTPUT_ARREGION[3:0],m_axi_DATA_OUTPUT_ARCACHE[3:0],m_axi_DATA_OUTPUT_ARPROT[2:0],m_axi_DATA_OUTPUT_ARQOS[3:0],m_axi_DATA_OUTPUT_ARVALID,m_axi_DATA_OUTPUT_ARREADY,m_axi_DATA_OUTPUT_RDATA[31:0],m_axi_DATA_OUTPUT_RRESP[1:0],m_axi_DATA_OUTPUT_RLAST,m_axi_DATA_OUTPUT_RVALID,m_axi_DATA_OUTPUT_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "LeNet,Vivado 2019.1";
begin
end;
