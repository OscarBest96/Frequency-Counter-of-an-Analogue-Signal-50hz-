library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
                               

ENTITY T_cycle_measurement_vhd_tst IS
END T_cycle_measurement_vhd_tst;
ARCHITECTURE T_cycle_measurement_arch OF T_cycle_measurement_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL data_tx : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
SIGNAL RX : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT T_cycle_measurement
	PORT (
	CLK : IN STD_LOGIC;
	data_tx : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RESET : IN STD_LOGIC;
	RX : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : T_cycle_measurement
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	data_tx => data_tx,
	RESET => RESET,
	RX => RX
	);
CLOCK : PROCESS
BEGIN

for i in 0 to 19999 loop    -- Generates clock pulses with width of 1us
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
                                                    
--This testbench code recieves the full 12 bit resolution of possible signal samples between two
--rising edges of the incoming signal. 
--In doing so i can evaluate how the VHDL code performs in it's attempt to measure a value for T.
--The value of T (data_tx) will come in the form of a possible 16bit value (depending on length of signal),
--where each bit is worth 0.000001s (running off 1MHz clock).


 
RESET <= '1';                    --Disable reset.
RX <= "0000000000000000";        --set recieved data to all zeros.
wait for 1 us;

while(RX<"0000111111111111") loop  --sample ascending RX values to full 12bit value (rising edge of signal).
RX <= RX + x"1";
wait for 1 us;
end loop;

while(RX>"0000000000000000") loop --sample descending RX values to full 12bit value (next falling edge).
RX <= RX - x"1";
wait for 1 us;
end loop;

while(RX<"0000111111111111") loop --sample ascending RX values to full 12bit value (The following rising edge).
RX <= RX + x"1";
wait for 1 us;
end loop;            

wait for 50 us;
RESET <= '0';    -- after 50us pull reset low to check data_tx is cleared.

                                        
                           
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
END T_cycle_measurement_arch;
