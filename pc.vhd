library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pc is
	port(
	clk: in std_logic;
	ent: in STD_LOGIC_VECTOR (31 downto 0);
	sal: out STD_LOGIC_VECTOR (31 downto 0));
end pc;

architecture pc_arch of pc is
begin
	process(clk)	
	begin
		if (rising_edge(clk)) then
			sal <= ent;
		else
			sal <= "00000000000000000000000000000000";
		end if;
end process;
end pc_arch;
