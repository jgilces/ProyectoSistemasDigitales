library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity delay_1seg is
    port ( en_cnt,reset_cnt,clock_1hz: IN std_logic;
			  
			  ok_delay: OUT std_logic:='0');
end delay_1seg;

architecture solucion of delay_1seg is

    signal cnt:std_logic_vector(1 downto 0):= "00";
	 signal var:std_logic:='0';
	 begin
	 
	 
	 
    process (reset_cnt,clock_1hz)
	 
	    begin
		 if en_cnt='1' then
		    var<='1';
		end if;
		 		 
		 if reset_cnt='0' then ok_delay<='0' ; cnt<="00"; var<='0';
			elsif clock_1hz'event and clock_1hz='1' then
			  if var='1' then
				  cnt<=cnt+"01"	;	  
				end if;  
			end if;
		
		if cnt="10" then ok_delay<='1'; else ok_delay<='0';
		end if;
	end process;
	
end solucion;