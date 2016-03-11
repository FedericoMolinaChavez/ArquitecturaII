library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registerFile is
	port(
	rs: in STD_LOGIC_VECTOR (4 downto 0);
	rt: in STD_LOGC_VECTOR (4 downto 0);
	rd: in STD_LOGIC_VECTOR (4 downto 0);
	datoMem: in STD_LOGIC_VECTOR (31 downto 0);
	regwrite: in std_logic;
	rega: out STD_LOGIC_VECTOR (31 downto 0);
	regb: out STD_LOGIC_VECTOR (321 downto 0));
end registerFile;

architecture registerFile_arch of registerFile is

end registerFile_arch