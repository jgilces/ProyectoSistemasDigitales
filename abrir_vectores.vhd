library ieee;
use ieee.std_logic_1164.all;

entity abrir_vectores is
    port ( A: in std_logic_vector(7 downto 0);
			  s7,s6,s5,s4,s3,s2,s1,s0: OUT std_logic);
end abrir_vectores;

architecture solucion of abrir_vectores is
   begin 
	 s0<=A(0);
	 s1<=A(1);
	 s2<=A(2);
	 s3<=A(3);
	 s4<=A(4);
	 s5<=A(5);
	 s6<=A(6);
	 s7<=A(7);
	 
end solucion;