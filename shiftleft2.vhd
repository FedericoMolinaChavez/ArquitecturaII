ieee.numeric_std
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shiftleft2 is
	port(
	ent: in STD_LOGIC_VECTOR (31 downto 0);
	sal: out STD_LOGIC_VECTOR (31 downto 0)
	);
end shiftleft2;

architecture shiftleft2_arch of shiftleft2 is
	sal <= ent sll 2;

end shiftleft2;
