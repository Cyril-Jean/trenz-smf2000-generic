create_smartdesign -sd_name {MICROSUBSYSTEM} 

sd_instantiate_hdl_core -sd_name {MICROSUBSYSTEM} -hdl_core_name {MSS_COMPONENT} -instance_name {}

create_and_configure_core -core_vlnv {Actel:SgCore:OSC:2.0.101} -component_name {OSC_C0} -params {"RCOSC_1MHZ_DRIVES_CCC:false" "RCOSC_1MHZ_DRIVES_FAB:false" "RCOSC_1MHZ_IS_USED:false" "RCOSC_25_50MHZ_DRIVES_CCC:false" "RCOSC_25_50MHZ_DRIVES_FAB:1" "RCOSC_25_50MHZ_IS_USED:1" "VOLTAGE_IS_1_2:true" "XTLOSC_DRIVES_CCC:false" "XTLOSC_DRIVES_FAB:false" "XTLOSC_FREQ:20.00" "XTLOSC_IS_USED:false" "XTLOSC_SRC:CRYSTAL"} 
sd_instantiate_component -sd_name {MICROSUBSYSTEM} -component_name {OSC_C0} -instance_name {} 
sd_instantiate_macro -sd_name {MICROSUBSYSTEM} -macro_name {SYSRESET} -instance_name {SYSRESET_0} 
download_core -vlnv {Actel:DirectCore:CoreResetP:4.0.103} -location {www.microchip-ip.com/repositories/DirectCore} 
create_and_configure_core -core_vlnv {Actel:DirectCore:CoreResetP:4.0.103} -component_name {CoreResetP_C0} -params {"DDR_WAIT:200" "DEVICE_VOLTAGE:2" "EXT_RESET_CFG:3" "FDDR_IN_USE:false" "MDDR_IN_USE:false" "SDIF0_IN_USE:false" "SDIF1_IN_USE:false" "SDIF2_IN_USE:false" "SDIF3_IN_USE:false"} 
sd_instantiate_component -sd_name {MICROSUBSYSTEM} -component_name {CoreResetP_C0} -instance_name {} 
sd_connect_pins -sd_name {MICROSUBSYSTEM} -pin_names {"OSC_C0_0:RCOSC_25_50MHZ_O2F" "CoreResetP_C0_0:RCOSC_25_50MHZ"} 
sd_connect_pins -sd_name {MICROSUBSYSTEM} -pin_names {"SYSRESET_0:POWER_ON_RESET_N" "CoreResetP_C0_0:POWER_ON_RESET_N"} 

