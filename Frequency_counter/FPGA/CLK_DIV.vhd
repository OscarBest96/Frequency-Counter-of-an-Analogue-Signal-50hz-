library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

--This component acts as a frequency divider for the output signal SCLK. 
--New output SCLK_o acts as clock of 25kHz.
  
entity CLK_DIV is

port (

SCLK:   in std_logic;  -- 1MHZ clock output from Spi master.
reset:  in std_logic;  -- asynchronous reset

SCLK_o: out std_logic  -- new 25kHz clock

);

end CLK_DIV;

architecture behaviour of CLK_DIV is

signal count: integer   := 0;   -- counter to delay between new clock pulses.
signal pulse: std_logic := '0'; -- logical signal for new clock pulse.

begin

process(SCLK,reset)

begin

if(reset='0') then   -- When reset, reset count, pull pulse low.

count<= 0;
pulse<='0';

elsif(rising_edge(SCLK)) then -- when rising edge of SCLK.
count <=count+1;                    -- start count.
                                    -- Delay of 20 for half duty cycle,
if (count = 19) then                -- (40 for full cycle -> 1000000/40 = 25000).
pulse <= NOT pulse;                 -- Toggle pulse from '0' to '1' to '0' etc.
count <= 0;                         -- Reset count back to 0.

end if;
end if;

SCLK_o <= pulse;                 -- output logic to SCLK_o line 

end process;
end behaviour;