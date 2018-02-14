library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MUX_4_1 is
    port ( select1,select0: IN std_logic;
			  Q_FRECUENCIA,Q_FRECUENCIA_MIN,Q_FRECUENCIA_MAX,Q_FRECUENCIA_PROMEDIO: IN std_logic_vector(5 downto 0);
			  
			  salida_mux: OUT std_logic_vector(5 downto 0));
			  
end MUX_4_1;


Architecture solucion of MUX_4_1 is
   signal aaa:std_logic_vector(1 downto 0);
   begin 
	
	 aaa<=select1&select0;
	 
	 PROCESS(aaa)
	 begin
	 
	 
	 
	 case (aaa) is 
			 
			 when "00" => salida_mux<=Q_FRECUENCIA;
			 when "01" => salida_mux<=Q_FRECUENCIA_MIN;
			 when "10" => salida_mux<=Q_FRECUENCIA_MAX; 
          when "11" => salida_mux<=Q_FRECUENCIA_PROMEDIO;
	END CASE;
	
	end process;
	
end solucion;