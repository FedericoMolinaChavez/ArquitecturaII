library ieee;
use ieee.std_logic_1164.all;

entity MUXra is
  port(
  ent1: in STD_LOGIC_VECTOR (31 downto 0); --pc normalito
  ent2: in STD_LOGIC_VECTOR (31 downto 0); --branch
  ReslB: in std_logic;
  sal: out STD_LOGIC_VECTOR (31 downto 0)
  );
end MUXra;

architecture MUXra_arch of MUXra is
  signal sal_dummy : STD_LOGIC_VECTOR(31 downto 0);
    begin
    sal <= sal_dummy;
    process(ent1,ent2,ReslB,sal)
    begin
      case ReslB is
        when '1' => sal_dummy<=ent1;
        when '0' => sal_dummy<=ent2;
        when others => sal_dummy<=ent1;
      end case; 
    end process;
end MUXra_arch;
