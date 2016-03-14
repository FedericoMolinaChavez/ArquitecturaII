library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUXrf is
	port(
	RegDst: in std_logic;
	ent1: in STD_LOGIC_VECTOR (4 downto 0); --direccion de registro 
	ent2: in STD_LOGIC_VECTOR (4 downto 0); --direccion de im
	sal: out STD_LOGIC_VECTOR (4 downto 0) --a write register.
	);
end MUXrf;

architecture MUXrf_arch of MUXrf is
signal sal_dummy: STD_LOGIC_VECTOR (4 downto 0);
begin
	sal<=sal_dummy;
		process(RegDst,ent1,ent2,sal_dummy)
		begin
			case RegDst is
				when '1' => sal_dummy<=ent2;
				when '0' => sal_dummy<=ent1;
			end case;
		end process;
end MUXrf_arch;
