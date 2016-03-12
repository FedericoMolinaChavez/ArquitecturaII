entity MUXaddpc is
  port(
  ent1: in STD_LOGIC_VECTOR (31 downto 0);
  ent2: in STD_LOGIC_VECTOR (31 downto 0);
  ReslB: in std_logic;
  sal: out STD_LOGIC_VECTOR (31 downto 0)
  );
end MUXaddpc;

architecture MUXaddpc_arch of MUXaddpc is
    begin
      if (ReslB = "1") then
        sal <= ent2;
      else 
        sal <= ent1;
      end if;
end MUXaddpc_arch;
