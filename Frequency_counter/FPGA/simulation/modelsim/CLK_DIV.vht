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
-- Generated on "07/29/2019 19:42:45"
                                                            
-- Vhdl Test Bench template for design  :  CLK_DIV
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CLK_DIV_vhd_tst IS
END CLK_DIV_vhd_tst;
ARCHITECTURE CLK_DIV_arch OF CLK_DIV_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL reset : STD_LOGIC;
SIGNAL SCLK : STD_LOGIC;
SIGNAL SCLK_o : STD_LOGIC;
COMPONENT CLK_DIV
	PORT (
	reset : IN STD_LOGIC;
	SCLK : IN STD_LOGIC;
	SCLK_o : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CLK_DIV
	PORT MAP (
-- list connections between master ports and signals
	reset => reset,
	SCLK => SCLK,
	SCLK_o => SCLK_o
	);

CLOCK : PROCESS
BEGIN

reset <= '1';  --Reset active high
SCLK <= '0';   --hold SCLK low
wait for 1000 ns;
reset <= '0';  
wait for 20 ns;


for i in 0 to 199 loop    -- Generates clock pulses with width of 1us
SCLK <= '1';              -- Simulates 1MHz clock 
wait for 500 ns;
SCLK <= '0';
wait for 500 ns;


end loop;

WAIT;
END PROCESS CLOCK;  

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
END CLK_DIV_arch;
