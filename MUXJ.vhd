library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUXJ is
	port(
	ent1: in STD_LOGIC_VECTOR (31 downto 0);
	ent2: in STD_LOGIC_VECTOR (31 downto 0);
	ent3: in STD_LOGIC_VECTOR (31 downto 0);
	jump: in STD_LOGIC_VECTOR (1 downto 0);
	sal: out STD_LOGIC_VECTOR (31 downto 0)
	);
end MUXJ;

architecture MUXJ_arch of MUXJ is
begin
	process (jump)
	begin
	
	sal<=ent1 when (jump="00")else
	ent2 when (jump="01")else
	ent3;
	end process;
end MUXJ_arch;
