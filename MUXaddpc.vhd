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
      case EwalB is
        when "1" => sal<=ent1;
        when "0" => sal<=ent2;
        when others => sal<=ent1;
      end case; 
end MUXaddpc_arch;
