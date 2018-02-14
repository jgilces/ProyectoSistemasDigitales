library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PROYECTO_MSS is
    port ( resetn,clock,stop,start,min,max,promedio,ok_delay,comp_min,comp_max,m_positivo,m_igual: IN std_logic;
			  
			  reset_reg_final,en_led,en_delay,reset_delay,en_reg_m1,reset_reg_m1,en_cnt_frecuencia,en_reg_frecuencia,reset_reg_frecuencia,
			  select1,select0,en_reg_promedio,en_reg_min,en_reg_max,en_display: OUT std_logic;
			  reset_cnt_frecuencia:buffer std_logic
			  );
end PROYECTO_MSS;


Architecture solucion of PROYECTO_MSS is
   
	Type estado is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,
	                s19,s20,s21);
	signal y:estado;
	
	begin 
	process (resetn, clock)
	    begin
		 
		 if resetn='0' then y<=s0;
		 elsif clOCk'event and clOCk='1' then 
		 
		    case y is
			    
				 when s0 => if start='1' then y<=s1;END IF;
								
				 when s1 => if start='0' then y<=s2;END IF;
				 when s2 => if stop='0' then y<=s3;
								elsE y<=s15; END IF;
								
		       when s3 => y<=s4;
				 when s4 => if ok_delay='1' then y<=s5;
								elsif stop='1' then y<=s15;
								else y<=s10;END IF;
				 when s5 => if stop='1' then y<=s15 ;
								else y<=s6;END IF;
								
				 when s6 => if comp_min='1' then y<=s7;
								elsif comp_max='1' then y<=s9;
								else y<=s8;END IF;
								
				 when s7 => y<=s8;
				 when s8 => y<=s2;
				 when s9 => y<=s8;
				 when s10 => if m_positivo='1' then y<=s12;
								else y<=s11;END IF;
								
				 when s11 => y<=s10;
				 
				 when s12 => if m_positivo='1' then y<=s13;
				             elsif m_igual='1' then y<=s13;
								else y<=s14;END IF;
								
				 when s13 => y<=s12;
				 when s14 => y<=s4;
				 
				 when s15 => if stop='0' then y<=s16;END IF;
				 
				 when s16 => if min='1' then y<=s17; 
								elsif max='1' then y<=s19;
								elsif promedio='1' then y<=s20;
								else y<=s18;END IF;
								
				 when s17 => if min='0' then y<=s18;end if;
				 when s18 => if stop='1' then y<=s21;
								else y<=s16;END IF;
								
				 when s19 => if max='0' then y<=s18;end if;
				 
				 when s20 => if promedio='0' then y<=s18;end if;
				 
             when s21 => if stop='0' then y<=s0;END IF;		 
				 
			end case;
	  end if;
	end process;

	
	process (y)
	   begin 
		reset_reg_final<='0';en_led<='0';en_delay<='0';reset_delay<='0';en_reg_m1<='0';reset_reg_m1<='0';en_cnt_frecuencia<='0';en_reg_frecuencia<='0';reset_reg_frecuencia<='0';
		select1<='0';select0<='0';en_reg_promedio<='0';en_reg_min<='0';en_reg_max<='0';en_display<='0';
		reset_cnt_frecuencia<='0';		
		case y is
			when s0=> reset_reg_frecuencia<='1' ; reset_cnt_frecuencia<='1';reset_reg_final<='1';
			when s1=> 
			when s2=> en_led<='1';
			when s3=> en_delay<='1' ; en_reg_m1<='1' ; reset_cnt_frecuencia<='1';
			when s4=> en_led<='1';
			when s5=> en_led<='1' ;
			when s6=> en_led<='1' ; en_reg_frecuencia<='1' ; reset_delay<='1' ; en_display<='1';
			when s7=> en_reg_min<='1'; en_led<='1'; 
			when s8=> en_led<='1' ; reset_cnt_frecuencia<='1' ; en_reg_promedio<='1';
			when s9=> en_led<='1' ; en_reg_max<='1';
			when s10=> en_led<='1';
			when s11=> en_led<='1' ; en_reg_m1<='1';
			when s12=> en_led<='1';
			when s13=> en_led<='1' ; en_reg_m1<='1';
			when s14=> en_led<='1' ; en_cnt_frecuencia<='1';
			when s15=> 
			when s16=>
			when s17=> select1<='1';
			when s18=> 
			when s19=> select0<='1';
			when s20=> select0<='1' ; select1<='1';
			when s21=>
			
			
			
		end case;
	end process;
	
end solucion;
