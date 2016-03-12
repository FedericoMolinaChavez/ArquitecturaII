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
begin
  process(AluSrc) 
    begin
    sal<=ent2 when(AluSrc="1")else
    sal<=ent1;
    end process;
end MUXA_arch;
