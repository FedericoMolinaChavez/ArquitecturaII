library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUXA is
  port(
    ent1: in STD_LOGIC_VECTOR (31 downto 0); --entrada de register file
    ent2: in STD_LOGIC_VECTOR (31 downto 0); --entrada de signextend
    ent3: in STD_LOGIC_VECTOR (31 downto 0); --entrada de syscall
    AluSrc: in STD_LOGIC_VECTOR (1 downto 0);
    sal: out STD_LOGIC_VECTOR (31 downto 0) --salida hacia la ALU
  );
end MUXA;

architecture MUXA_arch of MUXA is
signal sal_dummy: STD_LOGIC_VECTOR (31 downto 0);
begin
  sal <= sal_dummy;
  process(AluSrc,ent1,ent2,sal_dummy) 
    begin
    case AluSrc is
      when "01" => sal_dummy <= ent2;
      when "00" => sal_dummy <= ent1;
      when "10" => sal_dummy <= ent3
      when others => sal_dummy <= ent1;
    end case;
    end process;
end MUXA_arch;
