library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uc is
	port(
	Reset: in std_logic;
	clk: in std_logic;
	op: in STD_LOGIC_VECTOR (5 downto 0);
	funct: in STD_LOGIC_VECTOR (5 downto 0);
	but: in std_logic;
	datapath: out STD_LOGIC_VECTOR(19 downto 0));
end uc;

architecture CU_arch of uc is
type STATE_TYPE is (st_Reset,st_1,st_2,st_3,st_4,st_5,st_6,st_7,st_8,st_9,st_10,st_11,st_12);
signal state: state_type;

signal datapath_dummy: STD_LOGIC_VECTOR(19 downto 0);
begin
	datapath<=datapath_dummy;
	process(Reset,clk)
		begin
			if Reset='1' then	
				state <= st_Reset;
			elsif clk ='1' and clk'event then
				case state is
				when st_Reset =>
					state <= st_1; --fetch
				when st_1 =>
					state<= st_2; --decode
				when st_2 =>
					if(op = "000000") then
						state <= st_3; --execute
					elsif (op = "000100")then
						state <= st_6; --branch completion.
					elsif (op = "001000") then
						state <= st_7; --addi
					elsif (op = "111111") then
						state <= st_9; --syscalle
					elsif (op = "111110") then
						state <= st_10; --syscalls
					elsif (op = "000011") then
						state <= st_12; -- jal
					else	
						state <= st_Reset;
					end if;
				when st_3 => 
					if(funct = "001000") then
						state<=st_5; --completacion jr.
					else
						state <= st_4; --completacion tipo r
					end if;
				when st_4 =>
					state <= st_1; --return a fetch.
				when st_5 =>
					state <= st_1; --return a fetch.
				when st_6 =>
					state <= st_1; --return a fetch
				when st_7 =>
					state <= st_8; --writeback
				when st_8 =>
					state <= st_1; -- return a fetch
				when st_9 =>
					if (but = '0') then
						state <= st_9; --mantenerse hasta que no se halla metido informacion diferente de basura.
					else
						state <= st_1;
					end if;
				when st_10 =>  --syscall de entrada
						state <= st_11; --execute
				when st_11 =>
						state <=st_1; -- retorno a fetch
				when st_12 =>
						state <=st_1;
				when others =>
				state <= st_Reset; -- cuando llega algo raro se resetea
				end case;
				end if;
		end process;
		
		process (state)
			begin
				case state is
					when st_Reset =>
						datapath_dummy <= "00000000000000000000";
					when st_1 =>
						datapath_dummy <= "00000100000100100000";
					when st_2 =>
						datapath_dummy <= "00001100000000000000";
					when st_3 =>
						datapath_dummy <= "01010000000000000000";
					when st_4 =>
						datapath_dummy <= "00000001001000000000";
					when st_5 =>
						datapath_dummy <= "01010000000000010100";
					when st_6 =>
						datapath_dummy <= "00110000000000001010";
					when st_7 =>
						datapath_dummy <= "10001000000000000000";
					when st_8 =>
						datapath_dummy <= "00000000011000000000";
					when st_9 =>
						datapath_dummy <= "00000011000000000000"; 
					when st_10 =>
						datapath_dummy <= "11000000000000000000";
					when st_11 =>
						datapath_dummy <= "00000000000000000001";
					when st_12 =>
						datapath_dummy <= "00000001001000010100";
						
						
					when others =>
						datapath_dummy <= "00000000000000000000";
				end case;
			end process;
	

end CU_arch;

