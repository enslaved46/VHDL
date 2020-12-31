library ieee;
use ieee.std_logic_1164.all;

entity comparator_tb is

end comparator_tb;

architecture tb of comparator_tb is

	signal in_a_tb , in_b_tb : std_logic_vector(1 downto 0);
	signal comp_out : std_logic ;

begin

	uut :entity work.comparator_top(rtl)
		port map (a => in_a_tb , b => in_b_tb, eq_out => comp_out  );
		
	process 
	begin
		--test 1
		
		in_a_tb <= "00";
		
		in_b_tb <= "00";
		wait for 40 ns;
		
		
		--test 2
		in_a_tb <= "00";
		in_b_tb <= "01";
		wait for 40 ns;
		
		
		--test 3
		in_a_tb <= "00";
		in_b_tb <= "10";
		wait for 40 ns;

			
		--test 4
		in_a_tb <= "00";
		in_b_tb <= "11";
		wait for 40 ns;
		
			--test 5
		in_a_tb <= "11";
		in_b_tb <= "11";
		wait for 40 ns;
		
		
		
		
	end process;
	
end tb; 
		
		