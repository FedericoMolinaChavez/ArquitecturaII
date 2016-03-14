entity adderB is -- se sobre-entienden
	port(
	pcadd: in STD_LOGIC_VECTOR (31 downto 0);
	branchA: in STD_LOGIC_VECTOR (31 downto 0);
	resl: out STD_LOGIC_VECTOR (31 downto 0));
end adderB;

architecture adderB_arch of adderB is
begin 
	res1 <= STD_LOGIC_VECTOR (unsigned(pcadd) + unsigned(branchA));
end adderB_arch;
