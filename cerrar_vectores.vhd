library ieee;
use ieee.std_logic_1164.all;

entity cerrar_vectores is
    port ( I7,I6,I5,I4,I3,I2,I1,I0: in std_logic;
			  salida: OUT std_logic_vector(7 downto 0));
end cerrar_vectores;

architecture solucion of cerrar_vectores is
    begin
	 salida<= I7 & I6 & I5 & I4 & I3 & I2 & I1 & I0;
	 
end solucion;