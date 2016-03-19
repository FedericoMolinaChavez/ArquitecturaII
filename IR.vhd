library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IR is 
  port (
    entrada: in std_logic_vector (31 downto 0); --pilla el relajo que es esto :D
    salida: out std_logic_vecctor (31 downto 0);
  );
end IR;

architecture IR_arch of IR is
begin
  salida <= entrada;
end IR_arch;
