library ieee;
use ieee.std_logic_1164.all;

entity divisor_2 is
    port ( A: in std_logic_vector(7 downto 0);
			  salida: OUT std_logic_vector(7 downto 0));
end divisor_2;

architecture solucion of divisor_2 is
   begin 
	 salida(7)<='0';
	 salida(6)<=A(7);
	 salida(5)<=A(6);
	 salida(0)<=A(1);
	 salida(1)<=A(2);
	 salida(2)<=A(3);
	 salida(3)<=A(4);
	 salida(4)<=A(5);
	 
end solucion;