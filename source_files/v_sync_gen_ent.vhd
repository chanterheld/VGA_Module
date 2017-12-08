library ieee;
use ieee.std_logic_1164.all;

entity v_sync_gen is
	port(	clk	: in	std_logic;
		reset	: in	std_logic;
		y_pos	: in	std_logic_vector(7 downto 0);
		v_sync	: out	std_logic
	);
end entity v_sync_gen;
