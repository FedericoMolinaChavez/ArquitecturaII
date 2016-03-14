library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity signExtend is
	port(
		a: in STD_LOGIC_VECTOR(15 downto 0); --dato que llega del instruction memory
		b: out STD_LOGIC_VECTOR(31 downto 0)--dato que sale con los bits agregados
	);
end signExtend;

architecture signExtend_arch of signExtend is
begin
	b<="0000000000000000"&a;

end signExtend_arch;
