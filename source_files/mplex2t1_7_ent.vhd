library ieee;
use ieee.std_logic_1164.all;

entity mplex2t1_7 is 
	port(	a	: in 	std_logic_vector(6 downto 0);
		b	: in	std_logic_vector(6 downto 0);
		sel	: in	std_logic;
		q	: out	std_logic_vector(6 downto 0)
	);
end entity mplex2t1_7;
