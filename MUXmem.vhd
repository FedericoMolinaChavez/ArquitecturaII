entity MUXmem is
  port(
  ent1: in STD_LOGIC_VECTOR (31 downto 0);
  ent2: in STD_LOGIC_VECTOR (31 downto 0);
  MemReg: in std_logic;
  sal: out STD_LOGIC_VECTOR (31 downto 0)
  );
end MUXmem;

architecture MUXmem_arch of MUXmem is
begin
    sal<=ent2 when (MemRew = "1")else
    ent1;
end MUXmem_arch;
