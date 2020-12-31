library ieee;
use ieee.std_logic_1164.all;

entity comparator_top is

port(
	a,b     : in std_logic_vector(1 downto 0);
	eq_out  : out std_logic
	);
	
end comparator_top;
	
architecture rtl of comparator_top is 

	component comparator is
		
		port(
			i0,i1 : in std_logic;
			eq    : out std_logic
			);
			
	end component ;
	
	signal f0 , f1 : std_logic;
	
begin
	
	--instantating 
	
	eq_bit0_unit_0 : comparator -- comparator is the main architecture
		port map ( i0 => a(0) , i1 => b(0), eq => f0); 
		
	eq_bit1_unit_1 : comparator -- comparator is the main architecture
		port map ( i0 => a(1) , i1 => b(1), eq => f1 );
		
	eq_out <= f0 and f1;
	

end rtl;