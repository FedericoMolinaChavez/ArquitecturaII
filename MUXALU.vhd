library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUXA is
  port(
    ent1: in STD_LOGIC_VECTOR (31 downto 0);
    ent2: in STD_LOGIC_VECTOR (31 downto 0);
    AluSrc: in std_logic;
    sal: out STD_LOGIC_VECTOR (31 downto 0)
  );
end MUXA;

architecture MUXA_arch of MUXA is
signal sal_dummy: STD_LOGIC_VECTOR (31 downto 0);
begin
  sal <= sal_dummy;
  process(AluSrc,ent1,ent2,sal_dummy) 
    begin
    case AluSrc is
      when '1' => sal_dummy <= ent2;
      when '0' => sal_dummy <= ent1;
      when others => sal_dummy <= ent1;
    end case;
    end process;
end MUXA_arch;
