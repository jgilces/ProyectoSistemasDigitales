library ieee;
use ieee.std_logic_1164.all;

entity or_5 is
    port ( A: in std_logic_vector(5 downto 0);
			  salida: OUT std_logic);
end or_5;

architecture solucion of or_5 is
    begin 
	 salida<=A(5) OR A(4) OR A(3) or A(2) OR A(1) OR A(0);
	 
end solucion;