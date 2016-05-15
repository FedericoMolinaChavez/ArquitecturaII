library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity RegisterMemory is
	port
	(
		dirR1: in std_logic_vector ( 3 downto 0); -- direccion registro 1
		dirR2: in std_logic_vector ( 3 downto 0); -- direccion registro 2
		wrtR: in std_logic_vector (3 downto 0); -- direccion de escritura
		wrD: in std_logic_vector ( 7 downto 0); -- dato escritura
		wr: std_logic; -- señal de escritura
		R: std_logic; -- señal de lectura
		sal1: out std_logic_vector (7 downto 0); -- A
		sal2: out std_logic_vector ( 7 downto 0); --B
		clk: in std_logic
	);
end RegisterMemory;

architecture RegisterMemory_arch of RegisterMemory is

type memoria is array (0 to 15) of std_logic_vector (7 downto 0);
FUNCTION initialize_ram
return memoria is
variable result : memoria;
BEGIN
FOR i IN 0 to 15 LOOP
result(i) := std_logic_vector(to_unsigned(natural(i), natural'(8)));
END LOOP;
RETURN result;
END initialize_ram;
signal memoryR : memoria:=initialize_ram;

begin
	process(dirR1,dirR2,wrtR,wrD,wr,r,clk)
	variable aux : std_logic_vector (7 downto 0):= wrD;
	begin
	if (rising_edge(clk)) then
		if (wr = '1')then
		memoryR (to_integer(unsigned(wrtR))) <= aux;
		elsif (r = '1')then
		sal1 <= memoryR (to_integer(unsigned(dirR1)));
		sal2 <= memoryR (to_integer(unsigned(dirR2)));
		else
		end if;
	end if;
	end process;


end RegisterMemory_arch;