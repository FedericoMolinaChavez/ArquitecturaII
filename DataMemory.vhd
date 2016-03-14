library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

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
type dArray is array (127 downto 0) of STD_LOGIC_VECTOR (31 downto 0);
signal dram: dArray;
signal data_a: STD_LOGIC_VECTOR (31 downto 0);
begin
	data <= data_a;
	process(entA,entB,memWrite,memRead,data_a)
	begin
		case memWrite is
			when '1' => dram(to_integer(unsigned(entA)))<=entB;
		end case;
		case memRead is
			when '1' => data_a <= dram(to_integer(unsigned(entA)));
		end case;
	end process;

end DataMemory_arch;
