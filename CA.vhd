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
        if (funct = "100000") then --suma
          sal <= "0010";
        elsif (funct = "100010") then --resta
          sal <= "0110";
        elsif (funct = "011010") then --division
          sal <= "1110";
        elsif (funct = "101010") then --set less than
          sal<= "0111";
        end if;
      elsif (op = "001000") then --addi
        sal <= "0010";
      elsif (op = "000100") then --beq
        sal <= "0110"
      elsif (op = "000101") then --bne
        sal <= "0110"
      
        
      end if;
    end process;
end architecture;
