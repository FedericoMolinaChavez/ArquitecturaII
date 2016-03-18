library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity registerFile is
	port(
	rs: in STD_LOGIC_VECTOR (4 downto 0);
	rt: in STD_LOGIC_VECTOR (4 downto 0);
	rd: in STD_LOGIC_VECTOR (4 downto 0);
	datoMem: in STD_LOGIC_VECTOR (31 downto 0);
	regwrite: in std_logic;
	rega: out STD_LOGIC_VECTOR (31 downto 0);
	regb: out STD_LOGIC_VECTOR (31 downto 0));
end registerFile;

architecture registerFile_arch of registerFile is
type ram is array (15 downto 0) of std_LOGIC_VECTOR (31 downto 0);

signal registerfiles: ram;

begin
	process(rs,rt,rd,regwrite,datoMem)
	begin
		if regwrite = '1' then
			registerfiles (to_integer(unsigned(rd))) <= datoMem;
		else
			rega<= registerfiles(to_integer(unsigned(rs)));
			regb<= registerfiles(to_integer(unsigned(rt)));
		end if;
	end process;
end registerFile_arch;
