library ieee;
use ieee.std_logic_1164.all;

entity decoder_3to8 is
  port(
    x  :  in  std_logic_vector(2 downto 0);
    y  :  out  std_logic_vector(7 downto 0)
	);
end decoder_3to8;
