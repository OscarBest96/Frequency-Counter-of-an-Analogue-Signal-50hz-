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
-- Generated on "08/14/2019 12:55:42"
                                                            
-- Vhdl Test Bench template for design  :  wait_N_seconds
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY wait_N_seconds_vhd_tst IS
END wait_N_seconds_vhd_tst;
ARCHITECTURE wait_N_seconds_arch OF wait_N_seconds_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL RESET : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL READY : STD_LOGIC;
SIGNAL START : STD_LOGIC;
COMPONENT wait_N_seconds
	PORT (
	RESET : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	READY : OUT STD_LOGIC;
	START : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : wait_N_seconds
	PORT MAP (
-- list connections between master ports and signals
	RESET => RESET,
	CLK => CLK,
	READY => READY,
	START => START
	);


CLOCK : PROCESS
BEGIN

for i in 0 to 6999999 loop    -- Generates clock pulses with width of 1us
CLK <= '0';              -- Simulates 1MHz clock 
wait for 500 ns;
CLK <= '1';
wait for 500 ns;

end loop;

WAIT;
END PROCESS CLOCK;


init : PROCESS                                               

--For this testbench i'm expecting to see READY go high after 5,000,000 clock pulses
--it is important for READY output of 1 to latch, remaining high because the spi will only 
--sample while READY = '1'
--I'm also testing the behaviour of the reset
                                 
BEGIN                                                        

wait for 10 us;  
START <= '1'; -- start goes high very shortly after the beginning of the test

wait for 6499999 us; 
RESET <= '0';  -- reset becomes active towards the end of the test

                        
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
END wait_N_seconds_arch;
