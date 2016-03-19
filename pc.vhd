library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pc is
	port(
	clk: in std_logic;
	reset: in std_logic;
	ent: in STD_LOGIC_VECTOR (31 downto 0);
	pcwrite: in STD_LOGIC;
	sal: out STD_LOGIC_VECTOR (31 downto 0));
end pc;

architecture pc_arch of pc is
begin
	process(clk, reset)	
	begin
		if (rising_edge(clk)) then
			sal <= ent;
		elsif (reset == 1) then
			sal <= "00000000000000000000000000000000";
		else
		end if;
end process;
end pc_arch;
