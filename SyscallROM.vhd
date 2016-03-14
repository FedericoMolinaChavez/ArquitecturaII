library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SyscallROM is
	port(
		syscall: in std_logic; --señal ent
		Entrada: in STD_LOGIC_VECTOR (31 downto 0);--de afuera
		DatosS: in STD_LOGIC_VECTOR (31 downto 0);--de mux memtoreg
		salida: out STD_LOGIC_VECTOR (31 downto 0); --hacia afuera
		Ereg: out STD_LOGIC_VECTOR (31 downto 0) --hacia reggistro
	);
end SyscallROM;

architecture SyscallROM_arch of SyscallRom is
	signal pseudoSalida: STD_LOGIC_VECTOR (31 downto 0);
	signal pseudoEreg: STD_LOGIC_VECTOR (31 downto 0);
	begin
		salida<=pseudoSalida;
		Ereg<=pseudoEreg;
		process(syscall,Entrada,DatosS,pseudoSalida,pseudoEreg)
			begin
				case Syscall is
					when '0'=> 
								pseudoEreg<=Entrada;
					when '1'=>
								pseudoSalida<=DatosS;
				end case;
			end process;


	end SyscallROM_arch;
