library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--Wait N clock cycles before ADC sampling begins.

entity waitncycles is
	
	generic (
		N	: natural  :=	5
	);
	
	port(
		areset : in  std_logic;
		clk	 : in	 std_logic;
		START	 : in	 std_logic;
		READY	 : out std_logic
	);

end entity;

architecture rtl of waitncycles is

   signal count: natural;
	
begin


	process (clk, areset)
	begin
		if areset = '0' then
			count <= (N*1000000);
			
		elsif (rising_edge(clk)) then
			if (start = '0') then
				count <=(N*1000000);
				
			elsif (start>'0') then
				count <= count - 1;
				
			end if;
		end if;


if (count = 0) then
	READY <= '1';
	else
	READY <= '0';
end if;
end process;

end rtl;