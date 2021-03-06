
create_smartdesign -sd_name {TOP_DESIGN}

sd_instantiate_component -sd_name {TOP_DESIGN} -component_name {MICROSUBSYSTEM} -instance_name {MICROSUBSYSTEM_0} 

create_and_configure_core -core_vlnv {Actel:DirectCore:CoreAPB3:4.1.100} -component_name {CoreAPB3_C0} -params {"APB_DWIDTH:32" "APBSLOT0ENABLE:false" "APBSLOT1ENABLE:false" "APBSLOT2ENABLE:false" "APBSLOT3ENABLE:false" "APBSLOT4ENABLE:false" "APBSLOT5ENABLE:false" "APBSLOT6ENABLE:false" "APBSLOT7ENABLE:true" "APBSLOT8ENABLE:false" "APBSLOT9ENABLE:false" "APBSLOT10ENABLE:false" "APBSLOT11ENABLE:false" "APBSLOT12ENABLE:false" "APBSLOT13ENABLE:false" "APBSLOT14ENABLE:false" "APBSLOT15ENABLE:false" "IADDR_OPTION:0" "MADDR_BITS:28" "SC_0:false" "SC_1:false" "SC_2:false" "SC_3:false" "SC_4:false" "SC_5:false" "SC_6:false" "SC_7:false" "SC_8:false" "SC_9:false" "SC_10:false" "SC_11:false" "SC_12:false" "SC_13:false" "SC_14:false" "SC_15:false" "UPR_NIBBLE_POSN:6"} 

sd_instantiate_component -sd_name {TOP_DESIGN} -component_name {CoreAPB3_C0} -instance_name {} 
sd_connect_pins -sd_name {TOP_DESIGN} -pin_names {"MICROSUBSYSTEM_0:FIC_0_APB" "CoreAPB3_C0_0:APB3mmaster"} 

