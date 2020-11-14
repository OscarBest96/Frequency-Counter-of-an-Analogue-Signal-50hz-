-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.2 Build 203 01/18/2017 SJ Lite Edition"

-- DATE "08/14/2019 16:30:49"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	spi_test IS
    PORT (
	CLOCK_1_OP : OUT std_logic;
	\50MHz_CLK\ : IN std_logic;
	MISO : OUT std_logic;
	SCLK_IN : IN std_logic;
	CS_N : IN std_logic;
	MOSI_IN : IN std_logic;
	RESET_BUTTON2 : IN std_logic;
	RESET_BUTTON : IN std_logic;
	ADC_SDAT : IN std_logic;
	Switch_0 : IN std_logic;
	Switch_1 : IN std_logic;
	Switch_2 : IN std_logic;
	Switch_3 : IN std_logic;
	ADC_SADDR : OUT std_logic;
	ADC_SCLK : OUT std_logic;
	ADC_CS_N : OUT std_logic;
	LED_7 : OUT std_logic;
	LED_6 : OUT std_logic;
	LED_5 : OUT std_logic;
	LED_4 : OUT std_logic;
	LED_3 : OUT std_logic;
	LED_2 : OUT std_logic;
	LED_1 : OUT std_logic;
	LED_0 : OUT std_logic
	);
END spi_test;

