library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.all;

entity instmemory is
	port(
	clk: in std_logic;
	memRead: in std_logic;
	memWrite: in std_logic;
	adress: in std_LOGIC_VECTOR (31 downto 0);
	ent: in STD_LOGIC_VECTOR (31 downto 0);
	sal: out STD_LOGIC_VECTOR (31 downto 0));
end instmemory;

architecture instmemory_arch of instmemory is
type RAM is array (400 downto 0) of std_LOGIC_VECTOR(31 downto 0);

signal RAMinsMemory: RAM :=(others=>"00000000000000000000000000000000");

begin
	process (clk,memRead,memWrite)
		begin
			if rising_edge(clk) then
				if memRead = '1' then
					RAMinsMemory(to_integer(unsigned(adress))) <= ent;
				else
				end if;
				if memWrite ='1' then
					sal <= RAMinsMemory(to_integer(unsigned(adress)));
				else
				end if;
			else
			end if;
		end process;
end instmemory_arch;