library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SyscallROM is
	port(
		syscall: in std_logic; --señal de unidad de control
		control: in std_logic; --señal de boton de ingreso de datos.
		Entrada: in STD_LOGIC_VECTOR (31 downto 0);--de afuera
		DatosS: in STD_LOGIC_VECTOR (31 downto 0);--de mux memtoreg
		salida: out STD_LOGIC_VECTOR (31 downto 0); --hacia afuera
		Ereg: out STD_LOGIC_VECTOR (31 downto 0) --hacia registro
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
			if (control <= '1') then
				case Syscall is
					when '0'=> 
								pseudoEreg<=Entrada;
					when '1'=>
								pseudoSalida<=DatosS;
				end case;
			else 
			
			end if;
			end process;


	end SyscallROM_arch;
