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
      if (op = "000000") then
        if (funct = "100000") then
          sal <= "0010";
        elseif (funct = "100010") then
          sal <= "0110";
        elseif (funct = "011010") then
          sal <= "0111";
        end if;
      elseif (op = "")
      end if;
    end process;
end architecture;
