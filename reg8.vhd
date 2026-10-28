-------------------------------------------------------------------------------
-- Registrador de 8 bits (8 flip-flops D)
-- Escrita sincrona na borda de subida do clk, quando en = '1'.
-- clear assincrono (ativo em '1') zera o conteudo.
-- Sem escrita (en = '0'), o dado e retido.
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity reg8 is
    port (
        clk   : in  std_logic;
        clear : in  std_logic;
        en    : in  std_logic;
        d     : in  std_logic_vector(7 downto 0);
        q     : out std_logic_vector(7 downto 0)
    );
end entity reg8;

architecture rtl of reg8 is
begin
    process (clk, clear)
    begin
        if clear = '1' then
            q <= (others => '0');
        elsif rising_edge(clk) then
            if en = '1' then
                q <= d;
            end if;
        end if;
    end process;
end architecture rtl;
