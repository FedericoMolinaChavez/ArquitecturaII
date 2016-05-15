library ieee;
use ieee.std_logic_1164.all;

entity MUXaddpc is
  port(
  ent1: in STD_LOGIC_VECTOR (7 downto 0); --entrada uno
  ent2: in STD_LOGIC_VECTOR (7 downto 0); --entrada dos
  ReslB: in std_logic;
  sal: out STD_LOGIC_VECTOR (7 downto 0)
  );
end MUXaddpc;

architecture MUXaddpc_arch of MUXaddpc is
  signal sal_dummy : STD_LOGIC_VECTOR(7 downto 0);
    begin
    sal <= sal_dummy;
    process(ent1,ent2,ReslB,sal_dummy)
    begin
      case ReslB is
        when '1' => sal_dummy<=ent1; 
        when '0' => sal_dummy<=ent2;
        when others => sal_dummy<=ent1;
      end case; 
    end process;
end MUXaddpc_arch;