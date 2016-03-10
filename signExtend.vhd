ieee.numeric_std

entity signExtend is
	port(
	ent: in STD_LOGIC_VECTOR (15 downto 0);
	sal: out STD_LOGIC_VECTOR (31 downto 0));
end signExtend;

architecture signExtend_arch of signExtend is
	sal: ent srl 16;
end signExtend_arch