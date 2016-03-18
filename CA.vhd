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
      case AluOp is
        when "010" =>
          if (funct = "100010") then
            sal_dummy <= "0110";
          elsif (funct = "011010") then
            sal_dummy <= "1110";
          elsif (funct = "101010") then
            sal_dummy <= "0111";
          else 
            sal_dummy <= "1111";
          end if;
        when "000" =>
          sal_dummy <= "0010";
        when "001" =>
          sal_dummy <="0110";
        when "111" =>
          sal_dummy <= "1111";
       when others =>
       sal_dummy <= "1111";
      end case;
   
    end process;
end architecture;

