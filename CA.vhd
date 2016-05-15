library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CA is
  port(
  funct: in STD_LOGIC_VECTOR (1 downto 0); -- valor de 2 bits del campo de funct
  AluOp: in STD_LOGIC_VECTOR (2 downto 0); -- Aluop de la unidad de control
  sal: out STD_LOGIC_VECTOR (1 downto 0) -- funcion de ALU que va a la ALU
  );
end CA;

architecture CA_arch of CA is
  signal sal_dummy: STD_LOGIC_VECTOR (1 downto 0);
begin
  sal <= sal_dummy;
  process(funct,AluOp,sal_dummy) 
    begin
      case AluOp is
        when "000" =>
				if (funct = "00") then --suma
					sal_dummy <= "00";
				elsif (funct = "01") then --resta
					sal_dummy <= "01";
				elsif (funct = "10") then --division
					sal_dummy <= "10";
				else --jr
					sal_dummy <= "11";
				end if;
		 when "010" => sal_dummy <= "00"; --addi
		 when "100" => sal_dummy <= "01"; -- beq
		 when "001" => sal_dummy <= "11"; -- lw
		 when "011" => sal_dummy <= "11"; -- sw
		 when others => sal_dummy <= "11"; -- otra cosa 
      end case;
   
    end process;
end architecture;