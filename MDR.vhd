library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MDR is
  port (
    entrada: in std_logic_vector(31 downto 0);
    salida: out std_logic_vector ( 31 downto 0);
  );
end MDR;

architecture MDR_arch of MDR is
begin
salida <= entrada;
end architecture;
