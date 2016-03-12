library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std;
entity shiftleft2 is
	port(
	ent: in STD_LOGIC_VECTOR (31 downto 0);
	sal: out STD_LOGIC_VECTOR (31 downto 0)
	);
end shiftleft2;

architecture shiftleft2_arch of shiftleft2 is
begin
	sal <= ent sll 2;

end shiftleft2_arch;