-- Design Ports Information
-- CLOCK_1_OP	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MISO	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SADDR	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SCLK	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CS_N	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_7	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_6	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_5	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_4	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_3	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_2	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_0	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_BUTTON2	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_BUTTON	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 50MHz_CLK	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS_N	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK_IN	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MOSI_IN	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch_3	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch_1	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch_2	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch_0	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SDAT	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF spi_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_1_OP : std_logic;
SIGNAL \ww_50MHz_CLK\ : std_logic;
SIGNAL ww_MISO : std_logic;
SIGNAL ww_SCLK_IN : std_logic;
SIGNAL ww_CS_N : std_logic;
SIGNAL ww_MOSI_IN : std_logic;
SIGNAL ww_RESET_BUTTON2 : std_logic;
SIGNAL ww_RESET_BUTTON : std_logic;
SIGNAL ww_ADC_SDAT : std_logic;
SIGNAL ww_Switch_0 : std_logic;
SIGNAL ww_Switch_1 : std_logic;
SIGNAL ww_Switch_2 : std_logic;
SIGNAL ww_Switch_3 : std_logic;
SIGNAL ww_ADC_SADDR : std_logic;
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL ww_ADC_CS_N : std_logic;
SIGNAL ww_LED_7 : std_logic;
SIGNAL ww_LED_6 : std_logic;
SIGNAL ww_LED_5 : std_logic;
SIGNAL ww_LED_4 : std_logic;
SIGNAL ww_LED_3 : std_logic;
SIGNAL ww_LED_2 : std_logic;
SIGNAL ww_LED_1 : std_logic;
SIGNAL ww_LED_0 : std_logic;
SIGNAL \inst14|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|tx_count[0]~40clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|RX[15]~15clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CLOCK_1_OP_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \50MHz_CLK~input_o\ : std_logic;
SIGNAL \inst14|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|midpoint_count[0]~0_combout\ : std_logic;
SIGNAL \inst8|midpoint_count[0]~feeder_combout\ : std_logic;
SIGNAL \RESET_BUTTON2~input_o\ : std_logic;
SIGNAL \RESET_BUTTON~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \inst8|Add0~1\ : std_logic;
SIGNAL \inst8|Add0~2_combout\ : std_logic;
SIGNAL \inst8|midpoint_count[1]~1_combout\ : std_logic;
SIGNAL \inst8|Add0~3\ : std_logic;
SIGNAL \inst8|Add0~4_combout\ : std_logic;
SIGNAL \inst8|Add0~5\ : std_logic;
SIGNAL \inst8|Add0~6_combout\ : std_logic;
SIGNAL \inst8|midpoint_count[3]~feeder_combout\ : std_logic;
SIGNAL \inst8|Add0~7\ : std_logic;
SIGNAL \inst8|Add0~8_combout\ : std_logic;
SIGNAL \inst8|Add0~9\ : std_logic;
SIGNAL \inst8|Add0~10_combout\ : std_logic;
SIGNAL \inst8|midpoint_count[5]~feeder_combout\ : std_logic;
SIGNAL \inst8|Add0~11\ : std_logic;
SIGNAL \inst8|Add0~12_combout\ : std_logic;
SIGNAL \inst8|Add0~13\ : std_logic;
SIGNAL \inst8|Add0~14_combout\ : std_logic;
SIGNAL \inst8|Add0~15\ : std_logic;
SIGNAL \inst8|Add0~16_combout\ : std_logic;
SIGNAL \inst8|midpoint_count[8]~feeder_combout\ : std_logic;
SIGNAL \inst8|Add0~17\ : std_logic;
SIGNAL \inst8|Add0~18_combout\ : std_logic;
SIGNAL \inst8|midpoint_count[9]~feeder_combout\ : std_logic;
SIGNAL \inst8|Add0~19\ : std_logic;
SIGNAL \inst8|Add0~20_combout\ : std_logic;
SIGNAL \inst8|Add0~21\ : std_logic;
SIGNAL \inst8|Add0~22_combout\ : std_logic;
SIGNAL \inst8|process_0~14_combout\ : std_logic;
SIGNAL \inst8|Add0~23\ : std_logic;
SIGNAL \inst8|Add0~24_combout\ : std_logic;
SIGNAL \inst8|Add0~25\ : std_logic;
SIGNAL \inst8|Add0~26_combout\ : std_logic;
SIGNAL \inst8|Add0~27\ : std_logic;
SIGNAL \inst8|Add0~28_combout\ : std_logic;
SIGNAL \inst8|Add0~29\ : std_logic;
SIGNAL \inst8|Add0~30_combout\ : std_logic;
SIGNAL \inst8|midpoint_count[15]~feeder_combout\ : std_logic;
SIGNAL \inst8|process_0~13_combout\ : std_logic;
SIGNAL \inst8|process_0~15_combout\ : std_logic;
SIGNAL \inst8|Add0~31\ : std_logic;
SIGNAL \inst8|Add0~32_combout\ : std_logic;
SIGNAL \inst8|Add0~33\ : std_logic;
SIGNAL \inst8|Add0~34_combout\ : std_logic;
SIGNAL \inst8|midpoint_count[17]~feeder_combout\ : std_logic;
SIGNAL \inst8|Add0~35\ : std_logic;
SIGNAL \inst8|Add0~36_combout\ : std_logic;
SIGNAL \inst8|Add0~37\ : std_logic;
SIGNAL \inst8|Add0~38_combout\ : std_logic;
SIGNAL \inst8|Add0~39\ : std_logic;
SIGNAL \inst8|Add0~40_combout\ : std_logic;
SIGNAL \inst8|Add0~41\ : std_logic;
SIGNAL \inst8|Add0~42_combout\ : std_logic;
SIGNAL \inst8|Add0~43\ : std_logic;
SIGNAL \inst8|Add0~44_combout\ : std_logic;
SIGNAL \inst8|Add0~45\ : std_logic;
SIGNAL \inst8|Add0~46_combout\ : std_logic;
SIGNAL \inst8|Add0~47\ : std_logic;
SIGNAL \inst8|Add0~48_combout\ : std_logic;
SIGNAL \inst8|Add0~49\ : std_logic;
SIGNAL \inst8|Add0~50_combout\ : std_logic;
SIGNAL \inst8|Add0~51\ : std_logic;
SIGNAL \inst8|Add0~52_combout\ : std_logic;
SIGNAL \inst8|Add0~53\ : std_logic;
SIGNAL \inst8|Add0~54_combout\ : std_logic;
SIGNAL \inst8|process_0~9_combout\ : std_logic;
SIGNAL \inst8|process_0~11_combout\ : std_logic;
SIGNAL \inst8|process_0~10_combout\ : std_logic;
SIGNAL \inst8|Add0~55\ : std_logic;
SIGNAL \inst8|Add0~56_combout\ : std_logic;
SIGNAL \inst8|Add0~57\ : std_logic;
SIGNAL \inst8|Add0~58_combout\ : std_logic;
SIGNAL \inst8|Add0~59\ : std_logic;
SIGNAL \inst8|Add0~60_combout\ : std_logic;
SIGNAL \inst8|Add0~61\ : std_logic;
SIGNAL \inst8|Add0~62_combout\ : std_logic;
SIGNAL \inst8|process_0~8_combout\ : std_logic;
SIGNAL \inst8|process_0~12_combout\ : std_logic;
SIGNAL \inst2|count[0]~95_combout\ : std_logic;
SIGNAL \inst2|count[1]~32_cout\ : std_logic;
SIGNAL \inst2|count[1]~33_combout\ : std_logic;
SIGNAL \inst2|count[1]~34\ : std_logic;
SIGNAL \inst2|count[2]~35_combout\ : std_logic;
SIGNAL \inst2|count[2]~36\ : std_logic;
SIGNAL \inst2|count[3]~37_combout\ : std_logic;
SIGNAL \inst2|count[3]~38\ : std_logic;
SIGNAL \inst2|count[4]~39_combout\ : std_logic;
SIGNAL \inst2|count[4]~40\ : std_logic;
SIGNAL \inst2|count[5]~41_combout\ : std_logic;
SIGNAL \inst2|count[5]~42\ : std_logic;
SIGNAL \inst2|count[6]~43_combout\ : std_logic;
SIGNAL \inst2|count[6]~44\ : std_logic;
SIGNAL \inst2|count[7]~45_combout\ : std_logic;
SIGNAL \inst2|count[7]~46\ : std_logic;
SIGNAL \inst2|count[8]~47_combout\ : std_logic;
SIGNAL \inst2|count[8]~48\ : std_logic;
SIGNAL \inst2|count[9]~49_combout\ : std_logic;
SIGNAL \inst2|count[9]~50\ : std_logic;
SIGNAL \inst2|count[10]~51_combout\ : std_logic;
SIGNAL \inst2|count[10]~52\ : std_logic;
SIGNAL \inst2|count[11]~53_combout\ : std_logic;
SIGNAL \inst2|count[11]~54\ : std_logic;
SIGNAL \inst2|count[12]~55_combout\ : std_logic;
SIGNAL \inst2|count[12]~56\ : std_logic;
SIGNAL \inst2|count[13]~57_combout\ : std_logic;
SIGNAL \inst2|count[13]~58\ : std_logic;
SIGNAL \inst2|count[14]~59_combout\ : std_logic;
SIGNAL \inst2|count[14]~60\ : std_logic;
SIGNAL \inst2|count[15]~61_combout\ : std_logic;
SIGNAL \inst2|count[15]~62\ : std_logic;
SIGNAL \inst2|count[16]~63_combout\ : std_logic;
SIGNAL \inst2|count[16]~64\ : std_logic;
SIGNAL \inst2|count[17]~65_combout\ : std_logic;
SIGNAL \inst2|count[17]~66\ : std_logic;
SIGNAL \inst2|count[18]~67_combout\ : std_logic;
SIGNAL \inst2|count[18]~68\ : std_logic;
SIGNAL \inst2|count[19]~69_combout\ : std_logic;
SIGNAL \inst2|count[19]~70\ : std_logic;
SIGNAL \inst2|count[20]~71_combout\ : std_logic;
SIGNAL \inst2|count[20]~72\ : std_logic;
SIGNAL \inst2|count[21]~73_combout\ : std_logic;
SIGNAL \inst2|count[21]~74\ : std_logic;
SIGNAL \inst2|count[22]~75_combout\ : std_logic;
SIGNAL \inst2|count[22]~76\ : std_logic;
SIGNAL \inst2|count[23]~77_combout\ : std_logic;
SIGNAL \inst2|count[23]~78\ : std_logic;
SIGNAL \inst2|count[24]~79_combout\ : std_logic;
SIGNAL \inst2|count[24]~80\ : std_logic;
SIGNAL \inst2|count[25]~81_combout\ : std_logic;
SIGNAL \inst2|count[25]~82\ : std_logic;
SIGNAL \inst2|count[26]~83_combout\ : std_logic;
SIGNAL \inst2|count[26]~84\ : std_logic;
SIGNAL \inst2|count[27]~85_combout\ : std_logic;
SIGNAL \inst2|count[27]~86\ : std_logic;
SIGNAL \inst2|count[28]~87_combout\ : std_logic;
SIGNAL \inst2|count[28]~88\ : std_logic;
SIGNAL \inst2|count[29]~89_combout\ : std_logic;
SIGNAL \inst2|count[29]~90\ : std_logic;
SIGNAL \inst2|count[30]~91_combout\ : std_logic;
SIGNAL \inst2|count[30]~92\ : std_logic;
SIGNAL \inst2|count[31]~93_combout\ : std_logic;
SIGNAL \inst2|Equal0~7_combout\ : std_logic;
SIGNAL \inst2|Equal0~8_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|Equal0~9_combout\ : std_logic;
SIGNAL \inst2|comb~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~10_combout\ : std_logic;
SIGNAL \inst2|READY~combout\ : std_logic;
SIGNAL \inst1|CS~0_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|sclk_count~0_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|sclk_count~1_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|Add0~45\ : std_logic;
SIGNAL \inst1|Add0~46_combout\ : std_logic;
SIGNAL \inst1|Add0~47\ : std_logic;
SIGNAL \inst1|Add0~48_combout\ : std_logic;
SIGNAL \inst1|Add0~49\ : std_logic;
SIGNAL \inst1|Add0~50_combout\ : std_logic;
SIGNAL \inst1|Add0~51\ : std_logic;
SIGNAL \inst1|Add0~52_combout\ : std_logic;
SIGNAL \inst1|Add0~53\ : std_logic;
SIGNAL \inst1|Add0~54_combout\ : std_logic;
SIGNAL \inst1|Equal0~7_combout\ : std_logic;
SIGNAL \inst1|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~55\ : std_logic;
SIGNAL \inst1|Add0~56_combout\ : std_logic;
SIGNAL \inst1|Add0~57\ : std_logic;
SIGNAL \inst1|Add0~58_combout\ : std_logic;
SIGNAL \inst1|Add0~59\ : std_logic;
SIGNAL \inst1|Add0~60_combout\ : std_logic;
SIGNAL \inst1|Add0~61\ : std_logic;
SIGNAL \inst1|Add0~62_combout\ : std_logic;
SIGNAL \inst1|Equal0~8_combout\ : std_logic;
SIGNAL \inst1|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|Equal0~9_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~10_combout\ : std_logic;
SIGNAL \inst1|sclk_pulse~0_combout\ : std_logic;
SIGNAL \inst1|sclk_pulse~q\ : std_logic;
SIGNAL \inst1|rx_count[0]~40_combout\ : std_logic;
SIGNAL \inst1|tx_count[0]~97_combout\ : std_logic;
SIGNAL \inst1|tx_count[16]~31_combout\ : std_logic;
SIGNAL \inst1|tx_count[1]~33_cout\ : std_logic;
SIGNAL \inst1|tx_count[1]~34_combout\ : std_logic;
SIGNAL \inst1|tx_count[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[1]~35\ : std_logic;
SIGNAL \inst1|tx_count[2]~36_combout\ : std_logic;
SIGNAL \inst1|tx_count[2]~37\ : std_logic;
SIGNAL \inst1|tx_count[3]~38_combout\ : std_logic;
SIGNAL \inst1|tx_count[3]~39\ : std_logic;
SIGNAL \inst1|tx_count[4]~41_combout\ : std_logic;
SIGNAL \inst1|tx_count[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[4]~42\ : std_logic;
SIGNAL \inst1|tx_count[5]~43_combout\ : std_logic;
SIGNAL \inst1|tx_count[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[5]~44\ : std_logic;
SIGNAL \inst1|tx_count[6]~45_combout\ : std_logic;
SIGNAL \inst1|tx_count[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[6]~46\ : std_logic;
SIGNAL \inst1|tx_count[7]~47_combout\ : std_logic;
SIGNAL \inst1|tx_count[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[7]~48\ : std_logic;
SIGNAL \inst1|tx_count[8]~49_combout\ : std_logic;
SIGNAL \inst1|tx_count[8]~50\ : std_logic;
SIGNAL \inst1|tx_count[9]~51_combout\ : std_logic;
SIGNAL \inst1|tx_count[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[9]~52\ : std_logic;
SIGNAL \inst1|tx_count[10]~53_combout\ : std_logic;
SIGNAL \inst1|tx_count[10]~54\ : std_logic;
SIGNAL \inst1|tx_count[11]~55_combout\ : std_logic;
SIGNAL \inst1|tx_count[11]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[11]~56\ : std_logic;
SIGNAL \inst1|tx_count[12]~57_combout\ : std_logic;
SIGNAL \inst1|tx_count[12]~feeder_combout\ : std_logic;
SIGNAL \inst1|process_0~3_combout\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|process_0~4_combout\ : std_logic;
SIGNAL \inst1|rx_count[3]~38\ : std_logic;
SIGNAL \inst1|rx_count[4]~41_combout\ : std_logic;
SIGNAL \inst1|rx_count[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|rx_count[27]~39_combout\ : std_logic;
SIGNAL \inst1|rx_count[4]~42\ : std_logic;
SIGNAL \inst1|rx_count[5]~43_combout\ : std_logic;
SIGNAL \inst1|rx_count[5]~44\ : std_logic;
SIGNAL \inst1|rx_count[6]~45_combout\ : std_logic;
SIGNAL \inst1|rx_count[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|rx_count[6]~46\ : std_logic;
SIGNAL \inst1|rx_count[7]~47_combout\ : std_logic;
SIGNAL \inst1|rx_count[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|process_0~11_combout\ : std_logic;
SIGNAL \inst1|rx_count[7]~48\ : std_logic;
SIGNAL \inst1|rx_count[8]~49_combout\ : std_logic;
SIGNAL \inst1|rx_count[8]~50\ : std_logic;
SIGNAL \inst1|rx_count[9]~51_combout\ : std_logic;
SIGNAL \inst1|rx_count[9]~52\ : std_logic;
SIGNAL \inst1|rx_count[10]~53_combout\ : std_logic;
SIGNAL \inst1|rx_count[10]~54\ : std_logic;
SIGNAL \inst1|rx_count[11]~55_combout\ : std_logic;
SIGNAL \inst1|process_0~12_combout\ : std_logic;
SIGNAL \inst1|tx_count[12]~58\ : std_logic;
SIGNAL \inst1|tx_count[13]~59_combout\ : std_logic;
SIGNAL \inst1|tx_count[13]~60\ : std_logic;
SIGNAL \inst1|tx_count[14]~61_combout\ : std_logic;
SIGNAL \inst1|tx_count[14]~62\ : std_logic;
SIGNAL \inst1|tx_count[15]~63_combout\ : std_logic;
SIGNAL \inst1|tx_count[15]~64\ : std_logic;
SIGNAL \inst1|tx_count[16]~65_combout\ : std_logic;
SIGNAL \inst1|tx_count[16]~66\ : std_logic;
SIGNAL \inst1|tx_count[17]~67_combout\ : std_logic;
SIGNAL \inst1|tx_count[17]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[17]~68\ : std_logic;
SIGNAL \inst1|tx_count[18]~69_combout\ : std_logic;
SIGNAL \inst1|tx_count[18]~70\ : std_logic;
SIGNAL \inst1|tx_count[19]~71_combout\ : std_logic;
SIGNAL \inst1|tx_count[19]~72\ : std_logic;
SIGNAL \inst1|tx_count[20]~73_combout\ : std_logic;
SIGNAL \inst1|tx_count[20]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[20]~74\ : std_logic;
SIGNAL \inst1|tx_count[21]~75_combout\ : std_logic;
SIGNAL \inst1|tx_count[21]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[21]~76\ : std_logic;
SIGNAL \inst1|tx_count[22]~77_combout\ : std_logic;
SIGNAL \inst1|tx_count[22]~78\ : std_logic;
SIGNAL \inst1|tx_count[23]~79_combout\ : std_logic;
SIGNAL \inst1|tx_count[23]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[23]~80\ : std_logic;
SIGNAL \inst1|tx_count[24]~81_combout\ : std_logic;
SIGNAL \inst1|tx_count[24]~82\ : std_logic;
SIGNAL \inst1|tx_count[25]~83_combout\ : std_logic;
SIGNAL \inst1|tx_count[25]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[25]~84\ : std_logic;
SIGNAL \inst1|tx_count[26]~85_combout\ : std_logic;
SIGNAL \inst1|tx_count[26]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[26]~86\ : std_logic;
SIGNAL \inst1|tx_count[27]~87_combout\ : std_logic;
SIGNAL \inst1|tx_count[27]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[27]~88\ : std_logic;
SIGNAL \inst1|tx_count[28]~89_combout\ : std_logic;
SIGNAL \inst1|tx_count[28]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[28]~90\ : std_logic;
SIGNAL \inst1|tx_count[29]~91_combout\ : std_logic;
SIGNAL \inst1|tx_count[29]~feeder_combout\ : std_logic;
SIGNAL \inst1|tx_count[29]~92\ : std_logic;
SIGNAL \inst1|tx_count[30]~93_combout\ : std_logic;
SIGNAL \inst1|tx_count[30]~94\ : std_logic;
SIGNAL \inst1|tx_count[31]~95_combout\ : std_logic;
SIGNAL \inst1|process_0~10_combout\ : std_logic;
SIGNAL \inst1|rx_count[11]~56\ : std_logic;
SIGNAL \inst1|rx_count[12]~57_combout\ : std_logic;
SIGNAL \inst1|rx_count[12]~58\ : std_logic;
SIGNAL \inst1|rx_count[13]~59_combout\ : std_logic;
SIGNAL \inst1|rx_count[13]~60\ : std_logic;
SIGNAL \inst1|rx_count[14]~61_combout\ : std_logic;
SIGNAL \inst1|rx_count[14]~62\ : std_logic;
SIGNAL \inst1|rx_count[15]~63_combout\ : std_logic;
SIGNAL \inst1|rx_count[15]~feeder_combout\ : std_logic;
SIGNAL \inst1|process_0~13_combout\ : std_logic;
SIGNAL \inst1|process_0~14_combout\ : std_logic;
SIGNAL \inst1|rx_count[15]~64\ : std_logic;
SIGNAL \inst1|rx_count[16]~65_combout\ : std_logic;
SIGNAL \inst1|rx_count[16]~66\ : std_logic;
SIGNAL \inst1|rx_count[17]~67_combout\ : std_logic;
SIGNAL \inst1|rx_count[17]~68\ : std_logic;
SIGNAL \inst1|rx_count[18]~69_combout\ : std_logic;
SIGNAL \inst1|rx_count[18]~70\ : std_logic;
SIGNAL \inst1|rx_count[19]~71_combout\ : std_logic;
SIGNAL \inst1|rx_count[19]~72\ : std_logic;
SIGNAL \inst1|rx_count[20]~73_combout\ : std_logic;
SIGNAL \inst1|rx_count[20]~74\ : std_logic;
SIGNAL \inst1|rx_count[21]~75_combout\ : std_logic;
SIGNAL \inst1|rx_count[21]~76\ : std_logic;
SIGNAL \inst1|rx_count[22]~77_combout\ : std_logic;
SIGNAL \inst1|rx_count[22]~78\ : std_logic;
SIGNAL \inst1|rx_count[23]~79_combout\ : std_logic;
SIGNAL \inst1|process_0~16_combout\ : std_logic;
SIGNAL \inst1|rx_count[23]~80\ : std_logic;
SIGNAL \inst1|rx_count[24]~81_combout\ : std_logic;
SIGNAL \inst1|rx_count[24]~82\ : std_logic;
SIGNAL \inst1|rx_count[25]~83_combout\ : std_logic;
SIGNAL \inst1|rx_count[25]~84\ : std_logic;
SIGNAL \inst1|rx_count[26]~85_combout\ : std_logic;
SIGNAL \inst1|rx_count[26]~86\ : std_logic;
SIGNAL \inst1|rx_count[27]~87_combout\ : std_logic;
SIGNAL \inst1|rx_count[27]~88\ : std_logic;
SIGNAL \inst1|rx_count[28]~89_combout\ : std_logic;
SIGNAL \inst1|rx_count[28]~feeder_combout\ : std_logic;
SIGNAL \inst1|rx_count[28]~90\ : std_logic;
SIGNAL \inst1|rx_count[29]~91_combout\ : std_logic;
SIGNAL \inst1|rx_count[29]~92\ : std_logic;
SIGNAL \inst1|rx_count[30]~93_combout\ : std_logic;
SIGNAL \inst1|rx_count[30]~feeder_combout\ : std_logic;
SIGNAL \inst1|rx_count[30]~94\ : std_logic;
SIGNAL \inst1|rx_count[31]~95_combout\ : std_logic;
SIGNAL \inst1|rx_count[31]~feeder_combout\ : std_logic;
SIGNAL \inst1|process_0~18_combout\ : std_logic;
SIGNAL \inst1|process_0~17_combout\ : std_logic;
SIGNAL \inst1|process_0~15_combout\ : std_logic;
SIGNAL \inst1|process_0~19_combout\ : std_logic;
SIGNAL \inst1|process_0~7_combout\ : std_logic;
SIGNAL \inst1|process_0~8_combout\ : std_logic;
SIGNAL \inst1|process_0~5_combout\ : std_logic;
SIGNAL \inst1|process_0~6_combout\ : std_logic;
SIGNAL \inst1|process_0~9_combout\ : std_logic;
SIGNAL \inst1|process_0~20_combout\ : std_logic;
SIGNAL \inst1|tx_count[0]~40_combout\ : std_logic;
SIGNAL \inst1|tx_count[0]~40clkctrl_outclk\ : std_logic;
SIGNAL \inst1|rx_count[1]~32_cout\ : std_logic;
SIGNAL \inst1|rx_count[1]~33_combout\ : std_logic;
SIGNAL \inst1|rx_count[1]~34\ : std_logic;
SIGNAL \inst1|rx_count[2]~35_combout\ : std_logic;
SIGNAL \inst1|rx_count[2]~36\ : std_logic;
SIGNAL \inst1|rx_count[3]~37_combout\ : std_logic;
SIGNAL \inst1|Decoder0~0_combout\ : std_logic;
SIGNAL \inst1|Decoder0~3_combout\ : std_logic;
SIGNAL \ADC_SDAT~input_o\ : std_logic;
SIGNAL \inst1|RX_BUFFER[0]~10_combout\ : std_logic;
SIGNAL \inst1|RX[15]~15_combout\ : std_logic;
SIGNAL \inst1|RX[15]~15clkctrl_outclk\ : std_logic;
SIGNAL \inst1|RX[0]~13_combout\ : std_logic;
SIGNAL \inst1|Decoder0~1_combout\ : std_logic;
SIGNAL \inst1|RX_BUFFER[2]~8_combout\ : std_logic;
SIGNAL \inst1|RX[2]~10_combout\ : std_logic;
SIGNAL \inst1|Decoder0~2_combout\ : std_logic;
SIGNAL \inst1|RX_BUFFER[1]~9_combout\ : std_logic;
SIGNAL \inst1|RX[1]~11_combout\ : std_logic;
SIGNAL \inst1|RX[1]~12_combout\ : std_logic;
SIGNAL \inst1|Decoder0~4_combout\ : std_logic;
SIGNAL \inst1|Decoder0~5_combout\ : std_logic;
SIGNAL \inst1|RX_BUFFER[4]~6_combout\ : std_logic;
SIGNAL \inst1|RX[4]~8_combout\ : std_logic;
SIGNAL \inst1|Decoder0~7_combout\ : std_logic;
SIGNAL \inst1|RX_BUFFER[3]~7_combout\ : std_logic;
SIGNAL \inst1|RX[3]~9_combout\ : std_logic;
SIGNAL \inst1|Decoder0~6_combout\ : std_logic;
SIGNAL \inst1|RX_BUFFER[5]~5_combout\ : std_logic;
SIGNAL \inst1|RX[5]~7_combout\ : std_logic;
SIGNAL \inst1|RX_BUFFER[6]~4_combout\ : std_logic;
SIGNAL \inst1|RX[6]~6_combout\ : std_logic;
SIGNAL \inst8|process_0~4_combout\ : std_logic;
SIGNAL \inst8|process_0~5_combout\ : std_logic;
SIGNAL \inst1|RX_BUFFER[9]~1_combout\ : std_logic;
SIGNAL \inst1|RX[9]~3_combout\ : std_logic;
SIGNAL \inst1|RX_BUFFER[10]~0_combout\ : std_logic;
SIGNAL \inst1|RX[10]~2_combout\ : std_logic;
SIGNAL \inst1|RX_BUFFER[8]~2_combout\ : std_logic;
SIGNAL \inst1|RX[8]~4_combout\ : std_logic;
SIGNAL \inst1|process_0~21_combout\ : std_logic;
SIGNAL \inst1|RX_BUFFER[7]~3_combout\ : std_logic;
SIGNAL \inst1|RX[7]~5_combout\ : std_logic;
SIGNAL \inst8|process_0~3_combout\ : std_logic;
SIGNAL \inst1|process_0~22_combout\ : std_logic;
SIGNAL \inst1|RX_BUFFER[11]~11_combout\ : std_logic;
SIGNAL \inst1|RX[11]~14_combout\ : std_logic;
SIGNAL \inst8|process_0~6_combout\ : std_logic;
SIGNAL \inst8|process_0~7_combout\ : std_logic;
SIGNAL \inst8|process_0~2_combout\ : std_logic;
SIGNAL \inst8|process_0~16_combout\ : std_logic;
SIGNAL \inst8|Add0~0_combout\ : std_logic;
SIGNAL \inst8|Equal5~1_combout\ : std_logic;
SIGNAL \inst8|Equal5~0_combout\ : std_logic;
SIGNAL \inst8|Equal5~2_combout\ : std_logic;
SIGNAL \inst8|Equal5~3_combout\ : std_logic;
SIGNAL \inst8|Equal5~4_combout\ : std_logic;
SIGNAL \inst8|Equal5~7_combout\ : std_logic;
SIGNAL \inst8|Equal5~6_combout\ : std_logic;
SIGNAL \inst8|Equal5~5_combout\ : std_logic;
SIGNAL \inst8|Equal5~8_combout\ : std_logic;
SIGNAL \inst8|Equal5~9_combout\ : std_logic;
SIGNAL \inst8|counter_up[0]~47_combout\ : std_logic;
SIGNAL \inst8|counter_up[1]~17_combout\ : std_logic;
SIGNAL \inst8|process_0~17_combout\ : std_logic;
SIGNAL \inst8|counter_up[1]~18\ : std_logic;
SIGNAL \inst8|counter_up[2]~19_combout\ : std_logic;
SIGNAL \inst8|counter_up[2]~20\ : std_logic;
SIGNAL \inst8|counter_up[3]~21_combout\ : std_logic;
SIGNAL \inst8|counter_up[3]~22\ : std_logic;
SIGNAL \inst8|counter_up[4]~23_combout\ : std_logic;
SIGNAL \inst8|counter_up[4]~24\ : std_logic;
SIGNAL \inst8|counter_up[5]~25_combout\ : std_logic;
SIGNAL \inst8|counter_up[5]~26\ : std_logic;
SIGNAL \inst8|counter_up[6]~27_combout\ : std_logic;
SIGNAL \inst8|counter_up[6]~28\ : std_logic;
SIGNAL \inst8|counter_up[7]~29_combout\ : std_logic;
SIGNAL \inst8|counter_up[7]~30\ : std_logic;
SIGNAL \inst8|counter_up[8]~31_combout\ : std_logic;
SIGNAL \inst8|counter_up[8]~32\ : std_logic;
SIGNAL \inst8|counter_up[9]~33_combout\ : std_logic;
SIGNAL \inst8|counter_up[9]~34\ : std_logic;
SIGNAL \inst8|counter_up[10]~35_combout\ : std_logic;
SIGNAL \inst8|counter_up[10]~36\ : std_logic;
SIGNAL \inst8|counter_up[11]~37_combout\ : std_logic;
SIGNAL \inst8|counter_up[11]~38\ : std_logic;
SIGNAL \inst8|counter_up[12]~39_combout\ : std_logic;
SIGNAL \inst8|counter_up[12]~40\ : std_logic;
SIGNAL \inst8|counter_up[13]~41_combout\ : std_logic;
SIGNAL \inst8|counter_up[13]~42\ : std_logic;
SIGNAL \inst8|counter_up[14]~43_combout\ : std_logic;
SIGNAL \inst8|counter_up[14]~44\ : std_logic;
SIGNAL \inst8|counter_up[15]~45_combout\ : std_logic;
SIGNAL \inst8|Equal5~10_combout\ : std_logic;
SIGNAL \CS_N~input_o\ : std_logic;
SIGNAL \inst3|sregout[15]~17_combout\ : std_logic;
SIGNAL \SCLK_IN~input_o\ : std_logic;
SIGNAL \inst8|data_tx[14]~feeder_combout\ : std_logic;
SIGNAL \inst3|sregout[14]~21_combout\ : std_logic;
SIGNAL \inst8|data_tx[12]~feeder_combout\ : std_logic;
SIGNAL \inst3|sregout[12]~29_combout\ : std_logic;
SIGNAL \inst3|sregout[11]~33_combout\ : std_logic;
SIGNAL \inst8|data_tx[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|sregout[10]~37_combout\ : std_logic;
SIGNAL \inst3|sregout[9]~41_combout\ : std_logic;
SIGNAL \inst8|data_tx[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|sregout[8]~45_combout\ : std_logic;
SIGNAL \inst3|sregout[6]~53_combout\ : std_logic;
SIGNAL \inst3|Add1~0_combout\ : std_logic;
SIGNAL \inst3|transmit:state[0]~0_combout\ : std_logic;
SIGNAL \inst3|transmit:state[0]~q\ : std_logic;
SIGNAL \inst3|Add1~1\ : std_logic;
SIGNAL \inst3|Add1~2_combout\ : std_logic;
SIGNAL \inst3|transmit:state[1]~q\ : std_logic;
SIGNAL \inst3|Add1~3\ : std_logic;
SIGNAL \inst3|Add1~4_combout\ : std_logic;
SIGNAL \inst3|transmit:state[2]~q\ : std_logic;
SIGNAL \inst3|Add1~5\ : std_logic;
SIGNAL \inst3|Add1~6_combout\ : std_logic;
SIGNAL \inst3|transmit:state[3]~q\ : std_logic;
SIGNAL \inst3|Add1~7\ : std_logic;
SIGNAL \inst3|Add1~8_combout\ : std_logic;
SIGNAL \inst3|state~1_combout\ : std_logic;
SIGNAL \inst3|transmit:state[4]~q\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|Equal1~1_combout\ : std_logic;
SIGNAL \inst8|data_tx[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|sregout[2]~69_combout\ : std_logic;
SIGNAL \inst3|sregout[1]~73_combout\ : std_logic;
SIGNAL \inst8|data_tx[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|sregout[0]~77_combout\ : std_logic;
SIGNAL \inst3|sregout[0]~79_combout\ : std_logic;
SIGNAL \inst3|sregout[0]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[0]~78_combout\ : std_logic;
SIGNAL \inst3|sregout[1]~75_combout\ : std_logic;
SIGNAL \inst3|sregout[1]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[1]~74_combout\ : std_logic;
SIGNAL \inst3|sregout[2]~71_combout\ : std_logic;
SIGNAL \inst3|sregout[2]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[2]~70_combout\ : std_logic;
SIGNAL \inst8|data_tx[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|sregout[3]~65_combout\ : std_logic;
SIGNAL \inst3|sregout[3]~67_combout\ : std_logic;
SIGNAL \inst3|sregout[3]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[3]~66_combout\ : std_logic;
SIGNAL \inst3|sregout[4]~61_combout\ : std_logic;
SIGNAL \inst3|sregout[4]~63_combout\ : std_logic;
SIGNAL \inst3|sregout[4]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[4]~62_combout\ : std_logic;
SIGNAL \inst3|sregout[5]~57_combout\ : std_logic;
SIGNAL \inst3|sregout[5]~59_combout\ : std_logic;
SIGNAL \inst3|sregout[5]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[5]~58_combout\ : std_logic;
SIGNAL \inst3|sregout[6]~55_combout\ : std_logic;
SIGNAL \inst3|sregout[6]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[6]~54_combout\ : std_logic;
SIGNAL \inst3|sregout[7]~49_combout\ : std_logic;
SIGNAL \inst3|sregout[7]~51_combout\ : std_logic;
SIGNAL \inst3|sregout[7]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[7]~50_combout\ : std_logic;
SIGNAL \inst3|sregout[8]~47_combout\ : std_logic;
SIGNAL \inst3|sregout[8]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[8]~46_combout\ : std_logic;
SIGNAL \inst3|sregout[9]~43_combout\ : std_logic;
SIGNAL \inst3|sregout[9]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[9]~42_combout\ : std_logic;
SIGNAL \inst3|sregout[10]~39_combout\ : std_logic;
SIGNAL \inst3|sregout[10]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[10]~38_combout\ : std_logic;
SIGNAL \inst3|sregout[11]~35_combout\ : std_logic;
SIGNAL \inst3|sregout[11]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[11]~34_combout\ : std_logic;
SIGNAL \inst3|sregout[12]~31_combout\ : std_logic;
SIGNAL \inst3|sregout[12]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[12]~30_combout\ : std_logic;
SIGNAL \inst3|sregout[13]~25_combout\ : std_logic;
SIGNAL \inst3|sregout[13]~27_combout\ : std_logic;
SIGNAL \inst3|sregout[13]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[13]~26_combout\ : std_logic;
SIGNAL \inst3|sregout[14]~23_combout\ : std_logic;
SIGNAL \inst3|sregout[14]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[14]~22_combout\ : std_logic;
SIGNAL \inst3|sregout[15]~19_combout\ : std_logic;
SIGNAL \inst3|sregout[15]~_emulated_q\ : std_logic;
SIGNAL \inst3|sregout[15]~18_combout\ : std_logic;
SIGNAL \inst3|sregout[15]~enfeeder_combout\ : std_logic;
SIGNAL \inst3|sregout[15]~en_q\ : std_logic;
SIGNAL \inst3|sregout[15]~82_combout\ : std_logic;
SIGNAL \Switch_3~input_o\ : std_logic;
SIGNAL \inst1|TX_BUFFER[3]~8_combout\ : std_logic;
SIGNAL \Switch_1~input_o\ : std_logic;
SIGNAL \inst1|TX_BUFFER[1]~9_combout\ : std_logic;
SIGNAL \Switch_2~input_o\ : std_logic;
SIGNAL \inst1|TX_BUFFER[2]~10_combout\ : std_logic;
SIGNAL \Switch_0~input_o\ : std_logic;
SIGNAL \inst1|TX_BUFFER[0]~11_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Mux0~2_combout\ : std_logic;
SIGNAL \inst1|MOSI~reg0_q\ : std_logic;
SIGNAL \inst1|MOSI~enfeeder_combout\ : std_logic;
SIGNAL \inst1|MOSI~en_q\ : std_logic;
SIGNAL \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CLOCK_1_OP_outclk\ : std_logic;
SIGNAL \inst1|SCLK~combout\ : std_logic;
SIGNAL \MOSI_IN~input_o\ : std_logic;
SIGNAL \inst3|sregin[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|sregin[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|sregin[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|sregin[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|sregin[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|receive:state[0]~q\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|receive:state[1]~q\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|receive:state[2]~q\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|receive:state[3]~q\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|state~0_combout\ : std_logic;
SIGNAL \inst3|receive:state[4]~q\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|rx[4]~0_combout\ : std_logic;
SIGNAL \inst3|rx[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|rx[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|rx[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|rx[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|rx_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst14|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst8|counter_up\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|tx_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst8|midpoint_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|rx\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|data_tx\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|sregin\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|RX_BUFFER\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|sclk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|RX_BUFFER\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|TX_BUFFER\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|RX\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|ALT_INV_RX[15]~15clkctrl_outclk\ : std_logic;
SIGNAL \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_SCLK_IN~input_o\ : std_logic;
SIGNAL \ALT_INV_CS_N~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_transmit:state[0]~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_CS~0_combout\ : std_logic;

BEGIN

CLOCK_1_OP <= ww_CLOCK_1_OP;
\ww_50MHz_CLK\ <= \50MHz_CLK\;
MISO <= ww_MISO;
ww_SCLK_IN <= SCLK_IN;
ww_CS_N <= CS_N;
ww_MOSI_IN <= MOSI_IN;
ww_RESET_BUTTON2 <= RESET_BUTTON2;
ww_RESET_BUTTON <= RESET_BUTTON;
ww_ADC_SDAT <= ADC_SDAT;
ww_Switch_0 <= Switch_0;
ww_Switch_1 <= Switch_1;
ww_Switch_2 <= Switch_2;
ww_Switch_3 <= Switch_3;
ADC_SADDR <= ww_ADC_SADDR;
ADC_SCLK <= ww_ADC_SCLK;
ADC_CS_N <= ww_ADC_CS_N;
LED_7 <= ww_LED_7;
LED_6 <= ww_LED_6;
LED_5 <= ww_LED_5;
LED_4 <= ww_LED_4;
LED_3 <= ww_LED_3;
LED_2 <= ww_LED_2;
LED_1 <= ww_LED_1;
LED_0 <= ww_LED_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst14|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \50MHz_CLK~input_o\);

\inst14|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst14|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst14|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst14|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst14|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst14|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst14|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst14|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst14|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst14|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst1|tx_count[0]~40clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|tx_count[0]~40_combout\);

\inst1|RX[15]~15clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|RX[15]~15_combout\);

\inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst14|altpll_component|auto_generated|wire_pll1_clk\(0));

\inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CLOCK_1_OP_INCLK_bus\ <= (vcc & vcc & vcc & \inst14|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst1|ALT_INV_RX[15]~15clkctrl_outclk\ <= NOT \inst1|RX[15]~15clkctrl_outclk\;
\inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\ <= NOT \inst1|tx_count[0]~40clkctrl_outclk\;
\ALT_INV_SCLK_IN~input_o\ <= NOT \SCLK_IN~input_o\;
\ALT_INV_CS_N~input_o\ <= NOT \CS_N~input_o\;
\inst3|ALT_INV_transmit:state[0]~0_combout\ <= NOT \inst3|transmit:state[0]~0_combout\;
\inst1|ALT_INV_CS~0_combout\ <= NOT \inst1|CS~0_combout\;

-- Location: IOOBUF_X16_Y34_N2
\MISO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|sregout[15]~18_combout\,
	oe => \inst3|sregout[15]~82_combout\,
	devoe => ww_devoe,
	o => ww_MISO);

-- Location: IOOBUF_X34_Y34_N16
\ADC_SADDR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MOSI~reg0_q\,
	oe => \inst1|MOSI~en_q\,
	devoe => ww_devoe,
	o => ww_ADC_SADDR);

-- Location: IOOBUF_X49_Y0_N9
\CLOCK_1_OP~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CLOCK_1_OP_outclk\,
	devoe => ww_devoe,
	o => ww_CLOCK_1_OP);

-- Location: IOOBUF_X45_Y34_N2
\ADC_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SCLK~combout\,
	devoe => ww_devoe,
	o => ww_ADC_SCLK);

-- Location: IOOBUF_X34_Y34_N9
\ADC_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|CS~0_combout\,
	devoe => ww_devoe,
	o => ww_ADC_CS_N);

-- Location: IOOBUF_X0_Y10_N23
\LED_7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rx\(7),
	devoe => ww_devoe,
	o => ww_LED_7);

-- Location: IOOBUF_X0_Y28_N9
\LED_6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rx\(6),
	devoe => ww_devoe,
	o => ww_LED_6);

-- Location: IOOBUF_X0_Y26_N16
\LED_5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rx\(5),
	devoe => ww_devoe,
	o => ww_LED_5);

-- Location: IOOBUF_X0_Y25_N9
\LED_4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rx\(4),
	devoe => ww_devoe,
	o => ww_LED_4);

-- Location: IOOBUF_X40_Y34_N2
\LED_3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rx\(3),
	devoe => ww_devoe,
	o => ww_LED_3);

-- Location: IOOBUF_X49_Y34_N9
\LED_2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rx\(2),
	devoe => ww_devoe,
	o => ww_LED_2);

-- Location: IOOBUF_X49_Y34_N2
\LED_1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rx\(1),
	devoe => ww_devoe,
	o => ww_LED_1);

-- Location: IOOBUF_X38_Y34_N16
\LED_0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rx\(0),
	devoe => ww_devoe,
	o => ww_LED_0);

-- Location: IOIBUF_X27_Y0_N22
\50MHz_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_50MHz_CLK\,
	o => \50MHz_CLK~input_o\);

-- Location: PLL_4
\inst14|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 250,
	c0_initial => 1,
	c0_low => 250,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 50,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 10,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst14|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst14|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst14|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst14|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y29_N12
\inst8|midpoint_count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|midpoint_count[0]~0_combout\ = !\inst8|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~0_combout\,
	combout => \inst8|midpoint_count[0]~0_combout\);

-- Location: LCCOMB_X26_Y28_N4
\inst8|midpoint_count[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|midpoint_count[0]~feeder_combout\ = \inst8|midpoint_count[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|midpoint_count[0]~0_combout\,
	combout => \inst8|midpoint_count[0]~feeder_combout\);

-- Location: IOIBUF_X43_Y0_N15
\RESET_BUTTON2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET_BUTTON2,
	o => \RESET_BUTTON2~input_o\);

-- Location: IOIBUF_X53_Y14_N1
\RESET_BUTTON~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET_BUTTON,
	o => \RESET_BUTTON~input_o\);

-- Location: LCCOMB_X26_Y28_N0
inst : cycloneive_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\RESET_BUTTON2~input_o\) # (\RESET_BUTTON~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET_BUTTON2~input_o\,
	datad => \RESET_BUTTON~input_o\,
	combout => \inst~combout\);

-- Location: FF_X26_Y28_N5
\inst8|midpoint_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|midpoint_count[0]~feeder_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(0));

-- Location: LCCOMB_X27_Y29_N0
\inst8|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~0_combout\ = (\inst8|process_0~16_combout\ & (\inst8|midpoint_count\(0) $ (GND))) # (!\inst8|process_0~16_combout\ & (!\inst8|midpoint_count\(0) & VCC))
-- \inst8|Add0~1\ = CARRY((\inst8|process_0~16_combout\ & !\inst8|midpoint_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(0),
	datad => VCC,
	combout => \inst8|Add0~0_combout\,
	cout => \inst8|Add0~1\);

-- Location: LCCOMB_X27_Y29_N2
\inst8|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~2_combout\ = (\inst8|midpoint_count\(1) & ((\inst8|process_0~16_combout\ & (!\inst8|Add0~1\)) # (!\inst8|process_0~16_combout\ & ((\inst8|Add0~1\) # (GND))))) # (!\inst8|midpoint_count\(1) & ((\inst8|process_0~16_combout\ & (\inst8|Add0~1\ & 
-- VCC)) # (!\inst8|process_0~16_combout\ & (!\inst8|Add0~1\))))
-- \inst8|Add0~3\ = CARRY((\inst8|midpoint_count\(1) & ((!\inst8|Add0~1\) # (!\inst8|process_0~16_combout\))) # (!\inst8|midpoint_count\(1) & (!\inst8|process_0~16_combout\ & !\inst8|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(1),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~1\,
	combout => \inst8|Add0~2_combout\,
	cout => \inst8|Add0~3\);

-- Location: LCCOMB_X26_Y28_N8
\inst8|midpoint_count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|midpoint_count[1]~1_combout\ = !\inst8|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|Add0~2_combout\,
	combout => \inst8|midpoint_count[1]~1_combout\);

-- Location: FF_X27_Y28_N9
\inst8|midpoint_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|midpoint_count[1]~1_combout\,
	sload => VCC,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(1));

-- Location: LCCOMB_X27_Y29_N4
\inst8|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~4_combout\ = ((\inst8|process_0~16_combout\ $ (\inst8|midpoint_count\(2) $ (!\inst8|Add0~3\)))) # (GND)
-- \inst8|Add0~5\ = CARRY((\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(2)) # (!\inst8|Add0~3\))) # (!\inst8|process_0~16_combout\ & (\inst8|midpoint_count\(2) & !\inst8|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(2),
	datad => VCC,
	cin => \inst8|Add0~3\,
	combout => \inst8|Add0~4_combout\,
	cout => \inst8|Add0~5\);

-- Location: FF_X27_Y29_N5
\inst8|midpoint_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~4_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(2));

-- Location: LCCOMB_X27_Y29_N6
\inst8|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~6_combout\ = (\inst8|midpoint_count\(3) & ((\inst8|process_0~16_combout\ & (\inst8|Add0~5\ & VCC)) # (!\inst8|process_0~16_combout\ & (!\inst8|Add0~5\)))) # (!\inst8|midpoint_count\(3) & ((\inst8|process_0~16_combout\ & (!\inst8|Add0~5\)) # 
-- (!\inst8|process_0~16_combout\ & ((\inst8|Add0~5\) # (GND)))))
-- \inst8|Add0~7\ = CARRY((\inst8|midpoint_count\(3) & (!\inst8|process_0~16_combout\ & !\inst8|Add0~5\)) # (!\inst8|midpoint_count\(3) & ((!\inst8|Add0~5\) # (!\inst8|process_0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(3),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~5\,
	combout => \inst8|Add0~6_combout\,
	cout => \inst8|Add0~7\);

-- Location: LCCOMB_X26_Y28_N30
\inst8|midpoint_count[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|midpoint_count[3]~feeder_combout\ = \inst8|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|Add0~6_combout\,
	combout => \inst8|midpoint_count[3]~feeder_combout\);

-- Location: FF_X26_Y28_N31
\inst8|midpoint_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|midpoint_count[3]~feeder_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(3));

-- Location: LCCOMB_X27_Y29_N8
\inst8|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~8_combout\ = ((\inst8|process_0~16_combout\ $ (\inst8|midpoint_count\(4) $ (!\inst8|Add0~7\)))) # (GND)
-- \inst8|Add0~9\ = CARRY((\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(4)) # (!\inst8|Add0~7\))) # (!\inst8|process_0~16_combout\ & (\inst8|midpoint_count\(4) & !\inst8|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(4),
	datad => VCC,
	cin => \inst8|Add0~7\,
	combout => \inst8|Add0~8_combout\,
	cout => \inst8|Add0~9\);

-- Location: FF_X27_Y29_N9
\inst8|midpoint_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~8_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(4));

-- Location: LCCOMB_X27_Y29_N10
\inst8|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~10_combout\ = (\inst8|midpoint_count\(5) & ((\inst8|process_0~16_combout\ & (\inst8|Add0~9\ & VCC)) # (!\inst8|process_0~16_combout\ & (!\inst8|Add0~9\)))) # (!\inst8|midpoint_count\(5) & ((\inst8|process_0~16_combout\ & (!\inst8|Add0~9\)) # 
-- (!\inst8|process_0~16_combout\ & ((\inst8|Add0~9\) # (GND)))))
-- \inst8|Add0~11\ = CARRY((\inst8|midpoint_count\(5) & (!\inst8|process_0~16_combout\ & !\inst8|Add0~9\)) # (!\inst8|midpoint_count\(5) & ((!\inst8|Add0~9\) # (!\inst8|process_0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(5),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~9\,
	combout => \inst8|Add0~10_combout\,
	cout => \inst8|Add0~11\);

-- Location: LCCOMB_X28_Y28_N4
\inst8|midpoint_count[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|midpoint_count[5]~feeder_combout\ = \inst8|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|Add0~10_combout\,
	combout => \inst8|midpoint_count[5]~feeder_combout\);

-- Location: FF_X28_Y28_N5
\inst8|midpoint_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|midpoint_count[5]~feeder_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(5));

-- Location: LCCOMB_X27_Y29_N12
\inst8|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~12_combout\ = ((\inst8|process_0~16_combout\ $ (\inst8|midpoint_count\(6) $ (!\inst8|Add0~11\)))) # (GND)
-- \inst8|Add0~13\ = CARRY((\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(6)) # (!\inst8|Add0~11\))) # (!\inst8|process_0~16_combout\ & (\inst8|midpoint_count\(6) & !\inst8|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(6),
	datad => VCC,
	cin => \inst8|Add0~11\,
	combout => \inst8|Add0~12_combout\,
	cout => \inst8|Add0~13\);

-- Location: FF_X27_Y29_N13
\inst8|midpoint_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~12_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(6));

-- Location: LCCOMB_X27_Y29_N14
\inst8|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~14_combout\ = (\inst8|midpoint_count\(7) & ((\inst8|process_0~16_combout\ & (\inst8|Add0~13\ & VCC)) # (!\inst8|process_0~16_combout\ & (!\inst8|Add0~13\)))) # (!\inst8|midpoint_count\(7) & ((\inst8|process_0~16_combout\ & (!\inst8|Add0~13\)) 
-- # (!\inst8|process_0~16_combout\ & ((\inst8|Add0~13\) # (GND)))))
-- \inst8|Add0~15\ = CARRY((\inst8|midpoint_count\(7) & (!\inst8|process_0~16_combout\ & !\inst8|Add0~13\)) # (!\inst8|midpoint_count\(7) & ((!\inst8|Add0~13\) # (!\inst8|process_0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(7),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~13\,
	combout => \inst8|Add0~14_combout\,
	cout => \inst8|Add0~15\);

-- Location: FF_X27_Y29_N15
\inst8|midpoint_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~14_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(7));

-- Location: LCCOMB_X27_Y29_N16
\inst8|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~16_combout\ = ((\inst8|process_0~16_combout\ $ (\inst8|midpoint_count\(8) $ (!\inst8|Add0~15\)))) # (GND)
-- \inst8|Add0~17\ = CARRY((\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(8)) # (!\inst8|Add0~15\))) # (!\inst8|process_0~16_combout\ & (\inst8|midpoint_count\(8) & !\inst8|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(8),
	datad => VCC,
	cin => \inst8|Add0~15\,
	combout => \inst8|Add0~16_combout\,
	cout => \inst8|Add0~17\);

-- Location: LCCOMB_X26_Y28_N20
\inst8|midpoint_count[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|midpoint_count[8]~feeder_combout\ = \inst8|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|Add0~16_combout\,
	combout => \inst8|midpoint_count[8]~feeder_combout\);

-- Location: FF_X26_Y28_N21
\inst8|midpoint_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|midpoint_count[8]~feeder_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(8));

-- Location: LCCOMB_X27_Y29_N18
\inst8|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~18_combout\ = (\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(9) & (\inst8|Add0~17\ & VCC)) # (!\inst8|midpoint_count\(9) & (!\inst8|Add0~17\)))) # (!\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(9) & (!\inst8|Add0~17\)) # 
-- (!\inst8|midpoint_count\(9) & ((\inst8|Add0~17\) # (GND)))))
-- \inst8|Add0~19\ = CARRY((\inst8|process_0~16_combout\ & (!\inst8|midpoint_count\(9) & !\inst8|Add0~17\)) # (!\inst8|process_0~16_combout\ & ((!\inst8|Add0~17\) # (!\inst8|midpoint_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(9),
	datad => VCC,
	cin => \inst8|Add0~17\,
	combout => \inst8|Add0~18_combout\,
	cout => \inst8|Add0~19\);

-- Location: LCCOMB_X26_Y28_N2
\inst8|midpoint_count[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|midpoint_count[9]~feeder_combout\ = \inst8|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|Add0~18_combout\,
	combout => \inst8|midpoint_count[9]~feeder_combout\);

-- Location: FF_X26_Y28_N3
\inst8|midpoint_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|midpoint_count[9]~feeder_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(9));

-- Location: LCCOMB_X27_Y29_N20
\inst8|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~20_combout\ = ((\inst8|process_0~16_combout\ $ (\inst8|midpoint_count\(10) $ (!\inst8|Add0~19\)))) # (GND)
-- \inst8|Add0~21\ = CARRY((\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(10)) # (!\inst8|Add0~19\))) # (!\inst8|process_0~16_combout\ & (\inst8|midpoint_count\(10) & !\inst8|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(10),
	datad => VCC,
	cin => \inst8|Add0~19\,
	combout => \inst8|Add0~20_combout\,
	cout => \inst8|Add0~21\);

-- Location: FF_X26_Y28_N29
\inst8|midpoint_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|Add0~20_combout\,
	sload => VCC,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(10));

-- Location: LCCOMB_X27_Y29_N22
\inst8|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~22_combout\ = (\inst8|midpoint_count\(11) & ((\inst8|process_0~16_combout\ & (\inst8|Add0~21\ & VCC)) # (!\inst8|process_0~16_combout\ & (!\inst8|Add0~21\)))) # (!\inst8|midpoint_count\(11) & ((\inst8|process_0~16_combout\ & 
-- (!\inst8|Add0~21\)) # (!\inst8|process_0~16_combout\ & ((\inst8|Add0~21\) # (GND)))))
-- \inst8|Add0~23\ = CARRY((\inst8|midpoint_count\(11) & (!\inst8|process_0~16_combout\ & !\inst8|Add0~21\)) # (!\inst8|midpoint_count\(11) & ((!\inst8|Add0~21\) # (!\inst8|process_0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(11),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~21\,
	combout => \inst8|Add0~22_combout\,
	cout => \inst8|Add0~23\);

-- Location: FF_X26_Y28_N15
\inst8|midpoint_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|Add0~22_combout\,
	sload => VCC,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(11));

-- Location: LCCOMB_X26_Y28_N28
\inst8|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~14_combout\ = (!\inst8|midpoint_count\(8) & (!\inst8|midpoint_count\(11) & (!\inst8|midpoint_count\(10) & !\inst8|midpoint_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(8),
	datab => \inst8|midpoint_count\(11),
	datac => \inst8|midpoint_count\(10),
	datad => \inst8|midpoint_count\(9),
	combout => \inst8|process_0~14_combout\);

-- Location: LCCOMB_X27_Y29_N24
\inst8|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~24_combout\ = ((\inst8|process_0~16_combout\ $ (\inst8|midpoint_count\(12) $ (!\inst8|Add0~23\)))) # (GND)
-- \inst8|Add0~25\ = CARRY((\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(12)) # (!\inst8|Add0~23\))) # (!\inst8|process_0~16_combout\ & (\inst8|midpoint_count\(12) & !\inst8|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(12),
	datad => VCC,
	cin => \inst8|Add0~23\,
	combout => \inst8|Add0~24_combout\,
	cout => \inst8|Add0~25\);

-- Location: FF_X26_Y28_N25
\inst8|midpoint_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|Add0~24_combout\,
	sload => VCC,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(12));

-- Location: LCCOMB_X27_Y29_N26
\inst8|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~26_combout\ = (\inst8|midpoint_count\(13) & ((\inst8|process_0~16_combout\ & (\inst8|Add0~25\ & VCC)) # (!\inst8|process_0~16_combout\ & (!\inst8|Add0~25\)))) # (!\inst8|midpoint_count\(13) & ((\inst8|process_0~16_combout\ & 
-- (!\inst8|Add0~25\)) # (!\inst8|process_0~16_combout\ & ((\inst8|Add0~25\) # (GND)))))
-- \inst8|Add0~27\ = CARRY((\inst8|midpoint_count\(13) & (!\inst8|process_0~16_combout\ & !\inst8|Add0~25\)) # (!\inst8|midpoint_count\(13) & ((!\inst8|Add0~25\) # (!\inst8|process_0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(13),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~25\,
	combout => \inst8|Add0~26_combout\,
	cout => \inst8|Add0~27\);

-- Location: FF_X27_Y29_N27
\inst8|midpoint_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~26_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(13));

-- Location: LCCOMB_X27_Y29_N28
\inst8|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~28_combout\ = ((\inst8|midpoint_count\(14) $ (\inst8|process_0~16_combout\ $ (!\inst8|Add0~27\)))) # (GND)
-- \inst8|Add0~29\ = CARRY((\inst8|midpoint_count\(14) & ((\inst8|process_0~16_combout\) # (!\inst8|Add0~27\))) # (!\inst8|midpoint_count\(14) & (\inst8|process_0~16_combout\ & !\inst8|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(14),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~27\,
	combout => \inst8|Add0~28_combout\,
	cout => \inst8|Add0~29\);

-- Location: FF_X27_Y29_N29
\inst8|midpoint_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~28_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(14));

-- Location: LCCOMB_X27_Y29_N30
\inst8|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~30_combout\ = (\inst8|midpoint_count\(15) & ((\inst8|process_0~16_combout\ & (\inst8|Add0~29\ & VCC)) # (!\inst8|process_0~16_combout\ & (!\inst8|Add0~29\)))) # (!\inst8|midpoint_count\(15) & ((\inst8|process_0~16_combout\ & 
-- (!\inst8|Add0~29\)) # (!\inst8|process_0~16_combout\ & ((\inst8|Add0~29\) # (GND)))))
-- \inst8|Add0~31\ = CARRY((\inst8|midpoint_count\(15) & (!\inst8|process_0~16_combout\ & !\inst8|Add0~29\)) # (!\inst8|midpoint_count\(15) & ((!\inst8|Add0~29\) # (!\inst8|process_0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(15),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~29\,
	combout => \inst8|Add0~30_combout\,
	cout => \inst8|Add0~31\);

-- Location: LCCOMB_X26_Y28_N18
\inst8|midpoint_count[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|midpoint_count[15]~feeder_combout\ = \inst8|Add0~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|Add0~30_combout\,
	combout => \inst8|midpoint_count[15]~feeder_combout\);

-- Location: FF_X26_Y28_N19
\inst8|midpoint_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|midpoint_count[15]~feeder_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(15));

-- Location: LCCOMB_X28_Y27_N28
\inst8|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~13_combout\ = (!\inst8|midpoint_count\(12) & (!\inst8|midpoint_count\(15) & (!\inst8|midpoint_count\(13) & !\inst8|midpoint_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(12),
	datab => \inst8|midpoint_count\(15),
	datac => \inst8|midpoint_count\(13),
	datad => \inst8|midpoint_count\(14),
	combout => \inst8|process_0~13_combout\);

-- Location: LCCOMB_X28_Y27_N10
\inst8|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~15_combout\ = (!\inst8|midpoint_count\(2) & (!\inst8|midpoint_count\(3) & (\inst8|process_0~14_combout\ & \inst8|process_0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(2),
	datab => \inst8|midpoint_count\(3),
	datac => \inst8|process_0~14_combout\,
	datad => \inst8|process_0~13_combout\,
	combout => \inst8|process_0~15_combout\);

-- Location: LCCOMB_X27_Y28_N0
\inst8|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~32_combout\ = ((\inst8|process_0~16_combout\ $ (\inst8|midpoint_count\(16) $ (!\inst8|Add0~31\)))) # (GND)
-- \inst8|Add0~33\ = CARRY((\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(16)) # (!\inst8|Add0~31\))) # (!\inst8|process_0~16_combout\ & (\inst8|midpoint_count\(16) & !\inst8|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(16),
	datad => VCC,
	cin => \inst8|Add0~31\,
	combout => \inst8|Add0~32_combout\,
	cout => \inst8|Add0~33\);

-- Location: FF_X27_Y28_N1
\inst8|midpoint_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~32_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(16));

-- Location: LCCOMB_X27_Y28_N2
\inst8|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~34_combout\ = (\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(17) & (\inst8|Add0~33\ & VCC)) # (!\inst8|midpoint_count\(17) & (!\inst8|Add0~33\)))) # (!\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(17) & (!\inst8|Add0~33\)) 
-- # (!\inst8|midpoint_count\(17) & ((\inst8|Add0~33\) # (GND)))))
-- \inst8|Add0~35\ = CARRY((\inst8|process_0~16_combout\ & (!\inst8|midpoint_count\(17) & !\inst8|Add0~33\)) # (!\inst8|process_0~16_combout\ & ((!\inst8|Add0~33\) # (!\inst8|midpoint_count\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(17),
	datad => VCC,
	cin => \inst8|Add0~33\,
	combout => \inst8|Add0~34_combout\,
	cout => \inst8|Add0~35\);

-- Location: LCCOMB_X28_Y28_N24
\inst8|midpoint_count[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|midpoint_count[17]~feeder_combout\ = \inst8|Add0~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|Add0~34_combout\,
	combout => \inst8|midpoint_count[17]~feeder_combout\);

-- Location: FF_X28_Y28_N25
\inst8|midpoint_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|midpoint_count[17]~feeder_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(17));

-- Location: LCCOMB_X27_Y28_N4
\inst8|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~36_combout\ = ((\inst8|process_0~16_combout\ $ (\inst8|midpoint_count\(18) $ (!\inst8|Add0~35\)))) # (GND)
-- \inst8|Add0~37\ = CARRY((\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(18)) # (!\inst8|Add0~35\))) # (!\inst8|process_0~16_combout\ & (\inst8|midpoint_count\(18) & !\inst8|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(18),
	datad => VCC,
	cin => \inst8|Add0~35\,
	combout => \inst8|Add0~36_combout\,
	cout => \inst8|Add0~37\);

-- Location: FF_X27_Y28_N5
\inst8|midpoint_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~36_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(18));

-- Location: LCCOMB_X27_Y28_N6
\inst8|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~38_combout\ = (\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(19) & (\inst8|Add0~37\ & VCC)) # (!\inst8|midpoint_count\(19) & (!\inst8|Add0~37\)))) # (!\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(19) & (!\inst8|Add0~37\)) 
-- # (!\inst8|midpoint_count\(19) & ((\inst8|Add0~37\) # (GND)))))
-- \inst8|Add0~39\ = CARRY((\inst8|process_0~16_combout\ & (!\inst8|midpoint_count\(19) & !\inst8|Add0~37\)) # (!\inst8|process_0~16_combout\ & ((!\inst8|Add0~37\) # (!\inst8|midpoint_count\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(19),
	datad => VCC,
	cin => \inst8|Add0~37\,
	combout => \inst8|Add0~38_combout\,
	cout => \inst8|Add0~39\);

-- Location: FF_X27_Y28_N7
\inst8|midpoint_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~38_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(19));

-- Location: LCCOMB_X27_Y28_N8
\inst8|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~40_combout\ = ((\inst8|process_0~16_combout\ $ (\inst8|midpoint_count\(20) $ (!\inst8|Add0~39\)))) # (GND)
-- \inst8|Add0~41\ = CARRY((\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(20)) # (!\inst8|Add0~39\))) # (!\inst8|process_0~16_combout\ & (\inst8|midpoint_count\(20) & !\inst8|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(20),
	datad => VCC,
	cin => \inst8|Add0~39\,
	combout => \inst8|Add0~40_combout\,
	cout => \inst8|Add0~41\);

-- Location: FF_X27_Y28_N19
\inst8|midpoint_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|Add0~40_combout\,
	sload => VCC,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(20));

-- Location: LCCOMB_X27_Y28_N10
\inst8|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~42_combout\ = (\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(21) & (\inst8|Add0~41\ & VCC)) # (!\inst8|midpoint_count\(21) & (!\inst8|Add0~41\)))) # (!\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(21) & (!\inst8|Add0~41\)) 
-- # (!\inst8|midpoint_count\(21) & ((\inst8|Add0~41\) # (GND)))))
-- \inst8|Add0~43\ = CARRY((\inst8|process_0~16_combout\ & (!\inst8|midpoint_count\(21) & !\inst8|Add0~41\)) # (!\inst8|process_0~16_combout\ & ((!\inst8|Add0~41\) # (!\inst8|midpoint_count\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(21),
	datad => VCC,
	cin => \inst8|Add0~41\,
	combout => \inst8|Add0~42_combout\,
	cout => \inst8|Add0~43\);

-- Location: FF_X27_Y28_N11
\inst8|midpoint_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~42_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(21));

-- Location: LCCOMB_X27_Y28_N12
\inst8|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~44_combout\ = ((\inst8|midpoint_count\(22) $ (\inst8|process_0~16_combout\ $ (!\inst8|Add0~43\)))) # (GND)
-- \inst8|Add0~45\ = CARRY((\inst8|midpoint_count\(22) & ((\inst8|process_0~16_combout\) # (!\inst8|Add0~43\))) # (!\inst8|midpoint_count\(22) & (\inst8|process_0~16_combout\ & !\inst8|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(22),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~43\,
	combout => \inst8|Add0~44_combout\,
	cout => \inst8|Add0~45\);

-- Location: FF_X27_Y28_N13
\inst8|midpoint_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~44_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(22));

-- Location: LCCOMB_X27_Y28_N14
\inst8|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~46_combout\ = (\inst8|midpoint_count\(23) & ((\inst8|process_0~16_combout\ & (\inst8|Add0~45\ & VCC)) # (!\inst8|process_0~16_combout\ & (!\inst8|Add0~45\)))) # (!\inst8|midpoint_count\(23) & ((\inst8|process_0~16_combout\ & 
-- (!\inst8|Add0~45\)) # (!\inst8|process_0~16_combout\ & ((\inst8|Add0~45\) # (GND)))))
-- \inst8|Add0~47\ = CARRY((\inst8|midpoint_count\(23) & (!\inst8|process_0~16_combout\ & !\inst8|Add0~45\)) # (!\inst8|midpoint_count\(23) & ((!\inst8|Add0~45\) # (!\inst8|process_0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(23),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~45\,
	combout => \inst8|Add0~46_combout\,
	cout => \inst8|Add0~47\);

-- Location: FF_X27_Y28_N15
\inst8|midpoint_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~46_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(23));

-- Location: LCCOMB_X27_Y28_N16
\inst8|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~48_combout\ = ((\inst8|midpoint_count\(24) $ (\inst8|process_0~16_combout\ $ (!\inst8|Add0~47\)))) # (GND)
-- \inst8|Add0~49\ = CARRY((\inst8|midpoint_count\(24) & ((\inst8|process_0~16_combout\) # (!\inst8|Add0~47\))) # (!\inst8|midpoint_count\(24) & (\inst8|process_0~16_combout\ & !\inst8|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(24),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~47\,
	combout => \inst8|Add0~48_combout\,
	cout => \inst8|Add0~49\);

-- Location: FF_X27_Y28_N17
\inst8|midpoint_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~48_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(24));

-- Location: LCCOMB_X27_Y28_N18
\inst8|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~50_combout\ = (\inst8|midpoint_count\(25) & ((\inst8|process_0~16_combout\ & (\inst8|Add0~49\ & VCC)) # (!\inst8|process_0~16_combout\ & (!\inst8|Add0~49\)))) # (!\inst8|midpoint_count\(25) & ((\inst8|process_0~16_combout\ & 
-- (!\inst8|Add0~49\)) # (!\inst8|process_0~16_combout\ & ((\inst8|Add0~49\) # (GND)))))
-- \inst8|Add0~51\ = CARRY((\inst8|midpoint_count\(25) & (!\inst8|process_0~16_combout\ & !\inst8|Add0~49\)) # (!\inst8|midpoint_count\(25) & ((!\inst8|Add0~49\) # (!\inst8|process_0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(25),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~49\,
	combout => \inst8|Add0~50_combout\,
	cout => \inst8|Add0~51\);

-- Location: FF_X27_Y28_N3
\inst8|midpoint_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|Add0~50_combout\,
	sload => VCC,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(25));

-- Location: LCCOMB_X27_Y28_N20
\inst8|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~52_combout\ = ((\inst8|midpoint_count\(26) $ (\inst8|process_0~16_combout\ $ (!\inst8|Add0~51\)))) # (GND)
-- \inst8|Add0~53\ = CARRY((\inst8|midpoint_count\(26) & ((\inst8|process_0~16_combout\) # (!\inst8|Add0~51\))) # (!\inst8|midpoint_count\(26) & (\inst8|process_0~16_combout\ & !\inst8|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(26),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~51\,
	combout => \inst8|Add0~52_combout\,
	cout => \inst8|Add0~53\);

-- Location: FF_X27_Y28_N21
\inst8|midpoint_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~52_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(26));

-- Location: LCCOMB_X27_Y28_N22
\inst8|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~54_combout\ = (\inst8|midpoint_count\(27) & ((\inst8|process_0~16_combout\ & (\inst8|Add0~53\ & VCC)) # (!\inst8|process_0~16_combout\ & (!\inst8|Add0~53\)))) # (!\inst8|midpoint_count\(27) & ((\inst8|process_0~16_combout\ & 
-- (!\inst8|Add0~53\)) # (!\inst8|process_0~16_combout\ & ((\inst8|Add0~53\) # (GND)))))
-- \inst8|Add0~55\ = CARRY((\inst8|midpoint_count\(27) & (!\inst8|process_0~16_combout\ & !\inst8|Add0~53\)) # (!\inst8|midpoint_count\(27) & ((!\inst8|Add0~53\) # (!\inst8|process_0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(27),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~53\,
	combout => \inst8|Add0~54_combout\,
	cout => \inst8|Add0~55\);

-- Location: FF_X27_Y28_N23
\inst8|midpoint_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~54_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(27));

-- Location: LCCOMB_X27_Y27_N14
\inst8|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~9_combout\ = (!\inst8|midpoint_count\(27) & (!\inst8|midpoint_count\(25) & (!\inst8|midpoint_count\(26) & !\inst8|midpoint_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(27),
	datab => \inst8|midpoint_count\(25),
	datac => \inst8|midpoint_count\(26),
	datad => \inst8|midpoint_count\(24),
	combout => \inst8|process_0~9_combout\);

-- Location: LCCOMB_X27_Y27_N4
\inst8|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~11_combout\ = (!\inst8|midpoint_count\(19) & (!\inst8|midpoint_count\(18) & (!\inst8|midpoint_count\(16) & !\inst8|midpoint_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(19),
	datab => \inst8|midpoint_count\(18),
	datac => \inst8|midpoint_count\(16),
	datad => \inst8|midpoint_count\(17),
	combout => \inst8|process_0~11_combout\);

-- Location: LCCOMB_X28_Y28_N30
\inst8|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~10_combout\ = (!\inst8|midpoint_count\(22) & (!\inst8|midpoint_count\(20) & (!\inst8|midpoint_count\(23) & !\inst8|midpoint_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(22),
	datab => \inst8|midpoint_count\(20),
	datac => \inst8|midpoint_count\(23),
	datad => \inst8|midpoint_count\(21),
	combout => \inst8|process_0~10_combout\);

-- Location: LCCOMB_X27_Y28_N24
\inst8|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~56_combout\ = ((\inst8|midpoint_count\(28) $ (\inst8|process_0~16_combout\ $ (!\inst8|Add0~55\)))) # (GND)
-- \inst8|Add0~57\ = CARRY((\inst8|midpoint_count\(28) & ((\inst8|process_0~16_combout\) # (!\inst8|Add0~55\))) # (!\inst8|midpoint_count\(28) & (\inst8|process_0~16_combout\ & !\inst8|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(28),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~55\,
	combout => \inst8|Add0~56_combout\,
	cout => \inst8|Add0~57\);

-- Location: FF_X27_Y28_N25
\inst8|midpoint_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~56_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(28));

-- Location: LCCOMB_X27_Y28_N26
\inst8|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~58_combout\ = (\inst8|midpoint_count\(29) & ((\inst8|process_0~16_combout\ & (\inst8|Add0~57\ & VCC)) # (!\inst8|process_0~16_combout\ & (!\inst8|Add0~57\)))) # (!\inst8|midpoint_count\(29) & ((\inst8|process_0~16_combout\ & 
-- (!\inst8|Add0~57\)) # (!\inst8|process_0~16_combout\ & ((\inst8|Add0~57\) # (GND)))))
-- \inst8|Add0~59\ = CARRY((\inst8|midpoint_count\(29) & (!\inst8|process_0~16_combout\ & !\inst8|Add0~57\)) # (!\inst8|midpoint_count\(29) & ((!\inst8|Add0~57\) # (!\inst8|process_0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(29),
	datab => \inst8|process_0~16_combout\,
	datad => VCC,
	cin => \inst8|Add0~57\,
	combout => \inst8|Add0~58_combout\,
	cout => \inst8|Add0~59\);

-- Location: FF_X27_Y28_N27
\inst8|midpoint_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~58_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(29));

-- Location: LCCOMB_X27_Y28_N28
\inst8|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~60_combout\ = ((\inst8|process_0~16_combout\ $ (\inst8|midpoint_count\(30) $ (!\inst8|Add0~59\)))) # (GND)
-- \inst8|Add0~61\ = CARRY((\inst8|process_0~16_combout\ & ((\inst8|midpoint_count\(30)) # (!\inst8|Add0~59\))) # (!\inst8|process_0~16_combout\ & (\inst8|midpoint_count\(30) & !\inst8|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|midpoint_count\(30),
	datad => VCC,
	cin => \inst8|Add0~59\,
	combout => \inst8|Add0~60_combout\,
	cout => \inst8|Add0~61\);

-- Location: FF_X27_Y28_N29
\inst8|midpoint_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~60_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(30));

-- Location: LCCOMB_X27_Y28_N30
\inst8|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~62_combout\ = \inst8|midpoint_count\(31) $ (\inst8|process_0~16_combout\ $ (\inst8|Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(31),
	datab => \inst8|process_0~16_combout\,
	cin => \inst8|Add0~61\,
	combout => \inst8|Add0~62_combout\);

-- Location: FF_X27_Y28_N31
\inst8|midpoint_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|Add0~62_combout\,
	ena => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|midpoint_count\(31));

-- Location: LCCOMB_X27_Y27_N24
\inst8|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~8_combout\ = (!\inst8|midpoint_count\(31) & (!\inst8|midpoint_count\(30) & (!\inst8|midpoint_count\(28) & !\inst8|midpoint_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(31),
	datab => \inst8|midpoint_count\(30),
	datac => \inst8|midpoint_count\(28),
	datad => \inst8|midpoint_count\(29),
	combout => \inst8|process_0~8_combout\);

-- Location: LCCOMB_X28_Y27_N18
\inst8|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~12_combout\ = (\inst8|process_0~9_combout\ & (\inst8|process_0~11_combout\ & (\inst8|process_0~10_combout\ & \inst8|process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~9_combout\,
	datab => \inst8|process_0~11_combout\,
	datac => \inst8|process_0~10_combout\,
	datad => \inst8|process_0~8_combout\,
	combout => \inst8|process_0~12_combout\);

-- Location: LCCOMB_X27_Y26_N20
\inst2|count[0]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[0]~95_combout\ = !\inst2|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|count\(0),
	combout => \inst2|count[0]~95_combout\);

-- Location: FF_X27_Y26_N21
\inst2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[0]~95_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(0));

-- Location: LCCOMB_X26_Y26_N0
\inst2|count[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[1]~32_cout\ = CARRY(\inst2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(0),
	datad => VCC,
	cout => \inst2|count[1]~32_cout\);

-- Location: LCCOMB_X26_Y26_N2
\inst2|count[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[1]~33_combout\ = (\inst2|count\(1) & (\inst2|count[1]~32_cout\ & VCC)) # (!\inst2|count\(1) & (!\inst2|count[1]~32_cout\))
-- \inst2|count[1]~34\ = CARRY((!\inst2|count\(1) & !\inst2|count[1]~32_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(1),
	datad => VCC,
	cin => \inst2|count[1]~32_cout\,
	combout => \inst2|count[1]~33_combout\,
	cout => \inst2|count[1]~34\);

-- Location: FF_X26_Y26_N3
\inst2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[1]~33_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(1));

-- Location: LCCOMB_X26_Y26_N4
\inst2|count[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[2]~35_combout\ = (\inst2|count\(2) & ((GND) # (!\inst2|count[1]~34\))) # (!\inst2|count\(2) & (\inst2|count[1]~34\ $ (GND)))
-- \inst2|count[2]~36\ = CARRY((\inst2|count\(2)) # (!\inst2|count[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(2),
	datad => VCC,
	cin => \inst2|count[1]~34\,
	combout => \inst2|count[2]~35_combout\,
	cout => \inst2|count[2]~36\);

-- Location: FF_X26_Y26_N5
\inst2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[2]~35_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(2));

-- Location: LCCOMB_X26_Y26_N6
\inst2|count[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[3]~37_combout\ = (\inst2|count\(3) & (\inst2|count[2]~36\ & VCC)) # (!\inst2|count\(3) & (!\inst2|count[2]~36\))
-- \inst2|count[3]~38\ = CARRY((!\inst2|count\(3) & !\inst2|count[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(3),
	datad => VCC,
	cin => \inst2|count[2]~36\,
	combout => \inst2|count[3]~37_combout\,
	cout => \inst2|count[3]~38\);

-- Location: FF_X26_Y26_N7
\inst2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[3]~37_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(3));

-- Location: LCCOMB_X26_Y26_N8
\inst2|count[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[4]~39_combout\ = (\inst2|count\(4) & ((GND) # (!\inst2|count[3]~38\))) # (!\inst2|count\(4) & (\inst2|count[3]~38\ $ (GND)))
-- \inst2|count[4]~40\ = CARRY((\inst2|count\(4)) # (!\inst2|count[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(4),
	datad => VCC,
	cin => \inst2|count[3]~38\,
	combout => \inst2|count[4]~39_combout\,
	cout => \inst2|count[4]~40\);

-- Location: FF_X26_Y26_N9
\inst2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[4]~39_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(4));

-- Location: LCCOMB_X26_Y26_N10
\inst2|count[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[5]~41_combout\ = (\inst2|count\(5) & (\inst2|count[4]~40\ & VCC)) # (!\inst2|count\(5) & (!\inst2|count[4]~40\))
-- \inst2|count[5]~42\ = CARRY((!\inst2|count\(5) & !\inst2|count[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(5),
	datad => VCC,
	cin => \inst2|count[4]~40\,
	combout => \inst2|count[5]~41_combout\,
	cout => \inst2|count[5]~42\);

-- Location: FF_X26_Y26_N11
\inst2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[5]~41_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(5));

-- Location: LCCOMB_X26_Y26_N12
\inst2|count[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[6]~43_combout\ = (\inst2|count\(6) & (!\inst2|count[5]~42\)) # (!\inst2|count\(6) & ((\inst2|count[5]~42\) # (GND)))
-- \inst2|count[6]~44\ = CARRY((!\inst2|count[5]~42\) # (!\inst2|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(6),
	datad => VCC,
	cin => \inst2|count[5]~42\,
	combout => \inst2|count[6]~43_combout\,
	cout => \inst2|count[6]~44\);

-- Location: FF_X26_Y26_N13
\inst2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[6]~43_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(6));

-- Location: LCCOMB_X26_Y26_N14
\inst2|count[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[7]~45_combout\ = (\inst2|count\(7) & (\inst2|count[6]~44\ & VCC)) # (!\inst2|count\(7) & (!\inst2|count[6]~44\))
-- \inst2|count[7]~46\ = CARRY((!\inst2|count\(7) & !\inst2|count[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(7),
	datad => VCC,
	cin => \inst2|count[6]~44\,
	combout => \inst2|count[7]~45_combout\,
	cout => \inst2|count[7]~46\);

-- Location: FF_X26_Y26_N15
\inst2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[7]~45_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(7));

-- Location: LCCOMB_X26_Y26_N16
\inst2|count[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[8]~47_combout\ = (\inst2|count\(8) & (!\inst2|count[7]~46\)) # (!\inst2|count\(8) & ((\inst2|count[7]~46\) # (GND)))
-- \inst2|count[8]~48\ = CARRY((!\inst2|count[7]~46\) # (!\inst2|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(8),
	datad => VCC,
	cin => \inst2|count[7]~46\,
	combout => \inst2|count[8]~47_combout\,
	cout => \inst2|count[8]~48\);

-- Location: FF_X26_Y26_N17
\inst2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[8]~47_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(8));

-- Location: LCCOMB_X26_Y26_N18
\inst2|count[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[9]~49_combout\ = (\inst2|count\(9) & (\inst2|count[8]~48\ $ (GND))) # (!\inst2|count\(9) & (!\inst2|count[8]~48\ & VCC))
-- \inst2|count[9]~50\ = CARRY((\inst2|count\(9) & !\inst2|count[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(9),
	datad => VCC,
	cin => \inst2|count[8]~48\,
	combout => \inst2|count[9]~49_combout\,
	cout => \inst2|count[9]~50\);

-- Location: FF_X26_Y26_N19
\inst2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[9]~49_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(9));

-- Location: LCCOMB_X26_Y26_N20
\inst2|count[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[10]~51_combout\ = (\inst2|count\(10) & ((GND) # (!\inst2|count[9]~50\))) # (!\inst2|count\(10) & (\inst2|count[9]~50\ $ (GND)))
-- \inst2|count[10]~52\ = CARRY((\inst2|count\(10)) # (!\inst2|count[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(10),
	datad => VCC,
	cin => \inst2|count[9]~50\,
	combout => \inst2|count[10]~51_combout\,
	cout => \inst2|count[10]~52\);

-- Location: FF_X26_Y26_N21
\inst2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[10]~51_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(10));

-- Location: LCCOMB_X26_Y26_N22
\inst2|count[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[11]~53_combout\ = (\inst2|count\(11) & (\inst2|count[10]~52\ $ (GND))) # (!\inst2|count\(11) & (!\inst2|count[10]~52\ & VCC))
-- \inst2|count[11]~54\ = CARRY((\inst2|count\(11) & !\inst2|count[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(11),
	datad => VCC,
	cin => \inst2|count[10]~52\,
	combout => \inst2|count[11]~53_combout\,
	cout => \inst2|count[11]~54\);

-- Location: FF_X26_Y26_N23
\inst2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[11]~53_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(11));

-- Location: LCCOMB_X26_Y26_N24
\inst2|count[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[12]~55_combout\ = (\inst2|count\(12) & ((GND) # (!\inst2|count[11]~54\))) # (!\inst2|count\(12) & (\inst2|count[11]~54\ $ (GND)))
-- \inst2|count[12]~56\ = CARRY((\inst2|count\(12)) # (!\inst2|count[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(12),
	datad => VCC,
	cin => \inst2|count[11]~54\,
	combout => \inst2|count[12]~55_combout\,
	cout => \inst2|count[12]~56\);

-- Location: FF_X26_Y26_N25
\inst2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[12]~55_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(12));

-- Location: LCCOMB_X26_Y26_N26
\inst2|count[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[13]~57_combout\ = (\inst2|count\(13) & (\inst2|count[12]~56\ & VCC)) # (!\inst2|count\(13) & (!\inst2|count[12]~56\))
-- \inst2|count[13]~58\ = CARRY((!\inst2|count\(13) & !\inst2|count[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(13),
	datad => VCC,
	cin => \inst2|count[12]~56\,
	combout => \inst2|count[13]~57_combout\,
	cout => \inst2|count[13]~58\);

-- Location: FF_X26_Y26_N27
\inst2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[13]~57_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(13));

-- Location: LCCOMB_X26_Y26_N28
\inst2|count[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[14]~59_combout\ = (\inst2|count\(14) & (!\inst2|count[13]~58\)) # (!\inst2|count\(14) & ((\inst2|count[13]~58\) # (GND)))
-- \inst2|count[14]~60\ = CARRY((!\inst2|count[13]~58\) # (!\inst2|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(14),
	datad => VCC,
	cin => \inst2|count[13]~58\,
	combout => \inst2|count[14]~59_combout\,
	cout => \inst2|count[14]~60\);

-- Location: FF_X26_Y26_N29
\inst2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[14]~59_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(14));

-- Location: LCCOMB_X26_Y26_N30
\inst2|count[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[15]~61_combout\ = (\inst2|count\(15) & (\inst2|count[14]~60\ & VCC)) # (!\inst2|count\(15) & (!\inst2|count[14]~60\))
-- \inst2|count[15]~62\ = CARRY((!\inst2|count\(15) & !\inst2|count[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(15),
	datad => VCC,
	cin => \inst2|count[14]~60\,
	combout => \inst2|count[15]~61_combout\,
	cout => \inst2|count[15]~62\);

-- Location: FF_X26_Y26_N31
\inst2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[15]~61_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(15));

-- Location: LCCOMB_X26_Y25_N0
\inst2|count[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[16]~63_combout\ = (\inst2|count\(16) & ((GND) # (!\inst2|count[15]~62\))) # (!\inst2|count\(16) & (\inst2|count[15]~62\ $ (GND)))
-- \inst2|count[16]~64\ = CARRY((\inst2|count\(16)) # (!\inst2|count[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(16),
	datad => VCC,
	cin => \inst2|count[15]~62\,
	combout => \inst2|count[16]~63_combout\,
	cout => \inst2|count[16]~64\);

-- Location: FF_X26_Y25_N1
\inst2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[16]~63_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(16));

-- Location: LCCOMB_X26_Y25_N2
\inst2|count[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[17]~65_combout\ = (\inst2|count\(17) & (\inst2|count[16]~64\ & VCC)) # (!\inst2|count\(17) & (!\inst2|count[16]~64\))
-- \inst2|count[17]~66\ = CARRY((!\inst2|count\(17) & !\inst2|count[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(17),
	datad => VCC,
	cin => \inst2|count[16]~64\,
	combout => \inst2|count[17]~65_combout\,
	cout => \inst2|count[17]~66\);

-- Location: FF_X26_Y25_N3
\inst2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[17]~65_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(17));

-- Location: LCCOMB_X26_Y25_N4
\inst2|count[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[18]~67_combout\ = (\inst2|count\(18) & (!\inst2|count[17]~66\)) # (!\inst2|count\(18) & ((\inst2|count[17]~66\) # (GND)))
-- \inst2|count[18]~68\ = CARRY((!\inst2|count[17]~66\) # (!\inst2|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(18),
	datad => VCC,
	cin => \inst2|count[17]~66\,
	combout => \inst2|count[18]~67_combout\,
	cout => \inst2|count[18]~68\);

-- Location: FF_X26_Y25_N5
\inst2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[18]~67_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(18));

-- Location: LCCOMB_X26_Y25_N6
\inst2|count[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[19]~69_combout\ = (\inst2|count\(19) & (\inst2|count[18]~68\ $ (GND))) # (!\inst2|count\(19) & (!\inst2|count[18]~68\ & VCC))
-- \inst2|count[19]~70\ = CARRY((\inst2|count\(19) & !\inst2|count[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(19),
	datad => VCC,
	cin => \inst2|count[18]~68\,
	combout => \inst2|count[19]~69_combout\,
	cout => \inst2|count[19]~70\);

-- Location: FF_X26_Y25_N7
\inst2|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[19]~69_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(19));

-- Location: LCCOMB_X26_Y25_N8
\inst2|count[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[20]~71_combout\ = (\inst2|count\(20) & ((GND) # (!\inst2|count[19]~70\))) # (!\inst2|count\(20) & (\inst2|count[19]~70\ $ (GND)))
-- \inst2|count[20]~72\ = CARRY((\inst2|count\(20)) # (!\inst2|count[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(20),
	datad => VCC,
	cin => \inst2|count[19]~70\,
	combout => \inst2|count[20]~71_combout\,
	cout => \inst2|count[20]~72\);

-- Location: FF_X26_Y25_N9
\inst2|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[20]~71_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(20));

-- Location: LCCOMB_X26_Y25_N10
\inst2|count[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[21]~73_combout\ = (\inst2|count\(21) & (\inst2|count[20]~72\ & VCC)) # (!\inst2|count\(21) & (!\inst2|count[20]~72\))
-- \inst2|count[21]~74\ = CARRY((!\inst2|count\(21) & !\inst2|count[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(21),
	datad => VCC,
	cin => \inst2|count[20]~72\,
	combout => \inst2|count[21]~73_combout\,
	cout => \inst2|count[21]~74\);

-- Location: FF_X26_Y25_N11
\inst2|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[21]~73_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(21));

-- Location: LCCOMB_X26_Y25_N12
\inst2|count[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[22]~75_combout\ = (\inst2|count\(22) & (!\inst2|count[21]~74\)) # (!\inst2|count\(22) & ((\inst2|count[21]~74\) # (GND)))
-- \inst2|count[22]~76\ = CARRY((!\inst2|count[21]~74\) # (!\inst2|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(22),
	datad => VCC,
	cin => \inst2|count[21]~74\,
	combout => \inst2|count[22]~75_combout\,
	cout => \inst2|count[22]~76\);

-- Location: FF_X26_Y25_N13
\inst2|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[22]~75_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(22));

-- Location: LCCOMB_X26_Y25_N14
\inst2|count[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[23]~77_combout\ = (\inst2|count\(23) & (\inst2|count[22]~76\ & VCC)) # (!\inst2|count\(23) & (!\inst2|count[22]~76\))
-- \inst2|count[23]~78\ = CARRY((!\inst2|count\(23) & !\inst2|count[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(23),
	datad => VCC,
	cin => \inst2|count[22]~76\,
	combout => \inst2|count[23]~77_combout\,
	cout => \inst2|count[23]~78\);

-- Location: FF_X26_Y25_N15
\inst2|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[23]~77_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(23));

-- Location: LCCOMB_X26_Y25_N16
\inst2|count[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[24]~79_combout\ = (\inst2|count\(24) & ((GND) # (!\inst2|count[23]~78\))) # (!\inst2|count\(24) & (\inst2|count[23]~78\ $ (GND)))
-- \inst2|count[24]~80\ = CARRY((\inst2|count\(24)) # (!\inst2|count[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(24),
	datad => VCC,
	cin => \inst2|count[23]~78\,
	combout => \inst2|count[24]~79_combout\,
	cout => \inst2|count[24]~80\);

-- Location: FF_X26_Y25_N17
\inst2|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[24]~79_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(24));

-- Location: LCCOMB_X26_Y25_N18
\inst2|count[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[25]~81_combout\ = (\inst2|count\(25) & (\inst2|count[24]~80\ & VCC)) # (!\inst2|count\(25) & (!\inst2|count[24]~80\))
-- \inst2|count[25]~82\ = CARRY((!\inst2|count\(25) & !\inst2|count[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(25),
	datad => VCC,
	cin => \inst2|count[24]~80\,
	combout => \inst2|count[25]~81_combout\,
	cout => \inst2|count[25]~82\);

-- Location: FF_X26_Y25_N19
\inst2|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[25]~81_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(25));

-- Location: LCCOMB_X26_Y25_N20
\inst2|count[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[26]~83_combout\ = (\inst2|count\(26) & ((GND) # (!\inst2|count[25]~82\))) # (!\inst2|count\(26) & (\inst2|count[25]~82\ $ (GND)))
-- \inst2|count[26]~84\ = CARRY((\inst2|count\(26)) # (!\inst2|count[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(26),
	datad => VCC,
	cin => \inst2|count[25]~82\,
	combout => \inst2|count[26]~83_combout\,
	cout => \inst2|count[26]~84\);

-- Location: FF_X26_Y25_N21
\inst2|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[26]~83_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(26));

-- Location: LCCOMB_X26_Y25_N22
\inst2|count[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[27]~85_combout\ = (\inst2|count\(27) & (\inst2|count[26]~84\ & VCC)) # (!\inst2|count\(27) & (!\inst2|count[26]~84\))
-- \inst2|count[27]~86\ = CARRY((!\inst2|count\(27) & !\inst2|count[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(27),
	datad => VCC,
	cin => \inst2|count[26]~84\,
	combout => \inst2|count[27]~85_combout\,
	cout => \inst2|count[27]~86\);

-- Location: FF_X26_Y25_N23
\inst2|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[27]~85_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(27));

-- Location: LCCOMB_X26_Y25_N24
\inst2|count[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[28]~87_combout\ = (\inst2|count\(28) & ((GND) # (!\inst2|count[27]~86\))) # (!\inst2|count\(28) & (\inst2|count[27]~86\ $ (GND)))
-- \inst2|count[28]~88\ = CARRY((\inst2|count\(28)) # (!\inst2|count[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(28),
	datad => VCC,
	cin => \inst2|count[27]~86\,
	combout => \inst2|count[28]~87_combout\,
	cout => \inst2|count[28]~88\);

-- Location: FF_X26_Y25_N25
\inst2|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[28]~87_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(28));

-- Location: LCCOMB_X26_Y25_N26
\inst2|count[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[29]~89_combout\ = (\inst2|count\(29) & (\inst2|count[28]~88\ & VCC)) # (!\inst2|count\(29) & (!\inst2|count[28]~88\))
-- \inst2|count[29]~90\ = CARRY((!\inst2|count\(29) & !\inst2|count[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(29),
	datad => VCC,
	cin => \inst2|count[28]~88\,
	combout => \inst2|count[29]~89_combout\,
	cout => \inst2|count[29]~90\);

-- Location: FF_X26_Y25_N27
\inst2|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[29]~89_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(29));

-- Location: LCCOMB_X26_Y25_N28
\inst2|count[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[30]~91_combout\ = (\inst2|count\(30) & ((GND) # (!\inst2|count[29]~90\))) # (!\inst2|count\(30) & (\inst2|count[29]~90\ $ (GND)))
-- \inst2|count[30]~92\ = CARRY((\inst2|count\(30)) # (!\inst2|count[29]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(30),
	datad => VCC,
	cin => \inst2|count[29]~90\,
	combout => \inst2|count[30]~91_combout\,
	cout => \inst2|count[30]~92\);

-- Location: FF_X26_Y25_N29
\inst2|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[30]~91_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(30));

-- Location: LCCOMB_X26_Y25_N30
\inst2|count[31]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[31]~93_combout\ = \inst2|count\(31) $ (!\inst2|count[30]~92\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(31),
	cin => \inst2|count[30]~92\,
	combout => \inst2|count[31]~93_combout\);

-- Location: FF_X26_Y25_N31
\inst2|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[31]~93_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(31));

-- Location: LCCOMB_X27_Y25_N28
\inst2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~7_combout\ = (!\inst2|count\(25) & (!\inst2|count\(26) & (!\inst2|count\(24) & !\inst2|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(25),
	datab => \inst2|count\(26),
	datac => \inst2|count\(24),
	datad => \inst2|count\(27),
	combout => \inst2|Equal0~7_combout\);

-- Location: LCCOMB_X27_Y25_N10
\inst2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~8_combout\ = (!\inst2|count\(30) & (!\inst2|count\(28) & (!\inst2|count\(29) & \inst2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(30),
	datab => \inst2|count\(28),
	datac => \inst2|count\(29),
	datad => \inst2|Equal0~7_combout\,
	combout => \inst2|Equal0~8_combout\);

-- Location: LCCOMB_X27_Y25_N18
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (!\inst2|count\(23) & (\inst2|count\(22) & (!\inst2|count\(20) & !\inst2|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(23),
	datab => \inst2|count\(22),
	datac => \inst2|count\(20),
	datad => \inst2|count\(21),
	combout => \inst2|Equal0~6_combout\);

-- Location: LCCOMB_X27_Y26_N10
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|count\(9) & (!\inst2|count\(10) & (\inst2|count\(8) & \inst2|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(9),
	datab => \inst2|count\(10),
	datac => \inst2|count\(8),
	datad => \inst2|count\(11),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y26_N24
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|count\(6) & (!\inst2|count\(5) & (!\inst2|count\(7) & !\inst2|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(6),
	datab => \inst2|count\(5),
	datac => \inst2|count\(7),
	datad => \inst2|count\(4),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y26_N8
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|count\(15) & (\inst2|count\(14) & (!\inst2|count\(13) & !\inst2|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(15),
	datab => \inst2|count\(14),
	datac => \inst2|count\(13),
	datad => \inst2|count\(12),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y26_N18
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|count\(1) & (!\inst2|count\(3) & (!\inst2|count\(2) & !\inst2|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(1),
	datab => \inst2|count\(3),
	datac => \inst2|count\(2),
	datad => \inst2|count\(0),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y26_N30
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~2_combout\ & (\inst2|Equal0~1_combout\ & (\inst2|Equal0~3_combout\ & \inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Equal0~1_combout\,
	datac => \inst2|Equal0~3_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y25_N12
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (!\inst2|count\(16) & (\inst2|count\(19) & (\inst2|count\(18) & !\inst2|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(16),
	datab => \inst2|count\(19),
	datac => \inst2|count\(18),
	datad => \inst2|count\(17),
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X27_Y25_N0
\inst2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~9_combout\ = (\inst2|Equal0~8_combout\ & (\inst2|Equal0~6_combout\ & (\inst2|Equal0~4_combout\ & \inst2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~8_combout\,
	datab => \inst2|Equal0~6_combout\,
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|Equal0~9_combout\);

-- Location: LCCOMB_X27_Y26_N12
\inst2|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~0_combout\ = (!\inst2|count\(31) & !\inst2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|count\(31),
	datad => \inst2|Equal0~9_combout\,
	combout => \inst2|comb~0_combout\);

-- Location: LCCOMB_X27_Y26_N22
\inst2|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~10_combout\ = (!\inst2|count\(31) & \inst2|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|count\(31),
	datad => \inst2|Equal0~9_combout\,
	combout => \inst2|Equal0~10_combout\);

-- Location: LCCOMB_X27_Y26_N16
\inst2|READY\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|READY~combout\ = (!\inst2|comb~0_combout\ & ((\inst2|Equal0~10_combout\) # (\inst2|READY~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|comb~0_combout\,
	datac => \inst2|Equal0~10_combout\,
	datad => \inst2|READY~combout\,
	combout => \inst2|READY~combout\);

-- Location: LCCOMB_X29_Y14_N0
\inst1|CS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|CS~0_combout\ = ((!\RESET_BUTTON2~input_o\ & !\RESET_BUTTON~input_o\)) # (!\inst2|READY~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET_BUTTON2~input_o\,
	datac => \inst2|READY~combout\,
	datad => \RESET_BUTTON~input_o\,
	combout => \inst1|CS~0_combout\);

-- Location: FF_X30_Y15_N23
\inst1|sclk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~22_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(11));

-- Location: LCCOMB_X30_Y15_N0
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|sclk_count\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|sclk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: FF_X30_Y15_N1
\inst1|sclk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~0_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(0));

-- Location: LCCOMB_X30_Y15_N2
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|sclk_count\(1) & (\inst1|Add0~1\ & VCC)) # (!\inst1|sclk_count\(1) & (!\inst1|Add0~1\))
-- \inst1|Add0~3\ = CARRY((!\inst1|sclk_count\(1) & !\inst1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: FF_X30_Y15_N3
\inst1|sclk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~2_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(1));

-- Location: LCCOMB_X30_Y15_N4
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|sclk_count\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|sclk_count\(2) & ((GND) # (!\inst1|Add0~3\)))
-- \inst1|Add0~5\ = CARRY((!\inst1|Add0~3\) # (!\inst1|sclk_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sclk_count\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X29_Y15_N16
\inst1|sclk_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sclk_count~0_combout\ = (!\inst1|Add0~4_combout\ & !\inst1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~4_combout\,
	datad => \inst1|Equal0~10_combout\,
	combout => \inst1|sclk_count~0_combout\);

-- Location: FF_X29_Y15_N17
\inst1|sclk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|sclk_count~0_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(2));

-- Location: LCCOMB_X30_Y15_N6
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|sclk_count\(3) & (\inst1|Add0~5\ & VCC)) # (!\inst1|sclk_count\(3) & (!\inst1|Add0~5\))
-- \inst1|Add0~7\ = CARRY((!\inst1|sclk_count\(3) & !\inst1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sclk_count\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: FF_X30_Y15_N7
\inst1|sclk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~6_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(3));

-- Location: LCCOMB_X30_Y15_N8
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|sclk_count\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|sclk_count\(4) & ((GND) # (!\inst1|Add0~7\)))
-- \inst1|Add0~9\ = CARRY((!\inst1|Add0~7\) # (!\inst1|sclk_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X31_Y15_N30
\inst1|sclk_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sclk_count~1_combout\ = (!\inst1|Add0~8_combout\ & !\inst1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~8_combout\,
	datad => \inst1|Equal0~10_combout\,
	combout => \inst1|sclk_count~1_combout\);

-- Location: FF_X30_Y15_N9
\inst1|sclk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|sclk_count~1_combout\,
	sload => VCC,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(4));

-- Location: LCCOMB_X30_Y15_N10
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|sclk_count\(5) & (\inst1|Add0~9\ & VCC)) # (!\inst1|sclk_count\(5) & (!\inst1|Add0~9\))
-- \inst1|Add0~11\ = CARRY((!\inst1|sclk_count\(5) & !\inst1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sclk_count\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: FF_X30_Y15_N11
\inst1|sclk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~10_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(5));

-- Location: LCCOMB_X30_Y15_N12
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|sclk_count\(6) & ((GND) # (!\inst1|Add0~11\))) # (!\inst1|sclk_count\(6) & (\inst1|Add0~11\ $ (GND)))
-- \inst1|Add0~13\ = CARRY((\inst1|sclk_count\(6)) # (!\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sclk_count\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: FF_X30_Y15_N13
\inst1|sclk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~12_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(6));

-- Location: LCCOMB_X30_Y15_N14
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|sclk_count\(7) & (\inst1|Add0~13\ & VCC)) # (!\inst1|sclk_count\(7) & (!\inst1|Add0~13\))
-- \inst1|Add0~15\ = CARRY((!\inst1|sclk_count\(7) & !\inst1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: FF_X30_Y15_N15
\inst1|sclk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~14_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(7));

-- Location: LCCOMB_X30_Y15_N16
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|sclk_count\(8) & ((GND) # (!\inst1|Add0~15\))) # (!\inst1|sclk_count\(8) & (\inst1|Add0~15\ $ (GND)))
-- \inst1|Add0~17\ = CARRY((\inst1|sclk_count\(8)) # (!\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: FF_X30_Y15_N17
\inst1|sclk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~16_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(8));

-- Location: LCCOMB_X30_Y15_N18
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|sclk_count\(9) & (\inst1|Add0~17\ & VCC)) # (!\inst1|sclk_count\(9) & (!\inst1|Add0~17\))
-- \inst1|Add0~19\ = CARRY((!\inst1|sclk_count\(9) & !\inst1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: FF_X30_Y15_N19
\inst1|sclk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~18_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(9));

-- Location: LCCOMB_X30_Y15_N20
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|sclk_count\(10) & ((GND) # (!\inst1|Add0~19\))) # (!\inst1|sclk_count\(10) & (\inst1|Add0~19\ $ (GND)))
-- \inst1|Add0~21\ = CARRY((\inst1|sclk_count\(10)) # (!\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: FF_X30_Y15_N21
\inst1|sclk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~20_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(10));

-- Location: LCCOMB_X30_Y15_N22
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|sclk_count\(11) & (\inst1|Add0~21\ & VCC)) # (!\inst1|sclk_count\(11) & (!\inst1|Add0~21\))
-- \inst1|Add0~23\ = CARRY((!\inst1|sclk_count\(11) & !\inst1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sclk_count\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X31_Y15_N12
\inst1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (!\inst1|Add0~22_combout\ & (!\inst1|Add0~20_combout\ & (!\inst1|Add0~16_combout\ & !\inst1|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~22_combout\,
	datab => \inst1|Add0~20_combout\,
	datac => \inst1|Add0~16_combout\,
	datad => \inst1|Add0~18_combout\,
	combout => \inst1|Equal0~3_combout\);

-- Location: FF_X30_Y14_N23
\inst1|sclk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~54_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(27));

-- Location: LCCOMB_X30_Y15_N24
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|sclk_count\(12) & ((GND) # (!\inst1|Add0~23\))) # (!\inst1|sclk_count\(12) & (\inst1|Add0~23\ $ (GND)))
-- \inst1|Add0~25\ = CARRY((\inst1|sclk_count\(12)) # (!\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: FF_X30_Y15_N25
\inst1|sclk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~24_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(12));

-- Location: LCCOMB_X30_Y15_N26
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|sclk_count\(13) & (\inst1|Add0~25\ & VCC)) # (!\inst1|sclk_count\(13) & (!\inst1|Add0~25\))
-- \inst1|Add0~27\ = CARRY((!\inst1|sclk_count\(13) & !\inst1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sclk_count\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: FF_X30_Y15_N27
\inst1|sclk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~26_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(13));

-- Location: LCCOMB_X30_Y15_N28
\inst1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|sclk_count\(14) & ((GND) # (!\inst1|Add0~27\))) # (!\inst1|sclk_count\(14) & (\inst1|Add0~27\ $ (GND)))
-- \inst1|Add0~29\ = CARRY((\inst1|sclk_count\(14)) # (!\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: FF_X30_Y15_N29
\inst1|sclk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~28_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(14));

-- Location: LCCOMB_X30_Y15_N30
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|sclk_count\(15) & (\inst1|Add0~29\ & VCC)) # (!\inst1|sclk_count\(15) & (!\inst1|Add0~29\))
-- \inst1|Add0~31\ = CARRY((!\inst1|sclk_count\(15) & !\inst1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sclk_count\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: FF_X30_Y15_N31
\inst1|sclk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~30_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(15));

-- Location: LCCOMB_X30_Y14_N0
\inst1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|sclk_count\(16) & ((GND) # (!\inst1|Add0~31\))) # (!\inst1|sclk_count\(16) & (\inst1|Add0~31\ $ (GND)))
-- \inst1|Add0~33\ = CARRY((\inst1|sclk_count\(16)) # (!\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: FF_X30_Y14_N1
\inst1|sclk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~32_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(16));

-- Location: LCCOMB_X30_Y14_N2
\inst1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|sclk_count\(17) & (\inst1|Add0~33\ & VCC)) # (!\inst1|sclk_count\(17) & (!\inst1|Add0~33\))
-- \inst1|Add0~35\ = CARRY((!\inst1|sclk_count\(17) & !\inst1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(17),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: FF_X30_Y14_N3
\inst1|sclk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~34_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(17));

-- Location: LCCOMB_X30_Y14_N4
\inst1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|sclk_count\(18) & ((GND) # (!\inst1|Add0~35\))) # (!\inst1|sclk_count\(18) & (\inst1|Add0~35\ $ (GND)))
-- \inst1|Add0~37\ = CARRY((\inst1|sclk_count\(18)) # (!\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: FF_X30_Y14_N5
\inst1|sclk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~36_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(18));

-- Location: LCCOMB_X30_Y14_N6
\inst1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|sclk_count\(19) & (\inst1|Add0~37\ & VCC)) # (!\inst1|sclk_count\(19) & (!\inst1|Add0~37\))
-- \inst1|Add0~39\ = CARRY((!\inst1|sclk_count\(19) & !\inst1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sclk_count\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: FF_X30_Y14_N7
\inst1|sclk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~38_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(19));

-- Location: LCCOMB_X30_Y14_N8
\inst1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|sclk_count\(20) & ((GND) # (!\inst1|Add0~39\))) # (!\inst1|sclk_count\(20) & (\inst1|Add0~39\ $ (GND)))
-- \inst1|Add0~41\ = CARRY((\inst1|sclk_count\(20)) # (!\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: FF_X30_Y14_N9
\inst1|sclk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~40_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(20));

-- Location: LCCOMB_X30_Y14_N10
\inst1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|sclk_count\(21) & (\inst1|Add0~41\ & VCC)) # (!\inst1|sclk_count\(21) & (!\inst1|Add0~41\))
-- \inst1|Add0~43\ = CARRY((!\inst1|sclk_count\(21) & !\inst1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sclk_count\(21),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: FF_X30_Y14_N11
\inst1|sclk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~42_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(21));

-- Location: LCCOMB_X30_Y14_N12
\inst1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = (\inst1|sclk_count\(22) & ((GND) # (!\inst1|Add0~43\))) # (!\inst1|sclk_count\(22) & (\inst1|Add0~43\ $ (GND)))
-- \inst1|Add0~45\ = CARRY((\inst1|sclk_count\(22)) # (!\inst1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sclk_count\(22),
	datad => VCC,
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\,
	cout => \inst1|Add0~45\);

-- Location: FF_X30_Y14_N13
\inst1|sclk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~44_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(22));

-- Location: LCCOMB_X30_Y14_N14
\inst1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~46_combout\ = (\inst1|sclk_count\(23) & (\inst1|Add0~45\ & VCC)) # (!\inst1|sclk_count\(23) & (!\inst1|Add0~45\))
-- \inst1|Add0~47\ = CARRY((!\inst1|sclk_count\(23) & !\inst1|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(23),
	datad => VCC,
	cin => \inst1|Add0~45\,
	combout => \inst1|Add0~46_combout\,
	cout => \inst1|Add0~47\);

-- Location: FF_X30_Y14_N15
\inst1|sclk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~46_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(23));

-- Location: LCCOMB_X30_Y14_N16
\inst1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~48_combout\ = (\inst1|sclk_count\(24) & ((GND) # (!\inst1|Add0~47\))) # (!\inst1|sclk_count\(24) & (\inst1|Add0~47\ $ (GND)))
-- \inst1|Add0~49\ = CARRY((\inst1|sclk_count\(24)) # (!\inst1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(24),
	datad => VCC,
	cin => \inst1|Add0~47\,
	combout => \inst1|Add0~48_combout\,
	cout => \inst1|Add0~49\);

-- Location: FF_X30_Y14_N17
\inst1|sclk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~48_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(24));

-- Location: LCCOMB_X30_Y14_N18
\inst1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~50_combout\ = (\inst1|sclk_count\(25) & (\inst1|Add0~49\ & VCC)) # (!\inst1|sclk_count\(25) & (!\inst1|Add0~49\))
-- \inst1|Add0~51\ = CARRY((!\inst1|sclk_count\(25) & !\inst1|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(25),
	datad => VCC,
	cin => \inst1|Add0~49\,
	combout => \inst1|Add0~50_combout\,
	cout => \inst1|Add0~51\);

-- Location: FF_X30_Y14_N19
\inst1|sclk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~50_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(25));

-- Location: LCCOMB_X30_Y14_N20
\inst1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~52_combout\ = (\inst1|sclk_count\(26) & ((GND) # (!\inst1|Add0~51\))) # (!\inst1|sclk_count\(26) & (\inst1|Add0~51\ $ (GND)))
-- \inst1|Add0~53\ = CARRY((\inst1|sclk_count\(26)) # (!\inst1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(26),
	datad => VCC,
	cin => \inst1|Add0~51\,
	combout => \inst1|Add0~52_combout\,
	cout => \inst1|Add0~53\);

-- Location: FF_X30_Y14_N21
\inst1|sclk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~52_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(26));

-- Location: LCCOMB_X30_Y14_N22
\inst1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~54_combout\ = (\inst1|sclk_count\(27) & (\inst1|Add0~53\ & VCC)) # (!\inst1|sclk_count\(27) & (!\inst1|Add0~53\))
-- \inst1|Add0~55\ = CARRY((!\inst1|sclk_count\(27) & !\inst1|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sclk_count\(27),
	datad => VCC,
	cin => \inst1|Add0~53\,
	combout => \inst1|Add0~54_combout\,
	cout => \inst1|Add0~55\);

-- Location: LCCOMB_X31_Y14_N12
\inst1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~7_combout\ = (!\inst1|Add0~54_combout\ & (!\inst1|Add0~52_combout\ & (!\inst1|Add0~48_combout\ & !\inst1|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~54_combout\,
	datab => \inst1|Add0~52_combout\,
	datac => \inst1|Add0~48_combout\,
	datad => \inst1|Add0~50_combout\,
	combout => \inst1|Equal0~7_combout\);

-- Location: LCCOMB_X31_Y14_N18
\inst1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~6_combout\ = (!\inst1|Add0~44_combout\ & (!\inst1|Add0~42_combout\ & (!\inst1|Add0~46_combout\ & !\inst1|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~44_combout\,
	datab => \inst1|Add0~42_combout\,
	datac => \inst1|Add0~46_combout\,
	datad => \inst1|Add0~40_combout\,
	combout => \inst1|Equal0~6_combout\);

-- Location: FF_X30_Y14_N25
\inst1|sclk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~56_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(28));

-- Location: LCCOMB_X30_Y14_N24
\inst1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~56_combout\ = (\inst1|sclk_count\(28) & ((GND) # (!\inst1|Add0~55\))) # (!\inst1|sclk_count\(28) & (\inst1|Add0~55\ $ (GND)))
-- \inst1|Add0~57\ = CARRY((\inst1|sclk_count\(28)) # (!\inst1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(28),
	datad => VCC,
	cin => \inst1|Add0~55\,
	combout => \inst1|Add0~56_combout\,
	cout => \inst1|Add0~57\);

-- Location: FF_X30_Y14_N29
\inst1|sclk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~60_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(30));

-- Location: LCCOMB_X30_Y14_N26
\inst1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~58_combout\ = (\inst1|sclk_count\(29) & (\inst1|Add0~57\ & VCC)) # (!\inst1|sclk_count\(29) & (!\inst1|Add0~57\))
-- \inst1|Add0~59\ = CARRY((!\inst1|sclk_count\(29) & !\inst1|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sclk_count\(29),
	datad => VCC,
	cin => \inst1|Add0~57\,
	combout => \inst1|Add0~58_combout\,
	cout => \inst1|Add0~59\);

-- Location: FF_X30_Y14_N27
\inst1|sclk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~58_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(29));

-- Location: LCCOMB_X30_Y14_N28
\inst1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~60_combout\ = (\inst1|sclk_count\(30) & ((GND) # (!\inst1|Add0~59\))) # (!\inst1|sclk_count\(30) & (\inst1|Add0~59\ $ (GND)))
-- \inst1|Add0~61\ = CARRY((\inst1|sclk_count\(30)) # (!\inst1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_count\(30),
	datad => VCC,
	cin => \inst1|Add0~59\,
	combout => \inst1|Add0~60_combout\,
	cout => \inst1|Add0~61\);

-- Location: FF_X30_Y14_N31
\inst1|sclk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~62_combout\,
	ena => \inst1|ALT_INV_CS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_count\(31));

-- Location: LCCOMB_X30_Y14_N30
\inst1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~62_combout\ = \inst1|sclk_count\(31) $ (!\inst1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sclk_count\(31),
	cin => \inst1|Add0~61\,
	combout => \inst1|Add0~62_combout\);

-- Location: LCCOMB_X31_Y14_N30
\inst1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~8_combout\ = (!\inst1|Add0~56_combout\ & (!\inst1|Add0~60_combout\ & (!\inst1|Add0~58_combout\ & !\inst1|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~56_combout\,
	datab => \inst1|Add0~60_combout\,
	datac => \inst1|Add0~58_combout\,
	datad => \inst1|Add0~62_combout\,
	combout => \inst1|Equal0~8_combout\);

-- Location: LCCOMB_X31_Y14_N28
\inst1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~5_combout\ = (!\inst1|Add0~32_combout\ & (!\inst1|Add0~38_combout\ & (!\inst1|Add0~36_combout\ & !\inst1|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~32_combout\,
	datab => \inst1|Add0~38_combout\,
	datac => \inst1|Add0~36_combout\,
	datad => \inst1|Add0~34_combout\,
	combout => \inst1|Equal0~5_combout\);

-- Location: LCCOMB_X31_Y14_N0
\inst1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~9_combout\ = (\inst1|Equal0~7_combout\ & (\inst1|Equal0~6_combout\ & (\inst1|Equal0~8_combout\ & \inst1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~7_combout\,
	datab => \inst1|Equal0~6_combout\,
	datac => \inst1|Equal0~8_combout\,
	datad => \inst1|Equal0~5_combout\,
	combout => \inst1|Equal0~9_combout\);

-- Location: LCCOMB_X31_Y15_N22
\inst1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~4_combout\ = (!\inst1|Add0~30_combout\ & (!\inst1|Add0~24_combout\ & (!\inst1|Add0~26_combout\ & !\inst1|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~30_combout\,
	datab => \inst1|Add0~24_combout\,
	datac => \inst1|Add0~26_combout\,
	datad => \inst1|Add0~28_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y15_N28
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|Add0~10_combout\ & !\inst1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~10_combout\,
	datad => \inst1|Add0~8_combout\,
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y15_N18
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|Add0~4_combout\ & (!\inst1|Add0~6_combout\ & (!\inst1|Add0~0_combout\ & !\inst1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~4_combout\,
	datab => \inst1|Add0~6_combout\,
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|Add0~2_combout\,
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y15_N10
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst1|Add0~12_combout\ & (\inst1|Equal0~1_combout\ & (!\inst1|Add0~14_combout\ & \inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~12_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Add0~14_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y15_N16
\inst1|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~10_combout\ = (\inst1|Equal0~3_combout\ & (\inst1|Equal0~9_combout\ & (\inst1|Equal0~4_combout\ & \inst1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~3_combout\,
	datab => \inst1|Equal0~9_combout\,
	datac => \inst1|Equal0~4_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|Equal0~10_combout\);

-- Location: LCCOMB_X31_Y15_N4
\inst1|sclk_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sclk_pulse~0_combout\ = \inst1|sclk_pulse~q\ $ (((\inst1|Equal0~10_combout\ & !\inst1|CS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~10_combout\,
	datac => \inst1|sclk_pulse~q\,
	datad => \inst1|CS~0_combout\,
	combout => \inst1|sclk_pulse~0_combout\);

-- Location: FF_X31_Y15_N5
\inst1|sclk_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|sclk_pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sclk_pulse~q\);

-- Location: LCCOMB_X29_Y19_N26
\inst1|rx_count[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[0]~40_combout\ = \inst1|rx_count\(0) $ (((!\inst1|sclk_pulse~q\ & \inst1|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sclk_pulse~q\,
	datac => \inst1|rx_count\(0),
	datad => \inst1|Equal0~10_combout\,
	combout => \inst1|rx_count[0]~40_combout\);

-- Location: LCCOMB_X29_Y19_N28
\inst1|tx_count[0]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[0]~97_combout\ = !\inst1|tx_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|tx_count\(0),
	combout => \inst1|tx_count[0]~97_combout\);

-- Location: LCCOMB_X29_Y15_N30
\inst1|tx_count[16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[16]~31_combout\ = (\inst1|sclk_pulse~q\ & \inst1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sclk_pulse~q\,
	datad => \inst1|Equal0~10_combout\,
	combout => \inst1|tx_count[16]~31_combout\);

-- Location: FF_X29_Y19_N29
\inst1|tx_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[0]~97_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(0));

-- Location: LCCOMB_X29_Y17_N0
\inst1|tx_count[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[1]~33_cout\ = CARRY(!\inst1|tx_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(0),
	datad => VCC,
	cout => \inst1|tx_count[1]~33_cout\);

-- Location: LCCOMB_X29_Y17_N2
\inst1|tx_count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[1]~34_combout\ = (\inst1|tx_count\(1) & (\inst1|tx_count[1]~33_cout\ $ (GND))) # (!\inst1|tx_count\(1) & (!\inst1|tx_count[1]~33_cout\ & VCC))
-- \inst1|tx_count[1]~35\ = CARRY((\inst1|tx_count\(1) & !\inst1|tx_count[1]~33_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(1),
	datad => VCC,
	cin => \inst1|tx_count[1]~33_cout\,
	combout => \inst1|tx_count[1]~34_combout\,
	cout => \inst1|tx_count[1]~35\);

-- Location: LCCOMB_X30_Y17_N28
\inst1|tx_count[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[1]~feeder_combout\ = \inst1|tx_count[1]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[1]~34_combout\,
	combout => \inst1|tx_count[1]~feeder_combout\);

-- Location: FF_X30_Y17_N29
\inst1|tx_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[1]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(1));

-- Location: LCCOMB_X29_Y17_N4
\inst1|tx_count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[2]~36_combout\ = (\inst1|tx_count\(2) & (!\inst1|tx_count[1]~35\)) # (!\inst1|tx_count\(2) & ((\inst1|tx_count[1]~35\) # (GND)))
-- \inst1|tx_count[2]~37\ = CARRY((!\inst1|tx_count[1]~35\) # (!\inst1|tx_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(2),
	datad => VCC,
	cin => \inst1|tx_count[1]~35\,
	combout => \inst1|tx_count[2]~36_combout\,
	cout => \inst1|tx_count[2]~37\);

-- Location: FF_X30_Y17_N9
\inst1|tx_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|tx_count[2]~36_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(2));

-- Location: LCCOMB_X29_Y17_N6
\inst1|tx_count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[3]~38_combout\ = (\inst1|tx_count\(3) & (\inst1|tx_count[2]~37\ $ (GND))) # (!\inst1|tx_count\(3) & (!\inst1|tx_count[2]~37\ & VCC))
-- \inst1|tx_count[3]~39\ = CARRY((\inst1|tx_count\(3) & !\inst1|tx_count[2]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(3),
	datad => VCC,
	cin => \inst1|tx_count[2]~37\,
	combout => \inst1|tx_count[3]~38_combout\,
	cout => \inst1|tx_count[3]~39\);

-- Location: FF_X30_Y17_N23
\inst1|tx_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|tx_count[3]~38_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(3));

-- Location: LCCOMB_X29_Y17_N8
\inst1|tx_count[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[4]~41_combout\ = (\inst1|tx_count\(4) & ((GND) # (!\inst1|tx_count[3]~39\))) # (!\inst1|tx_count\(4) & (\inst1|tx_count[3]~39\ $ (GND)))
-- \inst1|tx_count[4]~42\ = CARRY((\inst1|tx_count\(4)) # (!\inst1|tx_count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(4),
	datad => VCC,
	cin => \inst1|tx_count[3]~39\,
	combout => \inst1|tx_count[4]~41_combout\,
	cout => \inst1|tx_count[4]~42\);

-- Location: LCCOMB_X30_Y17_N24
\inst1|tx_count[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[4]~feeder_combout\ = \inst1|tx_count[4]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[4]~41_combout\,
	combout => \inst1|tx_count[4]~feeder_combout\);

-- Location: FF_X30_Y17_N25
\inst1|tx_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[4]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(4));

-- Location: LCCOMB_X29_Y17_N10
\inst1|tx_count[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[5]~43_combout\ = (\inst1|tx_count\(5) & (\inst1|tx_count[4]~42\ & VCC)) # (!\inst1|tx_count\(5) & (!\inst1|tx_count[4]~42\))
-- \inst1|tx_count[5]~44\ = CARRY((!\inst1|tx_count\(5) & !\inst1|tx_count[4]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(5),
	datad => VCC,
	cin => \inst1|tx_count[4]~42\,
	combout => \inst1|tx_count[5]~43_combout\,
	cout => \inst1|tx_count[5]~44\);

-- Location: LCCOMB_X30_Y17_N20
\inst1|tx_count[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[5]~feeder_combout\ = \inst1|tx_count[5]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[5]~43_combout\,
	combout => \inst1|tx_count[5]~feeder_combout\);

-- Location: FF_X30_Y17_N21
\inst1|tx_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[5]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(5));

-- Location: LCCOMB_X29_Y17_N12
\inst1|tx_count[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[6]~45_combout\ = (\inst1|tx_count\(6) & ((GND) # (!\inst1|tx_count[5]~44\))) # (!\inst1|tx_count\(6) & (\inst1|tx_count[5]~44\ $ (GND)))
-- \inst1|tx_count[6]~46\ = CARRY((\inst1|tx_count\(6)) # (!\inst1|tx_count[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(6),
	datad => VCC,
	cin => \inst1|tx_count[5]~44\,
	combout => \inst1|tx_count[6]~45_combout\,
	cout => \inst1|tx_count[6]~46\);

-- Location: LCCOMB_X30_Y17_N4
\inst1|tx_count[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[6]~feeder_combout\ = \inst1|tx_count[6]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[6]~45_combout\,
	combout => \inst1|tx_count[6]~feeder_combout\);

-- Location: FF_X30_Y17_N5
\inst1|tx_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[6]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(6));

-- Location: LCCOMB_X29_Y17_N14
\inst1|tx_count[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[7]~47_combout\ = (\inst1|tx_count\(7) & (\inst1|tx_count[6]~46\ & VCC)) # (!\inst1|tx_count\(7) & (!\inst1|tx_count[6]~46\))
-- \inst1|tx_count[7]~48\ = CARRY((!\inst1|tx_count\(7) & !\inst1|tx_count[6]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(7),
	datad => VCC,
	cin => \inst1|tx_count[6]~46\,
	combout => \inst1|tx_count[7]~47_combout\,
	cout => \inst1|tx_count[7]~48\);

-- Location: LCCOMB_X30_Y17_N26
\inst1|tx_count[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[7]~feeder_combout\ = \inst1|tx_count[7]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[7]~47_combout\,
	combout => \inst1|tx_count[7]~feeder_combout\);

-- Location: FF_X30_Y17_N27
\inst1|tx_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[7]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(7));

-- Location: LCCOMB_X29_Y17_N16
\inst1|tx_count[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[8]~49_combout\ = (\inst1|tx_count\(8) & ((GND) # (!\inst1|tx_count[7]~48\))) # (!\inst1|tx_count\(8) & (\inst1|tx_count[7]~48\ $ (GND)))
-- \inst1|tx_count[8]~50\ = CARRY((\inst1|tx_count\(8)) # (!\inst1|tx_count[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(8),
	datad => VCC,
	cin => \inst1|tx_count[7]~48\,
	combout => \inst1|tx_count[8]~49_combout\,
	cout => \inst1|tx_count[8]~50\);

-- Location: FF_X30_Y17_N11
\inst1|tx_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|tx_count[8]~49_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(8));

-- Location: LCCOMB_X29_Y17_N18
\inst1|tx_count[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[9]~51_combout\ = (\inst1|tx_count\(9) & (\inst1|tx_count[8]~50\ & VCC)) # (!\inst1|tx_count\(9) & (!\inst1|tx_count[8]~50\))
-- \inst1|tx_count[9]~52\ = CARRY((!\inst1|tx_count\(9) & !\inst1|tx_count[8]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(9),
	datad => VCC,
	cin => \inst1|tx_count[8]~50\,
	combout => \inst1|tx_count[9]~51_combout\,
	cout => \inst1|tx_count[9]~52\);

-- Location: LCCOMB_X28_Y17_N14
\inst1|tx_count[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[9]~feeder_combout\ = \inst1|tx_count[9]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[9]~51_combout\,
	combout => \inst1|tx_count[9]~feeder_combout\);

-- Location: FF_X28_Y17_N15
\inst1|tx_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[9]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(9));

-- Location: LCCOMB_X29_Y17_N20
\inst1|tx_count[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[10]~53_combout\ = (\inst1|tx_count\(10) & ((GND) # (!\inst1|tx_count[9]~52\))) # (!\inst1|tx_count\(10) & (\inst1|tx_count[9]~52\ $ (GND)))
-- \inst1|tx_count[10]~54\ = CARRY((\inst1|tx_count\(10)) # (!\inst1|tx_count[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(10),
	datad => VCC,
	cin => \inst1|tx_count[9]~52\,
	combout => \inst1|tx_count[10]~53_combout\,
	cout => \inst1|tx_count[10]~54\);

-- Location: FF_X28_Y17_N13
\inst1|tx_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|tx_count[10]~53_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(10));

-- Location: LCCOMB_X29_Y17_N22
\inst1|tx_count[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[11]~55_combout\ = (\inst1|tx_count\(11) & (\inst1|tx_count[10]~54\ & VCC)) # (!\inst1|tx_count\(11) & (!\inst1|tx_count[10]~54\))
-- \inst1|tx_count[11]~56\ = CARRY((!\inst1|tx_count\(11) & !\inst1|tx_count[10]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(11),
	datad => VCC,
	cin => \inst1|tx_count[10]~54\,
	combout => \inst1|tx_count[11]~55_combout\,
	cout => \inst1|tx_count[11]~56\);

-- Location: LCCOMB_X28_Y17_N22
\inst1|tx_count[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[11]~feeder_combout\ = \inst1|tx_count[11]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[11]~55_combout\,
	combout => \inst1|tx_count[11]~feeder_combout\);

-- Location: FF_X28_Y17_N23
\inst1|tx_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[11]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(11));

-- Location: LCCOMB_X29_Y17_N24
\inst1|tx_count[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[12]~57_combout\ = (\inst1|tx_count\(12) & ((GND) # (!\inst1|tx_count[11]~56\))) # (!\inst1|tx_count\(12) & (\inst1|tx_count[11]~56\ $ (GND)))
-- \inst1|tx_count[12]~58\ = CARRY((\inst1|tx_count\(12)) # (!\inst1|tx_count[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(12),
	datad => VCC,
	cin => \inst1|tx_count[11]~56\,
	combout => \inst1|tx_count[12]~57_combout\,
	cout => \inst1|tx_count[12]~58\);

-- Location: LCCOMB_X28_Y17_N18
\inst1|tx_count[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[12]~feeder_combout\ = \inst1|tx_count[12]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[12]~57_combout\,
	combout => \inst1|tx_count[12]~feeder_combout\);

-- Location: FF_X28_Y17_N19
\inst1|tx_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[12]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(12));

-- Location: LCCOMB_X28_Y17_N0
\inst1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = (\inst1|tx_count\(11) & (\inst1|tx_count\(12) & (\inst1|tx_count\(9) & \inst1|tx_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(11),
	datab => \inst1|tx_count\(12),
	datac => \inst1|tx_count\(9),
	datad => \inst1|tx_count\(10),
	combout => \inst1|process_0~3_combout\);

-- Location: LCCOMB_X29_Y19_N16
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (!\inst1|rx_count\(1) & (!\inst1|tx_count\(0) & (!\inst1|rx_count\(0) & !\inst1|rx_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(1),
	datab => \inst1|tx_count\(0),
	datac => \inst1|rx_count\(0),
	datad => \inst1|rx_count\(3),
	combout => \inst1|process_0~0_combout\);

-- Location: LCCOMB_X30_Y17_N16
\inst1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = (\inst1|tx_count\(7) & (\inst1|tx_count\(5) & (\inst1|tx_count\(6) & \inst1|tx_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(7),
	datab => \inst1|tx_count\(5),
	datac => \inst1|tx_count\(6),
	datad => \inst1|tx_count\(8),
	combout => \inst1|process_0~2_combout\);

-- Location: LCCOMB_X30_Y17_N0
\inst1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~1_combout\ = (!\inst1|tx_count\(3) & (\inst1|tx_count\(4) & (!\inst1|tx_count\(2) & !\inst1|tx_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(3),
	datab => \inst1|tx_count\(4),
	datac => \inst1|tx_count\(2),
	datad => \inst1|tx_count\(1),
	combout => \inst1|process_0~1_combout\);

-- Location: LCCOMB_X29_Y18_N6
\inst1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = (\inst1|process_0~3_combout\ & (\inst1|process_0~0_combout\ & (\inst1|process_0~2_combout\ & \inst1|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|process_0~0_combout\,
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|process_0~1_combout\,
	combout => \inst1|process_0~4_combout\);

-- Location: LCCOMB_X30_Y19_N6
\inst1|rx_count[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[3]~37_combout\ = (\inst1|rx_count\(3) & (\inst1|rx_count[2]~36\ $ (GND))) # (!\inst1|rx_count\(3) & (!\inst1|rx_count[2]~36\ & VCC))
-- \inst1|rx_count[3]~38\ = CARRY((\inst1|rx_count\(3) & !\inst1|rx_count[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(3),
	datad => VCC,
	cin => \inst1|rx_count[2]~36\,
	combout => \inst1|rx_count[3]~37_combout\,
	cout => \inst1|rx_count[3]~38\);

-- Location: LCCOMB_X30_Y19_N8
\inst1|rx_count[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[4]~41_combout\ = (\inst1|rx_count\(4) & ((GND) # (!\inst1|rx_count[3]~38\))) # (!\inst1|rx_count\(4) & (\inst1|rx_count[3]~38\ $ (GND)))
-- \inst1|rx_count[4]~42\ = CARRY((\inst1|rx_count\(4)) # (!\inst1|rx_count[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(4),
	datad => VCC,
	cin => \inst1|rx_count[3]~38\,
	combout => \inst1|rx_count[4]~41_combout\,
	cout => \inst1|rx_count[4]~42\);

-- Location: LCCOMB_X31_Y18_N14
\inst1|rx_count[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[4]~feeder_combout\ = \inst1|rx_count[4]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|rx_count[4]~41_combout\,
	combout => \inst1|rx_count[4]~feeder_combout\);

-- Location: LCCOMB_X29_Y19_N8
\inst1|rx_count[27]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[27]~39_combout\ = (!\inst1|sclk_pulse~q\ & \inst1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sclk_pulse~q\,
	datad => \inst1|Equal0~10_combout\,
	combout => \inst1|rx_count[27]~39_combout\);

-- Location: FF_X31_Y18_N15
\inst1|rx_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[4]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(4));

-- Location: LCCOMB_X30_Y19_N10
\inst1|rx_count[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[5]~43_combout\ = (\inst1|rx_count\(5) & (\inst1|rx_count[4]~42\ & VCC)) # (!\inst1|rx_count\(5) & (!\inst1|rx_count[4]~42\))
-- \inst1|rx_count[5]~44\ = CARRY((!\inst1|rx_count\(5) & !\inst1|rx_count[4]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(5),
	datad => VCC,
	cin => \inst1|rx_count[4]~42\,
	combout => \inst1|rx_count[5]~43_combout\,
	cout => \inst1|rx_count[5]~44\);

-- Location: FF_X31_Y18_N25
\inst1|rx_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|rx_count[5]~43_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(5));

-- Location: LCCOMB_X30_Y19_N12
\inst1|rx_count[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[6]~45_combout\ = (\inst1|rx_count\(6) & ((GND) # (!\inst1|rx_count[5]~44\))) # (!\inst1|rx_count\(6) & (\inst1|rx_count[5]~44\ $ (GND)))
-- \inst1|rx_count[6]~46\ = CARRY((\inst1|rx_count\(6)) # (!\inst1|rx_count[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(6),
	datad => VCC,
	cin => \inst1|rx_count[5]~44\,
	combout => \inst1|rx_count[6]~45_combout\,
	cout => \inst1|rx_count[6]~46\);

-- Location: LCCOMB_X31_Y18_N22
\inst1|rx_count[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[6]~feeder_combout\ = \inst1|rx_count[6]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|rx_count[6]~45_combout\,
	combout => \inst1|rx_count[6]~feeder_combout\);

-- Location: FF_X31_Y18_N23
\inst1|rx_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[6]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(6));

-- Location: LCCOMB_X30_Y19_N14
\inst1|rx_count[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[7]~47_combout\ = (\inst1|rx_count\(7) & (\inst1|rx_count[6]~46\ & VCC)) # (!\inst1|rx_count\(7) & (!\inst1|rx_count[6]~46\))
-- \inst1|rx_count[7]~48\ = CARRY((!\inst1|rx_count\(7) & !\inst1|rx_count[6]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(7),
	datad => VCC,
	cin => \inst1|rx_count[6]~46\,
	combout => \inst1|rx_count[7]~47_combout\,
	cout => \inst1|rx_count[7]~48\);

-- Location: LCCOMB_X31_Y18_N12
\inst1|rx_count[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[7]~feeder_combout\ = \inst1|rx_count[7]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|rx_count[7]~47_combout\,
	combout => \inst1|rx_count[7]~feeder_combout\);

-- Location: FF_X31_Y18_N13
\inst1|rx_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[7]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(7));

-- Location: LCCOMB_X31_Y18_N16
\inst1|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~11_combout\ = (\inst1|rx_count\(7) & (\inst1|rx_count\(4) & (\inst1|rx_count\(6) & \inst1|rx_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(7),
	datab => \inst1|rx_count\(4),
	datac => \inst1|rx_count\(6),
	datad => \inst1|rx_count\(5),
	combout => \inst1|process_0~11_combout\);

-- Location: LCCOMB_X30_Y19_N16
\inst1|rx_count[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[8]~49_combout\ = (\inst1|rx_count\(8) & ((GND) # (!\inst1|rx_count[7]~48\))) # (!\inst1|rx_count\(8) & (\inst1|rx_count[7]~48\ $ (GND)))
-- \inst1|rx_count[8]~50\ = CARRY((\inst1|rx_count\(8)) # (!\inst1|rx_count[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(8),
	datad => VCC,
	cin => \inst1|rx_count[7]~48\,
	combout => \inst1|rx_count[8]~49_combout\,
	cout => \inst1|rx_count[8]~50\);

-- Location: FF_X30_Y19_N17
\inst1|rx_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[8]~49_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(8));

-- Location: LCCOMB_X30_Y19_N18
\inst1|rx_count[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[9]~51_combout\ = (\inst1|rx_count\(9) & (\inst1|rx_count[8]~50\ & VCC)) # (!\inst1|rx_count\(9) & (!\inst1|rx_count[8]~50\))
-- \inst1|rx_count[9]~52\ = CARRY((!\inst1|rx_count\(9) & !\inst1|rx_count[8]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(9),
	datad => VCC,
	cin => \inst1|rx_count[8]~50\,
	combout => \inst1|rx_count[9]~51_combout\,
	cout => \inst1|rx_count[9]~52\);

-- Location: FF_X30_Y18_N5
\inst1|rx_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|rx_count[9]~51_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(9));

-- Location: LCCOMB_X30_Y19_N20
\inst1|rx_count[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[10]~53_combout\ = (\inst1|rx_count\(10) & ((GND) # (!\inst1|rx_count[9]~52\))) # (!\inst1|rx_count\(10) & (\inst1|rx_count[9]~52\ $ (GND)))
-- \inst1|rx_count[10]~54\ = CARRY((\inst1|rx_count\(10)) # (!\inst1|rx_count[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(10),
	datad => VCC,
	cin => \inst1|rx_count[9]~52\,
	combout => \inst1|rx_count[10]~53_combout\,
	cout => \inst1|rx_count[10]~54\);

-- Location: FF_X29_Y18_N17
\inst1|rx_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|rx_count[10]~53_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(10));

-- Location: LCCOMB_X30_Y19_N22
\inst1|rx_count[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[11]~55_combout\ = (\inst1|rx_count\(11) & (\inst1|rx_count[10]~54\ & VCC)) # (!\inst1|rx_count\(11) & (!\inst1|rx_count[10]~54\))
-- \inst1|rx_count[11]~56\ = CARRY((!\inst1|rx_count\(11) & !\inst1|rx_count[10]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(11),
	datad => VCC,
	cin => \inst1|rx_count[10]~54\,
	combout => \inst1|rx_count[11]~55_combout\,
	cout => \inst1|rx_count[11]~56\);

-- Location: FF_X30_Y19_N23
\inst1|rx_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[11]~55_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(11));

-- Location: LCCOMB_X29_Y18_N16
\inst1|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~12_combout\ = (\inst1|rx_count\(9) & (\inst1|rx_count\(11) & (\inst1|rx_count\(10) & \inst1|rx_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(9),
	datab => \inst1|rx_count\(11),
	datac => \inst1|rx_count\(10),
	datad => \inst1|rx_count\(8),
	combout => \inst1|process_0~12_combout\);

-- Location: LCCOMB_X29_Y17_N26
\inst1|tx_count[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[13]~59_combout\ = (\inst1|tx_count\(13) & (\inst1|tx_count[12]~58\ & VCC)) # (!\inst1|tx_count\(13) & (!\inst1|tx_count[12]~58\))
-- \inst1|tx_count[13]~60\ = CARRY((!\inst1|tx_count\(13) & !\inst1|tx_count[12]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(13),
	datad => VCC,
	cin => \inst1|tx_count[12]~58\,
	combout => \inst1|tx_count[13]~59_combout\,
	cout => \inst1|tx_count[13]~60\);

-- Location: FF_X30_Y16_N29
\inst1|tx_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|tx_count[13]~59_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(13));

-- Location: LCCOMB_X29_Y17_N28
\inst1|tx_count[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[14]~61_combout\ = (\inst1|tx_count\(14) & ((GND) # (!\inst1|tx_count[13]~60\))) # (!\inst1|tx_count\(14) & (\inst1|tx_count[13]~60\ $ (GND)))
-- \inst1|tx_count[14]~62\ = CARRY((\inst1|tx_count\(14)) # (!\inst1|tx_count[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(14),
	datad => VCC,
	cin => \inst1|tx_count[13]~60\,
	combout => \inst1|tx_count[14]~61_combout\,
	cout => \inst1|tx_count[14]~62\);

-- Location: FF_X30_Y16_N17
\inst1|tx_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|tx_count[14]~61_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(14));

-- Location: LCCOMB_X29_Y17_N30
\inst1|tx_count[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[15]~63_combout\ = (\inst1|tx_count\(15) & (\inst1|tx_count[14]~62\ & VCC)) # (!\inst1|tx_count\(15) & (!\inst1|tx_count[14]~62\))
-- \inst1|tx_count[15]~64\ = CARRY((!\inst1|tx_count\(15) & !\inst1|tx_count[14]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(15),
	datad => VCC,
	cin => \inst1|tx_count[14]~62\,
	combout => \inst1|tx_count[15]~63_combout\,
	cout => \inst1|tx_count[15]~64\);

-- Location: FF_X30_Y16_N23
\inst1|tx_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|tx_count[15]~63_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(15));

-- Location: LCCOMB_X29_Y16_N0
\inst1|tx_count[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[16]~65_combout\ = (\inst1|tx_count\(16) & ((GND) # (!\inst1|tx_count[15]~64\))) # (!\inst1|tx_count\(16) & (\inst1|tx_count[15]~64\ $ (GND)))
-- \inst1|tx_count[16]~66\ = CARRY((\inst1|tx_count\(16)) # (!\inst1|tx_count[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(16),
	datad => VCC,
	cin => \inst1|tx_count[15]~64\,
	combout => \inst1|tx_count[16]~65_combout\,
	cout => \inst1|tx_count[16]~66\);

-- Location: FF_X30_Y16_N7
\inst1|tx_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|tx_count[16]~65_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(16));

-- Location: LCCOMB_X29_Y16_N2
\inst1|tx_count[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[17]~67_combout\ = (\inst1|tx_count\(17) & (\inst1|tx_count[16]~66\ & VCC)) # (!\inst1|tx_count\(17) & (!\inst1|tx_count[16]~66\))
-- \inst1|tx_count[17]~68\ = CARRY((!\inst1|tx_count\(17) & !\inst1|tx_count[16]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(17),
	datad => VCC,
	cin => \inst1|tx_count[16]~66\,
	combout => \inst1|tx_count[17]~67_combout\,
	cout => \inst1|tx_count[17]~68\);

-- Location: LCCOMB_X30_Y16_N26
\inst1|tx_count[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[17]~feeder_combout\ = \inst1|tx_count[17]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[17]~67_combout\,
	combout => \inst1|tx_count[17]~feeder_combout\);

-- Location: FF_X30_Y16_N27
\inst1|tx_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[17]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(17));

-- Location: LCCOMB_X29_Y16_N4
\inst1|tx_count[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[18]~69_combout\ = (\inst1|tx_count\(18) & ((GND) # (!\inst1|tx_count[17]~68\))) # (!\inst1|tx_count\(18) & (\inst1|tx_count[17]~68\ $ (GND)))
-- \inst1|tx_count[18]~70\ = CARRY((\inst1|tx_count\(18)) # (!\inst1|tx_count[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(18),
	datad => VCC,
	cin => \inst1|tx_count[17]~68\,
	combout => \inst1|tx_count[18]~69_combout\,
	cout => \inst1|tx_count[18]~70\);

-- Location: FF_X29_Y16_N5
\inst1|tx_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[18]~69_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(18));

-- Location: LCCOMB_X29_Y16_N6
\inst1|tx_count[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[19]~71_combout\ = (\inst1|tx_count\(19) & (\inst1|tx_count[18]~70\ & VCC)) # (!\inst1|tx_count\(19) & (!\inst1|tx_count[18]~70\))
-- \inst1|tx_count[19]~72\ = CARRY((!\inst1|tx_count\(19) & !\inst1|tx_count[18]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(19),
	datad => VCC,
	cin => \inst1|tx_count[18]~70\,
	combout => \inst1|tx_count[19]~71_combout\,
	cout => \inst1|tx_count[19]~72\);

-- Location: FF_X30_Y16_N3
\inst1|tx_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|tx_count[19]~71_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(19));

-- Location: LCCOMB_X29_Y16_N8
\inst1|tx_count[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[20]~73_combout\ = (\inst1|tx_count\(20) & ((GND) # (!\inst1|tx_count[19]~72\))) # (!\inst1|tx_count\(20) & (\inst1|tx_count[19]~72\ $ (GND)))
-- \inst1|tx_count[20]~74\ = CARRY((\inst1|tx_count\(20)) # (!\inst1|tx_count[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(20),
	datad => VCC,
	cin => \inst1|tx_count[19]~72\,
	combout => \inst1|tx_count[20]~73_combout\,
	cout => \inst1|tx_count[20]~74\);

-- Location: LCCOMB_X30_Y16_N20
\inst1|tx_count[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[20]~feeder_combout\ = \inst1|tx_count[20]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[20]~73_combout\,
	combout => \inst1|tx_count[20]~feeder_combout\);

-- Location: FF_X30_Y16_N21
\inst1|tx_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[20]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(20));

-- Location: LCCOMB_X29_Y16_N10
\inst1|tx_count[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[21]~75_combout\ = (\inst1|tx_count\(21) & (\inst1|tx_count[20]~74\ & VCC)) # (!\inst1|tx_count\(21) & (!\inst1|tx_count[20]~74\))
-- \inst1|tx_count[21]~76\ = CARRY((!\inst1|tx_count\(21) & !\inst1|tx_count[20]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(21),
	datad => VCC,
	cin => \inst1|tx_count[20]~74\,
	combout => \inst1|tx_count[21]~75_combout\,
	cout => \inst1|tx_count[21]~76\);

-- Location: LCCOMB_X30_Y16_N12
\inst1|tx_count[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[21]~feeder_combout\ = \inst1|tx_count[21]~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[21]~75_combout\,
	combout => \inst1|tx_count[21]~feeder_combout\);

-- Location: FF_X30_Y16_N13
\inst1|tx_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[21]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(21));

-- Location: LCCOMB_X29_Y16_N12
\inst1|tx_count[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[22]~77_combout\ = (\inst1|tx_count\(22) & ((GND) # (!\inst1|tx_count[21]~76\))) # (!\inst1|tx_count\(22) & (\inst1|tx_count[21]~76\ $ (GND)))
-- \inst1|tx_count[22]~78\ = CARRY((\inst1|tx_count\(22)) # (!\inst1|tx_count[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(22),
	datad => VCC,
	cin => \inst1|tx_count[21]~76\,
	combout => \inst1|tx_count[22]~77_combout\,
	cout => \inst1|tx_count[22]~78\);

-- Location: FF_X30_Y16_N15
\inst1|tx_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|tx_count[22]~77_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(22));

-- Location: LCCOMB_X29_Y16_N14
\inst1|tx_count[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[23]~79_combout\ = (\inst1|tx_count\(23) & (\inst1|tx_count[22]~78\ & VCC)) # (!\inst1|tx_count\(23) & (!\inst1|tx_count[22]~78\))
-- \inst1|tx_count[23]~80\ = CARRY((!\inst1|tx_count\(23) & !\inst1|tx_count[22]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(23),
	datad => VCC,
	cin => \inst1|tx_count[22]~78\,
	combout => \inst1|tx_count[23]~79_combout\,
	cout => \inst1|tx_count[23]~80\);

-- Location: LCCOMB_X30_Y16_N24
\inst1|tx_count[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[23]~feeder_combout\ = \inst1|tx_count[23]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[23]~79_combout\,
	combout => \inst1|tx_count[23]~feeder_combout\);

-- Location: FF_X30_Y16_N25
\inst1|tx_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[23]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(23));

-- Location: LCCOMB_X29_Y16_N16
\inst1|tx_count[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[24]~81_combout\ = (\inst1|tx_count\(24) & ((GND) # (!\inst1|tx_count[23]~80\))) # (!\inst1|tx_count\(24) & (\inst1|tx_count[23]~80\ $ (GND)))
-- \inst1|tx_count[24]~82\ = CARRY((\inst1|tx_count\(24)) # (!\inst1|tx_count[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(24),
	datad => VCC,
	cin => \inst1|tx_count[23]~80\,
	combout => \inst1|tx_count[24]~81_combout\,
	cout => \inst1|tx_count[24]~82\);

-- Location: FF_X30_Y16_N31
\inst1|tx_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|tx_count[24]~81_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(24));

-- Location: LCCOMB_X29_Y16_N18
\inst1|tx_count[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[25]~83_combout\ = (\inst1|tx_count\(25) & (\inst1|tx_count[24]~82\ & VCC)) # (!\inst1|tx_count\(25) & (!\inst1|tx_count[24]~82\))
-- \inst1|tx_count[25]~84\ = CARRY((!\inst1|tx_count\(25) & !\inst1|tx_count[24]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(25),
	datad => VCC,
	cin => \inst1|tx_count[24]~82\,
	combout => \inst1|tx_count[25]~83_combout\,
	cout => \inst1|tx_count[25]~84\);

-- Location: LCCOMB_X30_Y16_N18
\inst1|tx_count[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[25]~feeder_combout\ = \inst1|tx_count[25]~83_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[25]~83_combout\,
	combout => \inst1|tx_count[25]~feeder_combout\);

-- Location: FF_X30_Y16_N19
\inst1|tx_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[25]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(25));

-- Location: LCCOMB_X29_Y16_N20
\inst1|tx_count[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[26]~85_combout\ = (\inst1|tx_count\(26) & ((GND) # (!\inst1|tx_count[25]~84\))) # (!\inst1|tx_count\(26) & (\inst1|tx_count[25]~84\ $ (GND)))
-- \inst1|tx_count[26]~86\ = CARRY((\inst1|tx_count\(26)) # (!\inst1|tx_count[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(26),
	datad => VCC,
	cin => \inst1|tx_count[25]~84\,
	combout => \inst1|tx_count[26]~85_combout\,
	cout => \inst1|tx_count[26]~86\);

-- Location: LCCOMB_X30_Y16_N4
\inst1|tx_count[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[26]~feeder_combout\ = \inst1|tx_count[26]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[26]~85_combout\,
	combout => \inst1|tx_count[26]~feeder_combout\);

-- Location: FF_X30_Y16_N5
\inst1|tx_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[26]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(26));

-- Location: LCCOMB_X29_Y16_N22
\inst1|tx_count[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[27]~87_combout\ = (\inst1|tx_count\(27) & (\inst1|tx_count[26]~86\ & VCC)) # (!\inst1|tx_count\(27) & (!\inst1|tx_count[26]~86\))
-- \inst1|tx_count[27]~88\ = CARRY((!\inst1|tx_count\(27) & !\inst1|tx_count[26]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(27),
	datad => VCC,
	cin => \inst1|tx_count[26]~86\,
	combout => \inst1|tx_count[27]~87_combout\,
	cout => \inst1|tx_count[27]~88\);

-- Location: LCCOMB_X30_Y16_N8
\inst1|tx_count[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[27]~feeder_combout\ = \inst1|tx_count[27]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[27]~87_combout\,
	combout => \inst1|tx_count[27]~feeder_combout\);

-- Location: FF_X30_Y16_N9
\inst1|tx_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[27]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(27));

-- Location: LCCOMB_X29_Y16_N24
\inst1|tx_count[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[28]~89_combout\ = (\inst1|tx_count\(28) & ((GND) # (!\inst1|tx_count[27]~88\))) # (!\inst1|tx_count\(28) & (\inst1|tx_count[27]~88\ $ (GND)))
-- \inst1|tx_count[28]~90\ = CARRY((\inst1|tx_count\(28)) # (!\inst1|tx_count[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(28),
	datad => VCC,
	cin => \inst1|tx_count[27]~88\,
	combout => \inst1|tx_count[28]~89_combout\,
	cout => \inst1|tx_count[28]~90\);

-- Location: LCCOMB_X30_Y16_N10
\inst1|tx_count[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[28]~feeder_combout\ = \inst1|tx_count[28]~89_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[28]~89_combout\,
	combout => \inst1|tx_count[28]~feeder_combout\);

-- Location: FF_X30_Y16_N11
\inst1|tx_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[28]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(28));

-- Location: LCCOMB_X29_Y16_N26
\inst1|tx_count[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[29]~91_combout\ = (\inst1|tx_count\(29) & (\inst1|tx_count[28]~90\ & VCC)) # (!\inst1|tx_count\(29) & (!\inst1|tx_count[28]~90\))
-- \inst1|tx_count[29]~92\ = CARRY((!\inst1|tx_count\(29) & !\inst1|tx_count[28]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(29),
	datad => VCC,
	cin => \inst1|tx_count[28]~90\,
	combout => \inst1|tx_count[29]~91_combout\,
	cout => \inst1|tx_count[29]~92\);

-- Location: LCCOMB_X29_Y19_N24
\inst1|tx_count[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[29]~feeder_combout\ = \inst1|tx_count[29]~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|tx_count[29]~91_combout\,
	combout => \inst1|tx_count[29]~feeder_combout\);

-- Location: FF_X29_Y19_N25
\inst1|tx_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[29]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(29));

-- Location: LCCOMB_X29_Y16_N28
\inst1|tx_count[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[30]~93_combout\ = (\inst1|tx_count\(30) & ((GND) # (!\inst1|tx_count[29]~92\))) # (!\inst1|tx_count\(30) & (\inst1|tx_count[29]~92\ $ (GND)))
-- \inst1|tx_count[30]~94\ = CARRY((\inst1|tx_count\(30)) # (!\inst1|tx_count[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tx_count\(30),
	datad => VCC,
	cin => \inst1|tx_count[29]~92\,
	combout => \inst1|tx_count[30]~93_combout\,
	cout => \inst1|tx_count[30]~94\);

-- Location: FF_X29_Y16_N29
\inst1|tx_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|tx_count[30]~93_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(30));

-- Location: LCCOMB_X29_Y16_N30
\inst1|tx_count[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[31]~95_combout\ = \inst1|tx_count\(31) $ (!\inst1|tx_count[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(31),
	cin => \inst1|tx_count[30]~94\,
	combout => \inst1|tx_count[31]~95_combout\);

-- Location: FF_X29_Y19_N19
\inst1|tx_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|tx_count[31]~95_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tx_count\(31));

-- Location: LCCOMB_X29_Y19_N30
\inst1|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~10_combout\ = (!\inst1|rx_count\(2) & (\inst1|tx_count\(29) & (\inst1|tx_count\(30) & \inst1|tx_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(2),
	datab => \inst1|tx_count\(29),
	datac => \inst1|tx_count\(30),
	datad => \inst1|tx_count\(31),
	combout => \inst1|process_0~10_combout\);

-- Location: LCCOMB_X30_Y19_N24
\inst1|rx_count[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[12]~57_combout\ = (\inst1|rx_count\(12) & ((GND) # (!\inst1|rx_count[11]~56\))) # (!\inst1|rx_count\(12) & (\inst1|rx_count[11]~56\ $ (GND)))
-- \inst1|rx_count[12]~58\ = CARRY((\inst1|rx_count\(12)) # (!\inst1|rx_count[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(12),
	datad => VCC,
	cin => \inst1|rx_count[11]~56\,
	combout => \inst1|rx_count[12]~57_combout\,
	cout => \inst1|rx_count[12]~58\);

-- Location: FF_X30_Y18_N27
\inst1|rx_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|rx_count[12]~57_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(12));

-- Location: LCCOMB_X30_Y19_N26
\inst1|rx_count[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[13]~59_combout\ = (\inst1|rx_count\(13) & (\inst1|rx_count[12]~58\ & VCC)) # (!\inst1|rx_count\(13) & (!\inst1|rx_count[12]~58\))
-- \inst1|rx_count[13]~60\ = CARRY((!\inst1|rx_count\(13) & !\inst1|rx_count[12]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(13),
	datad => VCC,
	cin => \inst1|rx_count[12]~58\,
	combout => \inst1|rx_count[13]~59_combout\,
	cout => \inst1|rx_count[13]~60\);

-- Location: FF_X30_Y18_N29
\inst1|rx_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|rx_count[13]~59_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(13));

-- Location: LCCOMB_X30_Y19_N28
\inst1|rx_count[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[14]~61_combout\ = (\inst1|rx_count\(14) & ((GND) # (!\inst1|rx_count[13]~60\))) # (!\inst1|rx_count\(14) & (\inst1|rx_count[13]~60\ $ (GND)))
-- \inst1|rx_count[14]~62\ = CARRY((\inst1|rx_count\(14)) # (!\inst1|rx_count[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(14),
	datad => VCC,
	cin => \inst1|rx_count[13]~60\,
	combout => \inst1|rx_count[14]~61_combout\,
	cout => \inst1|rx_count[14]~62\);

-- Location: FF_X29_Y18_N29
\inst1|rx_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|rx_count[14]~61_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(14));

-- Location: LCCOMB_X30_Y19_N30
\inst1|rx_count[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[15]~63_combout\ = (\inst1|rx_count\(15) & (\inst1|rx_count[14]~62\ & VCC)) # (!\inst1|rx_count\(15) & (!\inst1|rx_count[14]~62\))
-- \inst1|rx_count[15]~64\ = CARRY((!\inst1|rx_count\(15) & !\inst1|rx_count[14]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(15),
	datad => VCC,
	cin => \inst1|rx_count[14]~62\,
	combout => \inst1|rx_count[15]~63_combout\,
	cout => \inst1|rx_count[15]~64\);

-- Location: LCCOMB_X29_Y18_N12
\inst1|rx_count[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[15]~feeder_combout\ = \inst1|rx_count[15]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|rx_count[15]~63_combout\,
	combout => \inst1|rx_count[15]~feeder_combout\);

-- Location: FF_X29_Y18_N13
\inst1|rx_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[15]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(15));

-- Location: LCCOMB_X29_Y18_N28
\inst1|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~13_combout\ = (\inst1|rx_count\(15) & (\inst1|rx_count\(13) & (\inst1|rx_count\(14) & \inst1|rx_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(15),
	datab => \inst1|rx_count\(13),
	datac => \inst1|rx_count\(14),
	datad => \inst1|rx_count\(12),
	combout => \inst1|process_0~13_combout\);

-- Location: LCCOMB_X29_Y18_N8
\inst1|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~14_combout\ = (\inst1|process_0~11_combout\ & (\inst1|process_0~12_combout\ & (\inst1|process_0~10_combout\ & \inst1|process_0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~11_combout\,
	datab => \inst1|process_0~12_combout\,
	datac => \inst1|process_0~10_combout\,
	datad => \inst1|process_0~13_combout\,
	combout => \inst1|process_0~14_combout\);

-- Location: LCCOMB_X30_Y18_N0
\inst1|rx_count[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[16]~65_combout\ = (\inst1|rx_count\(16) & ((GND) # (!\inst1|rx_count[15]~64\))) # (!\inst1|rx_count\(16) & (\inst1|rx_count[15]~64\ $ (GND)))
-- \inst1|rx_count[16]~66\ = CARRY((\inst1|rx_count\(16)) # (!\inst1|rx_count[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(16),
	datad => VCC,
	cin => \inst1|rx_count[15]~64\,
	combout => \inst1|rx_count[16]~65_combout\,
	cout => \inst1|rx_count[16]~66\);

-- Location: FF_X30_Y18_N1
\inst1|rx_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[16]~65_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(16));

-- Location: LCCOMB_X30_Y18_N2
\inst1|rx_count[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[17]~67_combout\ = (\inst1|rx_count\(17) & (\inst1|rx_count[16]~66\ & VCC)) # (!\inst1|rx_count\(17) & (!\inst1|rx_count[16]~66\))
-- \inst1|rx_count[17]~68\ = CARRY((!\inst1|rx_count\(17) & !\inst1|rx_count[16]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(17),
	datad => VCC,
	cin => \inst1|rx_count[16]~66\,
	combout => \inst1|rx_count[17]~67_combout\,
	cout => \inst1|rx_count[17]~68\);

-- Location: FF_X30_Y18_N3
\inst1|rx_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[17]~67_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(17));

-- Location: LCCOMB_X30_Y18_N4
\inst1|rx_count[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[18]~69_combout\ = (\inst1|rx_count\(18) & ((GND) # (!\inst1|rx_count[17]~68\))) # (!\inst1|rx_count\(18) & (\inst1|rx_count[17]~68\ $ (GND)))
-- \inst1|rx_count[18]~70\ = CARRY((\inst1|rx_count\(18)) # (!\inst1|rx_count[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(18),
	datad => VCC,
	cin => \inst1|rx_count[17]~68\,
	combout => \inst1|rx_count[18]~69_combout\,
	cout => \inst1|rx_count[18]~70\);

-- Location: FF_X29_Y18_N3
\inst1|rx_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|rx_count[18]~69_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(18));

-- Location: LCCOMB_X30_Y18_N6
\inst1|rx_count[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[19]~71_combout\ = (\inst1|rx_count\(19) & (\inst1|rx_count[18]~70\ & VCC)) # (!\inst1|rx_count\(19) & (!\inst1|rx_count[18]~70\))
-- \inst1|rx_count[19]~72\ = CARRY((!\inst1|rx_count\(19) & !\inst1|rx_count[18]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(19),
	datad => VCC,
	cin => \inst1|rx_count[18]~70\,
	combout => \inst1|rx_count[19]~71_combout\,
	cout => \inst1|rx_count[19]~72\);

-- Location: FF_X30_Y18_N7
\inst1|rx_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[19]~71_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(19));

-- Location: LCCOMB_X30_Y18_N8
\inst1|rx_count[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[20]~73_combout\ = (\inst1|rx_count\(20) & ((GND) # (!\inst1|rx_count[19]~72\))) # (!\inst1|rx_count\(20) & (\inst1|rx_count[19]~72\ $ (GND)))
-- \inst1|rx_count[20]~74\ = CARRY((\inst1|rx_count\(20)) # (!\inst1|rx_count[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(20),
	datad => VCC,
	cin => \inst1|rx_count[19]~72\,
	combout => \inst1|rx_count[20]~73_combout\,
	cout => \inst1|rx_count[20]~74\);

-- Location: FF_X30_Y18_N9
\inst1|rx_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[20]~73_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(20));

-- Location: LCCOMB_X30_Y18_N10
\inst1|rx_count[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[21]~75_combout\ = (\inst1|rx_count\(21) & (\inst1|rx_count[20]~74\ & VCC)) # (!\inst1|rx_count\(21) & (!\inst1|rx_count[20]~74\))
-- \inst1|rx_count[21]~76\ = CARRY((!\inst1|rx_count\(21) & !\inst1|rx_count[20]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(21),
	datad => VCC,
	cin => \inst1|rx_count[20]~74\,
	combout => \inst1|rx_count[21]~75_combout\,
	cout => \inst1|rx_count[21]~76\);

-- Location: FF_X30_Y18_N11
\inst1|rx_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[21]~75_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(21));

-- Location: LCCOMB_X30_Y18_N12
\inst1|rx_count[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[22]~77_combout\ = (\inst1|rx_count\(22) & ((GND) # (!\inst1|rx_count[21]~76\))) # (!\inst1|rx_count\(22) & (\inst1|rx_count[21]~76\ $ (GND)))
-- \inst1|rx_count[22]~78\ = CARRY((\inst1|rx_count\(22)) # (!\inst1|rx_count[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(22),
	datad => VCC,
	cin => \inst1|rx_count[21]~76\,
	combout => \inst1|rx_count[22]~77_combout\,
	cout => \inst1|rx_count[22]~78\);

-- Location: FF_X29_Y18_N27
\inst1|rx_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|rx_count[22]~77_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(22));

-- Location: LCCOMB_X30_Y18_N14
\inst1|rx_count[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[23]~79_combout\ = (\inst1|rx_count\(23) & (\inst1|rx_count[22]~78\ & VCC)) # (!\inst1|rx_count\(23) & (!\inst1|rx_count[22]~78\))
-- \inst1|rx_count[23]~80\ = CARRY((!\inst1|rx_count\(23) & !\inst1|rx_count[22]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(23),
	datad => VCC,
	cin => \inst1|rx_count[22]~78\,
	combout => \inst1|rx_count[23]~79_combout\,
	cout => \inst1|rx_count[23]~80\);

-- Location: FF_X30_Y18_N15
\inst1|rx_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[23]~79_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(23));

-- Location: LCCOMB_X29_Y18_N26
\inst1|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~16_combout\ = (\inst1|rx_count\(20) & (\inst1|rx_count\(21) & (\inst1|rx_count\(22) & \inst1|rx_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(20),
	datab => \inst1|rx_count\(21),
	datac => \inst1|rx_count\(22),
	datad => \inst1|rx_count\(23),
	combout => \inst1|process_0~16_combout\);

-- Location: LCCOMB_X30_Y18_N16
\inst1|rx_count[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[24]~81_combout\ = (\inst1|rx_count\(24) & ((GND) # (!\inst1|rx_count[23]~80\))) # (!\inst1|rx_count\(24) & (\inst1|rx_count[23]~80\ $ (GND)))
-- \inst1|rx_count[24]~82\ = CARRY((\inst1|rx_count\(24)) # (!\inst1|rx_count[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(24),
	datad => VCC,
	cin => \inst1|rx_count[23]~80\,
	combout => \inst1|rx_count[24]~81_combout\,
	cout => \inst1|rx_count[24]~82\);

-- Location: FF_X30_Y18_N17
\inst1|rx_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[24]~81_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(24));

-- Location: LCCOMB_X30_Y18_N18
\inst1|rx_count[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[25]~83_combout\ = (\inst1|rx_count\(25) & (\inst1|rx_count[24]~82\ & VCC)) # (!\inst1|rx_count\(25) & (!\inst1|rx_count[24]~82\))
-- \inst1|rx_count[25]~84\ = CARRY((!\inst1|rx_count\(25) & !\inst1|rx_count[24]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(25),
	datad => VCC,
	cin => \inst1|rx_count[24]~82\,
	combout => \inst1|rx_count[25]~83_combout\,
	cout => \inst1|rx_count[25]~84\);

-- Location: FF_X30_Y18_N19
\inst1|rx_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[25]~83_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(25));

-- Location: LCCOMB_X30_Y18_N20
\inst1|rx_count[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[26]~85_combout\ = (\inst1|rx_count\(26) & ((GND) # (!\inst1|rx_count[25]~84\))) # (!\inst1|rx_count\(26) & (\inst1|rx_count[25]~84\ $ (GND)))
-- \inst1|rx_count[26]~86\ = CARRY((\inst1|rx_count\(26)) # (!\inst1|rx_count[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(26),
	datad => VCC,
	cin => \inst1|rx_count[25]~84\,
	combout => \inst1|rx_count[26]~85_combout\,
	cout => \inst1|rx_count[26]~86\);

-- Location: FF_X29_Y18_N15
\inst1|rx_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|rx_count[26]~85_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(26));

-- Location: LCCOMB_X30_Y18_N22
\inst1|rx_count[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[27]~87_combout\ = (\inst1|rx_count\(27) & (\inst1|rx_count[26]~86\ & VCC)) # (!\inst1|rx_count\(27) & (!\inst1|rx_count[26]~86\))
-- \inst1|rx_count[27]~88\ = CARRY((!\inst1|rx_count\(27) & !\inst1|rx_count[26]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(27),
	datad => VCC,
	cin => \inst1|rx_count[26]~86\,
	combout => \inst1|rx_count[27]~87_combout\,
	cout => \inst1|rx_count[27]~88\);

-- Location: FF_X30_Y18_N23
\inst1|rx_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[27]~87_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(27));

-- Location: LCCOMB_X30_Y18_N24
\inst1|rx_count[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[28]~89_combout\ = (\inst1|rx_count\(28) & ((GND) # (!\inst1|rx_count[27]~88\))) # (!\inst1|rx_count\(28) & (\inst1|rx_count[27]~88\ $ (GND)))
-- \inst1|rx_count[28]~90\ = CARRY((\inst1|rx_count\(28)) # (!\inst1|rx_count[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(28),
	datad => VCC,
	cin => \inst1|rx_count[27]~88\,
	combout => \inst1|rx_count[28]~89_combout\,
	cout => \inst1|rx_count[28]~90\);

-- Location: LCCOMB_X31_Y18_N26
\inst1|rx_count[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[28]~feeder_combout\ = \inst1|rx_count[28]~89_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|rx_count[28]~89_combout\,
	combout => \inst1|rx_count[28]~feeder_combout\);

-- Location: FF_X31_Y18_N27
\inst1|rx_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[28]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(28));

-- Location: LCCOMB_X30_Y18_N26
\inst1|rx_count[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[29]~91_combout\ = (\inst1|rx_count\(29) & (\inst1|rx_count[28]~90\ & VCC)) # (!\inst1|rx_count\(29) & (!\inst1|rx_count[28]~90\))
-- \inst1|rx_count[29]~92\ = CARRY((!\inst1|rx_count\(29) & !\inst1|rx_count[28]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(29),
	datad => VCC,
	cin => \inst1|rx_count[28]~90\,
	combout => \inst1|rx_count[29]~91_combout\,
	cout => \inst1|rx_count[29]~92\);

-- Location: FF_X31_Y18_N31
\inst1|rx_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|rx_count[29]~91_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	sload => VCC,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(29));

-- Location: LCCOMB_X30_Y18_N28
\inst1|rx_count[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[30]~93_combout\ = (\inst1|rx_count\(30) & ((GND) # (!\inst1|rx_count[29]~92\))) # (!\inst1|rx_count\(30) & (\inst1|rx_count[29]~92\ $ (GND)))
-- \inst1|rx_count[30]~94\ = CARRY((\inst1|rx_count\(30)) # (!\inst1|rx_count[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(30),
	datad => VCC,
	cin => \inst1|rx_count[29]~92\,
	combout => \inst1|rx_count[30]~93_combout\,
	cout => \inst1|rx_count[30]~94\);

-- Location: LCCOMB_X31_Y18_N18
\inst1|rx_count[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[30]~feeder_combout\ = \inst1|rx_count[30]~93_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|rx_count[30]~93_combout\,
	combout => \inst1|rx_count[30]~feeder_combout\);

-- Location: FF_X31_Y18_N19
\inst1|rx_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[30]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(30));

-- Location: LCCOMB_X30_Y18_N30
\inst1|rx_count[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[31]~95_combout\ = \inst1|rx_count[30]~94\ $ (!\inst1|rx_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|rx_count\(31),
	cin => \inst1|rx_count[30]~94\,
	combout => \inst1|rx_count[31]~95_combout\);

-- Location: LCCOMB_X31_Y18_N28
\inst1|rx_count[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[31]~feeder_combout\ = \inst1|rx_count[31]~95_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|rx_count[31]~95_combout\,
	combout => \inst1|rx_count[31]~feeder_combout\);

-- Location: FF_X31_Y18_N29
\inst1|rx_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[31]~feeder_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(31));

-- Location: LCCOMB_X31_Y18_N6
\inst1|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~18_combout\ = (\inst1|rx_count\(28) & (\inst1|rx_count\(30) & (\inst1|rx_count\(29) & \inst1|rx_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(28),
	datab => \inst1|rx_count\(30),
	datac => \inst1|rx_count\(29),
	datad => \inst1|rx_count\(31),
	combout => \inst1|process_0~18_combout\);

-- Location: LCCOMB_X29_Y18_N14
\inst1|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~17_combout\ = (\inst1|rx_count\(27) & (\inst1|rx_count\(24) & (\inst1|rx_count\(26) & \inst1|rx_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(27),
	datab => \inst1|rx_count\(24),
	datac => \inst1|rx_count\(26),
	datad => \inst1|rx_count\(25),
	combout => \inst1|process_0~17_combout\);

-- Location: LCCOMB_X29_Y18_N2
\inst1|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~15_combout\ = (\inst1|rx_count\(16) & (\inst1|rx_count\(19) & (\inst1|rx_count\(18) & \inst1|rx_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(16),
	datab => \inst1|rx_count\(19),
	datac => \inst1|rx_count\(18),
	datad => \inst1|rx_count\(17),
	combout => \inst1|process_0~15_combout\);

-- Location: LCCOMB_X29_Y18_N22
\inst1|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~19_combout\ = (\inst1|process_0~16_combout\ & (\inst1|process_0~18_combout\ & (\inst1|process_0~17_combout\ & \inst1|process_0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~16_combout\,
	datab => \inst1|process_0~18_combout\,
	datac => \inst1|process_0~17_combout\,
	datad => \inst1|process_0~15_combout\,
	combout => \inst1|process_0~19_combout\);

-- Location: LCCOMB_X30_Y16_N14
\inst1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~7_combout\ = (\inst1|tx_count\(24) & (\inst1|tx_count\(23) & (\inst1|tx_count\(22) & \inst1|tx_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(24),
	datab => \inst1|tx_count\(23),
	datac => \inst1|tx_count\(22),
	datad => \inst1|tx_count\(21),
	combout => \inst1|process_0~7_combout\);

-- Location: LCCOMB_X30_Y16_N0
\inst1|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~8_combout\ = (\inst1|tx_count\(28) & (\inst1|tx_count\(27) & (\inst1|tx_count\(26) & \inst1|tx_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(28),
	datab => \inst1|tx_count\(27),
	datac => \inst1|tx_count\(26),
	datad => \inst1|tx_count\(25),
	combout => \inst1|process_0~8_combout\);

-- Location: LCCOMB_X30_Y16_N22
\inst1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = (\inst1|tx_count\(16) & (\inst1|tx_count\(14) & (\inst1|tx_count\(15) & \inst1|tx_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(16),
	datab => \inst1|tx_count\(14),
	datac => \inst1|tx_count\(15),
	datad => \inst1|tx_count\(13),
	combout => \inst1|process_0~5_combout\);

-- Location: LCCOMB_X30_Y16_N2
\inst1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = (\inst1|tx_count\(17) & (\inst1|tx_count\(18) & (\inst1|tx_count\(19) & \inst1|tx_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(17),
	datab => \inst1|tx_count\(18),
	datac => \inst1|tx_count\(19),
	datad => \inst1|tx_count\(20),
	combout => \inst1|process_0~6_combout\);

-- Location: LCCOMB_X29_Y18_N0
\inst1|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~9_combout\ = (\inst1|process_0~7_combout\ & (\inst1|process_0~8_combout\ & (\inst1|process_0~5_combout\ & \inst1|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~7_combout\,
	datab => \inst1|process_0~8_combout\,
	datac => \inst1|process_0~5_combout\,
	datad => \inst1|process_0~6_combout\,
	combout => \inst1|process_0~9_combout\);

-- Location: LCCOMB_X29_Y18_N30
\inst1|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~20_combout\ = (\inst1|process_0~4_combout\ & (\inst1|process_0~14_combout\ & (\inst1|process_0~19_combout\ & \inst1|process_0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~4_combout\,
	datab => \inst1|process_0~14_combout\,
	datac => \inst1|process_0~19_combout\,
	datad => \inst1|process_0~9_combout\,
	combout => \inst1|process_0~20_combout\);

-- Location: LCCOMB_X52_Y17_N6
\inst1|tx_count[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tx_count[0]~40_combout\ = ((\inst1|process_0~20_combout\) # ((!\RESET_BUTTON2~input_o\ & !\RESET_BUTTON~input_o\))) # (!\inst2|READY~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|READY~combout\,
	datab => \RESET_BUTTON2~input_o\,
	datac => \RESET_BUTTON~input_o\,
	datad => \inst1|process_0~20_combout\,
	combout => \inst1|tx_count[0]~40_combout\);

-- Location: CLKCTRL_G5
\inst1|tx_count[0]~40clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|tx_count[0]~40clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|tx_count[0]~40clkctrl_outclk\);

-- Location: FF_X29_Y19_N27
\inst1|rx_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[0]~40_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(0));

-- Location: LCCOMB_X30_Y19_N0
\inst1|rx_count[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[1]~32_cout\ = CARRY(!\inst1|rx_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(0),
	datad => VCC,
	cout => \inst1|rx_count[1]~32_cout\);

-- Location: LCCOMB_X30_Y19_N2
\inst1|rx_count[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[1]~33_combout\ = (\inst1|rx_count\(1) & (\inst1|rx_count[1]~32_cout\ $ (GND))) # (!\inst1|rx_count\(1) & (!\inst1|rx_count[1]~32_cout\ & VCC))
-- \inst1|rx_count[1]~34\ = CARRY((\inst1|rx_count\(1) & !\inst1|rx_count[1]~32_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(1),
	datad => VCC,
	cin => \inst1|rx_count[1]~32_cout\,
	combout => \inst1|rx_count[1]~33_combout\,
	cout => \inst1|rx_count[1]~34\);

-- Location: FF_X30_Y19_N3
\inst1|rx_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[1]~33_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(1));

-- Location: LCCOMB_X30_Y19_N4
\inst1|rx_count[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rx_count[2]~35_combout\ = (\inst1|rx_count\(2) & (!\inst1|rx_count[1]~34\)) # (!\inst1|rx_count\(2) & ((\inst1|rx_count[1]~34\) # (GND)))
-- \inst1|rx_count[2]~36\ = CARRY((!\inst1|rx_count[1]~34\) # (!\inst1|rx_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rx_count\(2),
	datad => VCC,
	cin => \inst1|rx_count[1]~34\,
	combout => \inst1|rx_count[2]~35_combout\,
	cout => \inst1|rx_count[2]~36\);

-- Location: FF_X30_Y19_N5
\inst1|rx_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[2]~35_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(2));

-- Location: FF_X30_Y19_N7
\inst1|rx_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|rx_count[3]~37_combout\,
	clrn => \inst1|ALT_INV_tx_count[0]~40clkctrl_outclk\,
	ena => \inst1|rx_count[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rx_count\(3));

-- Location: LCCOMB_X29_Y19_N20
\inst1|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~0_combout\ = (\inst1|rx_count\(2) & (!\inst1|sclk_pulse~q\ & (\inst2|READY~combout\ & \inst1|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(2),
	datab => \inst1|sclk_pulse~q\,
	datac => \inst2|READY~combout\,
	datad => \inst1|Equal0~10_combout\,
	combout => \inst1|Decoder0~0_combout\);

-- Location: LCCOMB_X28_Y19_N26
\inst1|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~3_combout\ = (\inst1|Decoder0~0_combout\ & (\inst1|rx_count\(1) & \inst1|rx_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datac => \inst1|rx_count\(1),
	datad => \inst1|rx_count\(0),
	combout => \inst1|Decoder0~3_combout\);

-- Location: IOIBUF_X25_Y34_N1
\ADC_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SDAT,
	o => \ADC_SDAT~input_o\);

-- Location: LCCOMB_X28_Y18_N6
\inst1|RX_BUFFER[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX_BUFFER[0]~10_combout\ = (\inst1|rx_count\(3) & ((\inst1|Decoder0~3_combout\ & ((\ADC_SDAT~input_o\))) # (!\inst1|Decoder0~3_combout\ & (\inst1|RX_BUFFER\(0))))) # (!\inst1|rx_count\(3) & (((\inst1|RX_BUFFER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(3),
	datab => \inst1|Decoder0~3_combout\,
	datac => \inst1|RX_BUFFER\(0),
	datad => \ADC_SDAT~input_o\,
	combout => \inst1|RX_BUFFER[0]~10_combout\);

-- Location: LCCOMB_X28_Y1_N28
\inst1|RX[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX[15]~15_combout\ = (\inst1|process_0~20_combout\) # ((!\RESET_BUTTON2~input_o\ & !\RESET_BUTTON~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_BUTTON2~input_o\,
	datac => \RESET_BUTTON~input_o\,
	datad => \inst1|process_0~20_combout\,
	combout => \inst1|RX[15]~15_combout\);

-- Location: CLKCTRL_G15
\inst1|RX[15]~15clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|RX[15]~15clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|RX[15]~15clkctrl_outclk\);

-- Location: FF_X28_Y18_N7
\inst1|RX_BUFFER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX_BUFFER[0]~10_combout\,
	clrn => \inst1|ALT_INV_RX[15]~15clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RX_BUFFER\(0));

-- Location: LCCOMB_X28_Y18_N28
\inst1|RX[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX[0]~13_combout\ = (\inst1|RX_BUFFER\(0) & \inst1|process_0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RX_BUFFER\(0),
	datad => \inst1|process_0~20_combout\,
	combout => \inst1|RX[0]~13_combout\);

-- Location: LCCOMB_X28_Y18_N2
\inst1|RX[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX\(0) = (GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & ((\inst1|RX[0]~13_combout\))) # (!GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & (\inst1|RX\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RX\(0),
	datac => \inst1|RX[0]~13_combout\,
	datad => \inst1|RX[15]~15clkctrl_outclk\,
	combout => \inst1|RX\(0));

-- Location: FF_X28_Y18_N3
\inst8|RX_BUFFER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX\(0),
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|RX_BUFFER\(0));

-- Location: LCCOMB_X28_Y19_N2
\inst1|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~1_combout\ = (\inst1|Decoder0~0_combout\ & (!\inst1|rx_count\(1) & \inst1|rx_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datac => \inst1|rx_count\(1),
	datad => \inst1|rx_count\(0),
	combout => \inst1|Decoder0~1_combout\);

-- Location: LCCOMB_X28_Y18_N26
\inst1|RX_BUFFER[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX_BUFFER[2]~8_combout\ = (\inst1|rx_count\(3) & ((\inst1|Decoder0~1_combout\ & ((\ADC_SDAT~input_o\))) # (!\inst1|Decoder0~1_combout\ & (\inst1|RX_BUFFER\(2))))) # (!\inst1|rx_count\(3) & (((\inst1|RX_BUFFER\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(3),
	datab => \inst1|Decoder0~1_combout\,
	datac => \inst1|RX_BUFFER\(2),
	datad => \ADC_SDAT~input_o\,
	combout => \inst1|RX_BUFFER[2]~8_combout\);

-- Location: FF_X28_Y18_N27
\inst1|RX_BUFFER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX_BUFFER[2]~8_combout\,
	clrn => \inst1|ALT_INV_RX[15]~15clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RX_BUFFER\(2));

-- Location: LCCOMB_X25_Y18_N12
\inst1|RX[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX[2]~10_combout\ = (\inst1|RX_BUFFER\(2) & \inst1|process_0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RX_BUFFER\(2),
	datad => \inst1|process_0~20_combout\,
	combout => \inst1|RX[2]~10_combout\);

-- Location: LCCOMB_X25_Y18_N24
\inst1|RX[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX\(2) = (GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & ((\inst1|RX[2]~10_combout\))) # (!GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & (\inst1|RX\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RX\(2),
	datac => \inst1|RX[2]~10_combout\,
	datad => \inst1|RX[15]~15clkctrl_outclk\,
	combout => \inst1|RX\(2));

-- Location: FF_X25_Y18_N25
\inst8|RX_BUFFER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX\(2),
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|RX_BUFFER\(2));

-- Location: LCCOMB_X28_Y19_N28
\inst1|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~2_combout\ = (\inst1|Decoder0~0_combout\ & (\inst1|rx_count\(1) & !\inst1|rx_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~0_combout\,
	datac => \inst1|rx_count\(1),
	datad => \inst1|rx_count\(0),
	combout => \inst1|Decoder0~2_combout\);

-- Location: LCCOMB_X28_Y18_N16
\inst1|RX_BUFFER[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX_BUFFER[1]~9_combout\ = (\inst1|rx_count\(3) & ((\inst1|Decoder0~2_combout\ & ((\ADC_SDAT~input_o\))) # (!\inst1|Decoder0~2_combout\ & (\inst1|RX_BUFFER\(1))))) # (!\inst1|rx_count\(3) & (((\inst1|RX_BUFFER\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(3),
	datab => \inst1|Decoder0~2_combout\,
	datac => \inst1|RX_BUFFER\(1),
	datad => \ADC_SDAT~input_o\,
	combout => \inst1|RX_BUFFER[1]~9_combout\);

-- Location: FF_X28_Y18_N17
\inst1|RX_BUFFER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX_BUFFER[1]~9_combout\,
	clrn => \inst1|ALT_INV_RX[15]~15clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RX_BUFFER\(1));

-- Location: LCCOMB_X29_Y18_N10
\inst1|RX[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX[1]~11_combout\ = (\inst1|process_0~4_combout\ & \inst1|RX_BUFFER\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~4_combout\,
	datac => \inst1|RX_BUFFER\(1),
	combout => \inst1|RX[1]~11_combout\);

-- Location: LCCOMB_X29_Y18_N24
\inst1|RX[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX[1]~12_combout\ = (\inst1|RX[1]~11_combout\ & (\inst1|process_0~9_combout\ & (\inst1|process_0~19_combout\ & \inst1|process_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RX[1]~11_combout\,
	datab => \inst1|process_0~9_combout\,
	datac => \inst1|process_0~19_combout\,
	datad => \inst1|process_0~14_combout\,
	combout => \inst1|RX[1]~12_combout\);

-- Location: LCCOMB_X29_Y18_N4
\inst1|RX[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX\(1) = (GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & (\inst1|RX[1]~12_combout\)) # (!GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & ((\inst1|RX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RX[1]~12_combout\,
	datac => \inst1|RX\(1),
	datad => \inst1|RX[15]~15clkctrl_outclk\,
	combout => \inst1|RX\(1));

-- Location: FF_X29_Y18_N5
\inst8|RX_BUFFER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX\(1),
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|RX_BUFFER\(1));

-- Location: LCCOMB_X29_Y19_N12
\inst1|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~4_combout\ = (!\inst1|rx_count\(2) & (\inst1|rx_count[27]~39_combout\ & (\inst2|READY~combout\ & \inst1|rx_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(2),
	datab => \inst1|rx_count[27]~39_combout\,
	datac => \inst2|READY~combout\,
	datad => \inst1|rx_count\(3),
	combout => \inst1|Decoder0~4_combout\);

-- Location: LCCOMB_X28_Y19_N16
\inst1|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~5_combout\ = (\inst1|Decoder0~4_combout\ & \inst1|rx_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Decoder0~4_combout\,
	datad => \inst1|rx_count\(0),
	combout => \inst1|Decoder0~5_combout\);

-- Location: LCCOMB_X28_Y19_N12
\inst1|RX_BUFFER[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX_BUFFER[4]~6_combout\ = (\inst1|rx_count\(1) & ((\inst1|Decoder0~5_combout\ & (\ADC_SDAT~input_o\)) # (!\inst1|Decoder0~5_combout\ & ((\inst1|RX_BUFFER\(4)))))) # (!\inst1|rx_count\(1) & (((\inst1|RX_BUFFER\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(1),
	datab => \ADC_SDAT~input_o\,
	datac => \inst1|RX_BUFFER\(4),
	datad => \inst1|Decoder0~5_combout\,
	combout => \inst1|RX_BUFFER[4]~6_combout\);

-- Location: FF_X28_Y19_N13
\inst1|RX_BUFFER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX_BUFFER[4]~6_combout\,
	clrn => \inst1|ALT_INV_RX[15]~15clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RX_BUFFER\(4));

-- Location: LCCOMB_X28_Y19_N22
\inst1|RX[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX[4]~8_combout\ = (\inst1|RX_BUFFER\(4) & \inst1|process_0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RX_BUFFER\(4),
	datad => \inst1|process_0~20_combout\,
	combout => \inst1|RX[4]~8_combout\);

-- Location: LCCOMB_X28_Y19_N10
\inst1|RX[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX\(4) = (GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & (\inst1|RX[4]~8_combout\)) # (!GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & ((\inst1|RX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RX[4]~8_combout\,
	datac => \inst1|RX[15]~15clkctrl_outclk\,
	datad => \inst1|RX\(4),
	combout => \inst1|RX\(4));

-- Location: FF_X28_Y19_N11
\inst8|RX_BUFFER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX\(4),
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|RX_BUFFER\(4));

-- Location: LCCOMB_X29_Y19_N22
\inst1|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~7_combout\ = (!\inst1|rx_count\(1) & (!\inst1|rx_count\(0) & \inst1|rx_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(1),
	datac => \inst1|rx_count\(0),
	datad => \inst1|rx_count\(3),
	combout => \inst1|Decoder0~7_combout\);

-- Location: LCCOMB_X29_Y19_N14
\inst1|RX_BUFFER[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX_BUFFER[3]~7_combout\ = (\inst1|Decoder0~7_combout\ & ((\inst1|Decoder0~0_combout\ & (\ADC_SDAT~input_o\)) # (!\inst1|Decoder0~0_combout\ & ((\inst1|RX_BUFFER\(3)))))) # (!\inst1|Decoder0~7_combout\ & (((\inst1|RX_BUFFER\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Decoder0~7_combout\,
	datab => \ADC_SDAT~input_o\,
	datac => \inst1|RX_BUFFER\(3),
	datad => \inst1|Decoder0~0_combout\,
	combout => \inst1|RX_BUFFER[3]~7_combout\);

-- Location: FF_X29_Y19_N15
\inst1|RX_BUFFER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX_BUFFER[3]~7_combout\,
	clrn => \inst1|ALT_INV_RX[15]~15clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RX_BUFFER\(3));

-- Location: LCCOMB_X28_Y19_N4
\inst1|RX[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX[3]~9_combout\ = (\inst1|RX_BUFFER\(3) & \inst1|process_0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|RX_BUFFER\(3),
	datad => \inst1|process_0~20_combout\,
	combout => \inst1|RX[3]~9_combout\);

-- Location: LCCOMB_X28_Y19_N8
\inst1|RX[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX\(3) = (GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & ((\inst1|RX[3]~9_combout\))) # (!GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & (\inst1|RX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RX\(3),
	datac => \inst1|RX[3]~9_combout\,
	datad => \inst1|RX[15]~15clkctrl_outclk\,
	combout => \inst1|RX\(3));

-- Location: FF_X28_Y19_N9
\inst8|RX_BUFFER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX\(3),
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|RX_BUFFER\(3));

-- Location: LCCOMB_X28_Y19_N18
\inst1|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Decoder0~6_combout\ = (\inst1|rx_count\(1) & !\inst1|rx_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|rx_count\(1),
	datad => \inst1|rx_count\(0),
	combout => \inst1|Decoder0~6_combout\);

-- Location: LCCOMB_X28_Y19_N6
\inst1|RX_BUFFER[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX_BUFFER[5]~5_combout\ = (\inst1|Decoder0~4_combout\ & ((\inst1|Decoder0~6_combout\ & (\ADC_SDAT~input_o\)) # (!\inst1|Decoder0~6_combout\ & ((\inst1|RX_BUFFER\(5)))))) # (!\inst1|Decoder0~4_combout\ & (((\inst1|RX_BUFFER\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_SDAT~input_o\,
	datab => \inst1|Decoder0~4_combout\,
	datac => \inst1|RX_BUFFER\(5),
	datad => \inst1|Decoder0~6_combout\,
	combout => \inst1|RX_BUFFER[5]~5_combout\);

-- Location: FF_X28_Y19_N7
\inst1|RX_BUFFER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX_BUFFER[5]~5_combout\,
	clrn => \inst1|ALT_INV_RX[15]~15clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RX_BUFFER\(5));

-- Location: LCCOMB_X29_Y18_N20
\inst1|RX[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX[5]~7_combout\ = (\inst1|process_0~20_combout\ & \inst1|RX_BUFFER\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~20_combout\,
	datad => \inst1|RX_BUFFER\(5),
	combout => \inst1|RX[5]~7_combout\);

-- Location: LCCOMB_X29_Y18_N18
\inst1|RX[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX\(5) = (GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & (\inst1|RX[5]~7_combout\)) # (!GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & ((\inst1|RX\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RX[5]~7_combout\,
	datab => \inst1|RX\(5),
	datad => \inst1|RX[15]~15clkctrl_outclk\,
	combout => \inst1|RX\(5));

-- Location: FF_X29_Y18_N19
\inst8|RX_BUFFER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX\(5),
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|RX_BUFFER\(5));

-- Location: LCCOMB_X28_Y19_N14
\inst1|RX_BUFFER[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX_BUFFER[6]~4_combout\ = (\inst1|rx_count\(1) & (((\inst1|RX_BUFFER\(6))))) # (!\inst1|rx_count\(1) & ((\inst1|Decoder0~5_combout\ & (\ADC_SDAT~input_o\)) # (!\inst1|Decoder0~5_combout\ & ((\inst1|RX_BUFFER\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(1),
	datab => \ADC_SDAT~input_o\,
	datac => \inst1|RX_BUFFER\(6),
	datad => \inst1|Decoder0~5_combout\,
	combout => \inst1|RX_BUFFER[6]~4_combout\);

-- Location: FF_X28_Y19_N15
\inst1|RX_BUFFER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX_BUFFER[6]~4_combout\,
	clrn => \inst1|ALT_INV_RX[15]~15clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RX_BUFFER\(6));

-- Location: LCCOMB_X28_Y19_N24
\inst1|RX[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX[6]~6_combout\ = (\inst1|RX_BUFFER\(6) & \inst1|process_0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RX_BUFFER\(6),
	datad => \inst1|process_0~20_combout\,
	combout => \inst1|RX[6]~6_combout\);

-- Location: LCCOMB_X28_Y19_N0
\inst1|RX[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX\(6) = (GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & ((\inst1|RX[6]~6_combout\))) # (!GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & (\inst1|RX\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RX\(6),
	datac => \inst1|RX[6]~6_combout\,
	datad => \inst1|RX[15]~15clkctrl_outclk\,
	combout => \inst1|RX\(6));

-- Location: FF_X28_Y19_N1
\inst8|RX_BUFFER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX\(6),
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|RX_BUFFER\(6));

-- Location: LCCOMB_X28_Y19_N30
\inst8|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~4_combout\ = (\inst8|RX_BUFFER\(4)) # ((\inst8|RX_BUFFER\(3)) # ((\inst8|RX_BUFFER\(5)) # (\inst8|RX_BUFFER\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|RX_BUFFER\(4),
	datab => \inst8|RX_BUFFER\(3),
	datac => \inst8|RX_BUFFER\(5),
	datad => \inst8|RX_BUFFER\(6),
	combout => \inst8|process_0~4_combout\);

-- Location: LCCOMB_X25_Y18_N26
\inst8|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~5_combout\ = (\inst8|RX_BUFFER\(0)) # ((\inst8|RX_BUFFER\(2)) # ((\inst8|RX_BUFFER\(1)) # (\inst8|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|RX_BUFFER\(0),
	datab => \inst8|RX_BUFFER\(2),
	datac => \inst8|RX_BUFFER\(1),
	datad => \inst8|process_0~4_combout\,
	combout => \inst8|process_0~5_combout\);

-- Location: LCCOMB_X28_Y18_N0
\inst1|RX_BUFFER[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX_BUFFER[9]~1_combout\ = (\inst1|rx_count\(3) & (((\inst1|RX_BUFFER\(9))))) # (!\inst1|rx_count\(3) & ((\inst1|Decoder0~2_combout\ & ((\ADC_SDAT~input_o\))) # (!\inst1|Decoder0~2_combout\ & (\inst1|RX_BUFFER\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(3),
	datab => \inst1|Decoder0~2_combout\,
	datac => \inst1|RX_BUFFER\(9),
	datad => \ADC_SDAT~input_o\,
	combout => \inst1|RX_BUFFER[9]~1_combout\);

-- Location: FF_X28_Y18_N1
\inst1|RX_BUFFER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX_BUFFER[9]~1_combout\,
	clrn => \inst1|ALT_INV_RX[15]~15clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RX_BUFFER\(9));

-- Location: LCCOMB_X28_Y18_N30
\inst1|RX[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX[9]~3_combout\ = (\inst1|RX_BUFFER\(9) & \inst1|process_0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|RX_BUFFER\(9),
	datad => \inst1|process_0~20_combout\,
	combout => \inst1|RX[9]~3_combout\);

-- Location: LCCOMB_X28_Y18_N20
\inst1|RX[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX\(9) = (GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & ((\inst1|RX[9]~3_combout\))) # (!GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & (\inst1|RX\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RX\(9),
	datac => \inst1|RX[9]~3_combout\,
	datad => \inst1|RX[15]~15clkctrl_outclk\,
	combout => \inst1|RX\(9));

-- Location: FF_X28_Y18_N21
\inst8|RX_BUFFER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX\(9),
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|RX_BUFFER\(9));

-- Location: LCCOMB_X28_Y18_N12
\inst1|RX_BUFFER[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX_BUFFER[10]~0_combout\ = (\inst1|rx_count\(3) & (((\inst1|RX_BUFFER\(10))))) # (!\inst1|rx_count\(3) & ((\inst1|Decoder0~1_combout\ & ((\ADC_SDAT~input_o\))) # (!\inst1|Decoder0~1_combout\ & (\inst1|RX_BUFFER\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(3),
	datab => \inst1|Decoder0~1_combout\,
	datac => \inst1|RX_BUFFER\(10),
	datad => \ADC_SDAT~input_o\,
	combout => \inst1|RX_BUFFER[10]~0_combout\);

-- Location: FF_X28_Y18_N13
\inst1|RX_BUFFER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX_BUFFER[10]~0_combout\,
	clrn => \inst1|ALT_INV_RX[15]~15clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RX_BUFFER\(10));

-- Location: LCCOMB_X28_Y18_N18
\inst1|RX[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX[10]~2_combout\ = (\inst1|process_0~20_combout\ & \inst1|RX_BUFFER\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~20_combout\,
	datad => \inst1|RX_BUFFER\(10),
	combout => \inst1|RX[10]~2_combout\);

-- Location: LCCOMB_X27_Y18_N4
\inst1|RX[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX\(10) = (GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & (\inst1|RX[10]~2_combout\)) # (!GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & ((\inst1|RX\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RX[10]~2_combout\,
	datac => \inst1|RX\(10),
	datad => \inst1|RX[15]~15clkctrl_outclk\,
	combout => \inst1|RX\(10));

-- Location: FF_X27_Y18_N5
\inst8|RX_BUFFER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX\(10),
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|RX_BUFFER\(10));

-- Location: LCCOMB_X28_Y18_N8
\inst1|RX_BUFFER[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX_BUFFER[8]~2_combout\ = (\inst1|rx_count\(3) & (((\inst1|RX_BUFFER\(8))))) # (!\inst1|rx_count\(3) & ((\inst1|Decoder0~3_combout\ & ((\ADC_SDAT~input_o\))) # (!\inst1|Decoder0~3_combout\ & (\inst1|RX_BUFFER\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(3),
	datab => \inst1|Decoder0~3_combout\,
	datac => \inst1|RX_BUFFER\(8),
	datad => \ADC_SDAT~input_o\,
	combout => \inst1|RX_BUFFER[8]~2_combout\);

-- Location: FF_X28_Y18_N9
\inst1|RX_BUFFER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX_BUFFER[8]~2_combout\,
	clrn => \inst1|ALT_INV_RX[15]~15clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RX_BUFFER\(8));

-- Location: LCCOMB_X28_Y18_N22
\inst1|RX[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX[8]~4_combout\ = (\inst1|RX_BUFFER\(8) & \inst1|process_0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RX_BUFFER\(8),
	datad => \inst1|process_0~20_combout\,
	combout => \inst1|RX[8]~4_combout\);

-- Location: LCCOMB_X28_Y18_N10
\inst1|RX[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX\(8) = (GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & ((\inst1|RX[8]~4_combout\))) # (!GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & (\inst1|RX\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RX\(8),
	datac => \inst1|RX[8]~4_combout\,
	datad => \inst1|RX[15]~15clkctrl_outclk\,
	combout => \inst1|RX\(8));

-- Location: FF_X28_Y18_N11
\inst8|RX_BUFFER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX\(8),
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|RX_BUFFER\(8));

-- Location: LCCOMB_X29_Y19_N18
\inst1|process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~21_combout\ = (!\inst1|rx_count\(0) & !\inst1|rx_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(0),
	datad => \inst1|rx_count\(1),
	combout => \inst1|process_0~21_combout\);

-- Location: LCCOMB_X28_Y19_N20
\inst1|RX_BUFFER[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX_BUFFER[7]~3_combout\ = (\inst1|process_0~21_combout\ & ((\inst1|Decoder0~4_combout\ & ((\ADC_SDAT~input_o\))) # (!\inst1|Decoder0~4_combout\ & (\inst1|RX_BUFFER\(7))))) # (!\inst1|process_0~21_combout\ & (((\inst1|RX_BUFFER\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~21_combout\,
	datab => \inst1|Decoder0~4_combout\,
	datac => \inst1|RX_BUFFER\(7),
	datad => \ADC_SDAT~input_o\,
	combout => \inst1|RX_BUFFER[7]~3_combout\);

-- Location: FF_X28_Y19_N21
\inst1|RX_BUFFER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX_BUFFER[7]~3_combout\,
	clrn => \inst1|ALT_INV_RX[15]~15clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RX_BUFFER\(7));

-- Location: LCCOMB_X28_Y18_N24
\inst1|RX[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX[7]~5_combout\ = (\inst1|RX_BUFFER\(7) & \inst1|process_0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RX_BUFFER\(7),
	datad => \inst1|process_0~20_combout\,
	combout => \inst1|RX[7]~5_combout\);

-- Location: LCCOMB_X28_Y18_N4
\inst1|RX[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX\(7) = (GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & ((\inst1|RX[7]~5_combout\))) # (!GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & (\inst1|RX\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RX\(7),
	datac => \inst1|RX[7]~5_combout\,
	datad => \inst1|RX[15]~15clkctrl_outclk\,
	combout => \inst1|RX\(7));

-- Location: FF_X28_Y18_N5
\inst8|RX_BUFFER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX\(7),
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|RX_BUFFER\(7));

-- Location: LCCOMB_X27_Y18_N30
\inst8|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~3_combout\ = (\inst8|RX_BUFFER\(9)) # ((\inst8|RX_BUFFER\(10)) # ((\inst8|RX_BUFFER\(8)) # (\inst8|RX_BUFFER\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|RX_BUFFER\(9),
	datab => \inst8|RX_BUFFER\(10),
	datac => \inst8|RX_BUFFER\(8),
	datad => \inst8|RX_BUFFER\(7),
	combout => \inst8|process_0~3_combout\);

-- Location: LCCOMB_X29_Y19_N10
\inst1|process_0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~22_combout\ = (!\inst1|rx_count\(1) & (!\inst1|rx_count\(0) & !\inst1|rx_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rx_count\(1),
	datac => \inst1|rx_count\(0),
	datad => \inst1|rx_count\(3),
	combout => \inst1|process_0~22_combout\);

-- Location: LCCOMB_X29_Y19_N2
\inst1|RX_BUFFER[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX_BUFFER[11]~11_combout\ = (\inst1|process_0~22_combout\ & ((\inst1|Decoder0~0_combout\ & (\ADC_SDAT~input_o\)) # (!\inst1|Decoder0~0_combout\ & ((\inst1|RX_BUFFER\(11)))))) # (!\inst1|process_0~22_combout\ & (((\inst1|RX_BUFFER\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~22_combout\,
	datab => \ADC_SDAT~input_o\,
	datac => \inst1|RX_BUFFER\(11),
	datad => \inst1|Decoder0~0_combout\,
	combout => \inst1|RX_BUFFER[11]~11_combout\);

-- Location: FF_X29_Y19_N3
\inst1|RX_BUFFER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX_BUFFER[11]~11_combout\,
	clrn => \inst1|ALT_INV_RX[15]~15clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RX_BUFFER\(11));

-- Location: LCCOMB_X28_Y18_N14
\inst1|RX[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX[11]~14_combout\ = (\inst1|process_0~20_combout\ & \inst1|RX_BUFFER\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~20_combout\,
	datab => \inst1|RX_BUFFER\(11),
	combout => \inst1|RX[11]~14_combout\);

-- Location: LCCOMB_X27_Y18_N8
\inst1|RX[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RX\(11) = (GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & (\inst1|RX[11]~14_combout\)) # (!GLOBAL(\inst1|RX[15]~15clkctrl_outclk\) & ((\inst1|RX\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RX[11]~14_combout\,
	datac => \inst1|RX\(11),
	datad => \inst1|RX[15]~15clkctrl_outclk\,
	combout => \inst1|RX\(11));

-- Location: FF_X27_Y18_N9
\inst8|RX_BUFFER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|RX\(11),
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|RX_BUFFER\(11));

-- Location: LCCOMB_X25_Y18_N28
\inst8|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~6_combout\ = (\inst8|RX_BUFFER\(11)) # ((\inst8|midpoint_count\(1) & \inst8|midpoint_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(1),
	datac => \inst8|RX_BUFFER\(11),
	datad => \inst8|midpoint_count\(0),
	combout => \inst8|process_0~6_combout\);

-- Location: LCCOMB_X25_Y18_N22
\inst8|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~7_combout\ = (\inst8|midpoint_count\(0) & (((!\inst8|process_0~6_combout\)))) # (!\inst8|midpoint_count\(0) & (\inst8|process_0~6_combout\ & ((\inst8|process_0~5_combout\) # (\inst8|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~5_combout\,
	datab => \inst8|midpoint_count\(0),
	datac => \inst8|process_0~3_combout\,
	datad => \inst8|process_0~6_combout\,
	combout => \inst8|process_0~7_combout\);

-- Location: LCCOMB_X28_Y27_N16
\inst8|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~2_combout\ = (!\inst8|midpoint_count\(7) & (!\inst8|midpoint_count\(6) & (!\inst8|midpoint_count\(4) & !\inst8|midpoint_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|midpoint_count\(7),
	datab => \inst8|midpoint_count\(6),
	datac => \inst8|midpoint_count\(4),
	datad => \inst8|midpoint_count\(5),
	combout => \inst8|process_0~2_combout\);

-- Location: LCCOMB_X28_Y27_N24
\inst8|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~16_combout\ = (\inst8|process_0~15_combout\ & (\inst8|process_0~12_combout\ & (\inst8|process_0~7_combout\ & \inst8|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~15_combout\,
	datab => \inst8|process_0~12_combout\,
	datac => \inst8|process_0~7_combout\,
	datad => \inst8|process_0~2_combout\,
	combout => \inst8|process_0~16_combout\);

-- Location: LCCOMB_X28_Y29_N28
\inst8|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~1_combout\ = (!\inst8|Add0~14_combout\ & (!\inst8|Add0~18_combout\ & (!\inst8|Add0~16_combout\ & !\inst8|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~14_combout\,
	datab => \inst8|Add0~18_combout\,
	datac => \inst8|Add0~16_combout\,
	datad => \inst8|Add0~12_combout\,
	combout => \inst8|Equal5~1_combout\);

-- Location: LCCOMB_X28_Y28_N18
\inst8|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~0_combout\ = (!\inst8|Add0~4_combout\ & (!\inst8|Add0~10_combout\ & (!\inst8|Add0~6_combout\ & !\inst8|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~4_combout\,
	datab => \inst8|Add0~10_combout\,
	datac => \inst8|Add0~6_combout\,
	datad => \inst8|Add0~8_combout\,
	combout => \inst8|Equal5~0_combout\);

-- Location: LCCOMB_X28_Y29_N30
\inst8|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~2_combout\ = (!\inst8|Add0~24_combout\ & (!\inst8|Add0~20_combout\ & (!\inst8|Add0~26_combout\ & !\inst8|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~24_combout\,
	datab => \inst8|Add0~20_combout\,
	datac => \inst8|Add0~26_combout\,
	datad => \inst8|Add0~22_combout\,
	combout => \inst8|Equal5~2_combout\);

-- Location: LCCOMB_X28_Y28_N28
\inst8|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~3_combout\ = (!\inst8|Add0~34_combout\ & (!\inst8|Add0~28_combout\ & (!\inst8|Add0~30_combout\ & !\inst8|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~34_combout\,
	datab => \inst8|Add0~28_combout\,
	datac => \inst8|Add0~30_combout\,
	datad => \inst8|Add0~32_combout\,
	combout => \inst8|Equal5~3_combout\);

-- Location: LCCOMB_X28_Y28_N26
\inst8|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~4_combout\ = (\inst8|Equal5~1_combout\ & (\inst8|Equal5~0_combout\ & (\inst8|Equal5~2_combout\ & \inst8|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal5~1_combout\,
	datab => \inst8|Equal5~0_combout\,
	datac => \inst8|Equal5~2_combout\,
	datad => \inst8|Equal5~3_combout\,
	combout => \inst8|Equal5~4_combout\);

-- Location: LCCOMB_X28_Y28_N12
\inst8|Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~7_combout\ = (\inst8|Add0~44_combout\) # ((\inst8|Add0~50_combout\) # (\inst8|Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~44_combout\,
	datac => \inst8|Add0~50_combout\,
	datad => \inst8|Add0~62_combout\,
	combout => \inst8|Equal5~7_combout\);

-- Location: LCCOMB_X28_Y28_N22
\inst8|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~6_combout\ = (!\inst8|Add0~54_combout\ & (!\inst8|Add0~56_combout\ & (!\inst8|Add0~58_combout\ & !\inst8|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~54_combout\,
	datab => \inst8|Add0~56_combout\,
	datac => \inst8|Add0~58_combout\,
	datad => \inst8|Add0~52_combout\,
	combout => \inst8|Equal5~6_combout\);

-- Location: LCCOMB_X28_Y28_N16
\inst8|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~5_combout\ = (!\inst8|Add0~42_combout\ & (!\inst8|Add0~36_combout\ & (!\inst8|Add0~38_combout\ & !\inst8|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~42_combout\,
	datab => \inst8|Add0~36_combout\,
	datac => \inst8|Add0~38_combout\,
	datad => \inst8|Add0~40_combout\,
	combout => \inst8|Equal5~5_combout\);

-- Location: LCCOMB_X28_Y28_N10
\inst8|Equal5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~8_combout\ = (!\inst8|Equal5~7_combout\ & (!\inst8|Add0~60_combout\ & (\inst8|Equal5~6_combout\ & \inst8|Equal5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal5~7_combout\,
	datab => \inst8|Add0~60_combout\,
	datac => \inst8|Equal5~6_combout\,
	datad => \inst8|Equal5~5_combout\,
	combout => \inst8|Equal5~8_combout\);

-- Location: LCCOMB_X28_Y28_N0
\inst8|Equal5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~9_combout\ = (!\inst8|Add0~46_combout\ & (!\inst8|Add0~48_combout\ & (\inst8|Equal5~4_combout\ & \inst8|Equal5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~46_combout\,
	datab => \inst8|Add0~48_combout\,
	datac => \inst8|Equal5~4_combout\,
	datad => \inst8|Equal5~8_combout\,
	combout => \inst8|Equal5~9_combout\);

-- Location: LCCOMB_X24_Y29_N26
\inst8|counter_up[0]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[0]~47_combout\ = \inst8|counter_up\(0) $ (((\inst8|Equal5~9_combout\ & (\inst8|Add0~0_combout\ $ (\inst8|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~0_combout\,
	datab => \inst8|Add0~2_combout\,
	datac => \inst8|counter_up\(0),
	datad => \inst8|Equal5~9_combout\,
	combout => \inst8|counter_up[0]~47_combout\);

-- Location: FF_X24_Y29_N27
\inst8|counter_up[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[0]~47_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(0));

-- Location: LCCOMB_X21_Y29_N2
\inst8|counter_up[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[1]~17_combout\ = (\inst8|counter_up\(0) & (\inst8|counter_up\(1) $ (VCC))) # (!\inst8|counter_up\(0) & (\inst8|counter_up\(1) & VCC))
-- \inst8|counter_up[1]~18\ = CARRY((\inst8|counter_up\(0) & \inst8|counter_up\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter_up\(0),
	datab => \inst8|counter_up\(1),
	datad => VCC,
	combout => \inst8|counter_up[1]~17_combout\,
	cout => \inst8|counter_up[1]~18\);

-- Location: LCCOMB_X24_Y29_N16
\inst8|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~17_combout\ = (\inst8|Equal5~9_combout\ & (\inst8|Add0~0_combout\ $ (\inst8|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~0_combout\,
	datab => \inst8|Add0~2_combout\,
	datad => \inst8|Equal5~9_combout\,
	combout => \inst8|process_0~17_combout\);

-- Location: FF_X21_Y29_N3
\inst8|counter_up[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[1]~17_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(1));

-- Location: LCCOMB_X21_Y29_N4
\inst8|counter_up[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[2]~19_combout\ = (\inst8|counter_up\(2) & (!\inst8|counter_up[1]~18\)) # (!\inst8|counter_up\(2) & ((\inst8|counter_up[1]~18\) # (GND)))
-- \inst8|counter_up[2]~20\ = CARRY((!\inst8|counter_up[1]~18\) # (!\inst8|counter_up\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter_up\(2),
	datad => VCC,
	cin => \inst8|counter_up[1]~18\,
	combout => \inst8|counter_up[2]~19_combout\,
	cout => \inst8|counter_up[2]~20\);

-- Location: FF_X21_Y29_N5
\inst8|counter_up[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[2]~19_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(2));

-- Location: LCCOMB_X21_Y29_N6
\inst8|counter_up[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[3]~21_combout\ = (\inst8|counter_up\(3) & (\inst8|counter_up[2]~20\ $ (GND))) # (!\inst8|counter_up\(3) & (!\inst8|counter_up[2]~20\ & VCC))
-- \inst8|counter_up[3]~22\ = CARRY((\inst8|counter_up\(3) & !\inst8|counter_up[2]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter_up\(3),
	datad => VCC,
	cin => \inst8|counter_up[2]~20\,
	combout => \inst8|counter_up[3]~21_combout\,
	cout => \inst8|counter_up[3]~22\);

-- Location: FF_X21_Y29_N7
\inst8|counter_up[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[3]~21_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(3));

-- Location: LCCOMB_X21_Y29_N8
\inst8|counter_up[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[4]~23_combout\ = (\inst8|counter_up\(4) & (!\inst8|counter_up[3]~22\)) # (!\inst8|counter_up\(4) & ((\inst8|counter_up[3]~22\) # (GND)))
-- \inst8|counter_up[4]~24\ = CARRY((!\inst8|counter_up[3]~22\) # (!\inst8|counter_up\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter_up\(4),
	datad => VCC,
	cin => \inst8|counter_up[3]~22\,
	combout => \inst8|counter_up[4]~23_combout\,
	cout => \inst8|counter_up[4]~24\);

-- Location: FF_X21_Y29_N9
\inst8|counter_up[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[4]~23_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(4));

-- Location: LCCOMB_X21_Y29_N10
\inst8|counter_up[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[5]~25_combout\ = (\inst8|counter_up\(5) & (\inst8|counter_up[4]~24\ $ (GND))) # (!\inst8|counter_up\(5) & (!\inst8|counter_up[4]~24\ & VCC))
-- \inst8|counter_up[5]~26\ = CARRY((\inst8|counter_up\(5) & !\inst8|counter_up[4]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter_up\(5),
	datad => VCC,
	cin => \inst8|counter_up[4]~24\,
	combout => \inst8|counter_up[5]~25_combout\,
	cout => \inst8|counter_up[5]~26\);

-- Location: FF_X21_Y29_N11
\inst8|counter_up[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[5]~25_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(5));

-- Location: LCCOMB_X21_Y29_N12
\inst8|counter_up[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[6]~27_combout\ = (\inst8|counter_up\(6) & (!\inst8|counter_up[5]~26\)) # (!\inst8|counter_up\(6) & ((\inst8|counter_up[5]~26\) # (GND)))
-- \inst8|counter_up[6]~28\ = CARRY((!\inst8|counter_up[5]~26\) # (!\inst8|counter_up\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter_up\(6),
	datad => VCC,
	cin => \inst8|counter_up[5]~26\,
	combout => \inst8|counter_up[6]~27_combout\,
	cout => \inst8|counter_up[6]~28\);

-- Location: FF_X21_Y29_N13
\inst8|counter_up[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[6]~27_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(6));

-- Location: LCCOMB_X21_Y29_N14
\inst8|counter_up[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[7]~29_combout\ = (\inst8|counter_up\(7) & (\inst8|counter_up[6]~28\ $ (GND))) # (!\inst8|counter_up\(7) & (!\inst8|counter_up[6]~28\ & VCC))
-- \inst8|counter_up[7]~30\ = CARRY((\inst8|counter_up\(7) & !\inst8|counter_up[6]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter_up\(7),
	datad => VCC,
	cin => \inst8|counter_up[6]~28\,
	combout => \inst8|counter_up[7]~29_combout\,
	cout => \inst8|counter_up[7]~30\);

-- Location: FF_X21_Y29_N15
\inst8|counter_up[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[7]~29_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(7));

-- Location: LCCOMB_X21_Y29_N16
\inst8|counter_up[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[8]~31_combout\ = (\inst8|counter_up\(8) & (!\inst8|counter_up[7]~30\)) # (!\inst8|counter_up\(8) & ((\inst8|counter_up[7]~30\) # (GND)))
-- \inst8|counter_up[8]~32\ = CARRY((!\inst8|counter_up[7]~30\) # (!\inst8|counter_up\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter_up\(8),
	datad => VCC,
	cin => \inst8|counter_up[7]~30\,
	combout => \inst8|counter_up[8]~31_combout\,
	cout => \inst8|counter_up[8]~32\);

-- Location: FF_X21_Y29_N17
\inst8|counter_up[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[8]~31_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(8));

-- Location: LCCOMB_X21_Y29_N18
\inst8|counter_up[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[9]~33_combout\ = (\inst8|counter_up\(9) & (\inst8|counter_up[8]~32\ $ (GND))) # (!\inst8|counter_up\(9) & (!\inst8|counter_up[8]~32\ & VCC))
-- \inst8|counter_up[9]~34\ = CARRY((\inst8|counter_up\(9) & !\inst8|counter_up[8]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter_up\(9),
	datad => VCC,
	cin => \inst8|counter_up[8]~32\,
	combout => \inst8|counter_up[9]~33_combout\,
	cout => \inst8|counter_up[9]~34\);

-- Location: FF_X21_Y29_N19
\inst8|counter_up[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[9]~33_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(9));

-- Location: LCCOMB_X21_Y29_N20
\inst8|counter_up[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[10]~35_combout\ = (\inst8|counter_up\(10) & (!\inst8|counter_up[9]~34\)) # (!\inst8|counter_up\(10) & ((\inst8|counter_up[9]~34\) # (GND)))
-- \inst8|counter_up[10]~36\ = CARRY((!\inst8|counter_up[9]~34\) # (!\inst8|counter_up\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter_up\(10),
	datad => VCC,
	cin => \inst8|counter_up[9]~34\,
	combout => \inst8|counter_up[10]~35_combout\,
	cout => \inst8|counter_up[10]~36\);

-- Location: FF_X21_Y29_N21
\inst8|counter_up[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[10]~35_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(10));

-- Location: LCCOMB_X21_Y29_N22
\inst8|counter_up[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[11]~37_combout\ = (\inst8|counter_up\(11) & (\inst8|counter_up[10]~36\ $ (GND))) # (!\inst8|counter_up\(11) & (!\inst8|counter_up[10]~36\ & VCC))
-- \inst8|counter_up[11]~38\ = CARRY((\inst8|counter_up\(11) & !\inst8|counter_up[10]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter_up\(11),
	datad => VCC,
	cin => \inst8|counter_up[10]~36\,
	combout => \inst8|counter_up[11]~37_combout\,
	cout => \inst8|counter_up[11]~38\);

-- Location: FF_X21_Y29_N23
\inst8|counter_up[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[11]~37_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(11));

-- Location: LCCOMB_X21_Y29_N24
\inst8|counter_up[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[12]~39_combout\ = (\inst8|counter_up\(12) & (!\inst8|counter_up[11]~38\)) # (!\inst8|counter_up\(12) & ((\inst8|counter_up[11]~38\) # (GND)))
-- \inst8|counter_up[12]~40\ = CARRY((!\inst8|counter_up[11]~38\) # (!\inst8|counter_up\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter_up\(12),
	datad => VCC,
	cin => \inst8|counter_up[11]~38\,
	combout => \inst8|counter_up[12]~39_combout\,
	cout => \inst8|counter_up[12]~40\);

-- Location: FF_X21_Y29_N25
\inst8|counter_up[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[12]~39_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(12));

-- Location: LCCOMB_X21_Y29_N26
\inst8|counter_up[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[13]~41_combout\ = (\inst8|counter_up\(13) & (\inst8|counter_up[12]~40\ $ (GND))) # (!\inst8|counter_up\(13) & (!\inst8|counter_up[12]~40\ & VCC))
-- \inst8|counter_up[13]~42\ = CARRY((\inst8|counter_up\(13) & !\inst8|counter_up[12]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter_up\(13),
	datad => VCC,
	cin => \inst8|counter_up[12]~40\,
	combout => \inst8|counter_up[13]~41_combout\,
	cout => \inst8|counter_up[13]~42\);

-- Location: FF_X21_Y29_N27
\inst8|counter_up[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[13]~41_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(13));

-- Location: LCCOMB_X21_Y29_N28
\inst8|counter_up[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[14]~43_combout\ = (\inst8|counter_up\(14) & (!\inst8|counter_up[13]~42\)) # (!\inst8|counter_up\(14) & ((\inst8|counter_up[13]~42\) # (GND)))
-- \inst8|counter_up[14]~44\ = CARRY((!\inst8|counter_up[13]~42\) # (!\inst8|counter_up\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter_up\(14),
	datad => VCC,
	cin => \inst8|counter_up[13]~42\,
	combout => \inst8|counter_up[14]~43_combout\,
	cout => \inst8|counter_up[14]~44\);

-- Location: FF_X21_Y29_N29
\inst8|counter_up[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[14]~43_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(14));

-- Location: LCCOMB_X21_Y29_N30
\inst8|counter_up[15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_up[15]~45_combout\ = \inst8|counter_up\(15) $ (!\inst8|counter_up[14]~44\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter_up\(15),
	cin => \inst8|counter_up[14]~44\,
	combout => \inst8|counter_up[15]~45_combout\);

-- Location: FF_X21_Y29_N31
\inst8|counter_up[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|counter_up[15]~45_combout\,
	clrn => \inst~combout\,
	ena => \inst8|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter_up\(15));

-- Location: LCCOMB_X24_Y29_N22
\inst8|Equal5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~10_combout\ = (!\inst8|Add0~0_combout\ & (!\inst8|Add0~2_combout\ & \inst8|Equal5~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~0_combout\,
	datab => \inst8|Add0~2_combout\,
	datad => \inst8|Equal5~9_combout\,
	combout => \inst8|Equal5~10_combout\);

-- Location: FF_X24_Y29_N25
\inst8|data_tx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|counter_up\(15),
	clrn => \inst~combout\,
	sload => VCC,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(15));

-- Location: IOIBUF_X7_Y34_N8
\CS_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CS_N,
	o => \CS_N~input_o\);

-- Location: LCCOMB_X24_Y29_N12
\inst3|sregout[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[15]~17_combout\ = (\CS_N~input_o\ & ((\inst8|data_tx\(15)))) # (!\CS_N~input_o\ & (\inst3|sregout[15]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[15]~17_combout\,
	datac => \inst8|data_tx\(15),
	datad => \CS_N~input_o\,
	combout => \inst3|sregout[15]~17_combout\);

-- Location: IOIBUF_X5_Y34_N15
\SCLK_IN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCLK_IN,
	o => \SCLK_IN~input_o\);

-- Location: LCCOMB_X24_Y29_N4
\inst8|data_tx[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data_tx[14]~feeder_combout\ = \inst8|counter_up\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|counter_up\(14),
	combout => \inst8|data_tx[14]~feeder_combout\);

-- Location: FF_X24_Y29_N5
\inst8|data_tx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|data_tx[14]~feeder_combout\,
	clrn => \inst~combout\,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(14));

-- Location: LCCOMB_X24_Y29_N14
\inst3|sregout[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[14]~21_combout\ = (\CS_N~input_o\ & ((\inst8|data_tx\(14)))) # (!\CS_N~input_o\ & (\inst3|sregout[14]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|sregout[14]~21_combout\,
	datac => \inst8|data_tx\(14),
	datad => \CS_N~input_o\,
	combout => \inst3|sregout[14]~21_combout\);

-- Location: FF_X24_Y29_N29
\inst8|data_tx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|counter_up\(13),
	clrn => \inst~combout\,
	sload => VCC,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(13));

-- Location: LCCOMB_X24_Y29_N6
\inst8|data_tx[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data_tx[12]~feeder_combout\ = \inst8|counter_up\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|counter_up\(12),
	combout => \inst8|data_tx[12]~feeder_combout\);

-- Location: FF_X24_Y29_N7
\inst8|data_tx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|data_tx[12]~feeder_combout\,
	clrn => \inst~combout\,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(12));

-- Location: LCCOMB_X24_Y29_N0
\inst3|sregout[12]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[12]~29_combout\ = (\CS_N~input_o\ & (\inst8|data_tx\(12))) # (!\CS_N~input_o\ & ((\inst3|sregout[12]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|data_tx\(12),
	datab => \inst3|sregout[12]~29_combout\,
	datad => \CS_N~input_o\,
	combout => \inst3|sregout[12]~29_combout\);

-- Location: FF_X24_Y29_N23
\inst8|data_tx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|counter_up\(11),
	clrn => \inst~combout\,
	sload => VCC,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(11));

-- Location: LCCOMB_X24_Y29_N2
\inst3|sregout[11]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[11]~33_combout\ = (\CS_N~input_o\ & (\inst8|data_tx\(11))) # (!\CS_N~input_o\ & ((\inst3|sregout[11]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|data_tx\(11),
	datac => \CS_N~input_o\,
	datad => \inst3|sregout[11]~33_combout\,
	combout => \inst3|sregout[11]~33_combout\);

-- Location: LCCOMB_X24_Y29_N8
\inst8|data_tx[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data_tx[10]~feeder_combout\ = \inst8|counter_up\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|counter_up\(10),
	combout => \inst8|data_tx[10]~feeder_combout\);

-- Location: FF_X24_Y29_N9
\inst8|data_tx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|data_tx[10]~feeder_combout\,
	clrn => \inst~combout\,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(10));

-- Location: LCCOMB_X24_Y29_N20
\inst3|sregout[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[10]~37_combout\ = (\CS_N~input_o\ & ((\inst8|data_tx\(10)))) # (!\CS_N~input_o\ & (\inst3|sregout[10]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|sregout[10]~37_combout\,
	datac => \inst8|data_tx\(10),
	datad => \CS_N~input_o\,
	combout => \inst3|sregout[10]~37_combout\);

-- Location: FF_X24_Y29_N11
\inst8|data_tx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|counter_up\(9),
	clrn => \inst~combout\,
	sload => VCC,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(9));

-- Location: LCCOMB_X24_Y29_N10
\inst3|sregout[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[9]~41_combout\ = (\CS_N~input_o\ & ((\inst8|data_tx\(9)))) # (!\CS_N~input_o\ & (\inst3|sregout[9]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[9]~41_combout\,
	datac => \inst8|data_tx\(9),
	datad => \CS_N~input_o\,
	combout => \inst3|sregout[9]~41_combout\);

-- Location: LCCOMB_X21_Y28_N12
\inst8|data_tx[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data_tx[8]~feeder_combout\ = \inst8|counter_up\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|counter_up\(8),
	combout => \inst8|data_tx[8]~feeder_combout\);

-- Location: FF_X21_Y28_N13
\inst8|data_tx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|data_tx[8]~feeder_combout\,
	clrn => \inst~combout\,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(8));

-- Location: LCCOMB_X21_Y28_N22
\inst3|sregout[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[8]~45_combout\ = (\CS_N~input_o\ & ((\inst8|data_tx\(8)))) # (!\CS_N~input_o\ & (\inst3|sregout[8]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[8]~45_combout\,
	datac => \CS_N~input_o\,
	datad => \inst8|data_tx\(8),
	combout => \inst3|sregout[8]~45_combout\);

-- Location: FF_X24_Y29_N17
\inst8|data_tx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|counter_up\(7),
	clrn => \inst~combout\,
	sload => VCC,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(7));

-- Location: FF_X21_Y28_N27
\inst8|data_tx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|counter_up\(6),
	clrn => \inst~combout\,
	sload => VCC,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(6));

-- Location: LCCOMB_X21_Y28_N20
\inst3|sregout[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[6]~53_combout\ = (\CS_N~input_o\ & ((\inst8|data_tx\(6)))) # (!\CS_N~input_o\ & (\inst3|sregout[6]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|sregout[6]~53_combout\,
	datac => \CS_N~input_o\,
	datad => \inst8|data_tx\(6),
	combout => \inst3|sregout[6]~53_combout\);

-- Location: LCCOMB_X24_Y28_N12
\inst3|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~0_combout\ = \inst3|transmit:state[0]~q\ $ (VCC)
-- \inst3|Add1~1\ = CARRY(\inst3|transmit:state[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|transmit:state[0]~q\,
	datad => VCC,
	combout => \inst3|Add1~0_combout\,
	cout => \inst3|Add1~1\);

-- Location: LCCOMB_X25_Y28_N10
\inst3|transmit:state[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|transmit:state[0]~0_combout\ = (\CS_N~input_o\) # ((!\RESET_BUTTON2~input_o\ & !\RESET_BUTTON~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_BUTTON2~input_o\,
	datab => \CS_N~input_o\,
	datad => \RESET_BUTTON~input_o\,
	combout => \inst3|transmit:state[0]~0_combout\);

-- Location: FF_X24_Y28_N13
\inst3|transmit:state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|Add1~0_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|transmit:state[0]~q\);

-- Location: LCCOMB_X24_Y28_N14
\inst3|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~2_combout\ = (\inst3|transmit:state[1]~q\ & (!\inst3|Add1~1\)) # (!\inst3|transmit:state[1]~q\ & ((\inst3|Add1~1\) # (GND)))
-- \inst3|Add1~3\ = CARRY((!\inst3|Add1~1\) # (!\inst3|transmit:state[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|transmit:state[1]~q\,
	datad => VCC,
	cin => \inst3|Add1~1\,
	combout => \inst3|Add1~2_combout\,
	cout => \inst3|Add1~3\);

-- Location: FF_X24_Y28_N15
\inst3|transmit:state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|Add1~2_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|transmit:state[1]~q\);

-- Location: LCCOMB_X24_Y28_N16
\inst3|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~4_combout\ = (\inst3|transmit:state[2]~q\ & (\inst3|Add1~3\ $ (GND))) # (!\inst3|transmit:state[2]~q\ & (!\inst3|Add1~3\ & VCC))
-- \inst3|Add1~5\ = CARRY((\inst3|transmit:state[2]~q\ & !\inst3|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|transmit:state[2]~q\,
	datad => VCC,
	cin => \inst3|Add1~3\,
	combout => \inst3|Add1~4_combout\,
	cout => \inst3|Add1~5\);

-- Location: FF_X24_Y28_N17
\inst3|transmit:state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|Add1~4_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|transmit:state[2]~q\);

-- Location: LCCOMB_X24_Y28_N18
\inst3|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~6_combout\ = (\inst3|transmit:state[3]~q\ & (!\inst3|Add1~5\)) # (!\inst3|transmit:state[3]~q\ & ((\inst3|Add1~5\) # (GND)))
-- \inst3|Add1~7\ = CARRY((!\inst3|Add1~5\) # (!\inst3|transmit:state[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|transmit:state[3]~q\,
	datad => VCC,
	cin => \inst3|Add1~5\,
	combout => \inst3|Add1~6_combout\,
	cout => \inst3|Add1~7\);

-- Location: FF_X24_Y28_N19
\inst3|transmit:state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|Add1~6_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|transmit:state[3]~q\);

-- Location: LCCOMB_X24_Y28_N20
\inst3|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~8_combout\ = \inst3|transmit:state[4]~q\ $ (!\inst3|Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|transmit:state[4]~q\,
	cin => \inst3|Add1~7\,
	combout => \inst3|Add1~8_combout\);

-- Location: LCCOMB_X24_Y28_N4
\inst3|state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|state~1_combout\ = (\inst3|Add1~8_combout\ & ((!\inst3|Equal1~0_combout\) # (!\inst3|transmit:state[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|transmit:state[1]~q\,
	datac => \inst3|Equal1~0_combout\,
	datad => \inst3|Add1~8_combout\,
	combout => \inst3|state~1_combout\);

-- Location: FF_X24_Y28_N5
\inst3|transmit:state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|state~1_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|transmit:state[4]~q\);

-- Location: LCCOMB_X24_Y28_N30
\inst3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = (\inst3|transmit:state[0]~q\ & (\inst3|transmit:state[3]~q\ & (!\inst3|transmit:state[4]~q\ & \inst3|transmit:state[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|transmit:state[0]~q\,
	datab => \inst3|transmit:state[3]~q\,
	datac => \inst3|transmit:state[4]~q\,
	datad => \inst3|transmit:state[2]~q\,
	combout => \inst3|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y28_N0
\inst3|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~1_combout\ = (\inst3|Equal1~0_combout\ & \inst3|transmit:state[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Equal1~0_combout\,
	datad => \inst3|transmit:state[1]~q\,
	combout => \inst3|Equal1~1_combout\);

-- Location: FF_X21_Y28_N3
\inst8|data_tx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|counter_up\(4),
	clrn => \inst~combout\,
	sload => VCC,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(4));

-- Location: LCCOMB_X21_Y28_N30
\inst8|data_tx[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data_tx[2]~feeder_combout\ = \inst8|counter_up\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|counter_up\(2),
	combout => \inst8|data_tx[2]~feeder_combout\);

-- Location: FF_X21_Y28_N31
\inst8|data_tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|data_tx[2]~feeder_combout\,
	clrn => \inst~combout\,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(2));

-- Location: LCCOMB_X21_Y28_N16
\inst3|sregout[2]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[2]~69_combout\ = (\CS_N~input_o\ & (\inst8|data_tx\(2))) # (!\CS_N~input_o\ & ((\inst3|sregout[2]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|data_tx\(2),
	datab => \inst3|sregout[2]~69_combout\,
	datad => \CS_N~input_o\,
	combout => \inst3|sregout[2]~69_combout\);

-- Location: FF_X24_Y29_N19
\inst8|data_tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|counter_up\(1),
	clrn => \inst~combout\,
	sload => VCC,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(1));

-- Location: LCCOMB_X24_Y29_N18
\inst3|sregout[1]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[1]~73_combout\ = (\CS_N~input_o\ & ((\inst8|data_tx\(1)))) # (!\CS_N~input_o\ & (\inst3|sregout[1]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|sregout[1]~73_combout\,
	datac => \inst8|data_tx\(1),
	datad => \CS_N~input_o\,
	combout => \inst3|sregout[1]~73_combout\);

-- Location: LCCOMB_X21_Y28_N28
\inst8|data_tx[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data_tx[0]~feeder_combout\ = \inst8|counter_up\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|counter_up\(0),
	combout => \inst8|data_tx[0]~feeder_combout\);

-- Location: FF_X21_Y28_N29
\inst8|data_tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|data_tx[0]~feeder_combout\,
	clrn => \inst~combout\,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(0));

-- Location: LCCOMB_X21_Y28_N6
\inst3|sregout[0]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[0]~77_combout\ = (\CS_N~input_o\ & ((\inst8|data_tx\(0)))) # (!\CS_N~input_o\ & (\inst3|sregout[0]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[0]~77_combout\,
	datac => \inst8|data_tx\(0),
	datad => \CS_N~input_o\,
	combout => \inst3|sregout[0]~77_combout\);

-- Location: LCCOMB_X24_Y28_N6
\inst3|sregout[0]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[0]~79_combout\ = \inst3|sregout[0]~77_combout\ $ (((\inst3|Equal1~0_combout\ & (\inst8|data_tx\(0) & \inst3|transmit:state[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~0_combout\,
	datab => \inst3|sregout[0]~77_combout\,
	datac => \inst8|data_tx\(0),
	datad => \inst3|transmit:state[1]~q\,
	combout => \inst3|sregout[0]~79_combout\);

-- Location: FF_X24_Y28_N7
\inst3|sregout[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[0]~79_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[0]~_emulated_q\);

-- Location: LCCOMB_X24_Y28_N24
\inst3|sregout[0]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[0]~78_combout\ = (\CS_N~input_o\ & (((\inst8|data_tx\(0))))) # (!\CS_N~input_o\ & (\inst3|sregout[0]~_emulated_q\ $ (((\inst3|sregout[0]~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[0]~_emulated_q\,
	datab => \inst8|data_tx\(0),
	datac => \CS_N~input_o\,
	datad => \inst3|sregout[0]~77_combout\,
	combout => \inst3|sregout[0]~78_combout\);

-- Location: LCCOMB_X24_Y28_N22
\inst3|sregout[1]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[1]~75_combout\ = \inst3|sregout[1]~73_combout\ $ (((\inst3|Equal1~1_combout\ & ((\inst8|data_tx\(1)))) # (!\inst3|Equal1~1_combout\ & (\inst3|sregout[0]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~1_combout\,
	datab => \inst3|sregout[1]~73_combout\,
	datac => \inst3|sregout[0]~78_combout\,
	datad => \inst8|data_tx\(1),
	combout => \inst3|sregout[1]~75_combout\);

-- Location: FF_X24_Y28_N23
\inst3|sregout[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[1]~75_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[1]~_emulated_q\);

-- Location: LCCOMB_X24_Y28_N28
\inst3|sregout[1]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[1]~74_combout\ = (\CS_N~input_o\ & (((\inst8|data_tx\(1))))) # (!\CS_N~input_o\ & (\inst3|sregout[1]~_emulated_q\ $ ((\inst3|sregout[1]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[1]~_emulated_q\,
	datab => \CS_N~input_o\,
	datac => \inst3|sregout[1]~73_combout\,
	datad => \inst8|data_tx\(1),
	combout => \inst3|sregout[1]~74_combout\);

-- Location: LCCOMB_X24_Y28_N8
\inst3|sregout[2]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[2]~71_combout\ = \inst3|sregout[2]~69_combout\ $ (((\inst3|Equal1~1_combout\ & ((\inst8|data_tx\(2)))) # (!\inst3|Equal1~1_combout\ & (\inst3|sregout[1]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[2]~69_combout\,
	datab => \inst3|sregout[1]~74_combout\,
	datac => \inst8|data_tx\(2),
	datad => \inst3|Equal1~1_combout\,
	combout => \inst3|sregout[2]~71_combout\);

-- Location: FF_X24_Y28_N9
\inst3|sregout[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[2]~71_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[2]~_emulated_q\);

-- Location: LCCOMB_X24_Y28_N26
\inst3|sregout[2]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[2]~70_combout\ = (\CS_N~input_o\ & (\inst8|data_tx\(2))) # (!\CS_N~input_o\ & ((\inst3|sregout[2]~_emulated_q\ $ (\inst3|sregout[2]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|data_tx\(2),
	datab => \inst3|sregout[2]~_emulated_q\,
	datac => \CS_N~input_o\,
	datad => \inst3|sregout[2]~69_combout\,
	combout => \inst3|sregout[2]~70_combout\);

-- Location: LCCOMB_X21_Y28_N24
\inst8|data_tx[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|data_tx[3]~feeder_combout\ = \inst8|counter_up\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|counter_up\(3),
	combout => \inst8|data_tx[3]~feeder_combout\);

-- Location: FF_X21_Y28_N25
\inst8|data_tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|data_tx[3]~feeder_combout\,
	clrn => \inst~combout\,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(3));

-- Location: LCCOMB_X21_Y28_N14
\inst3|sregout[3]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[3]~65_combout\ = (\CS_N~input_o\ & ((\inst8|data_tx\(3)))) # (!\CS_N~input_o\ & (\inst3|sregout[3]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|sregout[3]~65_combout\,
	datac => \inst8|data_tx\(3),
	datad => \CS_N~input_o\,
	combout => \inst3|sregout[3]~65_combout\);

-- Location: LCCOMB_X24_Y28_N10
\inst3|sregout[3]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[3]~67_combout\ = \inst3|sregout[3]~65_combout\ $ (((\inst3|Equal1~1_combout\ & ((\inst8|data_tx\(3)))) # (!\inst3|Equal1~1_combout\ & (\inst3|sregout[2]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[2]~70_combout\,
	datab => \inst3|sregout[3]~65_combout\,
	datac => \inst8|data_tx\(3),
	datad => \inst3|Equal1~1_combout\,
	combout => \inst3|sregout[3]~67_combout\);

-- Location: FF_X24_Y28_N11
\inst3|sregout[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[3]~67_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[3]~_emulated_q\);

-- Location: LCCOMB_X23_Y28_N26
\inst3|sregout[3]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[3]~66_combout\ = (\CS_N~input_o\ & (((\inst8|data_tx\(3))))) # (!\CS_N~input_o\ & (\inst3|sregout[3]~_emulated_q\ $ (((\inst3|sregout[3]~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[3]~_emulated_q\,
	datab => \inst8|data_tx\(3),
	datac => \CS_N~input_o\,
	datad => \inst3|sregout[3]~65_combout\,
	combout => \inst3|sregout[3]~66_combout\);

-- Location: LCCOMB_X21_Y28_N8
\inst3|sregout[4]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[4]~61_combout\ = (\CS_N~input_o\ & ((\inst8|data_tx\(4)))) # (!\CS_N~input_o\ & (\inst3|sregout[4]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|sregout[4]~61_combout\,
	datac => \CS_N~input_o\,
	datad => \inst8|data_tx\(4),
	combout => \inst3|sregout[4]~61_combout\);

-- Location: LCCOMB_X23_Y28_N14
\inst3|sregout[4]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[4]~63_combout\ = \inst3|sregout[4]~61_combout\ $ (((\inst3|Equal1~1_combout\ & ((\inst8|data_tx\(4)))) # (!\inst3|Equal1~1_combout\ & (\inst3|sregout[3]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[3]~66_combout\,
	datab => \inst3|sregout[4]~61_combout\,
	datac => \inst3|Equal1~1_combout\,
	datad => \inst8|data_tx\(4),
	combout => \inst3|sregout[4]~63_combout\);

-- Location: FF_X23_Y28_N15
\inst3|sregout[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[4]~63_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[4]~_emulated_q\);

-- Location: LCCOMB_X23_Y28_N24
\inst3|sregout[4]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[4]~62_combout\ = (\CS_N~input_o\ & (\inst8|data_tx\(4))) # (!\CS_N~input_o\ & ((\inst3|sregout[4]~_emulated_q\ $ (\inst3|sregout[4]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|data_tx\(4),
	datab => \inst3|sregout[4]~_emulated_q\,
	datac => \CS_N~input_o\,
	datad => \inst3|sregout[4]~61_combout\,
	combout => \inst3|sregout[4]~62_combout\);

-- Location: FF_X21_Y28_N1
\inst8|data_tx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|counter_up\(5),
	clrn => \inst~combout\,
	sload => VCC,
	ena => \inst8|Equal5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|data_tx\(5));

-- Location: LCCOMB_X21_Y28_N18
\inst3|sregout[5]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[5]~57_combout\ = (\CS_N~input_o\ & ((\inst8|data_tx\(5)))) # (!\CS_N~input_o\ & (\inst3|sregout[5]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|sregout[5]~57_combout\,
	datac => \inst8|data_tx\(5),
	datad => \CS_N~input_o\,
	combout => \inst3|sregout[5]~57_combout\);

-- Location: LCCOMB_X23_Y28_N6
\inst3|sregout[5]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[5]~59_combout\ = \inst3|sregout[5]~57_combout\ $ (((\inst3|Equal1~1_combout\ & ((\inst8|data_tx\(5)))) # (!\inst3|Equal1~1_combout\ & (\inst3|sregout[4]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[4]~62_combout\,
	datab => \inst3|sregout[5]~57_combout\,
	datac => \inst3|Equal1~1_combout\,
	datad => \inst8|data_tx\(5),
	combout => \inst3|sregout[5]~59_combout\);

-- Location: FF_X23_Y28_N7
\inst3|sregout[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[5]~59_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[5]~_emulated_q\);

-- Location: LCCOMB_X23_Y28_N4
\inst3|sregout[5]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[5]~58_combout\ = (\CS_N~input_o\ & (((\inst8|data_tx\(5))))) # (!\CS_N~input_o\ & (\inst3|sregout[5]~_emulated_q\ $ (((\inst3|sregout[5]~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[5]~_emulated_q\,
	datab => \inst8|data_tx\(5),
	datac => \CS_N~input_o\,
	datad => \inst3|sregout[5]~57_combout\,
	combout => \inst3|sregout[5]~58_combout\);

-- Location: LCCOMB_X23_Y28_N2
\inst3|sregout[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[6]~55_combout\ = \inst3|sregout[6]~53_combout\ $ (((\inst3|Equal1~1_combout\ & ((\inst8|data_tx\(6)))) # (!\inst3|Equal1~1_combout\ & (\inst3|sregout[5]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[6]~53_combout\,
	datab => \inst3|Equal1~1_combout\,
	datac => \inst3|sregout[5]~58_combout\,
	datad => \inst8|data_tx\(6),
	combout => \inst3|sregout[6]~55_combout\);

-- Location: FF_X23_Y28_N3
\inst3|sregout[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[6]~55_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[6]~_emulated_q\);

-- Location: LCCOMB_X23_Y28_N16
\inst3|sregout[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[6]~54_combout\ = (\CS_N~input_o\ & (\inst8|data_tx\(6))) # (!\CS_N~input_o\ & ((\inst3|sregout[6]~_emulated_q\ $ (\inst3|sregout[6]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|data_tx\(6),
	datab => \inst3|sregout[6]~_emulated_q\,
	datac => \CS_N~input_o\,
	datad => \inst3|sregout[6]~53_combout\,
	combout => \inst3|sregout[6]~54_combout\);

-- Location: LCCOMB_X24_Y29_N30
\inst3|sregout[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[7]~49_combout\ = (\CS_N~input_o\ & ((\inst8|data_tx\(7)))) # (!\CS_N~input_o\ & (\inst3|sregout[7]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[7]~49_combout\,
	datac => \CS_N~input_o\,
	datad => \inst8|data_tx\(7),
	combout => \inst3|sregout[7]~49_combout\);

-- Location: LCCOMB_X23_Y28_N10
\inst3|sregout[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[7]~51_combout\ = \inst3|sregout[7]~49_combout\ $ (((\inst3|Equal1~1_combout\ & (\inst8|data_tx\(7))) # (!\inst3|Equal1~1_combout\ & ((\inst3|sregout[6]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|data_tx\(7),
	datab => \inst3|sregout[6]~54_combout\,
	datac => \inst3|Equal1~1_combout\,
	datad => \inst3|sregout[7]~49_combout\,
	combout => \inst3|sregout[7]~51_combout\);

-- Location: FF_X23_Y28_N11
\inst3|sregout[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[7]~51_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[7]~_emulated_q\);

-- Location: LCCOMB_X23_Y28_N0
\inst3|sregout[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[7]~50_combout\ = (\CS_N~input_o\ & (((\inst8|data_tx\(7))))) # (!\CS_N~input_o\ & (\inst3|sregout[7]~_emulated_q\ $ (((\inst3|sregout[7]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[7]~_emulated_q\,
	datab => \inst8|data_tx\(7),
	datac => \CS_N~input_o\,
	datad => \inst3|sregout[7]~49_combout\,
	combout => \inst3|sregout[7]~50_combout\);

-- Location: LCCOMB_X23_Y28_N18
\inst3|sregout[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[8]~47_combout\ = \inst3|sregout[8]~45_combout\ $ (((\inst3|Equal1~1_combout\ & ((\inst8|data_tx\(8)))) # (!\inst3|Equal1~1_combout\ & (\inst3|sregout[7]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[8]~45_combout\,
	datab => \inst3|sregout[7]~50_combout\,
	datac => \inst3|Equal1~1_combout\,
	datad => \inst8|data_tx\(8),
	combout => \inst3|sregout[8]~47_combout\);

-- Location: FF_X23_Y28_N19
\inst3|sregout[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[8]~47_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[8]~_emulated_q\);

-- Location: LCCOMB_X23_Y28_N12
\inst3|sregout[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[8]~46_combout\ = (\CS_N~input_o\ & (\inst8|data_tx\(8))) # (!\CS_N~input_o\ & ((\inst3|sregout[8]~_emulated_q\ $ (\inst3|sregout[8]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|data_tx\(8),
	datab => \inst3|sregout[8]~_emulated_q\,
	datac => \CS_N~input_o\,
	datad => \inst3|sregout[8]~45_combout\,
	combout => \inst3|sregout[8]~46_combout\);

-- Location: LCCOMB_X23_Y28_N8
\inst3|sregout[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[9]~43_combout\ = \inst3|sregout[9]~41_combout\ $ (((\inst3|Equal1~1_combout\ & ((\inst8|data_tx\(9)))) # (!\inst3|Equal1~1_combout\ & (\inst3|sregout[8]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[8]~46_combout\,
	datab => \inst8|data_tx\(9),
	datac => \inst3|Equal1~1_combout\,
	datad => \inst3|sregout[9]~41_combout\,
	combout => \inst3|sregout[9]~43_combout\);

-- Location: FF_X23_Y28_N9
\inst3|sregout[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[9]~43_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[9]~_emulated_q\);

-- Location: LCCOMB_X23_Y29_N4
\inst3|sregout[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[9]~42_combout\ = (\CS_N~input_o\ & (((\inst8|data_tx\(9))))) # (!\CS_N~input_o\ & (\inst3|sregout[9]~41_combout\ $ ((\inst3|sregout[9]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[9]~41_combout\,
	datab => \inst3|sregout[9]~_emulated_q\,
	datac => \CS_N~input_o\,
	datad => \inst8|data_tx\(9),
	combout => \inst3|sregout[9]~42_combout\);

-- Location: LCCOMB_X23_Y29_N28
\inst3|sregout[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[10]~39_combout\ = \inst3|sregout[10]~37_combout\ $ (((\inst3|Equal1~1_combout\ & ((\inst8|data_tx\(10)))) # (!\inst3|Equal1~1_combout\ & (\inst3|sregout[9]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[9]~42_combout\,
	datab => \inst3|sregout[10]~37_combout\,
	datac => \inst8|data_tx\(10),
	datad => \inst3|Equal1~1_combout\,
	combout => \inst3|sregout[10]~39_combout\);

-- Location: FF_X23_Y29_N29
\inst3|sregout[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[10]~39_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[10]~_emulated_q\);

-- Location: LCCOMB_X23_Y29_N10
\inst3|sregout[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[10]~38_combout\ = (\CS_N~input_o\ & (((\inst8|data_tx\(10))))) # (!\CS_N~input_o\ & (\inst3|sregout[10]~37_combout\ $ ((\inst3|sregout[10]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[10]~37_combout\,
	datab => \inst3|sregout[10]~_emulated_q\,
	datac => \CS_N~input_o\,
	datad => \inst8|data_tx\(10),
	combout => \inst3|sregout[10]~38_combout\);

-- Location: LCCOMB_X23_Y29_N12
\inst3|sregout[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[11]~35_combout\ = \inst3|sregout[11]~33_combout\ $ (((\inst3|Equal1~1_combout\ & ((\inst8|data_tx\(11)))) # (!\inst3|Equal1~1_combout\ & (\inst3|sregout[10]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[11]~33_combout\,
	datab => \inst3|sregout[10]~38_combout\,
	datac => \inst8|data_tx\(11),
	datad => \inst3|Equal1~1_combout\,
	combout => \inst3|sregout[11]~35_combout\);

-- Location: FF_X23_Y29_N13
\inst3|sregout[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[11]~35_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[11]~_emulated_q\);

-- Location: LCCOMB_X23_Y29_N2
\inst3|sregout[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[11]~34_combout\ = (\CS_N~input_o\ & (((\inst8|data_tx\(11))))) # (!\CS_N~input_o\ & (\inst3|sregout[11]~_emulated_q\ $ ((\inst3|sregout[11]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[11]~_emulated_q\,
	datab => \inst3|sregout[11]~33_combout\,
	datac => \CS_N~input_o\,
	datad => \inst8|data_tx\(11),
	combout => \inst3|sregout[11]~34_combout\);

-- Location: LCCOMB_X23_Y29_N16
\inst3|sregout[12]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[12]~31_combout\ = \inst3|sregout[12]~29_combout\ $ (((\inst3|Equal1~1_combout\ & ((\inst8|data_tx\(12)))) # (!\inst3|Equal1~1_combout\ & (\inst3|sregout[11]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[12]~29_combout\,
	datab => \inst3|sregout[11]~34_combout\,
	datac => \inst8|data_tx\(12),
	datad => \inst3|Equal1~1_combout\,
	combout => \inst3|sregout[12]~31_combout\);

-- Location: FF_X23_Y29_N17
\inst3|sregout[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[12]~31_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[12]~_emulated_q\);

-- Location: LCCOMB_X23_Y29_N22
\inst3|sregout[12]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[12]~30_combout\ = (\CS_N~input_o\ & (\inst8|data_tx\(12))) # (!\CS_N~input_o\ & ((\inst3|sregout[12]~29_combout\ $ (\inst3|sregout[12]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|data_tx\(12),
	datab => \inst3|sregout[12]~29_combout\,
	datac => \CS_N~input_o\,
	datad => \inst3|sregout[12]~_emulated_q\,
	combout => \inst3|sregout[12]~30_combout\);

-- Location: LCCOMB_X24_Y29_N28
\inst3|sregout[13]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[13]~25_combout\ = (\CS_N~input_o\ & ((\inst8|data_tx\(13)))) # (!\CS_N~input_o\ & (\inst3|sregout[13]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|sregout[13]~25_combout\,
	datac => \inst8|data_tx\(13),
	datad => \CS_N~input_o\,
	combout => \inst3|sregout[13]~25_combout\);

-- Location: LCCOMB_X23_Y29_N24
\inst3|sregout[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[13]~27_combout\ = \inst3|sregout[13]~25_combout\ $ (((\inst3|Equal1~1_combout\ & ((\inst8|data_tx\(13)))) # (!\inst3|Equal1~1_combout\ & (\inst3|sregout[12]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[12]~30_combout\,
	datab => \inst3|sregout[13]~25_combout\,
	datac => \inst8|data_tx\(13),
	datad => \inst3|Equal1~1_combout\,
	combout => \inst3|sregout[13]~27_combout\);

-- Location: FF_X23_Y29_N25
\inst3|sregout[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[13]~27_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[13]~_emulated_q\);

-- Location: LCCOMB_X23_Y29_N14
\inst3|sregout[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[13]~26_combout\ = (\CS_N~input_o\ & (\inst8|data_tx\(13))) # (!\CS_N~input_o\ & ((\inst3|sregout[13]~_emulated_q\ $ (\inst3|sregout[13]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|data_tx\(13),
	datab => \inst3|sregout[13]~_emulated_q\,
	datac => \CS_N~input_o\,
	datad => \inst3|sregout[13]~25_combout\,
	combout => \inst3|sregout[13]~26_combout\);

-- Location: LCCOMB_X23_Y29_N8
\inst3|sregout[14]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[14]~23_combout\ = \inst3|sregout[14]~21_combout\ $ (((\inst3|Equal1~1_combout\ & ((\inst8|data_tx\(14)))) # (!\inst3|Equal1~1_combout\ & (\inst3|sregout[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[14]~21_combout\,
	datab => \inst3|sregout[13]~26_combout\,
	datac => \inst8|data_tx\(14),
	datad => \inst3|Equal1~1_combout\,
	combout => \inst3|sregout[14]~23_combout\);

-- Location: FF_X23_Y29_N9
\inst3|sregout[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[14]~23_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[14]~_emulated_q\);

-- Location: LCCOMB_X23_Y29_N26
\inst3|sregout[14]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[14]~22_combout\ = (\CS_N~input_o\ & (((\inst8|data_tx\(14))))) # (!\CS_N~input_o\ & (\inst3|sregout[14]~21_combout\ $ ((\inst3|sregout[14]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[14]~21_combout\,
	datab => \inst3|sregout[14]~_emulated_q\,
	datac => \CS_N~input_o\,
	datad => \inst8|data_tx\(14),
	combout => \inst3|sregout[14]~22_combout\);

-- Location: LCCOMB_X23_Y29_N20
\inst3|sregout[15]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[15]~19_combout\ = \inst3|sregout[15]~17_combout\ $ (((\inst3|Equal1~1_combout\ & ((\inst8|data_tx\(15)))) # (!\inst3|Equal1~1_combout\ & (\inst3|sregout[14]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[15]~17_combout\,
	datab => \inst3|sregout[14]~22_combout\,
	datac => \inst8|data_tx\(15),
	datad => \inst3|Equal1~1_combout\,
	combout => \inst3|sregout[15]~19_combout\);

-- Location: FF_X23_Y29_N21
\inst3|sregout[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[15]~19_combout\,
	clrn => \ALT_INV_CS_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[15]~_emulated_q\);

-- Location: LCCOMB_X23_Y29_N18
\inst3|sregout[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[15]~18_combout\ = (\CS_N~input_o\ & (((\inst8|data_tx\(15))))) # (!\CS_N~input_o\ & (\inst3|sregout[15]~17_combout\ $ (((\inst3|sregout[15]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|sregout[15]~17_combout\,
	datab => \CS_N~input_o\,
	datac => \inst8|data_tx\(15),
	datad => \inst3|sregout[15]~_emulated_q\,
	combout => \inst3|sregout[15]~18_combout\);

-- Location: LCCOMB_X25_Y28_N0
\inst3|sregout[15]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[15]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|sregout[15]~enfeeder_combout\);

-- Location: FF_X25_Y28_N1
\inst3|sregout[15]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_IN~input_o\,
	d => \inst3|sregout[15]~enfeeder_combout\,
	clrn => \inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregout[15]~en_q\);

-- Location: LCCOMB_X25_Y28_N28
\inst3|sregout[15]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregout[15]~82_combout\ = (!\CS_N~input_o\ & \inst3|sregout[15]~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CS_N~input_o\,
	datad => \inst3|sregout[15]~en_q\,
	combout => \inst3|sregout[15]~82_combout\);

-- Location: IOIBUF_X53_Y17_N15
\Switch_3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch_3,
	o => \Switch_3~input_o\);

-- Location: LCCOMB_X29_Y14_N6
\inst1|TX_BUFFER[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|TX_BUFFER[3]~8_combout\ = (\Switch_3~input_o\ & ((\RESET_BUTTON~input_o\) # ((\RESET_BUTTON2~input_o\) # (\inst1|process_0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_BUTTON~input_o\,
	datab => \Switch_3~input_o\,
	datac => \RESET_BUTTON2~input_o\,
	datad => \inst1|process_0~20_combout\,
	combout => \inst1|TX_BUFFER[3]~8_combout\);

-- Location: LCCOMB_X29_Y14_N20
\inst1|TX_BUFFER[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|TX_BUFFER\(3) = (GLOBAL(\inst1|tx_count[0]~40clkctrl_outclk\) & ((\inst1|TX_BUFFER[3]~8_combout\))) # (!GLOBAL(\inst1|tx_count[0]~40clkctrl_outclk\) & (\inst1|TX_BUFFER\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|TX_BUFFER\(3),
	datac => \inst1|TX_BUFFER[3]~8_combout\,
	datad => \inst1|tx_count[0]~40clkctrl_outclk\,
	combout => \inst1|TX_BUFFER\(3));

-- Location: IOIBUF_X27_Y0_N15
\Switch_1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch_1,
	o => \Switch_1~input_o\);

-- Location: LCCOMB_X29_Y14_N30
\inst1|TX_BUFFER[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|TX_BUFFER[1]~9_combout\ = (\Switch_1~input_o\ & ((\RESET_BUTTON~input_o\) # ((\RESET_BUTTON2~input_o\) # (\inst1|process_0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_BUTTON~input_o\,
	datab => \Switch_1~input_o\,
	datac => \RESET_BUTTON2~input_o\,
	datad => \inst1|process_0~20_combout\,
	combout => \inst1|TX_BUFFER[1]~9_combout\);

-- Location: LCCOMB_X29_Y14_N14
\inst1|TX_BUFFER[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|TX_BUFFER\(1) = (GLOBAL(\inst1|tx_count[0]~40clkctrl_outclk\) & ((\inst1|TX_BUFFER[1]~9_combout\))) # (!GLOBAL(\inst1|tx_count[0]~40clkctrl_outclk\) & (\inst1|TX_BUFFER\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|TX_BUFFER\(1),
	datac => \inst1|TX_BUFFER[1]~9_combout\,
	datad => \inst1|tx_count[0]~40clkctrl_outclk\,
	combout => \inst1|TX_BUFFER\(1));

-- Location: IOIBUF_X25_Y34_N8
\Switch_2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch_2,
	o => \Switch_2~input_o\);

-- Location: LCCOMB_X29_Y14_N18
\inst1|TX_BUFFER[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|TX_BUFFER[2]~10_combout\ = (\Switch_2~input_o\ & ((\RESET_BUTTON~input_o\) # ((\RESET_BUTTON2~input_o\) # (\inst1|process_0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_BUTTON~input_o\,
	datab => \Switch_2~input_o\,
	datac => \RESET_BUTTON2~input_o\,
	datad => \inst1|process_0~20_combout\,
	combout => \inst1|TX_BUFFER[2]~10_combout\);

-- Location: LCCOMB_X29_Y14_N26
\inst1|TX_BUFFER[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|TX_BUFFER\(2) = (GLOBAL(\inst1|tx_count[0]~40clkctrl_outclk\) & ((\inst1|TX_BUFFER[2]~10_combout\))) # (!GLOBAL(\inst1|tx_count[0]~40clkctrl_outclk\) & (\inst1|TX_BUFFER\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|TX_BUFFER\(2),
	datac => \inst1|TX_BUFFER[2]~10_combout\,
	datad => \inst1|tx_count[0]~40clkctrl_outclk\,
	combout => \inst1|TX_BUFFER\(2));

-- Location: IOIBUF_X0_Y16_N22
\Switch_0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch_0,
	o => \Switch_0~input_o\);

-- Location: LCCOMB_X29_Y14_N28
\inst1|TX_BUFFER[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|TX_BUFFER[0]~11_combout\ = (\Switch_0~input_o\ & ((\RESET_BUTTON~input_o\) # ((\RESET_BUTTON2~input_o\) # (\inst1|process_0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_BUTTON~input_o\,
	datab => \Switch_0~input_o\,
	datac => \RESET_BUTTON2~input_o\,
	datad => \inst1|process_0~20_combout\,
	combout => \inst1|TX_BUFFER[0]~11_combout\);

-- Location: LCCOMB_X29_Y14_N24
\inst1|TX_BUFFER[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|TX_BUFFER\(0) = (GLOBAL(\inst1|tx_count[0]~40clkctrl_outclk\) & ((\inst1|TX_BUFFER[0]~11_combout\))) # (!GLOBAL(\inst1|tx_count[0]~40clkctrl_outclk\) & (\inst1|TX_BUFFER\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|TX_BUFFER\(0),
	datac => \inst1|TX_BUFFER[0]~11_combout\,
	datad => \inst1|tx_count[0]~40clkctrl_outclk\,
	combout => \inst1|TX_BUFFER\(0));

-- Location: LCCOMB_X29_Y14_N10
\inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst1|tx_count\(0) & ((\inst1|tx_count\(1) & ((\inst1|TX_BUFFER\(0)))) # (!\inst1|tx_count\(1) & (\inst1|TX_BUFFER\(2))))) # (!\inst1|tx_count\(0) & (\inst1|tx_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(0),
	datab => \inst1|tx_count\(1),
	datac => \inst1|TX_BUFFER\(2),
	datad => \inst1|TX_BUFFER\(0),
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y14_N12
\inst1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\inst1|tx_count\(0) & (((\inst1|Mux0~0_combout\)))) # (!\inst1|tx_count\(0) & ((\inst1|Mux0~0_combout\ & ((\inst1|TX_BUFFER\(1)))) # (!\inst1|Mux0~0_combout\ & (\inst1|TX_BUFFER\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(0),
	datab => \inst1|TX_BUFFER\(3),
	datac => \inst1|TX_BUFFER\(1),
	datad => \inst1|Mux0~0_combout\,
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y14_N16
\inst1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~2_combout\ = (\inst1|tx_count\(3) & (\inst1|tx_count\(2) & \inst1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tx_count\(3),
	datac => \inst1|tx_count\(2),
	datad => \inst1|Mux0~1_combout\,
	combout => \inst1|Mux0~2_combout\);

-- Location: FF_X29_Y14_N17
\inst1|MOSI~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Mux0~2_combout\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|MOSI~reg0_q\);

-- Location: LCCOMB_X31_Y18_N20
\inst1|MOSI~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|MOSI~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|MOSI~enfeeder_combout\);

-- Location: FF_X31_Y18_N21
\inst1|MOSI~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|MOSI~enfeeder_combout\,
	clrn => \inst1|ALT_INV_CS~0_combout\,
	ena => \inst1|tx_count[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|MOSI~en_q\);

-- Location: CLKCTRL_PLL4E0
\inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CLOCK_1_OP\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "double register")
-- pragma translate_on
PORT MAP (
	inclk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CLOCK_1_OP_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CLOCK_1_OP_outclk\);

-- Location: LCCOMB_X31_Y15_N20
\inst1|SCLK\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SCLK~combout\ = (\inst1|CS~0_combout\ & (\inst1|SCLK~combout\)) # (!\inst1|CS~0_combout\ & ((\inst1|sclk_pulse~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SCLK~combout\,
	datac => \inst1|sclk_pulse~q\,
	datad => \inst1|CS~0_combout\,
	combout => \inst1|SCLK~combout\);

-- Location: IOIBUF_X9_Y34_N8
\MOSI_IN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MOSI_IN,
	o => \MOSI_IN~input_o\);

-- Location: FF_X25_Y28_N23
\inst3|sregin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	asdata => \MOSI_IN~input_o\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregin\(0));

-- Location: LCCOMB_X25_Y28_N2
\inst3|sregin[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregin[1]~feeder_combout\ = \inst3|sregin\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|sregin\(0),
	combout => \inst3|sregin[1]~feeder_combout\);

-- Location: FF_X25_Y28_N3
\inst3|sregin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	d => \inst3|sregin[1]~feeder_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregin\(1));

-- Location: LCCOMB_X25_Y28_N4
\inst3|sregin[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregin[2]~feeder_combout\ = \inst3|sregin\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|sregin\(1),
	combout => \inst3|sregin[2]~feeder_combout\);

-- Location: FF_X25_Y28_N5
\inst3|sregin[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	d => \inst3|sregin[2]~feeder_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregin\(2));

-- Location: LCCOMB_X25_Y28_N24
\inst3|sregin[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregin[3]~feeder_combout\ = \inst3|sregin\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|sregin\(2),
	combout => \inst3|sregin[3]~feeder_combout\);

-- Location: FF_X25_Y28_N25
\inst3|sregin[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	d => \inst3|sregin[3]~feeder_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregin\(3));

-- Location: LCCOMB_X25_Y28_N26
\inst3|sregin[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregin[4]~feeder_combout\ = \inst3|sregin\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|sregin\(3),
	combout => \inst3|sregin[4]~feeder_combout\);

-- Location: FF_X25_Y28_N27
\inst3|sregin[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	d => \inst3|sregin[4]~feeder_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregin\(4));

-- Location: LCCOMB_X25_Y28_N6
\inst3|sregin[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|sregin[5]~feeder_combout\ = \inst3|sregin\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|sregin\(4),
	combout => \inst3|sregin[5]~feeder_combout\);

-- Location: FF_X25_Y28_N7
\inst3|sregin[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	d => \inst3|sregin[5]~feeder_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregin\(5));

-- Location: FF_X25_Y28_N11
\inst3|sregin[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	asdata => \inst3|sregin\(5),
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|sregin\(6));

-- Location: LCCOMB_X25_Y28_N12
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|receive:state[0]~q\ $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|receive:state[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|receive:state[0]~q\,
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: FF_X25_Y28_N13
\inst3|receive:state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	d => \inst3|Add0~0_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|receive:state[0]~q\);

-- Location: LCCOMB_X25_Y28_N14
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|receive:state[1]~q\ & (!\inst3|Add0~1\)) # (!\inst3|receive:state[1]~q\ & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|receive:state[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|receive:state[1]~q\,
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: FF_X25_Y28_N15
\inst3|receive:state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	d => \inst3|Add0~2_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|receive:state[1]~q\);

-- Location: LCCOMB_X25_Y28_N16
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|receive:state[2]~q\ & (\inst3|Add0~3\ $ (GND))) # (!\inst3|receive:state[2]~q\ & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|receive:state[2]~q\ & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|receive:state[2]~q\,
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: FF_X25_Y28_N17
\inst3|receive:state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	d => \inst3|Add0~4_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|receive:state[2]~q\);

-- Location: LCCOMB_X25_Y28_N18
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|receive:state[3]~q\ & (!\inst3|Add0~5\)) # (!\inst3|receive:state[3]~q\ & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|receive:state[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|receive:state[3]~q\,
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: FF_X25_Y28_N19
\inst3|receive:state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	d => \inst3|Add0~6_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|receive:state[3]~q\);

-- Location: LCCOMB_X25_Y28_N20
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = \inst3|Add0~7\ $ (!\inst3|receive:state[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|receive:state[4]~q\,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\);

-- Location: LCCOMB_X25_Y28_N8
\inst3|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|state~0_combout\ = (\inst3|Add0~8_combout\ & ((!\inst3|Equal0~0_combout\) # (!\inst3|receive:state[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|receive:state[1]~q\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Add0~8_combout\,
	combout => \inst3|state~0_combout\);

-- Location: FF_X25_Y28_N9
\inst3|receive:state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	d => \inst3|state~0_combout\,
	clrn => \inst3|ALT_INV_transmit:state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|receive:state[4]~q\);

-- Location: LCCOMB_X25_Y28_N30
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst3|receive:state[0]~q\ & (\inst3|receive:state[3]~q\ & (!\inst3|receive:state[4]~q\ & \inst3|receive:state[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|receive:state[0]~q\,
	datab => \inst3|receive:state[3]~q\,
	datac => \inst3|receive:state[4]~q\,
	datad => \inst3|receive:state[2]~q\,
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y28_N22
\inst3|rx[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rx[4]~0_combout\ = (\inst3|receive:state[1]~q\ & (!\CS_N~input_o\ & \inst3|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|receive:state[1]~q\,
	datab => \CS_N~input_o\,
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|rx[4]~0_combout\);

-- Location: FF_X26_Y28_N1
\inst3|rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	asdata => \inst3|sregin\(6),
	clrn => \inst~combout\,
	sload => VCC,
	ena => \inst3|rx[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rx\(7));

-- Location: FF_X26_Y28_N23
\inst3|rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	asdata => \inst3|sregin\(5),
	clrn => \inst~combout\,
	sload => VCC,
	ena => \inst3|rx[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rx\(6));

-- Location: FF_X26_Y28_N9
\inst3|rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	asdata => \inst3|sregin\(4),
	clrn => \inst~combout\,
	sload => VCC,
	ena => \inst3|rx[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rx\(5));

-- Location: LCCOMB_X26_Y28_N10
\inst3|rx[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rx[4]~feeder_combout\ = \inst3|sregin\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|sregin\(3),
	combout => \inst3|rx[4]~feeder_combout\);

-- Location: FF_X26_Y28_N11
\inst3|rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	d => \inst3|rx[4]~feeder_combout\,
	clrn => \inst~combout\,
	ena => \inst3|rx[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rx\(4));

-- Location: LCCOMB_X26_Y28_N16
\inst3|rx[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rx[3]~feeder_combout\ = \inst3|sregin\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|sregin\(2),
	combout => \inst3|rx[3]~feeder_combout\);

-- Location: FF_X26_Y28_N17
\inst3|rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	d => \inst3|rx[3]~feeder_combout\,
	clrn => \inst~combout\,
	ena => \inst3|rx[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rx\(3));

-- Location: LCCOMB_X26_Y28_N26
\inst3|rx[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rx[2]~feeder_combout\ = \inst3|sregin\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|sregin\(1),
	combout => \inst3|rx[2]~feeder_combout\);

-- Location: FF_X26_Y28_N27
\inst3|rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	d => \inst3|rx[2]~feeder_combout\,
	clrn => \inst~combout\,
	ena => \inst3|rx[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rx\(2));

-- Location: LCCOMB_X26_Y28_N12
\inst3|rx[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|rx[1]~feeder_combout\ = \inst3|sregin\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|sregin\(0),
	combout => \inst3|rx[1]~feeder_combout\);

-- Location: FF_X26_Y28_N13
\inst3|rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	d => \inst3|rx[1]~feeder_combout\,
	clrn => \inst~combout\,
	ena => \inst3|rx[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rx\(1));

-- Location: FF_X26_Y28_N7
\inst3|rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_IN~input_o\,
	asdata => \MOSI_IN~input_o\,
	clrn => \inst~combout\,
	sload => VCC,
	ena => \inst3|rx[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rx\(0));
END structure;


