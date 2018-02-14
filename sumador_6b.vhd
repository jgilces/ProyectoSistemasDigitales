library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity sumador_6b is
    port ( A,B: in std_logic_vector(5 downto 0);
			  s5,s4,s3,s2,s1,s0,co: OUT std_logic);
end sumador_6b;

architecture solucion of sumador_6b is
    
	 signal suma: std_logic_vector(6 downto 0);
	 begin
	 
	 
    suma <= (('0'&A)+('0'&B));
	 
	 s5<=suma(5);
	 s4<=suma(4);
	 s3<=suma(3);
	 s2<=suma(2);
	 s1<=suma(1);
	 s0<=Suma(0);
	 
	 co<=suma(6);
	 
end solucion;