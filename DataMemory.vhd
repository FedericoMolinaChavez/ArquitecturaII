library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DataMemory is
	port(
	entA: in STD_LOGIC_VECTOR (31 downto 0);
	entB: in STD_LOGIC_VECTOR (31 downto 0);
	memWrite: in std_logic;
	memRead: in std_logic;
	data: out STD_LOGIC_VECTOR (31 downto 0)
	);
end DataMemory;

architecture DataMemory_arch of DataMemory is
begin

end DataMemory_arch;