create_and_configure_core -core_vlnv {Actel:DirectCore:corepwm:4.3.101} -component_name {corepwm_C0} -params {"APB_DWIDTH:32" "CONFIG_MODE:0" "DAC_MODE1:false" "DAC_MODE2:false" "DAC_MODE3:false" "DAC_MODE4:false" "DAC_MODE5:false" "DAC_MODE6:false" "DAC_MODE7:false" "DAC_MODE8:false" "DAC_MODE9:false" "DAC_MODE10:false" "DAC_MODE11:false" "DAC_MODE12:false" "DAC_MODE13:false" "DAC_MODE14:false" "DAC_MODE15:false" "DAC_MODE16:false" "FIXED_PERIOD:1" "FIXED_PERIOD_EN:false" "FIXED_PRESCALE:0" "FIXED_PRESCALE_EN:true" "FIXED_PWM_NEG_EN1:false" "FIXED_PWM_NEG_EN2:false" "FIXED_PWM_NEG_EN3:false" "FIXED_PWM_NEG_EN4:false" "FIXED_PWM_NEG_EN5:false" "FIXED_PWM_NEG_EN6:false" "FIXED_PWM_NEG_EN7:false" "FIXED_PWM_NEG_EN8:false" "FIXED_PWM_NEG_EN9:false" "FIXED_PWM_NEG_EN10:false" "FIXED_PWM_NEG_EN11:false" "FIXED_PWM_NEG_EN12:false" "FIXED_PWM_NEG_EN13:false" "FIXED_PWM_NEG_EN14:false" "FIXED_PWM_NEG_EN15:false" "FIXED_PWM_NEG_EN16:false" "FIXED_PWM_NEGEDGE1:0" "FIXED_PWM_NEGEDGE2:0" "FIXED_PWM_NEGEDGE3:0" "FIXED_PWM_NEGEDGE4:0" "FIXED_PWM_NEGEDGE5:0" "FIXED_PWM_NEGEDGE6:0" "FIXED_PWM_NEGEDGE7:0" "FIXED_PWM_NEGEDGE8:0" "FIXED_PWM_NEGEDGE9:0" "FIXED_PWM_NEGEDGE10:0" "FIXED_PWM_NEGEDGE11:0" "FIXED_PWM_NEGEDGE12:0" "FIXED_PWM_NEGEDGE13:0" "FIXED_PWM_NEGEDGE14:0" "FIXED_PWM_NEGEDGE15:0" "FIXED_PWM_NEGEDGE16:0" "FIXED_PWM_POS_EN1:true" "FIXED_PWM_POS_EN2:true" "FIXED_PWM_POS_EN3:true" "FIXED_PWM_POS_EN4:true" "FIXED_PWM_POS_EN5:true" "FIXED_PWM_POS_EN6:true" "FIXED_PWM_POS_EN7:true" "FIXED_PWM_POS_EN8:true" "FIXED_PWM_POS_EN9:true" "FIXED_PWM_POS_EN10:true" "FIXED_PWM_POS_EN11:true" "FIXED_PWM_POS_EN12:true" "FIXED_PWM_POS_EN13:true" "FIXED_PWM_POS_EN14:true" "FIXED_PWM_POS_EN15:true" "FIXED_PWM_POS_EN16:true" "FIXED_PWM_POSEDGE1:0" "FIXED_PWM_POSEDGE2:0" "FIXED_PWM_POSEDGE3:0" "FIXED_PWM_POSEDGE4:0" "FIXED_PWM_POSEDGE5:0" "FIXED_PWM_POSEDGE6:0" "FIXED_PWM_POSEDGE7:0" "FIXED_PWM_POSEDGE8:0" "FIXED_PWM_POSEDGE9:0" "FIXED_PWM_POSEDGE10:0" "FIXED_PWM_POSEDGE11:0" "FIXED_PWM_POSEDGE12:0" "FIXED_PWM_POSEDGE13:0" "FIXED_PWM_POSEDGE14:0" "FIXED_PWM_POSEDGE15:0" "FIXED_PWM_POSEDGE16:0" "PWM_NUM:1" "PWM_STRETCH_VALUE1:false" "PWM_STRETCH_VALUE2:false" "PWM_STRETCH_VALUE3:false" "PWM_STRETCH_VALUE4:false" "PWM_STRETCH_VALUE5:false" "PWM_STRETCH_VALUE6:false" "PWM_STRETCH_VALUE7:false" "PWM_STRETCH_VALUE8:false" "PWM_STRETCH_VALUE9:false" "PWM_STRETCH_VALUE10:false" "PWM_STRETCH_VALUE11:false" "PWM_STRETCH_VALUE12:false" "PWM_STRETCH_VALUE13:false" "PWM_STRETCH_VALUE14:false" "PWM_STRETCH_VALUE15:false" "PWM_STRETCH_VALUE16:false" "SEPARATE_PWM_CLK:false" "SHADOW_REG_EN1:false" "SHADOW_REG_EN2:false" "SHADOW_REG_EN3:false" "SHADOW_REG_EN4:false" "SHADOW_REG_EN5:false" "SHADOW_REG_EN6:false" "SHADOW_REG_EN7:false" "SHADOW_REG_EN8:false" "SHADOW_REG_EN9:false" "SHADOW_REG_EN10:false" "SHADOW_REG_EN11:false" "SHADOW_REG_EN12:false" "SHADOW_REG_EN13:false" "SHADOW_REG_EN14:false" "SHADOW_REG_EN15:false" "SHADOW_REG_EN16:false" "TACH_EDGE1:false" "TACH_EDGE2:false" "TACH_EDGE3:false" "TACH_EDGE4:false" "TACH_EDGE5:false" "TACH_EDGE6:false" "TACH_EDGE7:false" "TACH_EDGE8:false" "TACH_EDGE9:false" "TACH_EDGE10:false" "TACH_EDGE11:false" "TACH_EDGE12:false" "TACH_EDGE13:false" "TACH_EDGE14:false" "TACH_EDGE15:false" "TACH_EDGE16:false" "TACH_NUM:1" "TACHINT_ACT_LEVEL:false"} 
sd_instantiate_component -sd_name {TOP_DESIGN} -component_name {corepwm_C0} -instance_name {} 
sd_connect_pin_to_port -sd_name {TOP_DESIGN} -pin_name {corepwm_C0_0:PWM} -port_name {} 
sd_connect_pins -sd_name {TOP_DESIGN} -pin_names {"CoreAPB3_C0_0:APBmslave7" "corepwm_C0_0:APBslave"} 


sd_connect_pins -sd_name {TOP_DESIGN} -pin_names {"MICROSUBSYSTEM_0:APB_CLK" "corepwm_C0_0:PCLK"} 
sd_connect_pins -sd_name {TOP_DESIGN} -pin_names {"MICROSUBSYSTEM_0:APB_RESET" "corepwm_C0_0:PRESETN"}

