# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name score_int_0_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_score_int_0_V_read \
    op interface \
    ports { score_int_0_V_read { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name score_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_score_out \
    op interface \
    ports { m_axi_score_out_AWVALID { O 1 bit } m_axi_score_out_AWREADY { I 1 bit } m_axi_score_out_AWADDR { O 32 vector } m_axi_score_out_AWID { O 1 vector } m_axi_score_out_AWLEN { O 32 vector } m_axi_score_out_AWSIZE { O 3 vector } m_axi_score_out_AWBURST { O 2 vector } m_axi_score_out_AWLOCK { O 2 vector } m_axi_score_out_AWCACHE { O 4 vector } m_axi_score_out_AWPROT { O 3 vector } m_axi_score_out_AWQOS { O 4 vector } m_axi_score_out_AWREGION { O 4 vector } m_axi_score_out_AWUSER { O 1 vector } m_axi_score_out_WVALID { O 1 bit } m_axi_score_out_WREADY { I 1 bit } m_axi_score_out_WDATA { O 64 vector } m_axi_score_out_WSTRB { O 8 vector } m_axi_score_out_WLAST { O 1 bit } m_axi_score_out_WID { O 1 vector } m_axi_score_out_WUSER { O 1 vector } m_axi_score_out_ARVALID { O 1 bit } m_axi_score_out_ARREADY { I 1 bit } m_axi_score_out_ARADDR { O 32 vector } m_axi_score_out_ARID { O 1 vector } m_axi_score_out_ARLEN { O 32 vector } m_axi_score_out_ARSIZE { O 3 vector } m_axi_score_out_ARBURST { O 2 vector } m_axi_score_out_ARLOCK { O 2 vector } m_axi_score_out_ARCACHE { O 4 vector } m_axi_score_out_ARPROT { O 3 vector } m_axi_score_out_ARQOS { O 4 vector } m_axi_score_out_ARREGION { O 4 vector } m_axi_score_out_ARUSER { O 1 vector } m_axi_score_out_RVALID { I 1 bit } m_axi_score_out_RREADY { O 1 bit } m_axi_score_out_RDATA { I 64 vector } m_axi_score_out_RLAST { I 1 bit } m_axi_score_out_RID { I 1 vector } m_axi_score_out_RUSER { I 1 vector } m_axi_score_out_RRESP { I 2 vector } m_axi_score_out_BVALID { I 1 bit } m_axi_score_out_BREADY { O 1 bit } m_axi_score_out_BRESP { I 2 vector } m_axi_score_out_BID { I 1 vector } m_axi_score_out_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name score_out_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_score_out_offset \
    op interface \
    ports { score_out_offset { I 29 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


