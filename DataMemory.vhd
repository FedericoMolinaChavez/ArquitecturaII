library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity DataMemory is
	port
	(
		dato : in std_logic_vector (7 downto 0); -- dato que se va a escribir
		wr: in std_logic; -- señal de escritura
		R: in std_logic; -- señal de lectura
		sal1: out std_logic_vector (7 downto 0); -- salida
		clk: in std_logic
	);
end DataMemory;

architecture RegisterMemory_arch of DataMemory is

type memoria is array (0 to 30) of std_logic_vector (7 downto 0);
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
signal contadorLoc: unsigned (0 to 30); -- contador del punto de lectura.


begin
	process(dato,wr,r,clk)
	variable aux : std_logic_vector (7 downto 0):= dato;
	begin
	if (rising_edge(clk)) then
		if (wr = '1')then
		memoryR (to_integer(contadorLoc)) <= aux;
		elsif (r = '1')then
		sal1 <= memoryR (to_integer(contadorLoc));
		contadorLoc <= contadorLoc + 1;
	
		else
		end if;
	end if;
	end process;


end RegisterMemory_arch;