sd_connect_pin_to_port -sd_name {TOP_DESIGN} -pin_name {MICROSUBSYSTEM_0:MMUART_0_DTR} -port_name {} 
sd_connect_pin_to_port -sd_name {TOP_DESIGN} -pin_name {MICROSUBSYSTEM_0:MMUART_0_RXD} -port_name {} 
sd_connect_pin_to_port -sd_name {TOP_DESIGN} -pin_name {MICROSUBSYSTEM_0:MMUART_0_DSR} -port_name {} 
sd_connect_pin_to_port -sd_name {TOP_DESIGN} -pin_name {MICROSUBSYSTEM_0:MMUART_0_CTS} -port_name {} 
sd_connect_pin_to_port -sd_name {TOP_DESIGN} -pin_name {MICROSUBSYSTEM_0:MMUART_0_RTS} -port_name {} 
sd_connect_pin_to_port -sd_name {TOP_DESIGN} -pin_name {MICROSUBSYSTEM_0:MMUART_0_TXD} -port_name {}


sd_create_scalar_port -sd_name {TOP_DESIGN} -port_name {LED1} -port_direction {OUT} 
sd_create_scalar_port -sd_name {TOP_DESIGN} -port_name {LED2} -port_direction {OUT} 
sd_create_scalar_port -sd_name {TOP_DESIGN} -port_name {LED3} -port_direction {OUT} 
sd_create_scalar_port -sd_name {TOP_DESIGN} -port_name {LED4} -port_direction {OUT} 
sd_create_scalar_port -sd_name {TOP_DESIGN} -port_name {LED5} -port_direction {OUT} 
sd_create_scalar_port -sd_name {TOP_DESIGN} -port_name {LED6} -port_direction {OUT} 
sd_create_scalar_port -sd_name {TOP_DESIGN} -port_name {LED7} -port_direction {OUT} 
sd_create_scalar_port -sd_name {TOP_DESIGN} -port_name {LED8} -port_direction {OUT} 
sd_connect_pins -sd_name {TOP_DESIGN} -pin_names {"MICROSUBSYSTEM_0:GPIO_0_M2F" "LED1"} 
sd_connect_pins -sd_name {TOP_DESIGN} -pin_names {"MICROSUBSYSTEM_0:GPIO_1_M2F" "LED2"} 
sd_connect_pins -sd_name {TOP_DESIGN} -pin_names {"MICROSUBSYSTEM_0:GPIO_2_M2F" "LED3"} 
sd_connect_pins -sd_name {TOP_DESIGN} -pin_names {"MICROSUBSYSTEM_0:GPIO_3_M2F" "LED4"} 
sd_connect_pins -sd_name {TOP_DESIGN} -pin_names {"MICROSUBSYSTEM_0:GPIO_4_M2F" "LED5"} 
sd_connect_pins -sd_name {TOP_DESIGN} -pin_names {"MICROSUBSYSTEM_0:GPIO_5_M2F" "LED6"} 
sd_connect_pins -sd_name {TOP_DESIGN} -pin_names {"MICROSUBSYSTEM_0:GPIO_6_M2F" "LED7"} 
sd_connect_pins -sd_name {TOP_DESIGN} -pin_names {"MICROSUBSYSTEM_0:GPIO_7_M2F" "LED8"} 

sd_create_scalar_port -sd_name {TOP_DESIGN} -port_name {MMUART_1_RXD} -port_direction {IN} 
sd_connect_pins -sd_name {TOP_DESIGN} -pin_names {"MMUART_1_RXD" "MICROSUBSYSTEM_0:MMUART_1_RXD_F2M"} 
sd_create_scalar_port -sd_name {TOP_DESIGN} -port_name {MMUART_1_TXD} -port_direction {OUT} 
sd_connect_pins -sd_name {TOP_DESIGN} -pin_names {"MICROSUBSYSTEM_0:MMUART_1_TXD_M2F" "MMUART_1_TXD"} 

save_project

generate_component -component_name {TOP_DESIGN} -recursive 0

set_root -module {TOP_DESIGN::work} 
build_design_hierarchy 
save_project

#
# Constraints
#
set constraint_path ./constraints

run_tool -name {CONSTRAINT_MANAGEMENT} 
create_links \
         -convert_EDN_to_HDL 0 \
         -io_pdc "${constraint_path}/io/pin_constraints.pdc"

organize_tool_files -tool {PLACEROUTE} -file "${constraint_path}/io/pin_constraints.pdc" -module {TOP_DESIGN::work} -input_type {constraint} 


derive_constraints_sdc
save_project

