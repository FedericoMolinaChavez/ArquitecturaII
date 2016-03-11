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
    sal<=ent2 when MemRew = "1"else
    sal<=ent1;
  end process;
end MUXmem_arch;
