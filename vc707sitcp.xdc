
set_property PACKAGE_PIN E19 [get_ports SYS_CLK_P]
set_property PACKAGE_PIN E18 [get_ports SYS_CLK_N]
set_property PACKAGE_PIN AH8 [get_ports SGMII_CLK_P]
set_property PACKAGE_PIN AH7 [get_ports SGMII_CLK_N]
set_property PACKAGE_PIN AR40 [get_ports SW_N]
set_property PACKAGE_PIN AU32 [get_ports I2C_SDA]
set_property PACKAGE_PIN AT35 [get_ports I2C_SCL]
set_property PACKAGE_PIN AM39 [get_ports {LED[0]}]
set_property PACKAGE_PIN AN39 [get_ports {LED[1]}]
set_property PACKAGE_PIN AR37 [get_ports {LED[2]}]
set_property PACKAGE_PIN AT37 [get_ports {LED[3]}]
set_property PACKAGE_PIN AR35 [get_ports {LED[4]}]
set_property PACKAGE_PIN AP41 [get_ports {LED[5]}]
set_property PACKAGE_PIN AP42 [get_ports {LED[6]}]
set_property PACKAGE_PIN AU39 [get_ports {LED[7]}]
set_property PACKAGE_PIN AV30 [get_ports DIP[0]]
set_property PACKAGE_PIN AY33 [get_ports DIP[1]]
set_property PACKAGE_PIN BA31 [get_ports DIP[2]]
set_property PACKAGE_PIN BA32 [get_ports DIP[3]]
set_property PACKAGE_PIN AP33 [get_ports SFP_TX_DISABLE]
set_property PACKAGE_PIN AM4 [get_ports SFP_TX_P]
set_property PACKAGE_PIN AM3 [get_ports SFP_TX_N]
set_property PACKAGE_PIN AL6 [get_ports SFP_RX_P]
set_property PACKAGE_PIN AL5 [get_ports SFP_RX_N]



set_property IOSTANDARD LVDS [get_ports SYS_CLK_P]
set_property IOSTANDARD LVDS [get_ports SYS_CLK_N]
set_property IOSTANDARD LVCMOS18 [get_ports SW_N]
set_property IOSTANDARD LVCMOS18 [get_ports I2C_SDA]
set_property IOSTANDARD LVCMOS18 [get_ports I2C_SCL]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LED[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DIP[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DIP[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DIP[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {DIP[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports SFP_TX_DISABLE]



create_clock -name SYS_CLK_P -period 5.000 -waveform {0.000 2.500} [get_ports SYS_CLK_P]

create_clock -period 8.000 -name SGMII_CLK_P -waveform {0.000 4.000} [get_ports SGMII_CLK_P]
#create_clock -period 8.000 -name SGMII_CLK_N -waveform {0.000 4.000} [get_ports SGMII_CLK_N]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 6 [current_design]

set_max_delay 5.000 -datapath_only -from [get_pins {SEL_SGMII*/C}]

set_false_path -to [get_pins {IB_SIG_DET*/D}]

set_max_delay  5 -datapath_only -from [get_ports {I2C_SDA}]
set_min_delay  0                -from [get_ports {I2C_SDA}]
set_max_delay  5 -datapath_only -from [get_clocks {SYS_CLK_P}] -to [get_ports {I2C_SDA}]
set_max_delay  5 -datapath_only -from [get_clocks {SYS_CLK_P}] -to [get_ports {I2C_SCL}]

set_max_delay 20 -datapath_only -from [get_clocks {SYS_CLK_P}] -to [get_ports {LED*}]

set_max_delay 20 -datapath_only -from [get_ports {SW_N}]
set_min_delay  0                -from [get_ports {SW_N}]

set_max_delay 20 -datapath_only -from [get_ports {DIP[0]}]
set_min_delay  0                -from [get_ports {DIP[0]}]

