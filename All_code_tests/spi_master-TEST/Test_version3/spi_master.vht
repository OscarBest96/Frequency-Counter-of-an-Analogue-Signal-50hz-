--opyright (C) 2017  Intel Corporation. All rights reserved.
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
-- Generated on "07/29/2019 15:20:46"
                                                            
-- Vhdl Test Bench template for design  :  spi_master
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY spi_master_vhd_tst IS
END spi_master_vhd_tst;
ARCHITECTURE spi_master_arch OF spi_master_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CS : STD_LOGIC;
SIGNAL DATATX : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL MISO : STD_LOGIC;
SIGNAL MOSI : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL RX : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SCLK : STD_LOGIC;
SIGNAL START : STD_LOGIC;
COMPONENT spi_master
	PORT (
	CLK : IN STD_LOGIC;
	CS : BUFFER STD_LOGIC;
	DATATX : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	MISO : IN STD_LOGIC;
	MOSI : BUFFER STD_LOGIC;
	RESET : IN STD_LOGIC;
	RX : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	SCLK : BUFFER STD_LOGIC;
	START : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : spi_master
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CS => CS,
	DATATX => DATATX,
	MISO => MISO,
	MOSI => MOSI,
	RESET => RESET,
	RX => RX,
	SCLK => SCLK,
	START => START
	);

CLOCK : PROCESS
BEGIN

for i in 0 to 4999 loop    -- Generates clock pulses with width of 1us
CLK <= '0';              -- Simulates 1MHz clock 
wait for 500 ns;
CLK <= '1';
wait for 500 ns;

end loop;

WAIT;
END PROCESS CLOCK;



init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        
RESET <= '1';           -- RESET active low                                            
DATATX <= "0000000000000000"; -- data to transmit to slave via MOSI line(no data)
START <= '0'; -- start at low, DATATX is stored into tx_buffer
wait for 100 us;
START <= '1'; -- start goes high, CS now low, sampling begins on rising edge of clock

for i in 0 to 3 loop 
MISO <= '0';   -- four zeros from MISO read 
wait for 40 us;
end loop;

for i in 0 to 11 loop 
MISO <= '1';   -- all 1's from MISO read 
wait for 40 us;
end loop;

for i in 0 to 3 loop 
MISO <= '0';   -- four zeros from MISO read 
wait for 40 us;
end loop;

for i in 0 to 11 loop 
MISO <= '1';   -- all 1's from MISO read 
wait for 40 us;
end loop;


for i in 0 to 3 loop 
MISO <= '0';   -- four zeros from MISO read 
wait for 40 us;
end loop;

for i in 0 to 11 loop 
MISO <= '1';   -- all 1's from MISO read 
wait for 40 us;
end loop;



START <= '0'; -- start goes low, CS goes high, end of sampling.

wait for 500 us;

RESET <= '0'; -- RESET now active, RX data is cleared, internal buffers reset.
                 
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
END spi_master_arch;