create_and_configure_core -core_vlnv {Actel:SgCore:FCCC:2.0.201} -component_name {FCCC_C0} -params {"ADVANCED_TAB_CHANGED:false" "CLK0_IS_USED:false" "CLK0_PAD_IS_USED:false" "CLK1_IS_USED:false" "CLK1_PAD_IS_USED:true" "CLK2_IS_USED:false" "CLK2_PAD_IS_USED:false" "CLK3_IS_USED:false" "CLK3_PAD_IS_USED:false" "DYN_CONF_IS_USED:false" "GL0_BP_IN_0_FREQ:100" "GL0_BP_IN_0_SRC:IO_HARDWIRED_0" "GL0_BP_IN_1_FREQ:100" "GL0_BP_IN_1_SRC:IO_HARDWIRED_0" "GL0_FREQUENCY_LOCKED:false" "GL0_IN_0_SRC:PLL" "GL0_IN_1_SRC:UNUSED" "GL0_IS_INVERTED:false" "GL0_IS_USED:true" "GL0_OUT_0_FREQ:100" "GL0_OUT_1_FREQ:50" "GL0_OUT_IS_GATED:false" "GL0_PLL_IN_0_PHASE:0" "GL0_PLL_IN_1_PHASE:0" "GL1_BP_IN_0_FREQ:100" "GL1_BP_IN_0_SRC:IO_HARDWIRED_0" "GL1_BP_IN_1_FREQ:100" "GL1_BP_IN_1_SRC:IO_HARDWIRED_0" "GL1_FREQUENCY_LOCKED:false" "GL1_IN_0_SRC:PLL" "GL1_IN_1_SRC:UNUSED" "GL1_IS_INVERTED:false" "GL1_IS_USED:false" "GL1_OUT_0_FREQ:100" "GL1_OUT_1_FREQ:50" "GL1_OUT_IS_GATED:false" "GL1_PLL_IN_0_PHASE:0" "GL1_PLL_IN_1_PHASE:0" "GL2_BP_IN_0_FREQ:100" "GL2_BP_IN_0_SRC:IO_HARDWIRED_0" "GL2_BP_IN_1_FREQ:100" "GL2_BP_IN_1_SRC:IO_HARDWIRED_0" "GL2_FREQUENCY_LOCKED:false" "GL2_IN_0_SRC:PLL" "GL2_IN_1_SRC:UNUSED" "GL2_IS_INVERTED:false" "GL2_IS_USED:false" "GL2_OUT_0_FREQ:100" "GL2_OUT_1_FREQ:50" "GL2_OUT_IS_GATED:false" "GL2_PLL_IN_0_PHASE:0" "GL2_PLL_IN_1_PHASE:0" "GL3_BP_IN_0_FREQ:100" "GL3_BP_IN_0_SRC:IO_HARDWIRED_0" "GL3_BP_IN_1_FREQ:100" "GL3_BP_IN_1_SRC:IO_HARDWIRED_0" "GL3_FREQUENCY_LOCKED:false" "GL3_IN_0_SRC:PLL" "GL3_IN_1_SRC:UNUSED" "GL3_IS_INVERTED:false" "GL3_IS_USED:false" "GL3_OUT_0_FREQ:100" "GL3_OUT_1_FREQ:50" "GL3_OUT_IS_GATED:false" "GL3_PLL_IN_0_PHASE:0" "GL3_PLL_IN_1_PHASE:0" "GPD0_IS_USED:false" "GPD0_NOPIPE_RSTSYNC:true" "GPD0_SYNC_STYLE:G3STYLE_AND_NO_LOCK_RSTSYNC" "GPD1_IS_USED:false" "GPD1_NOPIPE_RSTSYNC:true" "GPD1_SYNC_STYLE:G3STYLE_AND_NO_LOCK_RSTSYNC" "GPD2_IS_USED:false" "GPD2_NOPIPE_RSTSYNC:true" "GPD2_SYNC_STYLE:G3STYLE_AND_NO_LOCK_RSTSYNC" "GPD3_IS_USED:false" "GPD3_NOPIPE_RSTSYNC:true" "GPD3_SYNC_STYLE:G3STYLE_AND_NO_LOCK_RSTSYNC" "GPD_EXPOSE_RESETS:false" "GPD_SYNC_STYLE:G3STYLE_AND_LOCK_RSTSYNC" "INIT:0000007FB8000044D74000318C6318C1F18C61C40404040400303" "IO_HARDWIRED_0_IS_DIFF:false" "IO_HARDWIRED_1_IS_DIFF:false" "IO_HARDWIRED_2_IS_DIFF:false" "IO_HARDWIRED_3_IS_DIFF:false" "MODE_10V:false" "NGMUX0_HOLD_IS_USED:false" "NGMUX0_IS_USED:false" "NGMUX1_HOLD_IS_USED:false" "NGMUX1_IS_USED:false" "NGMUX2_HOLD_IS_USED:false" "NGMUX2_IS_USED:false" "NGMUX3_HOLD_IS_USED:false" "NGMUX3_IS_USED:false" "NGMUX_EXPOSE_HOLD:false" "PLL_DELAY:0" "PLL_EXPOSE_BYPASS:false" "PLL_EXPOSE_RESETS:false" "PLL_EXT_FB_GL:EXT_FB_GL0" "PLL_FB_SRC:CCC_INTERNAL" "PLL_IN_FREQ:100" "PLL_IN_SRC:IO_HARDWIRED_1" "PLL_IS_USED:true" "PLL_LOCK_IND:1024" "PLL_LOCK_WND:32000" "PLL_SSM_DEPTH:0.5" "PLL_SSM_ENABLE:false" "PLL_SSM_FREQ:40" "PLL_SUPPLY_VOLTAGE:25_V" "PLL_VCO_TARGET:700" "RCOSC_1MHZ_IS_USED:false" "RCOSC_25_50MHZ_IS_USED:false" "VCOFREQUENCY:800.000" "XTLOSC_IS_USED:false" "Y0_IS_USED:false" "Y1_IS_USED:false" "Y2_IS_USED:false" "Y3_IS_USED:false"} 

