entity MUXrf is
	port(
	RegDst: in std_logic;
	ent1: in STD_LOGIC_VECTOR (4 downto 0);
	ent2: in STD_LOGIC_VECTOR (4 downto 0);
	sal: out STD_LOGIC_VECTOR (4 downto 0)
	);
end MUXrf;

architecture MUXrf_arch of MUXrf is
process (RegDst)
	begin
		sal<=ent2 when RegDst = "1"else
		sal<=ent1;
	end process;
end MUXrf_arch;
