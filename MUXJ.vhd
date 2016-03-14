library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUXJ is
	port(
	ent1: in STD_LOGIC_VECTOR (31 downto 0); --pc normalito
	ent2: in STD_LOGIC_VECTOR (31 downto 0); --jr
	ent3: in STD_LOGIC_VECTOR (31 downto 0); --branch
	jump: in STD_LOGIC_VECTOR (1 downto 0); --señal de salto uc
	sal: out STD_LOGIC_VECTOR (31 downto 0) --salida del mux
	);
end MUXJ;

architecture MUXJ_arch of MUXJ is
signal sal_dummy: STD_LOGIC_VECTOR (31 downto 0);
begin
	sal<=sal_dummy;
	process (jump,sal_dummy,ent1,ent2,ent3)
	begin
		case jump is
			when "00" => sal_dummy<=ent1;
			when "01" => sal_dummy<=ent2;
			when "10" => sal_dummy<=ent3;
			when others => sal_dummy<="00000000000000000000000000000000";
		end case;
	end process;
end MUXJ_arch;
