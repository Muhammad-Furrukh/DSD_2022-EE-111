set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk }];
##7 segment display
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { segments[6] }]; 
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { segments[5] }]; 
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { segments[4] }]; 
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { segments[3] }]; 
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { segments[2] }]; 
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { segments[1] }]; 
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { segments[0] }];  
set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { an[0] }]; 
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { an[1] }];  
##Switches 
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { valid_in }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { bit_index[0] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { bit_index[1] }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[2]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { bit_index[2] }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { bit_value }]; #IO_L12N_T1_MRCC_14 Sch=sw[4]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { reset }];