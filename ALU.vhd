library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
	port(
	ALUop: in STD_LOGIC_VECTOR (2 downto 0);
	entA: in STD_LOGIC_VECTOR (31 downto 0);
	entB: in STD_LOGIC_VECTOR (31 downto 0);
	resl: out STD_LOGIC_VECTOR (31 downto 0);
	zero: buffer std_logic);
end ALU;

architecture ALU_arch of ALU is
signal hi: std_logic_vector (31 downto 0);
signal resl_dummy: std_logic_vector (31 downto 0);

begin
resl <= resl_dummy;
	process (ALUop,entA,entB,resl_dummy,zero,hi)
	begin
			case Aluop is
			when "0010" => 
					resl_dummy <= entA+entB;
			when "0110" =>
					resl_dummy <= entA-entB;
			when "1110" =>
				hi <= std_logic_vector(to_signed(to_integer(signed(entA) / signed(entB)),32));
			when "0111" =>
					resl_dummy <= entA-entB;
			when "1111" =>
					resl_dummy <= hi;
			end case;
			case resl_dummy is
				when "00000000000000000000000000000000" =>
					zero <= '1';
				when others =>
					zero <= '0';
			end case;
	end process;

end ALU_arch;


