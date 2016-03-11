library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CA is
  port(
  op: in STD_LOGIC_VECTOR (5 downto 0);
  funct: in STD_LOGIC_VECTOR (5 downto 0);
  AluOp: in STD_LOGIC_VECTOR (2 downto 0);
  sal: out STD_LOGIC_VECTOR (3 downto 0);
  );
end CA;

architecture CA_arch of CA is
  process(op,funct) 
    begin
      if (op = "000000") then --Si es tipo R
        sal<="0010" when funct="100000"else
        sal<="0110" when funct="100010"else
        sal<="1110" when funct="011010"else
        sal<="0111" when funct="101010"else
        sal<="1111" when funct="010000"else
        sal<="0000";
        
      else then
        sal<="0010" when op="001000"else --addi
        sal<="0110" when op="000100"else --beq
        sal<="0110" when op="000101"else --bne
        sal<="1000" when op="000011"else --jal
      endif;
      
      
        
      end if;
    end process;
end architecture;
