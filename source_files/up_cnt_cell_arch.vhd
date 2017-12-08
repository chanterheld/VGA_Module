library ieee;
use ieee.std_logic_1164.all;

architecture structural of up_cnt_cell is
	signal tmp: std_logic;
begin

process (clk)
begin
	if rising_edge(clk) then
 		if (reset = '1') then
			tmp <= '0';
		else
			tmp <= (t xor tmp);
		end if;
	end if;
end process;
q <= tmp;
and_out <= (tmp and t); 
end structural;
