library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity decoder_bin_5_14_seg is
    port ( enable: IN std_logic;
			  datos: IN std_logic_vector(5 downto 0);
			  
			  bcd: OUT std_logic_vector(7 downto 0));
			  
end decoder_bin_5_14_seg;


Architecture solucion of decoder_bin_5_14_seg is
   
	  signal var: std_logic_vector(5 downto 0);
	  signal cnt: std_logic_vector(3 downto 0);

	  
    begin
     process
	  
	  begin
	    var<=datos; 
		 cnt<="00000000";
	    
		 if var>"001010" then
		     while ( var > "001010") loop
			  var<= var-"001010";  
			  cnt<=cnt+"00000001";
			  end loop;
		end if;
		
		
		end process;
		
		bcd<= "00"&datos+(cnt*"00000110");	  
		
		
		
		end solucion;