sd_instantiate_component -sd_name {MICROSUBSYSTEM} -component_name {FCCC_C0} -instance_name {} 
sd_connect_pins -sd_name {MICROSUBSYSTEM} -pin_names {"FCCC_C0_0:GL0" "CoreResetP_C0_0:CLK_BASE"} 
sd_connect_pins -sd_name {MICROSUBSYSTEM} -pin_names {"FCCC_C0_0:GL0" "MSS_COMPONENT_0:MCCC_CLK_BASE"} 

sd_connect_pin_to_port -sd_name {MICROSUBSYSTEM} -pin_name {MSS_COMPONENT_0:MSS_RESET_N_M2F} -port_name {} 
sd_connect_pins_to_constant -sd_name {MICROSUBSYSTEM} -pin_names {CoreResetP_C0_0:CONFIG_DONE} -value {VCC} 
sd_connect_pins_to_constant -sd_name {MICROSUBSYSTEM} -pin_names {CoreResetP_C0_0:CLR_INIT_DONE} -value {VCC} 
sd_connect_pins_to_constant -sd_name {MICROSUBSYSTEM} -pin_names {CoreResetP_C0_0:USER_FAB_RESET_IN_N} -value {VCC} 
sd_connect_pins -sd_name {MICROSUBSYSTEM} -pin_names {"CoreResetP_C0_0:M3_RESET_N" "MSS_COMPONENT_0:M3_RESET_N"} 
sd_connect_pins -sd_name {MICROSUBSYSTEM} -pin_names {"CoreResetP_C0_0:MSS_RESET_N_F2M" "MSS_COMPONENT_0:MSS_RESET_N_F2M"} 
sd_mark_pins_unused -sd_name {MICROSUBSYSTEM} -pin_names {CoreResetP_C0_0:INIT_DONE} 
sd_mark_pins_unused -sd_name {MICROSUBSYSTEM} -pin_names {CoreResetP_C0_0:MSS_FAB_RESET_N} 
sd_mark_pins_unused -sd_name {MICROSUBSYSTEM} -pin_names {CoreResetP_C0_0:EXT_RESET_OUT} 
sd_mark_pins_unused -sd_name {MICROSUBSYSTEM} -pin_names {CoreResetP_C0_0:USER_FAB_RESET_N} 
sd_connect_pins_to_constant -sd_name {MICROSUBSYSTEM} -pin_names {CoreResetP_C0_0:EXT_RESET_IN_N} -value {VCC} 
sd_connect_pins_to_constant -sd_name {MICROSUBSYSTEM} -pin_names {CoreResetP_C0_0:FIC_2_APB_M_PRESET_N} -value {VCC} 
sd_delete_ports -sd_name {MICROSUBSYSTEM} -port_names {MSS_RESET_N_M2F} 
sd_connect_pins -sd_name {MICROSUBSYSTEM} -pin_names {"MSS_COMPONENT_0:MSS_RESET_N_M2F" "CoreResetP_C0_0:MSS_RESET_N_M2F"} 

sd_connect_pins -sd_name {MICROSUBSYSTEM} -pin_names {"FCCC_C0_0:LOCK" "MSS_COMPONENT_0:MCCC_CLK_BASE_PLL_LOCK"}

sd_connect_pin_to_port -sd_name {MICROSUBSYSTEM} -pin_name {MSS_COMPONENT_0:FIC_0_APB} -port_name {}



sd_create_scalar_port -sd_name {MICROSUBSYSTEM} -port_name {APB_CLK} -port_direction {OUT}
sd_connect_pins -sd_name {MICROSUBSYSTEM} -pin_names {"FCCC_C0_0:GL0" "APB_CLK"}
sd_create_scalar_port -sd_name {MICROSUBSYSTEM} -port_name {APB_RESET} -port_direction {OUT}
sd_clear_pin_attributes -sd_name {MICROSUBSYSTEM} -pin_names {CoreResetP_C0_0:INIT_DONE}
sd_connect_pins -sd_name {MICROSUBSYSTEM} -pin_names {"CoreResetP_C0_0:INIT_DONE" "APB_RESET"}



generate_component -component_name {MICROSUBSYSTEM} -recursive 0 

save_smartdesign -sd_name {MICROSUBSYSTEM} 
save_project 
generate_component -component_name {MICROSUBSYSTEM} -recursive 0 
set_root -module {MICROSUBSYSTEM::work} 
build_design_hierarchy

