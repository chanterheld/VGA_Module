library ieee;
use ieee.std_logic_1164.all;

 architecture structural of gated_reg_7 is
component reg_7 is
	port(	clk	: in	std_logic;
		reset	: in 	std_logic;
		t	: in	std_logic_vector(6 downto 0);
		q	: out	std_logic_vector(6 downto 0)
	);
end component;

component mplex2t1_7 is 
	port(	a	: in 	std_logic_vector(6 downto 0);
		b	: in	std_logic_vector(6 downto 0);
		sel	: in	std_logic;
		q	: out	std_logic_vector(6 downto 0)
	);
end component;

signal plex_out, q_s: std_logic_vector(6 downto 0);
begin
l1: reg_7		port map(clk, reset, plex_out, q_s);
l2: mplex2t1_7		port map(q_s, t, load, plex_out);
q <= q_s;
end structural;
