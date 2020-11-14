library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--This is the spi master which samples from the ADC at a rate of 25kHz
--Should allow for continuous sampling

entity spi_master is

	generic (
		DATA_WIDTH : natural := 16;
		CLK_DIV : natural := 20
	);

	port (
		MISO 	: in   std_logic;		--Master In Slave Out
		MOSI 	: out  std_logic;		--Master Out Slave In
		SCLK 	: out  std_logic;		--SPI Serial CLock (1MHz)
		CS    : out  std_logic;		--Chip select
		CLK 	: in   std_logic;		--FPGA Clock
		RESET  : in   std_logic;	--Async Reset
		DATATX : in   std_logic_vector((DATA_WIDTH-1) downto 0);	-- data to be sent over MOSI (msb first)
		START : in   std_logic;		--Start ADC data sampling
		RX    : out  std_logic_vector((DATA_WIDTH-1) downto 0)	-- Received data
		
	);

end entity;

architecture v1 of spi_master is

   signal RX_BUFFER : std_logic_vector(DATA_WIDTH -1 downto 0):= (others => '0'); --internal buffer created to store RX data			
	signal TX_BUFFER : std_logic_vector(DATA_WIDTH -1 downto 0):= (others => '0'); --internal buffer created to hold DATATX data	
   signal sclk_pulse: std_logic:= '0'; --represents logic 'high' and 'low' for SCLK state
	signal CS_enable: std_logic:= '0';  --allows CS to be used as a parameter in if statement
	
	begin
process(START, CLK, RESET, DATATX, RX_BUFFER, TX_BUFFER) is
	
	variable rx_count	:integer := (DATA_WIDTH -1);	--counters for transmitted and recieved data, counts down from full data width.
	variable tx_count :integer := (DATA_WIDTH -1);	
   variable sclk_count :integer := CLK_DIV;        -- count down from CLK_DIV to scale SCLK output clock
begin

	if (RESET ='0') then				
			RX_BUFFER <= (OTHERS => '0');		
			TX_BUFFER <= (OTHERS => '0');	-- resets all values to zero
		   RX        <= (OTHERS => '0');
			MOSI      <= 'Z';             -- MOSI to high impedence		
         CS        <= '1';			      -- chip select goes high
			rx_count	:= (DATA_WIDTH - 1);	-- resets counters to value of data width	
			tx_count := (DATA_WIDTH - 1);		
	
	elsif (START ='1') then   -- when start goes to '1' 
	      CS <= CS_enable;    --pull CS low
         SCLK <= sclk_pulse; --output SCLK to sclk_pulse state
			  if(rising_edge(CLK)) then
			     sclk_count := sclk_count-1; --decrease clock counter
			       if(sclk_count = 0) then
			          sclk_pulse <= not sclk_pulse; --toggle internal signal 
						 SCLK <= sclk_pulse;           --assign signal to output SCLK
						 sclk_count := CLK_DIV;        --reset counter
		 			 

		  if (CS_enable = '0' and sclk_pulse = '0') then		-- on rising edge of SCLK (updates just as rising edge starts)
			
				RX_BUFFER(rx_count) <= MISO; -- bit read from MISO line and stored into MSB of RX_BUFFER		
				rx_count := rx_count  - 1;	  -- rx count decreased by 1
				 
		        
				  
		elsif (CS_enable = '0' and sclk_pulse = '1') then	-- on falling edge of SCLK (updates just as falling edge starts)
				
				MOSI <= TX_BUFFER(tx_count); -- MSB from TX_BUFFER placed onto MOSI line
				tx_count := tx_count  - 1;	 -- tx count decreased by 1
				
				
				
			end if;
	   end if;	       
	end if;
		
					
	elsif (START ='0') then	-- when start goes to zero
			CS <= '1';			-- chip select returns to high
			TX_BUFFER((DATA_WIDTH -1) downto 0)<= DATATX((DATA_WIDTH -1) downto 0);	-- input DATATX is stored into TX_BUFFER	
		  	rx_count := (DATA_WIDTH -1);	-- both counts reset to value of data width	
			tx_count := (DATA_WIDTH -1);		
			MOSI <='Z'; -- MOSI line to high impedence
     		
	
	end if;	
	
if (rx_count = -1 and tx_count = -1) then         -- when both counts reach a value of -1 (end of transaction),
   RX <= RX_BUFFER;                               -- all the values recieved in RX_BUFFER are put onto the RX line
   RX_BUFFER <= (OTHERS => '0');                  -- RX_BUFFER is cleared after stored onto RX
   rx_count	:= (DATA_WIDTH - 1);                  -- rx_count is reset.
	TX_BUFFER((DATA_WIDTH -1) downto 0)<= DATATX((DATA_WIDTH -1) downto 0);  	-- input DATATX is stored into TX_BUFFER
	tx_count	:= (DATA_WIDTH - 1);              -- tx_count is reset.
	end if;
	


end process;
end v1;