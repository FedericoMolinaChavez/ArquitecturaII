entity MUXaddpc is
  port(
  ent1: in STD_LOGIC_VECTOR (31 downto 0);
  ent2: in STD_LOGIC_VECTOR (31 downto 0);
  ReslB: in std_logic;
  sal:: out STD_LOGIC_VECTOR (31 downto 0);
  );
end MUXaddpc;

architecture MUXaddpc_arch of MUXaddpc is
  process (ReslB)
    begin
      if (ReslB = "1") then
        sal <= ent2;
      else then
        sal <= ent1;
      end if;
    end process;
end MUXaddpc_arch
