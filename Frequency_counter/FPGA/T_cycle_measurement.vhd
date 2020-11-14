library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--This code is designed to measure the time taken to perform one cycle of the 
--measured 50Hz signal, by outputting a DATA_WIDTH-long value, which later can be
--used in a frequency calculation.


entity T_cycle_measurement is

	generic (
	
		DATA_WIDTH : natural := 16
	);

	port (
	   
		RX    : in  std_logic_vector((DATA_WIDTH-1) downto 0);                -- Received data
      CLK 	: in   std_logic;		                                          -- FPGA Clock
		RESET : in   std_logic;	                                              -- Async Reset
		data_tx : out std_logic_vector((DATA_WIDTH-1) downto 0)               -- 16bit wide value. 
                                                                              -- value* 1MHz clock cycle period(1*10-6 seconds) = T
   );

end entity;

architecture v1 of T_cycle_measurement is

 signal RX_BUFFER : std_logic_vector(DATA_WIDTH -1 downto 0):= (others => '0'); --internal buffer created to store RX ADC data.			  
 signal counter_up: std_logic_vector(DATA_WIDTH -1 downto 0):= (others => '0'); --counter to count 1MHz clock cycles within 1 
                                                                                --cycle of the incoming (50Hz) signal.

	begin
process( CLK, RESET, RX, RX_BUFFER, counter_up) is
	
	variable midpoint_count	:integer := 3;	     --counter which counts down every time the signal passes
                                                 --through midpoint of 3.3v. if 3.3v = "111111111111" then
	                                             --1.65v = "100000000000"
begin



	if (RESET ='0') then	                 --active low reset.
	
	  RX_BUFFER  <= (OTHERS => '0');		
	  counter_up <= (OTHERS => '0');	     -- resets all values to zero.
	  data_tx    <= (OTHERS => '0');

		elsif(rising_edge(CLK)) then
		
       RX_BUFFER <= RX;                      -- store incoming ADC samples into internal buffer.


		 -- if statement parameters: execute code when midpoint crossing is detected
		 
		 if ((midpoint_count = 3) and (RX_BUFFER((DATA_WIDTH-5) downto 0)>"100000000000")) or    
		 ((midpoint_count = 2) and (RX_BUFFER((DATA_WIDTH-5) downto 0)<"100000000000")) or 
		 ((midpoint_count = 1) and (RX_BUFFER((DATA_WIDTH-5) downto 0)>"100000000000")) then        
		                                                                       
	    midpoint_count := midpoint_count-1;  -- Decreases the count by 1 every time a crossover is detected.

   
 	   end if;    
		
		 
		 if(rising_edge(CLK)) then
		 
		    if((midpoint_count = 2) or (midpoint_count = 1)) then      --whilst the midpoint_count has begun,
			   counter_up <= counter_up + '1';  	                   --count no. clock pulses.
		 
          elsif(midpoint_count = 0) then                    
		      data_tx <= counter_up; 		                           --once midpoint_count ends(signals finish of one cycle)
                                                                       --clock value of counter_up to output data_tx
	    end if;		 	   
		 
	     
	  
	 
  end if;
end if;	  
	
end process;
end v1;