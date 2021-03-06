# Microsemi Libero Tcl Script


new_project -location {./Trenz-SMF2000} -name {SMF2000} -project_description {} -block_mode 0 -standalone_peripheral_initialization 0 -instantiate_in_smartdesign 1 -ondemand_build_dh 1 -use_relative_path 0 -linked_files_root_dir_env {} -hdl {VERILOG} -family {SmartFusion2} -die {M2S010} -package {400 VF} -speed {STD} -die_voltage {1.2} -part_range {COM} -adv_options {DSW_VCCA_VOLTAGE_RAMP_RATE:100_MS} -adv_options {IO_DEFT_STD:LVCMOS 3.3V} -adv_options {PLL_SUPPLY:PLL_SUPPLY_33} -adv_options {RESTRICTPROBEPINS:1} -adv_options {RESTRICTSPIPINS:0} -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} -adv_options {TEMPR:COM} -adv_options {VCCI_1.2_VOLTR:COM} -adv_options {VCCI_1.5_VOLTR:COM} -adv_options {VCCI_1.8_VOLTR:COM} -adv_options {VCCI_2.5_VOLTR:COM} -adv_options {VCCI_3.3_VOLTR:COM} -adv_options {VOLTR:COM} 

source ./scripts/create-mss-component-from-hdl.tcl
source ./scripts/mss-subsystem.tcl
source ./scripts/create-top-level-design.tcl

save_project 
