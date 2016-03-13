library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controlUnit is
	port(
	op: in STD_LOGIC_VECTOR (5 downto 0);
	datapath: out STD_LOGIC_VECTOR(13 downto 0));
end controlUnit;

architecture CU_arch of controlUnit is
signal datapath_dummy: STD_LOGIC_VECTOR(13 downto 0);
begin
	datapath<=datapath_dummy;
	process (op, datapath_dummy) begin
		case op is
			when "000000" => datapath_dummy <= "00010001100000";
			when "001000" => datapath_dummy <= "00100011100000";
			when "000100" => datapath_dummy <= "00110000001100";
			when "000101" => datapath_dummy <= "00110000000100";
			when "000011" => datapath_dummy <= "00100001101000";
			when others => datapath_dummy <= "00000000000001";
		end case;
	end process;

end CU_arch;

