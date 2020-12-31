library ieee;
use ieee.std_logic_1164.all;

entity comparator is
	port(
		i0,i1 : in std_logic;
		eq    : out std_logic
		);
end comparator ;

architecture sop of comparator is 

signal po, p1 : std_logic ;

begin

	po <= (not i0) and (not i1);
	p1 <= i0 and i1 ;
	eq <= po or p1;
end sop;

