library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controlUnit is
	port(
	op: in STD_LOGIC_VECTOR (5 downto 0);
	datapath: STD_LOGIC_VECTOR(12 downto 0));
end controlUnit;

architecture CU_arch of controlUnit is
	process (op)
	begin
			datapath <= "0001000110000" when op="000000"else --tipo R
			datapath <= "0010001110000" when op="001000"else --addi
			datapath <= "0011000000110" when op="000100"else --beq
			datapath <= "0011000000010" when op="000101"else --bne
			datapath <= "0010000110100" when op="000011"else --jal
	end process;

end CU_arch
