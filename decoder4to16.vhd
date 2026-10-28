-------------------------------------------------------------------------------
-- Decodificador 4 para 16
-- Somente a saida selecionada por addr vale '1'; as demais valem '0'.
-- Ex.: addr = "0000" -> sel(0) = '1', demais = '0'.
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder4to16 is
    port (
        addr : in  std_logic_vector(3 downto 0);
        sel  : out std_logic_vector(15 downto 0)
    );
end entity decoder4to16;

architecture rtl of decoder4to16 is
begin
    process (addr)
    begin
        sel <= (others => '0');
        sel(to_integer(unsigned(addr))) <= '1';
    end process;
end architecture rtl;
