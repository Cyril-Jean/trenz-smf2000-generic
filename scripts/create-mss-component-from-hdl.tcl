#
# Create a Microcontroller Subsystem (MSS) component from existing HDL files.
# The HDL files were created in a standalone Libero project. The configuration
# of the MSS was selected in that other Libero project. A new set of HDL for
# the MSS needs to be regenerated when changing the MSS configuration.
# This method is used because there is no documented scripted method for the
# configuration of the SmartFusion2 MSS. 
#

import_files \
         -convert_EDN_to_HDL 0 \
         -hdl_source_folder {./verilog-src} \
         -library {work} 

build_design_hierarchy 
save_project
set_root -module {MSS_COMPONENT::work} 



create_hdl_core -file {../Trenz-SMF2000/hdl/verilog-src/MSS_COMPONENT/MSS_COMPONENT.v} -module {MSS_COMPONENT} -library {work} -package {} 
hdl_core_add_bif -hdl_core_name {MSS_COMPONENT} -bif_definition {APB:AMBA:AMBA2:master} -bif_name {BIF_1} -signal_map {} 
hdl_core_rename_bif -hdl_core_name {MSS_COMPONENT} -current_bif_name {BIF_1} -new_bif_name {FIC_0_APB} 
hdl_core_assign_bif_signal -hdl_core_name {MSS_COMPONENT} -bif_name {FIC_0_APB} -bif_signal_name {PADDR} -core_signal_name {FIC_0_APB_M_PADDR} 
hdl_core_assign_bif_signal -hdl_core_name {MSS_COMPONENT} -bif_name {FIC_0_APB} -bif_signal_name {PSELx} -core_signal_name {FIC_0_APB_M_PSEL} 
hdl_core_assign_bif_signal -hdl_core_name {MSS_COMPONENT} -bif_name {FIC_0_APB} -bif_signal_name {PENABLE} -core_signal_name {FIC_0_APB_M_PENABLE} 
hdl_core_assign_bif_signal -hdl_core_name {MSS_COMPONENT} -bif_name {FIC_0_APB} -bif_signal_name {PWRITE} -core_signal_name {FIC_0_APB_M_PWRITE} 
hdl_core_assign_bif_signal -hdl_core_name {MSS_COMPONENT} -bif_name {FIC_0_APB} -bif_signal_name {PRDATA} -core_signal_name {FIC_0_APB_M_PRDATA} 
hdl_core_assign_bif_signal -hdl_core_name {MSS_COMPONENT} -bif_name {FIC_0_APB} -bif_signal_name {PWDATA} -core_signal_name {FIC_0_APB_M_PWDATA} 
hdl_core_assign_bif_signal -hdl_core_name {MSS_COMPONENT} -bif_name {FIC_0_APB} -bif_signal_name {PREADY} -core_signal_name {FIC_0_APB_M_PREADY} 
hdl_core_assign_bif_signal -hdl_core_name {MSS_COMPONENT} -bif_name {FIC_0_APB} -bif_signal_name {PSLVERR} -core_signal_name {FIC_0_APB_M_PSLVERR} 

