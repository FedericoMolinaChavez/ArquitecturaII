library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std;

entity ALU is
	port(
	ALUop: in STD_LOGIC_VECTOR (2 downto 0);
	entA: in STD_LOGIC_VECTOR (31 downto 0);
	entB: in STD_LOGIC_VECTOR (31 downto 0);
	resl: out STD_LOGIC_VECTOR (31 downto 0);
	zero: out std_logic);
end ALU;

architecture ALU_arch of ALU is
begin
	process (ALUop,entA,entB,res1)
	begin

		res1<=std_logic_vector(unsigned(entA) + unsigned(entB)) when Aluop="0010"else --suma
		res1<=std_logic_vector(unsigned(entA) - unsigned(entB)) when Aluop="0110"else --resta

		
	end process;

end ALU_arch;
