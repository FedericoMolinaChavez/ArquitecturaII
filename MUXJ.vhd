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
	if (jump = "00") then
		sal <= ent1;
	elseif (jump = "01")then
		sal<= ent2;
	elseif (jump = "10")then
		sal<= ent3;
	end if;
	end process
end MUXJ_arch
