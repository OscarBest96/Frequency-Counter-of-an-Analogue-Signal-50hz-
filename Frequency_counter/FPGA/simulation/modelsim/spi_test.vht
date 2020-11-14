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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "08/12/2019 18:17:35"
                                                            
-- Vhdl Test Bench template for design  :  spi_test
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY spi_test_vhd_tst IS
END spi_test_vhd_tst;
ARCHITECTURE spi_test_arch OF spi_test_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL 50MHz_CLK : STD_LOGIC;
SIGNAL ADC_CS_N : STD_LOGIC;
SIGNAL ADC_SADDR : STD_LOGIC;
SIGNAL ADC_SCLK : STD_LOGIC;
SIGNAL ADC_SDAT : STD_LOGIC;
SIGNAL CLOCK_1_OP : STD_LOGIC;
SIGNAL CS_N : STD_LOGIC;
SIGNAL LED_0 : STD_LOGIC;
SIGNAL LED_1 : STD_LOGIC;
SIGNAL LED_2 : STD_LOGIC;
SIGNAL LED_3 : STD_LOGIC;
SIGNAL LED_4 : STD_LOGIC;
SIGNAL LED_5 : STD_LOGIC;
SIGNAL LED_6 : STD_LOGIC;
SIGNAL LED_7 : STD_LOGIC;
SIGNAL MISO : STD_LOGIC;
SIGNAL MOSI_IN : STD_LOGIC;
SIGNAL RESET_BUTTON : STD_LOGIC;
SIGNAL RESET_BUTTON2 : STD_LOGIC;
SIGNAL SCLK_IN : STD_LOGIC;
SIGNAL Switch_0 : STD_LOGIC;
SIGNAL Switch_1 : STD_LOGIC;
SIGNAL Switch_2 : STD_LOGIC;
SIGNAL Switch_3 : STD_LOGIC;
COMPONENT spi_test
	PORT (
	\50MHz_CLK\ : IN STD_LOGIC;
	ADC_CS_N : OUT STD_LOGIC;
	ADC_SADDR : OUT STD_LOGIC;
	ADC_SCLK : OUT STD_LOGIC;
	ADC_SDAT : IN STD_LOGIC;
	CLOCK_1_OP : OUT STD_LOGIC;
	CS_N : IN STD_LOGIC;
	LED_0 : OUT STD_LOGIC;
	LED_1 : OUT STD_LOGIC;
	LED_2 : OUT STD_LOGIC;
	LED_3 : OUT STD_LOGIC;
	LED_4 : OUT STD_LOGIC;
	LED_5 : OUT STD_LOGIC;
	LED_6 : OUT STD_LOGIC;
	LED_7 : OUT STD_LOGIC;
	MISO : OUT STD_LOGIC;
	MOSI_IN : IN STD_LOGIC;
	RESET_BUTTON : IN STD_LOGIC;
	RESET_BUTTON2 : IN STD_LOGIC;
	SCLK_IN : IN STD_LOGIC;
	Switch_0 : IN STD_LOGIC;
	Switch_1 : IN STD_LOGIC;
	Switch_2 : IN STD_LOGIC;
	Switch_3 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : spi_test
	PORT MAP (
-- list connections between master ports and signals
	\50MHz_CLK\ => 50MHz_CLK,
	ADC_CS_N => ADC_CS_N,
	ADC_SADDR => ADC_SADDR,
	ADC_SCLK => ADC_SCLK,
	ADC_SDAT => ADC_SDAT,
	CLOCK_1_OP => CLOCK_1_OP,
	CS_N => CS_N,
	LED_0 => LED_0,
	LED_1 => LED_1,
	LED_2 => LED_2,
	LED_3 => LED_3,
	LED_4 => LED_4,
	LED_5 => LED_5,
	LED_6 => LED_6,
	LED_7 => LED_7,
	MISO => MISO,
	MOSI_IN => MOSI_IN,
	RESET_BUTTON => RESET_BUTTON,
	RESET_BUTTON2 => RESET_BUTTON2,
	SCLK_IN => SCLK_IN,
	Switch_0 => Switch_0,
	Switch_1 => Switch_1,
	Switch_2 => Switch_2,
	Switch_3 => Switch_3
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END spi_test_arch;
