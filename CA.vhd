library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CA is
  port(
  op: in STD_LOGIC_VECTOR (5 downto 0); --valor de 6 bits de op
  funct: in STD_LOGIC_VECTOR (5 downto 0); -- valor de 6 bits del campo de funct
  AluOp: in STD_LOGIC_VECTOR (2 downto 0); -- Aluop de la unidad de control
  sal: out STD_LOGIC_VECTOR (3 downto 0) -- funcion de ALU que va a la ALU
  );
end CA;

architecture CA_arch of CA is
  signal sal_dummy: STD_LOGIC_VECTOR (3 downto 0);
begin
  sal <= sal_dummy;
  process(op,funct,AluOp,sal_dummy) 
    begin
      if (op = "000000") then --Si es tipo R
      case funct is
        when "100000" => sal_dummy<="0010";
        when "100010" => sal_dummy<="0110";
        when "011010" => sal_dummy<="1110";
        when "101010" => sal_dummy<="0111";
        when "010000" => sal_dummy<="1111";
        when others => sal_dummy<="0000";
      end case;
      else
      case op is
        when "001000" => sal_dummy<="0010";
        when "000100" => sal_dummy<="0110";
        when "000101" => sal_dummy<="0110";
        when "000011" => sal_dummy<="1000";
        when others => sal_dummy<="0000";
      end case;
      end if;
    end process;
end architecture;
