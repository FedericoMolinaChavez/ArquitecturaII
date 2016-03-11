entity MUXJ is
	port(
	ent1: in STD_LOGIC_VECTOR (31 downto 0);
	ent2: in STD_LOGIC_VECTOR (31 downto 0);
	ent3: in STD_LOGIC_VECTOR (31 downto 0);
	jump: in STD_LOGIC_VECTOR (1 downto 0);
	sal: out STD_LOGIC_VECTOR (31 downto 0);
	);

architecture MUXJ_arch of MUXJ is
	process (jump)
	begin
	sal<=ent1 when jump="00"else
	sal<=ent2 when jump="01"else
	sal<=ent3;
	end process
end MUXJ_arch
