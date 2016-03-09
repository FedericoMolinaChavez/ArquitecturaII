entity MUXmem is
  port(
  ent1: in STD_LOGIC_VECTOR (31 downto 0);
  ent2: in STD_LOGIC_VECTOR (31 downto 0);
  MemReg: in std_logic;
  sal: out STD_LOGIC_VECTOR (31 downto 0)
  );
end MUXmem;

architecture MUXmem_arch of MUXmem is
  process(MemReg) is
    if (MemReg = "1") then
      sal <= ent2;
    else then
      sal <= ent1;
    end if;
  end process;
end MUXmem_arch;
