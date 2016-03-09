entity MUXA is
  port(
    ent1: in STD_LOGIC_VECTOR (31 downto 0);
    ent2: in STD_LOGIC_VECTOR (31 downto 0);
    AluSrc: in std_logic;
    sal: out STD_LOGIC_VECTOR (31 downto 0);
  );
end MUXA

architecture MUXA_arch of MUXA is
  process(AluSrc) 
    begin
    if (AluSrc = "1") then
      sal <= ent2;
    else then
      sal <= ent1;
    end if;
    end process;
end MUXA_arch;
