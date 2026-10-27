library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity memoria is
    Port (
        clk    : in  STD_LOGIC;
        clear  : in  STD_LOGIC;
        enable : in  STD_LOGIC;
        addr   : in  STD_LOGIC_VECTOR (3 downto 0);
        D_in   : in  STD_LOGIC_VECTOR (7 downto 0);
        D_out  : out STD_LOGIC_VECTOR (7 downto 0)
    );
end memoria;

architecture comportamento of memoria is
    type data_array is array (0 to 15) of std_logic_vector(7 downto 0);

    signal sel : std_logic_vector(15 downto 0);
    signal q   : data_array;
    signal we  : std_logic_vector(15 downto 0);
begin
    -- Decodificador 4 -> 16
    u_dec : entity work.decoder4to16
        port map (addr => addr, sel => sel);

    -- 16 registradores de 8 bits
    gen_regs : for i in 0 to 15 generate
        we(i) <= sel(i) and enable;

        u_reg : entity work.reg8
            port map (
                clk   => clk,
                clear => clear,
                en    => we(i),
                d     => D_in,
                q     => q(i)
            );
    end generate gen_regs;

    -- Multiplexador 16:1
    u_mux : entity work.mux16x1_8bits
        port map (
            d0 => q(0),  d1 => q(1),  d2  => q(2),  d3  => q(3),
            d4 => q(4),  d5 => q(5),  d6  => q(6),  d7  => q(7),
            d8 => q(8),  d9 => q(9),  d10 => q(10), d11 => q(11),
            d12 => q(12), d13 => q(13), d14 => q(14), d15 => q(15),
            addr => addr,
            dout => D_out
        );
end comportamento;