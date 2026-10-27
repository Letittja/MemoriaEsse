-------------------------------------------------------------------------------
-- Multiplexador 16:1 de 8 bits
-- Parte do projeto: memoria RAM 16x8 (FF D + decodificador 4->16 + mux 16:1)
-- Leitura assincrona: a saida depende apenas de addr e das entradas d0..d15,
-- sem qualquer dependencia de clock.
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity mux16x1_8bits is
    port (
        d0, d1, d2,  d3,  d4,  d5,  d6,  d7  : in  std_logic_vector(7 downto 0);
        d8, d9, d10, d11, d12, d13, d14, d15 : in  std_logic_vector(7 downto 0);
        addr : in  std_logic_vector(3 downto 0);
        dout : out std_logic_vector(7 downto 0)
    );
end entity mux16x1_8bits;

architecture rtl of mux16x1_8bits is
begin
    -- Selecao combinacional (with-select): sintetizavel e assincrona
    with addr select
        dout <= d0  when "0000",
                d1  when "0001",
                d2  when "0010",
                d3  when "0011",
                d4  when "0100",
                d5  when "0101",
                d6  when "0110",
                d7  when "0111",
                d8  when "1000",
                d9  when "1001",
                d10 when "1010",
                d11 when "1011",
                d12 when "1100",
                d13 when "1101",
                d14 when "1110",
                d15 when others;  -- "1111" (e valores nao binarios na simulacao)
end architecture rtl;
