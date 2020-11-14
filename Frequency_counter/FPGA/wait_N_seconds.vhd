library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--Wait N seconds before ADC sampling begins.
--On power up, the countdown (seconds) will begin before a logical '1' is sent
--to the spi master which starts the sampling

entity wait_N_seconds is
	
	generic (
		N	: natural  :=	5      --5 second delay before sampling
	);
	
	port(
		RESET: in  std_logic;  -- asynchronous reset
		CLK	 : in  std_logic;  --input clock (1MHz)
		START: in  std_logic;  --logical input START, high when power up
		READY: out std_logic   --logical output, high after countdown
	);

end entity;

architecture behaviour of wait_N_seconds is
	
begin
process (CLK, RESET)

variable count :integer := (N*1000000);  -- initial count value, N*1000000, scaled
	                                     -- for 1MHz clock
	begin
		if (RESET = '0') then
			count := (N*1000000);          -- count reset to maximum value
		   
			
		elsif (rising_edge(CLK)) then      -- on rising edge 
			if (START = '0') then          -- if start = 0, count is reset
				count := (N*1000000);
				 
				
			elsif (START = '1') then       -- while start = 1, countdown begins
				count := count - 1;
				
			end if;
		end if;


if (count = 0) then      -- when count reaches 0, logical 1 appears on output 'READY'
	READY <= '1';
	
elsif (count > 0) then   -- while count is above 0, READY = 0
   READY <= '0';
	
end if;
end process;

end behaviour;