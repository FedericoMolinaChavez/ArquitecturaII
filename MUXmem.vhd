library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUXmem is
  port(
  ent1: in STD_LOGIC_VECTOR (31 downto 0); --memoria a registro
  ent2: in STD_LOGIC_VECTOR (31 downto 0); --alu a registro
  MemReg: in std_logic;
  sal: out STD_LOGIC_VECTOR (31 downto 0)
  );
end MUXmem;

architecture MUXmem_arch of MUXmem is
signal sal_dummy: STD_LOGIC_VECTOR (31 downto 0);
begin
	sal<=sal_dummy;
		process(ent1,ent2,MemReg,sal_dummy)
		begin
		case MemReg is
			when '1' => sal_dummy<=ent2;
			when '0' => sal_dummy<=ent1;
			when others => sal_dummy <= "0000000000000000000000000000000";

		end case;
		end process;
end MUXmem_arch;
