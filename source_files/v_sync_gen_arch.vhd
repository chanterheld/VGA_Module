library ieee;
use ieee.std_logic_1164.all;

 architecture behav of v_sync_gen is
signal v_reg, v_next, intrm_1, intrm_2, intrm_3, intrm_4: std_logic;

begin
intrm_1 <= (v_reg or reset);
intrm_2 <= (y_pos(7) and y_pos(1));
intrm_3 <= (intrm_2 nand y_pos(0));
intrm_4 <= (intrm_1 nand intrm_3);
v_next <= (intrm_4 nand y_pos(7));
process (clk)
begin
	if (rising_edge(clk)) then
		v_reg <= v_next;
	end if;
end process;


v_sync <= v_reg;
end behav;
