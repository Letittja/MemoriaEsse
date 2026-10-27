-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/27/2026 18:22:07"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	memoria IS
    PORT (
	clk : IN std_logic;
	clear : IN std_logic;
	enable : IN std_logic;
	addr : IN std_logic_vector(3 DOWNTO 0);
	D_in : IN std_logic_vector(7 DOWNTO 0);
	D_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END memoria;

-- Design Ports Information
-- D_out[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF memoria IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_D_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D_out[0]~output_o\ : std_logic;
SIGNAL \D_out[1]~output_o\ : std_logic;
SIGNAL \D_out[2]~output_o\ : std_logic;
SIGNAL \D_out[3]~output_o\ : std_logic;
SIGNAL \D_out[4]~output_o\ : std_logic;
SIGNAL \D_out[5]~output_o\ : std_logic;
SIGNAL \D_out[6]~output_o\ : std_logic;
SIGNAL \D_out[7]~output_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \D_in[0]~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \u_dec|Decoder0~2_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~3_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~4_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~5_combout\ : std_logic;
SIGNAL \u_mux|Mux7~0_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~6_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~7_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~0_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~1_combout\ : std_logic;
SIGNAL \u_mux|Mux7~1_combout\ : std_logic;
SIGNAL \gen_regs:14:u_reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~21_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~22_combout\ : std_logic;
SIGNAL \u_mux|Mux7~7_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~23_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~20_combout\ : std_logic;
SIGNAL \u_mux|Mux7~8_combout\ : std_logic;
SIGNAL \gen_regs:10:u_reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~8_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~9_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~14_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~15_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~10_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~11_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~12_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~13_combout\ : std_logic;
SIGNAL \u_mux|Mux7~2_combout\ : std_logic;
SIGNAL \u_mux|Mux7~3_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~18_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~17_combout\ : std_logic;
SIGNAL \u_mux|Mux7~4_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~19_combout\ : std_logic;
SIGNAL \u_dec|Decoder0~16_combout\ : std_logic;
SIGNAL \u_mux|Mux7~5_combout\ : std_logic;
SIGNAL \u_mux|Mux7~6_combout\ : std_logic;
SIGNAL \u_mux|Mux7~9_combout\ : std_logic;
SIGNAL \D_in[1]~input_o\ : std_logic;
SIGNAL \u_mux|Mux6~2_combout\ : std_logic;
SIGNAL \u_mux|Mux6~3_combout\ : std_logic;
SIGNAL \u_mux|Mux6~4_combout\ : std_logic;
SIGNAL \u_mux|Mux6~5_combout\ : std_logic;
SIGNAL \u_mux|Mux6~6_combout\ : std_logic;
SIGNAL \u_mux|Mux6~7_combout\ : std_logic;
SIGNAL \u_mux|Mux6~8_combout\ : std_logic;
SIGNAL \u_mux|Mux6~0_combout\ : std_logic;
SIGNAL \u_mux|Mux6~1_combout\ : std_logic;
SIGNAL \u_mux|Mux6~9_combout\ : std_logic;
SIGNAL \D_in[2]~input_o\ : std_logic;
SIGNAL \u_mux|Mux5~7_combout\ : std_logic;
SIGNAL \u_mux|Mux5~8_combout\ : std_logic;
SIGNAL \u_mux|Mux5~4_combout\ : std_logic;
SIGNAL \gen_regs:1:u_reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux5~5_combout\ : std_logic;
SIGNAL \gen_regs:3:u_reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux5~2_combout\ : std_logic;
SIGNAL \u_mux|Mux5~3_combout\ : std_logic;
SIGNAL \u_mux|Mux5~6_combout\ : std_logic;
SIGNAL \u_mux|Mux5~0_combout\ : std_logic;
SIGNAL \gen_regs:9:u_reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux5~1_combout\ : std_logic;
SIGNAL \u_mux|Mux5~9_combout\ : std_logic;
SIGNAL \D_in[3]~input_o\ : std_logic;
SIGNAL \u_mux|Mux4~4_combout\ : std_logic;
SIGNAL \gen_regs:2:u_reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux4~5_combout\ : std_logic;
SIGNAL \u_mux|Mux4~2_combout\ : std_logic;
SIGNAL \gen_regs:6:u_reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux4~3_combout\ : std_logic;
SIGNAL \u_mux|Mux4~6_combout\ : std_logic;
SIGNAL \gen_regs:14:u_reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux4~7_combout\ : std_logic;
SIGNAL \gen_regs:13:u_reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux4~8_combout\ : std_logic;
SIGNAL \gen_regs:9:u_reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux4~0_combout\ : std_logic;
SIGNAL \u_mux|Mux4~1_combout\ : std_logic;
SIGNAL \u_mux|Mux4~9_combout\ : std_logic;
SIGNAL \D_in[4]~input_o\ : std_logic;
SIGNAL \u_mux|Mux3~7_combout\ : std_logic;
SIGNAL \u_mux|Mux3~8_combout\ : std_logic;
SIGNAL \u_mux|Mux3~2_combout\ : std_logic;
SIGNAL \u_mux|Mux3~3_combout\ : std_logic;
SIGNAL \gen_regs:4:u_reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux3~4_combout\ : std_logic;
SIGNAL \u_mux|Mux3~5_combout\ : std_logic;
SIGNAL \u_mux|Mux3~6_combout\ : std_logic;
SIGNAL \u_mux|Mux3~0_combout\ : std_logic;
SIGNAL \u_mux|Mux3~1_combout\ : std_logic;
SIGNAL \u_mux|Mux3~9_combout\ : std_logic;
SIGNAL \D_in[5]~input_o\ : std_logic;
SIGNAL \u_mux|Mux2~7_combout\ : std_logic;
SIGNAL \u_mux|Mux2~8_combout\ : std_logic;
SIGNAL \u_mux|Mux2~0_combout\ : std_logic;
SIGNAL \u_mux|Mux2~1_combout\ : std_logic;
SIGNAL \u_mux|Mux2~2_combout\ : std_logic;
SIGNAL \u_mux|Mux2~3_combout\ : std_logic;
SIGNAL \gen_regs:2:u_reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux2~4_combout\ : std_logic;
SIGNAL \gen_regs:1:u_reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux2~5_combout\ : std_logic;
SIGNAL \u_mux|Mux2~6_combout\ : std_logic;
SIGNAL \u_mux|Mux2~9_combout\ : std_logic;
SIGNAL \D_in[6]~input_o\ : std_logic;
SIGNAL \gen_regs:7:u_reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux1~7_combout\ : std_logic;
SIGNAL \u_mux|Mux1~8_combout\ : std_logic;
SIGNAL \u_mux|Mux1~4_combout\ : std_logic;
SIGNAL \gen_regs:8:u_reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux1~5_combout\ : std_logic;
SIGNAL \gen_regs:6:u_reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux1~2_combout\ : std_logic;
SIGNAL \u_mux|Mux1~3_combout\ : std_logic;
SIGNAL \u_mux|Mux1~6_combout\ : std_logic;
SIGNAL \u_mux|Mux1~0_combout\ : std_logic;
SIGNAL \gen_regs:9:u_reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux1~1_combout\ : std_logic;
SIGNAL \u_mux|Mux1~9_combout\ : std_logic;
SIGNAL \D_in[7]~input_o\ : std_logic;
SIGNAL \u_mux|Mux0~4_combout\ : std_logic;
SIGNAL \gen_regs:2:u_reg|q[7]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux0~5_combout\ : std_logic;
SIGNAL \u_mux|Mux0~2_combout\ : std_logic;
SIGNAL \u_mux|Mux0~3_combout\ : std_logic;
SIGNAL \u_mux|Mux0~6_combout\ : std_logic;
SIGNAL \gen_regs:14:u_reg|q[7]~feeder_combout\ : std_logic;
SIGNAL \u_mux|Mux0~7_combout\ : std_logic;
SIGNAL \u_mux|Mux0~8_combout\ : std_logic;
SIGNAL \u_mux|Mux0~0_combout\ : std_logic;
SIGNAL \u_mux|Mux0~1_combout\ : std_logic;
SIGNAL \u_mux|Mux0~9_combout\ : std_logic;
SIGNAL \gen_regs:5:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:6:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:4:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:7:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:2:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:10:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:0:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:9:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:8:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:11:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:1:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:3:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:13:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:14:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:12:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \gen_regs:15:u_reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clear~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_clear <= clear;
ww_enable <= enable;
ww_addr <= addr;
ww_D_in <= D_in;
D_out <= ww_D_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clear~inputclkctrl_outclk\ <= NOT \clear~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X45_Y34_N9
\D_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux|Mux7~9_combout\,
	devoe => ww_devoe,
	o => \D_out[0]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\D_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux|Mux6~9_combout\,
	devoe => ww_devoe,
	o => \D_out[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\D_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux|Mux5~9_combout\,
	devoe => ww_devoe,
	o => \D_out[2]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\D_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux|Mux4~9_combout\,
	devoe => ww_devoe,
	o => \D_out[3]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\D_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux|Mux3~9_combout\,
	devoe => ww_devoe,
	o => \D_out[4]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\D_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux|Mux2~9_combout\,
	devoe => ww_devoe,
	o => \D_out[5]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\D_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux|Mux1~9_combout\,
	devoe => ww_devoe,
	o => \D_out[6]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\D_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_mux|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \D_out[7]~output_o\);

-- Location: IOIBUF_X34_Y34_N15
\addr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\addr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X29_Y34_N15
\D_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(0),
	o => \D_in[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: CLKCTRL_G4
\clear~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clear~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clear~inputclkctrl_outclk\);

-- Location: IOIBUF_X20_Y34_N22
\addr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: IOIBUF_X43_Y34_N15
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X40_Y34_N8
\addr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: LCCOMB_X34_Y30_N28
\u_dec|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~2_combout\ = (\addr[2]~input_o\ & (!\addr[0]~input_o\ & (\enable~input_o\ & \addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \enable~input_o\,
	datad => \addr[1]~input_o\,
	combout => \u_dec|Decoder0~2_combout\);

-- Location: LCCOMB_X30_Y30_N4
\u_dec|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~3_combout\ = (!\addr[3]~input_o\ & \u_dec|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[3]~input_o\,
	datad => \u_dec|Decoder0~2_combout\,
	combout => \u_dec|Decoder0~3_combout\);

-- Location: FF_X27_Y30_N1
\gen_regs:6:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:6:u_reg|q\(0));

-- Location: LCCOMB_X34_Y30_N22
\u_dec|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~4_combout\ = (\addr[2]~input_o\ & (!\addr[0]~input_o\ & (\enable~input_o\ & !\addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \enable~input_o\,
	datad => \addr[1]~input_o\,
	combout => \u_dec|Decoder0~4_combout\);

-- Location: LCCOMB_X27_Y30_N28
\u_dec|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~5_combout\ = (!\addr[3]~input_o\ & \u_dec|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr[3]~input_o\,
	datad => \u_dec|Decoder0~4_combout\,
	combout => \u_dec|Decoder0~5_combout\);

-- Location: FF_X27_Y30_N27
\gen_regs:4:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:4:u_reg|q\(0));

-- Location: LCCOMB_X27_Y30_N26
\u_mux|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux7~0_combout\ = (\addr[0]~input_o\ & (((\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & (\gen_regs:6:u_reg|q\(0))) # (!\addr[1]~input_o\ & ((\gen_regs:4:u_reg|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \gen_regs:6:u_reg|q\(0),
	datac => \gen_regs:4:u_reg|q\(0),
	datad => \addr[1]~input_o\,
	combout => \u_mux|Mux7~0_combout\);

-- Location: LCCOMB_X34_Y30_N0
\u_dec|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~6_combout\ = (\addr[2]~input_o\ & (\addr[0]~input_o\ & (\enable~input_o\ & \addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \enable~input_o\,
	datad => \addr[1]~input_o\,
	combout => \u_dec|Decoder0~6_combout\);

-- Location: LCCOMB_X34_Y30_N2
\u_dec|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~7_combout\ = (!\addr[3]~input_o\ & \u_dec|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[3]~input_o\,
	datad => \u_dec|Decoder0~6_combout\,
	combout => \u_dec|Decoder0~7_combout\);

-- Location: FF_X34_Y30_N19
\gen_regs:7:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:7:u_reg|q\(0));

-- Location: LCCOMB_X34_Y30_N24
\u_dec|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~0_combout\ = (\addr[2]~input_o\ & (\addr[0]~input_o\ & (\enable~input_o\ & !\addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \enable~input_o\,
	datad => \addr[1]~input_o\,
	combout => \u_dec|Decoder0~0_combout\);

-- Location: LCCOMB_X34_Y30_N10
\u_dec|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~1_combout\ = (!\addr[3]~input_o\ & \u_dec|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[3]~input_o\,
	datad => \u_dec|Decoder0~0_combout\,
	combout => \u_dec|Decoder0~1_combout\);

-- Location: FF_X34_Y30_N17
\gen_regs:5:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:5:u_reg|q\(0));

-- Location: LCCOMB_X34_Y30_N18
\u_mux|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux7~1_combout\ = (\u_mux|Mux7~0_combout\ & (((\gen_regs:7:u_reg|q\(0))) # (!\addr[0]~input_o\))) # (!\u_mux|Mux7~0_combout\ & (\addr[0]~input_o\ & ((\gen_regs:5:u_reg|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux7~0_combout\,
	datab => \addr[0]~input_o\,
	datac => \gen_regs:7:u_reg|q\(0),
	datad => \gen_regs:5:u_reg|q\(0),
	combout => \u_mux|Mux7~1_combout\);

-- Location: LCCOMB_X29_Y30_N8
\gen_regs:14:u_reg|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:14:u_reg|q[0]~feeder_combout\ = \D_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[0]~input_o\,
	combout => \gen_regs:14:u_reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y30_N0
\u_dec|Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~21_combout\ = (\addr[3]~input_o\ & \u_dec|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[3]~input_o\,
	datad => \u_dec|Decoder0~2_combout\,
	combout => \u_dec|Decoder0~21_combout\);

-- Location: FF_X29_Y30_N9
\gen_regs:14:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:14:u_reg|q[0]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:14:u_reg|q\(0));

-- Location: LCCOMB_X29_Y30_N28
\u_dec|Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~22_combout\ = (\u_dec|Decoder0~4_combout\ & \addr[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dec|Decoder0~4_combout\,
	datad => \addr[3]~input_o\,
	combout => \u_dec|Decoder0~22_combout\);

-- Location: FF_X29_Y30_N27
\gen_regs:12:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:12:u_reg|q\(0));

-- Location: LCCOMB_X29_Y30_N26
\u_mux|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux7~7_combout\ = (\addr[0]~input_o\ & (((\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & (\gen_regs:14:u_reg|q\(0))) # (!\addr[1]~input_o\ & ((\gen_regs:12:u_reg|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \gen_regs:14:u_reg|q\(0),
	datac => \gen_regs:12:u_reg|q\(0),
	datad => \addr[1]~input_o\,
	combout => \u_mux|Mux7~7_combout\);

-- Location: LCCOMB_X34_Y30_N26
\u_dec|Decoder0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~23_combout\ = (\addr[3]~input_o\ & \u_dec|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[3]~input_o\,
	datad => \u_dec|Decoder0~6_combout\,
	combout => \u_dec|Decoder0~23_combout\);

-- Location: FF_X32_Y30_N19
\gen_regs:15:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:15:u_reg|q\(0));

-- Location: LCCOMB_X34_Y30_N8
\u_dec|Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~20_combout\ = (\addr[3]~input_o\ & \u_dec|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[3]~input_o\,
	datad => \u_dec|Decoder0~0_combout\,
	combout => \u_dec|Decoder0~20_combout\);

-- Location: FF_X32_Y30_N25
\gen_regs:13:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:13:u_reg|q\(0));

-- Location: LCCOMB_X32_Y30_N18
\u_mux|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux7~8_combout\ = (\addr[0]~input_o\ & ((\u_mux|Mux7~7_combout\ & (\gen_regs:15:u_reg|q\(0))) # (!\u_mux|Mux7~7_combout\ & ((\gen_regs:13:u_reg|q\(0)))))) # (!\addr[0]~input_o\ & (\u_mux|Mux7~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \u_mux|Mux7~7_combout\,
	datac => \gen_regs:15:u_reg|q\(0),
	datad => \gen_regs:13:u_reg|q\(0),
	combout => \u_mux|Mux7~8_combout\);

-- Location: LCCOMB_X28_Y29_N8
\gen_regs:10:u_reg|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:10:u_reg|q[0]~feeder_combout\ = \D_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[0]~input_o\,
	combout => \gen_regs:10:u_reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X34_Y30_N12
\u_dec|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~8_combout\ = (!\addr[2]~input_o\ & (!\addr[0]~input_o\ & (\enable~input_o\ & \addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \enable~input_o\,
	datad => \addr[1]~input_o\,
	combout => \u_dec|Decoder0~8_combout\);

-- Location: LCCOMB_X32_Y30_N20
\u_dec|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~9_combout\ = (\u_dec|Decoder0~8_combout\ & \addr[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dec|Decoder0~8_combout\,
	datad => \addr[3]~input_o\,
	combout => \u_dec|Decoder0~9_combout\);

-- Location: FF_X28_Y29_N9
\gen_regs:10:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:10:u_reg|q[0]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:10:u_reg|q\(0));

-- Location: LCCOMB_X31_Y30_N12
\u_dec|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~14_combout\ = (\addr[0]~input_o\ & (\addr[1]~input_o\ & (\enable~input_o\ & !\addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \enable~input_o\,
	datad => \addr[2]~input_o\,
	combout => \u_dec|Decoder0~14_combout\);

-- Location: LCCOMB_X31_Y30_N30
\u_dec|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~15_combout\ = (\addr[3]~input_o\ & \u_dec|Decoder0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[3]~input_o\,
	datad => \u_dec|Decoder0~14_combout\,
	combout => \u_dec|Decoder0~15_combout\);

-- Location: FF_X31_Y30_N1
\gen_regs:11:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:11:u_reg|q\(0));

-- Location: LCCOMB_X31_Y29_N20
\u_dec|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~10_combout\ = (\enable~input_o\ & (!\addr[2]~input_o\ & (\addr[0]~input_o\ & !\addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \addr[2]~input_o\,
	datac => \addr[0]~input_o\,
	datad => \addr[1]~input_o\,
	combout => \u_dec|Decoder0~10_combout\);

-- Location: LCCOMB_X31_Y29_N16
\u_dec|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~11_combout\ = (\addr[3]~input_o\ & \u_dec|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr[3]~input_o\,
	datad => \u_dec|Decoder0~10_combout\,
	combout => \u_dec|Decoder0~11_combout\);

-- Location: FF_X32_Y29_N25
\gen_regs:9:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:9:u_reg|q\(0));

-- Location: LCCOMB_X34_Y30_N30
\u_dec|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~12_combout\ = (!\addr[2]~input_o\ & (!\addr[0]~input_o\ & (\enable~input_o\ & !\addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \enable~input_o\,
	datad => \addr[1]~input_o\,
	combout => \u_dec|Decoder0~12_combout\);

-- Location: LCCOMB_X31_Y29_N30
\u_dec|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~13_combout\ = (\u_dec|Decoder0~12_combout\ & \addr[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_dec|Decoder0~12_combout\,
	datad => \addr[3]~input_o\,
	combout => \u_dec|Decoder0~13_combout\);

-- Location: FF_X32_Y29_N11
\gen_regs:8:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:8:u_reg|q\(0));

-- Location: LCCOMB_X32_Y29_N10
\u_mux|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux7~2_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & (\gen_regs:9:u_reg|q\(0))) # (!\addr[0]~input_o\ & ((\gen_regs:8:u_reg|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \gen_regs:9:u_reg|q\(0),
	datac => \gen_regs:8:u_reg|q\(0),
	datad => \addr[0]~input_o\,
	combout => \u_mux|Mux7~2_combout\);

-- Location: LCCOMB_X31_Y30_N0
\u_mux|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux7~3_combout\ = (\addr[1]~input_o\ & ((\u_mux|Mux7~2_combout\ & ((\gen_regs:11:u_reg|q\(0)))) # (!\u_mux|Mux7~2_combout\ & (\gen_regs:10:u_reg|q\(0))))) # (!\addr[1]~input_o\ & (((\u_mux|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:10:u_reg|q\(0),
	datab => \addr[1]~input_o\,
	datac => \gen_regs:11:u_reg|q\(0),
	datad => \u_mux|Mux7~2_combout\,
	combout => \u_mux|Mux7~3_combout\);

-- Location: LCCOMB_X31_Y29_N28
\u_dec|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~18_combout\ = (\u_dec|Decoder0~12_combout\ & !\addr[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_dec|Decoder0~12_combout\,
	datad => \addr[3]~input_o\,
	combout => \u_dec|Decoder0~18_combout\);

-- Location: FF_X30_Y29_N11
\gen_regs:0:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:0:u_reg|q\(0));

-- Location: LCCOMB_X31_Y29_N18
\u_dec|Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~17_combout\ = (!\addr[3]~input_o\ & \u_dec|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr[3]~input_o\,
	datad => \u_dec|Decoder0~10_combout\,
	combout => \u_dec|Decoder0~17_combout\);

-- Location: FF_X30_Y29_N17
\gen_regs:1:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:1:u_reg|q\(0));

-- Location: LCCOMB_X30_Y29_N10
\u_mux|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux7~4_combout\ = (\addr[1]~input_o\ & (\addr[0]~input_o\)) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & ((\gen_regs:1:u_reg|q\(0)))) # (!\addr[0]~input_o\ & (\gen_regs:0:u_reg|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \gen_regs:0:u_reg|q\(0),
	datad => \gen_regs:1:u_reg|q\(0),
	combout => \u_mux|Mux7~4_combout\);

-- Location: LCCOMB_X31_Y30_N16
\u_dec|Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~19_combout\ = (!\addr[3]~input_o\ & \u_dec|Decoder0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[3]~input_o\,
	datad => \u_dec|Decoder0~14_combout\,
	combout => \u_dec|Decoder0~19_combout\);

-- Location: FF_X31_Y29_N1
\gen_regs:3:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:3:u_reg|q\(0));

-- Location: LCCOMB_X30_Y30_N14
\u_dec|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_dec|Decoder0~16_combout\ = (!\addr[3]~input_o\ & \u_dec|Decoder0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[3]~input_o\,
	datad => \u_dec|Decoder0~8_combout\,
	combout => \u_dec|Decoder0~16_combout\);

-- Location: FF_X30_Y32_N1
\gen_regs:2:u_reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:2:u_reg|q\(0));

-- Location: LCCOMB_X31_Y29_N0
\u_mux|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux7~5_combout\ = (\u_mux|Mux7~4_combout\ & (((\gen_regs:3:u_reg|q\(0))) # (!\addr[1]~input_o\))) # (!\u_mux|Mux7~4_combout\ & (\addr[1]~input_o\ & ((\gen_regs:2:u_reg|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux7~4_combout\,
	datab => \addr[1]~input_o\,
	datac => \gen_regs:3:u_reg|q\(0),
	datad => \gen_regs:2:u_reg|q\(0),
	combout => \u_mux|Mux7~5_combout\);

-- Location: LCCOMB_X34_Y30_N20
\u_mux|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux7~6_combout\ = (\addr[3]~input_o\ & ((\u_mux|Mux7~3_combout\) # ((\addr[2]~input_o\)))) # (!\addr[3]~input_o\ & (((\u_mux|Mux7~5_combout\ & !\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux7~3_combout\,
	datab => \u_mux|Mux7~5_combout\,
	datac => \addr[3]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux7~6_combout\);

-- Location: LCCOMB_X34_Y30_N14
\u_mux|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux7~9_combout\ = (\addr[2]~input_o\ & ((\u_mux|Mux7~6_combout\ & ((\u_mux|Mux7~8_combout\))) # (!\u_mux|Mux7~6_combout\ & (\u_mux|Mux7~1_combout\)))) # (!\addr[2]~input_o\ & (((\u_mux|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	datab => \u_mux|Mux7~1_combout\,
	datac => \u_mux|Mux7~8_combout\,
	datad => \u_mux|Mux7~6_combout\,
	combout => \u_mux|Mux7~9_combout\);

-- Location: IOIBUF_X38_Y34_N15
\D_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(1),
	o => \D_in[1]~input_o\);

-- Location: FF_X31_Y29_N19
\gen_regs:3:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:3:u_reg|q\(1));

-- Location: FF_X30_Y29_N5
\gen_regs:1:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:1:u_reg|q\(1));

-- Location: LCCOMB_X30_Y29_N4
\u_mux|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux6~2_combout\ = (\addr[1]~input_o\ & ((\gen_regs:3:u_reg|q\(1)) # ((\addr[2]~input_o\)))) # (!\addr[1]~input_o\ & (((\gen_regs:1:u_reg|q\(1) & !\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \gen_regs:3:u_reg|q\(1),
	datac => \gen_regs:1:u_reg|q\(1),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux6~2_combout\);

-- Location: FF_X28_Y29_N5
\gen_regs:5:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:5:u_reg|q\(1));

-- Location: FF_X28_Y30_N9
\gen_regs:7:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:7:u_reg|q\(1));

-- Location: LCCOMB_X28_Y30_N8
\u_mux|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux6~3_combout\ = (\u_mux|Mux6~2_combout\ & (((\gen_regs:7:u_reg|q\(1)) # (!\addr[2]~input_o\)))) # (!\u_mux|Mux6~2_combout\ & (\gen_regs:5:u_reg|q\(1) & ((\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux6~2_combout\,
	datab => \gen_regs:5:u_reg|q\(1),
	datac => \gen_regs:7:u_reg|q\(1),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux6~3_combout\);

-- Location: FF_X30_Y32_N19
\gen_regs:2:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:2:u_reg|q\(1));

-- Location: FF_X30_Y29_N23
\gen_regs:0:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:0:u_reg|q\(1));

-- Location: LCCOMB_X30_Y29_N22
\u_mux|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux6~4_combout\ = (\addr[1]~input_o\ & ((\gen_regs:2:u_reg|q\(1)) # ((\addr[2]~input_o\)))) # (!\addr[1]~input_o\ & (((\gen_regs:0:u_reg|q\(1) & !\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \gen_regs:2:u_reg|q\(1),
	datac => \gen_regs:0:u_reg|q\(1),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux6~4_combout\);

-- Location: FF_X27_Y30_N29
\gen_regs:4:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:4:u_reg|q\(1));

-- Location: FF_X27_Y30_N23
\gen_regs:6:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:6:u_reg|q\(1));

-- Location: LCCOMB_X27_Y30_N22
\u_mux|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux6~5_combout\ = (\u_mux|Mux6~4_combout\ & (((\gen_regs:6:u_reg|q\(1)) # (!\addr[2]~input_o\)))) # (!\u_mux|Mux6~4_combout\ & (\gen_regs:4:u_reg|q\(1) & ((\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux6~4_combout\,
	datab => \gen_regs:4:u_reg|q\(1),
	datac => \gen_regs:6:u_reg|q\(1),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux6~5_combout\);

-- Location: LCCOMB_X27_Y30_N16
\u_mux|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux6~6_combout\ = (\addr[3]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[3]~input_o\ & ((\addr[0]~input_o\ & (\u_mux|Mux6~3_combout\)) # (!\addr[0]~input_o\ & ((\u_mux|Mux6~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux6~3_combout\,
	datab => \addr[3]~input_o\,
	datac => \u_mux|Mux6~5_combout\,
	datad => \addr[0]~input_o\,
	combout => \u_mux|Mux6~6_combout\);

-- Location: FF_X32_Y30_N5
\gen_regs:13:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:13:u_reg|q\(1));

-- Location: FF_X31_Y29_N29
\gen_regs:11:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:11:u_reg|q\(1));

-- Location: FF_X32_Y29_N31
\gen_regs:9:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:9:u_reg|q\(1));

-- Location: LCCOMB_X32_Y29_N30
\u_mux|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux6~7_combout\ = (\addr[1]~input_o\ & ((\gen_regs:11:u_reg|q\(1)) # ((\addr[2]~input_o\)))) # (!\addr[1]~input_o\ & (((\gen_regs:9:u_reg|q\(1) & !\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \gen_regs:11:u_reg|q\(1),
	datac => \gen_regs:9:u_reg|q\(1),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux6~7_combout\);

-- Location: FF_X31_Y30_N19
\gen_regs:15:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:15:u_reg|q\(1));

-- Location: LCCOMB_X31_Y30_N18
\u_mux|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux6~8_combout\ = (\u_mux|Mux6~7_combout\ & (((\gen_regs:15:u_reg|q\(1)) # (!\addr[2]~input_o\)))) # (!\u_mux|Mux6~7_combout\ & (\gen_regs:13:u_reg|q\(1) & ((\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:13:u_reg|q\(1),
	datab => \u_mux|Mux6~7_combout\,
	datac => \gen_regs:15:u_reg|q\(1),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux6~8_combout\);

-- Location: FF_X29_Y30_N13
\gen_regs:12:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:12:u_reg|q\(1));

-- Location: FF_X28_Y29_N27
\gen_regs:10:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:10:u_reg|q\(1));

-- Location: FF_X32_Y29_N5
\gen_regs:8:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:8:u_reg|q\(1));

-- Location: LCCOMB_X32_Y29_N4
\u_mux|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux6~0_combout\ = (\addr[1]~input_o\ & ((\gen_regs:10:u_reg|q\(1)) # ((\addr[2]~input_o\)))) # (!\addr[1]~input_o\ & (((\gen_regs:8:u_reg|q\(1) & !\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \gen_regs:10:u_reg|q\(1),
	datac => \gen_regs:8:u_reg|q\(1),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux6~0_combout\);

-- Location: FF_X29_Y30_N15
\gen_regs:14:u_reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:14:u_reg|q\(1));

-- Location: LCCOMB_X29_Y30_N14
\u_mux|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux6~1_combout\ = (\u_mux|Mux6~0_combout\ & (((\gen_regs:14:u_reg|q\(1)) # (!\addr[2]~input_o\)))) # (!\u_mux|Mux6~0_combout\ & (\gen_regs:12:u_reg|q\(1) & ((\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:12:u_reg|q\(1),
	datab => \u_mux|Mux6~0_combout\,
	datac => \gen_regs:14:u_reg|q\(1),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux6~1_combout\);

-- Location: LCCOMB_X30_Y30_N8
\u_mux|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux6~9_combout\ = (\u_mux|Mux6~6_combout\ & ((\u_mux|Mux6~8_combout\) # ((!\addr[3]~input_o\)))) # (!\u_mux|Mux6~6_combout\ & (((\addr[3]~input_o\ & \u_mux|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux6~6_combout\,
	datab => \u_mux|Mux6~8_combout\,
	datac => \addr[3]~input_o\,
	datad => \u_mux|Mux6~1_combout\,
	combout => \u_mux|Mux6~9_combout\);

-- Location: IOIBUF_X23_Y34_N15
\D_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(2),
	o => \D_in[2]~input_o\);

-- Location: FF_X30_Y30_N27
\gen_regs:14:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:14:u_reg|q\(2));

-- Location: FF_X31_Y29_N17
\gen_regs:11:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:11:u_reg|q\(2));

-- Location: FF_X28_Y29_N1
\gen_regs:10:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:10:u_reg|q\(2));

-- Location: LCCOMB_X28_Y29_N0
\u_mux|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux5~7_combout\ = (\addr[2]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[2]~input_o\ & ((\addr[0]~input_o\ & (\gen_regs:11:u_reg|q\(2))) # (!\addr[0]~input_o\ & ((\gen_regs:10:u_reg|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:11:u_reg|q\(2),
	datab => \addr[2]~input_o\,
	datac => \gen_regs:10:u_reg|q\(2),
	datad => \addr[0]~input_o\,
	combout => \u_mux|Mux5~7_combout\);

-- Location: FF_X30_Y30_N13
\gen_regs:15:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:15:u_reg|q\(2));

-- Location: LCCOMB_X30_Y30_N12
\u_mux|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux5~8_combout\ = (\u_mux|Mux5~7_combout\ & (((\gen_regs:15:u_reg|q\(2)) # (!\addr[2]~input_o\)))) # (!\u_mux|Mux5~7_combout\ & (\gen_regs:14:u_reg|q\(2) & ((\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:14:u_reg|q\(2),
	datab => \u_mux|Mux5~7_combout\,
	datac => \gen_regs:15:u_reg|q\(2),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux5~8_combout\);

-- Location: FF_X27_Y30_N3
\gen_regs:4:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:4:u_reg|q\(2));

-- Location: FF_X30_Y29_N27
\gen_regs:0:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:0:u_reg|q\(2));

-- Location: LCCOMB_X30_Y29_N26
\u_mux|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux5~4_combout\ = (\addr[0]~input_o\ & (((\addr[2]~input_o\)))) # (!\addr[0]~input_o\ & ((\addr[2]~input_o\ & (\gen_regs:4:u_reg|q\(2))) # (!\addr[2]~input_o\ & ((\gen_regs:0:u_reg|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:4:u_reg|q\(2),
	datab => \addr[0]~input_o\,
	datac => \gen_regs:0:u_reg|q\(2),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux5~4_combout\);

-- Location: FF_X28_Y29_N23
\gen_regs:5:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:5:u_reg|q\(2));

-- Location: LCCOMB_X30_Y29_N24
\gen_regs:1:u_reg|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:1:u_reg|q[2]~feeder_combout\ = \D_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[2]~input_o\,
	combout => \gen_regs:1:u_reg|q[2]~feeder_combout\);

-- Location: FF_X30_Y29_N25
\gen_regs:1:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:1:u_reg|q[2]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:1:u_reg|q\(2));

-- Location: LCCOMB_X28_Y29_N22
\u_mux|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux5~5_combout\ = (\addr[0]~input_o\ & ((\u_mux|Mux5~4_combout\ & (\gen_regs:5:u_reg|q\(2))) # (!\u_mux|Mux5~4_combout\ & ((\gen_regs:1:u_reg|q\(2)))))) # (!\addr[0]~input_o\ & (\u_mux|Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \u_mux|Mux5~4_combout\,
	datac => \gen_regs:5:u_reg|q\(2),
	datad => \gen_regs:1:u_reg|q\(2),
	combout => \u_mux|Mux5~5_combout\);

-- Location: FF_X28_Y30_N11
\gen_regs:6:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:6:u_reg|q\(2));

-- Location: LCCOMB_X31_Y29_N6
\gen_regs:3:u_reg|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:3:u_reg|q[2]~feeder_combout\ = \D_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[2]~input_o\,
	combout => \gen_regs:3:u_reg|q[2]~feeder_combout\);

-- Location: FF_X31_Y29_N7
\gen_regs:3:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:3:u_reg|q[2]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:3:u_reg|q\(2));

-- Location: FF_X30_Y32_N21
\gen_regs:2:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:2:u_reg|q\(2));

-- Location: LCCOMB_X30_Y32_N20
\u_mux|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux5~2_combout\ = (\addr[0]~input_o\ & ((\gen_regs:3:u_reg|q\(2)) # ((\addr[2]~input_o\)))) # (!\addr[0]~input_o\ & (((\gen_regs:2:u_reg|q\(2) & !\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:3:u_reg|q\(2),
	datab => \addr[0]~input_o\,
	datac => \gen_regs:2:u_reg|q\(2),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux5~2_combout\);

-- Location: FF_X28_Y30_N13
\gen_regs:7:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:7:u_reg|q\(2));

-- Location: LCCOMB_X28_Y30_N12
\u_mux|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux5~3_combout\ = (\u_mux|Mux5~2_combout\ & (((\gen_regs:7:u_reg|q\(2)) # (!\addr[2]~input_o\)))) # (!\u_mux|Mux5~2_combout\ & (\gen_regs:6:u_reg|q\(2) & ((\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:6:u_reg|q\(2),
	datab => \u_mux|Mux5~2_combout\,
	datac => \gen_regs:7:u_reg|q\(2),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux5~3_combout\);

-- Location: LCCOMB_X31_Y30_N20
\u_mux|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux5~6_combout\ = (\addr[3]~input_o\ & (((\addr[1]~input_o\)))) # (!\addr[3]~input_o\ & ((\addr[1]~input_o\ & ((\u_mux|Mux5~3_combout\))) # (!\addr[1]~input_o\ & (\u_mux|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux5~5_combout\,
	datab => \u_mux|Mux5~3_combout\,
	datac => \addr[3]~input_o\,
	datad => \addr[1]~input_o\,
	combout => \u_mux|Mux5~6_combout\);

-- Location: FF_X29_Y30_N25
\gen_regs:12:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:12:u_reg|q\(2));

-- Location: FF_X32_Y29_N19
\gen_regs:8:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:8:u_reg|q\(2));

-- Location: LCCOMB_X32_Y29_N18
\u_mux|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux5~0_combout\ = (\addr[0]~input_o\ & (((\addr[2]~input_o\)))) # (!\addr[0]~input_o\ & ((\addr[2]~input_o\ & (\gen_regs:12:u_reg|q\(2))) # (!\addr[2]~input_o\ & ((\gen_regs:8:u_reg|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:12:u_reg|q\(2),
	datab => \addr[0]~input_o\,
	datac => \gen_regs:8:u_reg|q\(2),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y29_N0
\gen_regs:9:u_reg|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:9:u_reg|q[2]~feeder_combout\ = \D_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[2]~input_o\,
	combout => \gen_regs:9:u_reg|q[2]~feeder_combout\);

-- Location: FF_X32_Y29_N1
\gen_regs:9:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:9:u_reg|q[2]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:9:u_reg|q\(2));

-- Location: FF_X32_Y30_N23
\gen_regs:13:u_reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:13:u_reg|q\(2));

-- Location: LCCOMB_X32_Y30_N22
\u_mux|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux5~1_combout\ = (\u_mux|Mux5~0_combout\ & (((\gen_regs:13:u_reg|q\(2)) # (!\addr[0]~input_o\)))) # (!\u_mux|Mux5~0_combout\ & (\gen_regs:9:u_reg|q\(2) & ((\addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux5~0_combout\,
	datab => \gen_regs:9:u_reg|q\(2),
	datac => \gen_regs:13:u_reg|q\(2),
	datad => \addr[0]~input_o\,
	combout => \u_mux|Mux5~1_combout\);

-- Location: LCCOMB_X31_Y30_N14
\u_mux|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux5~9_combout\ = (\u_mux|Mux5~6_combout\ & ((\u_mux|Mux5~8_combout\) # ((!\addr[3]~input_o\)))) # (!\u_mux|Mux5~6_combout\ & (((\addr[3]~input_o\ & \u_mux|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux5~8_combout\,
	datab => \u_mux|Mux5~6_combout\,
	datac => \addr[3]~input_o\,
	datad => \u_mux|Mux5~1_combout\,
	combout => \u_mux|Mux5~9_combout\);

-- Location: IOIBUF_X31_Y34_N1
\D_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(3),
	o => \D_in[3]~input_o\);

-- Location: FF_X30_Y29_N15
\gen_regs:0:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[3]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:0:u_reg|q\(3));

-- Location: FF_X30_Y29_N21
\gen_regs:1:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[3]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:1:u_reg|q\(3));

-- Location: LCCOMB_X30_Y29_N14
\u_mux|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux4~4_combout\ = (\addr[1]~input_o\ & (\addr[0]~input_o\)) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & ((\gen_regs:1:u_reg|q\(3)))) # (!\addr[0]~input_o\ & (\gen_regs:0:u_reg|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \gen_regs:0:u_reg|q\(3),
	datad => \gen_regs:1:u_reg|q\(3),
	combout => \u_mux|Mux4~4_combout\);

-- Location: LCCOMB_X30_Y32_N6
\gen_regs:2:u_reg|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:2:u_reg|q[3]~feeder_combout\ = \D_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[3]~input_o\,
	combout => \gen_regs:2:u_reg|q[3]~feeder_combout\);

-- Location: FF_X30_Y32_N7
\gen_regs:2:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:2:u_reg|q[3]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:2:u_reg|q\(3));

-- Location: FF_X31_Y29_N13
\gen_regs:3:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[3]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:3:u_reg|q\(3));

-- Location: LCCOMB_X31_Y29_N12
\u_mux|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux4~5_combout\ = (\u_mux|Mux4~4_combout\ & (((\gen_regs:3:u_reg|q\(3)) # (!\addr[1]~input_o\)))) # (!\u_mux|Mux4~4_combout\ & (\gen_regs:2:u_reg|q\(3) & ((\addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux4~4_combout\,
	datab => \gen_regs:2:u_reg|q\(3),
	datac => \gen_regs:3:u_reg|q\(3),
	datad => \addr[1]~input_o\,
	combout => \u_mux|Mux4~5_combout\);

-- Location: FF_X28_Y29_N13
\gen_regs:5:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[3]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:5:u_reg|q\(3));

-- Location: FF_X27_Y30_N21
\gen_regs:4:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[3]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:4:u_reg|q\(3));

-- Location: LCCOMB_X27_Y30_N20
\u_mux|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux4~2_combout\ = (\addr[0]~input_o\ & ((\gen_regs:5:u_reg|q\(3)) # ((\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & (((\gen_regs:4:u_reg|q\(3) & !\addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:5:u_reg|q\(3),
	datab => \addr[0]~input_o\,
	datac => \gen_regs:4:u_reg|q\(3),
	datad => \addr[1]~input_o\,
	combout => \u_mux|Mux4~2_combout\);

-- Location: FF_X28_Y30_N25
\gen_regs:7:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[3]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:7:u_reg|q\(3));

-- Location: LCCOMB_X28_Y30_N6
\gen_regs:6:u_reg|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:6:u_reg|q[3]~feeder_combout\ = \D_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[3]~input_o\,
	combout => \gen_regs:6:u_reg|q[3]~feeder_combout\);

-- Location: FF_X28_Y30_N7
\gen_regs:6:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:6:u_reg|q[3]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:6:u_reg|q\(3));

-- Location: LCCOMB_X28_Y30_N24
\u_mux|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux4~3_combout\ = (\addr[1]~input_o\ & ((\u_mux|Mux4~2_combout\ & (\gen_regs:7:u_reg|q\(3))) # (!\u_mux|Mux4~2_combout\ & ((\gen_regs:6:u_reg|q\(3)))))) # (!\addr[1]~input_o\ & (\u_mux|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \u_mux|Mux4~2_combout\,
	datac => \gen_regs:7:u_reg|q\(3),
	datad => \gen_regs:6:u_reg|q\(3),
	combout => \u_mux|Mux4~3_combout\);

-- Location: LCCOMB_X30_Y30_N22
\u_mux|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux4~6_combout\ = (\addr[3]~input_o\ & (((\addr[2]~input_o\)))) # (!\addr[3]~input_o\ & ((\addr[2]~input_o\ & ((\u_mux|Mux4~3_combout\))) # (!\addr[2]~input_o\ & (\u_mux|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux4~5_combout\,
	datab => \u_mux|Mux4~3_combout\,
	datac => \addr[3]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux4~6_combout\);

-- Location: LCCOMB_X29_Y30_N10
\gen_regs:14:u_reg|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:14:u_reg|q[3]~feeder_combout\ = \D_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[3]~input_o\,
	combout => \gen_regs:14:u_reg|q[3]~feeder_combout\);

-- Location: FF_X29_Y30_N11
\gen_regs:14:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:14:u_reg|q[3]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:14:u_reg|q\(3));

-- Location: FF_X29_Y30_N21
\gen_regs:12:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[3]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:12:u_reg|q\(3));

-- Location: LCCOMB_X29_Y30_N20
\u_mux|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux4~7_combout\ = (\addr[0]~input_o\ & (((\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & (\gen_regs:14:u_reg|q\(3))) # (!\addr[1]~input_o\ & ((\gen_regs:12:u_reg|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:14:u_reg|q\(3),
	datab => \addr[0]~input_o\,
	datac => \gen_regs:12:u_reg|q\(3),
	datad => \addr[1]~input_o\,
	combout => \u_mux|Mux4~7_combout\);

-- Location: FF_X31_Y30_N9
\gen_regs:15:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[3]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:15:u_reg|q\(3));

-- Location: LCCOMB_X32_Y30_N16
\gen_regs:13:u_reg|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:13:u_reg|q[3]~feeder_combout\ = \D_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[3]~input_o\,
	combout => \gen_regs:13:u_reg|q[3]~feeder_combout\);

-- Location: FF_X32_Y30_N17
\gen_regs:13:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:13:u_reg|q[3]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:13:u_reg|q\(3));

-- Location: LCCOMB_X31_Y30_N8
\u_mux|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux4~8_combout\ = (\addr[0]~input_o\ & ((\u_mux|Mux4~7_combout\ & (\gen_regs:15:u_reg|q\(3))) # (!\u_mux|Mux4~7_combout\ & ((\gen_regs:13:u_reg|q\(3)))))) # (!\addr[0]~input_o\ & (\u_mux|Mux4~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \u_mux|Mux4~7_combout\,
	datac => \gen_regs:15:u_reg|q\(3),
	datad => \gen_regs:13:u_reg|q\(3),
	combout => \u_mux|Mux4~8_combout\);

-- Location: FF_X28_Y29_N11
\gen_regs:10:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[3]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:10:u_reg|q\(3));

-- Location: LCCOMB_X32_Y29_N28
\gen_regs:9:u_reg|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:9:u_reg|q[3]~feeder_combout\ = \D_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[3]~input_o\,
	combout => \gen_regs:9:u_reg|q[3]~feeder_combout\);

-- Location: FF_X32_Y29_N29
\gen_regs:9:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:9:u_reg|q[3]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:9:u_reg|q\(3));

-- Location: FF_X32_Y29_N23
\gen_regs:8:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[3]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:8:u_reg|q\(3));

-- Location: LCCOMB_X32_Y29_N22
\u_mux|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux4~0_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & (\gen_regs:9:u_reg|q\(3))) # (!\addr[0]~input_o\ & ((\gen_regs:8:u_reg|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \gen_regs:9:u_reg|q\(3),
	datac => \gen_regs:8:u_reg|q\(3),
	datad => \addr[0]~input_o\,
	combout => \u_mux|Mux4~0_combout\);

-- Location: FF_X31_Y29_N11
\gen_regs:11:u_reg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[3]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:11:u_reg|q\(3));

-- Location: LCCOMB_X31_Y29_N10
\u_mux|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux4~1_combout\ = (\u_mux|Mux4~0_combout\ & (((\gen_regs:11:u_reg|q\(3)) # (!\addr[1]~input_o\)))) # (!\u_mux|Mux4~0_combout\ & (\gen_regs:10:u_reg|q\(3) & ((\addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:10:u_reg|q\(3),
	datab => \u_mux|Mux4~0_combout\,
	datac => \gen_regs:11:u_reg|q\(3),
	datad => \addr[1]~input_o\,
	combout => \u_mux|Mux4~1_combout\);

-- Location: LCCOMB_X30_Y30_N24
\u_mux|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux4~9_combout\ = (\u_mux|Mux4~6_combout\ & ((\u_mux|Mux4~8_combout\) # ((!\addr[3]~input_o\)))) # (!\u_mux|Mux4~6_combout\ & (((\addr[3]~input_o\ & \u_mux|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux4~6_combout\,
	datab => \u_mux|Mux4~8_combout\,
	datac => \addr[3]~input_o\,
	datad => \u_mux|Mux4~1_combout\,
	combout => \u_mux|Mux4~9_combout\);

-- Location: IOIBUF_X34_Y34_N1
\D_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(4),
	o => \D_in[4]~input_o\);

-- Location: FF_X28_Y30_N5
\gen_regs:7:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:7:u_reg|q\(4));

-- Location: FF_X31_Y29_N9
\gen_regs:3:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:3:u_reg|q\(4));

-- Location: LCCOMB_X31_Y29_N8
\u_mux|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux3~7_combout\ = (\addr[2]~input_o\ & ((\gen_regs:7:u_reg|q\(4)) # ((\addr[3]~input_o\)))) # (!\addr[2]~input_o\ & (((\gen_regs:3:u_reg|q\(4) & !\addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:7:u_reg|q\(4),
	datab => \addr[2]~input_o\,
	datac => \gen_regs:3:u_reg|q\(4),
	datad => \addr[3]~input_o\,
	combout => \u_mux|Mux3~7_combout\);

-- Location: FF_X31_Y30_N5
\gen_regs:15:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:15:u_reg|q\(4));

-- Location: FF_X31_Y30_N11
\gen_regs:11:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:11:u_reg|q\(4));

-- Location: LCCOMB_X31_Y30_N4
\u_mux|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux3~8_combout\ = (\addr[3]~input_o\ & ((\u_mux|Mux3~7_combout\ & (\gen_regs:15:u_reg|q\(4))) # (!\u_mux|Mux3~7_combout\ & ((\gen_regs:11:u_reg|q\(4)))))) # (!\addr[3]~input_o\ & (\u_mux|Mux3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[3]~input_o\,
	datab => \u_mux|Mux3~7_combout\,
	datac => \gen_regs:15:u_reg|q\(4),
	datad => \gen_regs:11:u_reg|q\(4),
	combout => \u_mux|Mux3~8_combout\);

-- Location: FF_X30_Y29_N9
\gen_regs:1:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:1:u_reg|q\(4));

-- Location: FF_X28_Y29_N25
\gen_regs:5:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:5:u_reg|q\(4));

-- Location: LCCOMB_X31_Y29_N14
\u_mux|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux3~2_combout\ = (\addr[3]~input_o\ & (((\addr[2]~input_o\)))) # (!\addr[3]~input_o\ & ((\addr[2]~input_o\ & ((\gen_regs:5:u_reg|q\(4)))) # (!\addr[2]~input_o\ & (\gen_regs:1:u_reg|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:1:u_reg|q\(4),
	datab => \gen_regs:5:u_reg|q\(4),
	datac => \addr[3]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux3~2_combout\);

-- Location: FF_X32_Y30_N27
\gen_regs:13:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:13:u_reg|q\(4));

-- Location: FF_X32_Y29_N9
\gen_regs:9:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:9:u_reg|q\(4));

-- Location: LCCOMB_X32_Y30_N26
\u_mux|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux3~3_combout\ = (\u_mux|Mux3~2_combout\ & (((\gen_regs:13:u_reg|q\(4))) # (!\addr[3]~input_o\))) # (!\u_mux|Mux3~2_combout\ & (\addr[3]~input_o\ & ((\gen_regs:9:u_reg|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux3~2_combout\,
	datab => \addr[3]~input_o\,
	datac => \gen_regs:13:u_reg|q\(4),
	datad => \gen_regs:9:u_reg|q\(4),
	combout => \u_mux|Mux3~3_combout\);

-- Location: LCCOMB_X27_Y30_N30
\gen_regs:4:u_reg|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:4:u_reg|q[4]~feeder_combout\ = \D_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[4]~input_o\,
	combout => \gen_regs:4:u_reg|q[4]~feeder_combout\);

-- Location: FF_X27_Y30_N31
\gen_regs:4:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:4:u_reg|q[4]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:4:u_reg|q\(4));

-- Location: FF_X30_Y29_N3
\gen_regs:0:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:0:u_reg|q\(4));

-- Location: LCCOMB_X30_Y29_N2
\u_mux|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux3~4_combout\ = (\addr[3]~input_o\ & (((\addr[2]~input_o\)))) # (!\addr[3]~input_o\ & ((\addr[2]~input_o\ & (\gen_regs:4:u_reg|q\(4))) # (!\addr[2]~input_o\ & ((\gen_regs:0:u_reg|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:4:u_reg|q\(4),
	datab => \addr[3]~input_o\,
	datac => \gen_regs:0:u_reg|q\(4),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux3~4_combout\);

-- Location: FF_X32_Y29_N27
\gen_regs:8:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:8:u_reg|q\(4));

-- Location: FF_X29_Y30_N1
\gen_regs:12:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:12:u_reg|q\(4));

-- Location: LCCOMB_X29_Y30_N0
\u_mux|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux3~5_combout\ = (\u_mux|Mux3~4_combout\ & (((\gen_regs:12:u_reg|q\(4)) # (!\addr[3]~input_o\)))) # (!\u_mux|Mux3~4_combout\ & (\gen_regs:8:u_reg|q\(4) & ((\addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux3~4_combout\,
	datab => \gen_regs:8:u_reg|q\(4),
	datac => \gen_regs:12:u_reg|q\(4),
	datad => \addr[3]~input_o\,
	combout => \u_mux|Mux3~5_combout\);

-- Location: LCCOMB_X27_Y30_N24
\u_mux|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux3~6_combout\ = (\addr[0]~input_o\ & ((\u_mux|Mux3~3_combout\) # ((\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & (((\u_mux|Mux3~5_combout\ & !\addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux3~3_combout\,
	datab => \addr[0]~input_o\,
	datac => \u_mux|Mux3~5_combout\,
	datad => \addr[1]~input_o\,
	combout => \u_mux|Mux3~6_combout\);

-- Location: FF_X28_Y29_N15
\gen_regs:10:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:10:u_reg|q\(4));

-- Location: FF_X29_Y30_N23
\gen_regs:14:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:14:u_reg|q\(4));

-- Location: FF_X28_Y30_N3
\gen_regs:6:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:6:u_reg|q\(4));

-- Location: FF_X30_Y32_N17
\gen_regs:2:u_reg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[4]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:2:u_reg|q\(4));

-- Location: LCCOMB_X30_Y32_N16
\u_mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux3~0_combout\ = (\addr[3]~input_o\ & (((\addr[2]~input_o\)))) # (!\addr[3]~input_o\ & ((\addr[2]~input_o\ & (\gen_regs:6:u_reg|q\(4))) # (!\addr[2]~input_o\ & ((\gen_regs:2:u_reg|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[3]~input_o\,
	datab => \gen_regs:6:u_reg|q\(4),
	datac => \gen_regs:2:u_reg|q\(4),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y30_N22
\u_mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux3~1_combout\ = (\addr[3]~input_o\ & ((\u_mux|Mux3~0_combout\ & ((\gen_regs:14:u_reg|q\(4)))) # (!\u_mux|Mux3~0_combout\ & (\gen_regs:10:u_reg|q\(4))))) # (!\addr[3]~input_o\ & (((\u_mux|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[3]~input_o\,
	datab => \gen_regs:10:u_reg|q\(4),
	datac => \gen_regs:14:u_reg|q\(4),
	datad => \u_mux|Mux3~0_combout\,
	combout => \u_mux|Mux3~1_combout\);

-- Location: LCCOMB_X28_Y30_N30
\u_mux|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux3~9_combout\ = (\u_mux|Mux3~6_combout\ & ((\u_mux|Mux3~8_combout\) # ((!\addr[1]~input_o\)))) # (!\u_mux|Mux3~6_combout\ & (((\addr[1]~input_o\ & \u_mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux3~8_combout\,
	datab => \u_mux|Mux3~6_combout\,
	datac => \addr[1]~input_o\,
	datad => \u_mux|Mux3~1_combout\,
	combout => \u_mux|Mux3~9_combout\);

-- Location: IOIBUF_X31_Y34_N8
\D_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(5),
	o => \D_in[5]~input_o\);

-- Location: FF_X30_Y30_N21
\gen_regs:14:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:14:u_reg|q\(5));

-- Location: FF_X30_Y30_N7
\gen_regs:15:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:15:u_reg|q\(5));

-- Location: FF_X32_Y30_N21
\gen_regs:13:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:13:u_reg|q\(5));

-- Location: FF_X29_Y30_N3
\gen_regs:12:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:12:u_reg|q\(5));

-- Location: LCCOMB_X29_Y30_N2
\u_mux|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux2~7_combout\ = (\addr[0]~input_o\ & ((\gen_regs:13:u_reg|q\(5)) # ((\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & (((\gen_regs:12:u_reg|q\(5) & !\addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:13:u_reg|q\(5),
	datab => \addr[0]~input_o\,
	datac => \gen_regs:12:u_reg|q\(5),
	datad => \addr[1]~input_o\,
	combout => \u_mux|Mux2~7_combout\);

-- Location: LCCOMB_X30_Y30_N6
\u_mux|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux2~8_combout\ = (\addr[1]~input_o\ & ((\u_mux|Mux2~7_combout\ & ((\gen_regs:15:u_reg|q\(5)))) # (!\u_mux|Mux2~7_combout\ & (\gen_regs:14:u_reg|q\(5))))) # (!\addr[1]~input_o\ & (((\u_mux|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \gen_regs:14:u_reg|q\(5),
	datac => \gen_regs:15:u_reg|q\(5),
	datad => \u_mux|Mux2~7_combout\,
	combout => \u_mux|Mux2~8_combout\);

-- Location: FF_X28_Y29_N19
\gen_regs:10:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:10:u_reg|q\(5));

-- Location: FF_X32_Y29_N15
\gen_regs:8:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:8:u_reg|q\(5));

-- Location: LCCOMB_X32_Y29_N14
\u_mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux2~0_combout\ = (\addr[1]~input_o\ & ((\gen_regs:10:u_reg|q\(5)) # ((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & (((\gen_regs:8:u_reg|q\(5) & !\addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \gen_regs:10:u_reg|q\(5),
	datac => \gen_regs:8:u_reg|q\(5),
	datad => \addr[0]~input_o\,
	combout => \u_mux|Mux2~0_combout\);

-- Location: FF_X32_Y29_N13
\gen_regs:9:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:9:u_reg|q\(5));

-- Location: FF_X31_Y29_N3
\gen_regs:11:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:11:u_reg|q\(5));

-- Location: LCCOMB_X31_Y29_N2
\u_mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux2~1_combout\ = (\u_mux|Mux2~0_combout\ & (((\gen_regs:11:u_reg|q\(5)) # (!\addr[0]~input_o\)))) # (!\u_mux|Mux2~0_combout\ & (\gen_regs:9:u_reg|q\(5) & ((\addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux2~0_combout\,
	datab => \gen_regs:9:u_reg|q\(5),
	datac => \gen_regs:11:u_reg|q\(5),
	datad => \addr[0]~input_o\,
	combout => \u_mux|Mux2~1_combout\);

-- Location: FF_X28_Y30_N17
\gen_regs:6:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:6:u_reg|q\(5));

-- Location: FF_X28_Y30_N27
\gen_regs:7:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:7:u_reg|q\(5));

-- Location: FF_X28_Y29_N29
\gen_regs:5:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:5:u_reg|q\(5));

-- Location: FF_X27_Y30_N19
\gen_regs:4:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:4:u_reg|q\(5));

-- Location: LCCOMB_X27_Y30_N18
\u_mux|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux2~2_combout\ = (\addr[0]~input_o\ & ((\gen_regs:5:u_reg|q\(5)) # ((\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & (((\gen_regs:4:u_reg|q\(5) & !\addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:5:u_reg|q\(5),
	datab => \addr[0]~input_o\,
	datac => \gen_regs:4:u_reg|q\(5),
	datad => \addr[1]~input_o\,
	combout => \u_mux|Mux2~2_combout\);

-- Location: LCCOMB_X28_Y30_N26
\u_mux|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux2~3_combout\ = (\addr[1]~input_o\ & ((\u_mux|Mux2~2_combout\ & ((\gen_regs:7:u_reg|q\(5)))) # (!\u_mux|Mux2~2_combout\ & (\gen_regs:6:u_reg|q\(5))))) # (!\addr[1]~input_o\ & (((\u_mux|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \gen_regs:6:u_reg|q\(5),
	datac => \gen_regs:7:u_reg|q\(5),
	datad => \u_mux|Mux2~2_combout\,
	combout => \u_mux|Mux2~3_combout\);

-- Location: FF_X30_Y29_N31
\gen_regs:0:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:0:u_reg|q\(5));

-- Location: LCCOMB_X30_Y32_N10
\gen_regs:2:u_reg|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:2:u_reg|q[5]~feeder_combout\ = \D_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[5]~input_o\,
	combout => \gen_regs:2:u_reg|q[5]~feeder_combout\);

-- Location: FF_X30_Y32_N11
\gen_regs:2:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:2:u_reg|q[5]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:2:u_reg|q\(5));

-- Location: LCCOMB_X30_Y29_N30
\u_mux|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux2~4_combout\ = (\addr[1]~input_o\ & ((\addr[0]~input_o\) # ((\gen_regs:2:u_reg|q\(5))))) # (!\addr[1]~input_o\ & (!\addr[0]~input_o\ & (\gen_regs:0:u_reg|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \gen_regs:0:u_reg|q\(5),
	datad => \gen_regs:2:u_reg|q\(5),
	combout => \u_mux|Mux2~4_combout\);

-- Location: FF_X31_Y29_N5
\gen_regs:3:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:3:u_reg|q\(5));

-- Location: LCCOMB_X30_Y29_N12
\gen_regs:1:u_reg|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:1:u_reg|q[5]~feeder_combout\ = \D_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[5]~input_o\,
	combout => \gen_regs:1:u_reg|q[5]~feeder_combout\);

-- Location: FF_X30_Y29_N13
\gen_regs:1:u_reg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:1:u_reg|q[5]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:1:u_reg|q\(5));

-- Location: LCCOMB_X31_Y29_N4
\u_mux|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux2~5_combout\ = (\u_mux|Mux2~4_combout\ & (((\gen_regs:3:u_reg|q\(5))) # (!\addr[0]~input_o\))) # (!\u_mux|Mux2~4_combout\ & (\addr[0]~input_o\ & ((\gen_regs:1:u_reg|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux2~4_combout\,
	datab => \addr[0]~input_o\,
	datac => \gen_regs:3:u_reg|q\(5),
	datad => \gen_regs:1:u_reg|q\(5),
	combout => \u_mux|Mux2~5_combout\);

-- Location: LCCOMB_X30_Y30_N10
\u_mux|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux2~6_combout\ = (\addr[3]~input_o\ & (((\addr[2]~input_o\)))) # (!\addr[3]~input_o\ & ((\addr[2]~input_o\ & (\u_mux|Mux2~3_combout\)) # (!\addr[2]~input_o\ & ((\u_mux|Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux2~3_combout\,
	datab => \u_mux|Mux2~5_combout\,
	datac => \addr[3]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux2~6_combout\);

-- Location: LCCOMB_X30_Y30_N16
\u_mux|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux2~9_combout\ = (\addr[3]~input_o\ & ((\u_mux|Mux2~6_combout\ & (\u_mux|Mux2~8_combout\)) # (!\u_mux|Mux2~6_combout\ & ((\u_mux|Mux2~1_combout\))))) # (!\addr[3]~input_o\ & (((\u_mux|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux2~8_combout\,
	datab => \u_mux|Mux2~1_combout\,
	datac => \addr[3]~input_o\,
	datad => \u_mux|Mux2~6_combout\,
	combout => \u_mux|Mux2~9_combout\);

-- Location: IOIBUF_X34_Y34_N8
\D_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(6),
	o => \D_in[6]~input_o\);

-- Location: LCCOMB_X28_Y30_N0
\gen_regs:7:u_reg|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:7:u_reg|q[6]~feeder_combout\ = \D_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[6]~input_o\,
	combout => \gen_regs:7:u_reg|q[6]~feeder_combout\);

-- Location: FF_X28_Y30_N1
\gen_regs:7:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:7:u_reg|q[6]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:7:u_reg|q\(6));

-- Location: FF_X31_Y29_N23
\gen_regs:3:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[6]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:3:u_reg|q\(6));

-- Location: LCCOMB_X31_Y29_N22
\u_mux|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux1~7_combout\ = (\addr[2]~input_o\ & ((\gen_regs:7:u_reg|q\(6)) # ((\addr[3]~input_o\)))) # (!\addr[2]~input_o\ & (((\gen_regs:3:u_reg|q\(6) & !\addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:7:u_reg|q\(6),
	datab => \addr[2]~input_o\,
	datac => \gen_regs:3:u_reg|q\(6),
	datad => \addr[3]~input_o\,
	combout => \u_mux|Mux1~7_combout\);

-- Location: FF_X31_Y30_N25
\gen_regs:15:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[6]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:15:u_reg|q\(6));

-- Location: FF_X31_Y30_N23
\gen_regs:11:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[6]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:11:u_reg|q\(6));

-- Location: LCCOMB_X31_Y30_N24
\u_mux|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux1~8_combout\ = (\addr[3]~input_o\ & ((\u_mux|Mux1~7_combout\ & (\gen_regs:15:u_reg|q\(6))) # (!\u_mux|Mux1~7_combout\ & ((\gen_regs:11:u_reg|q\(6)))))) # (!\addr[3]~input_o\ & (\u_mux|Mux1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[3]~input_o\,
	datab => \u_mux|Mux1~7_combout\,
	datac => \gen_regs:15:u_reg|q\(6),
	datad => \gen_regs:11:u_reg|q\(6),
	combout => \u_mux|Mux1~8_combout\);

-- Location: FF_X27_Y30_N13
\gen_regs:4:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[6]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:4:u_reg|q\(6));

-- Location: FF_X30_Y29_N19
\gen_regs:0:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[6]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:0:u_reg|q\(6));

-- Location: LCCOMB_X30_Y29_N18
\u_mux|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux1~4_combout\ = (\addr[3]~input_o\ & (((\addr[2]~input_o\)))) # (!\addr[3]~input_o\ & ((\addr[2]~input_o\ & (\gen_regs:4:u_reg|q\(6))) # (!\addr[2]~input_o\ & ((\gen_regs:0:u_reg|q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:4:u_reg|q\(6),
	datab => \addr[3]~input_o\,
	datac => \gen_regs:0:u_reg|q\(6),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux1~4_combout\);

-- Location: LCCOMB_X32_Y29_N2
\gen_regs:8:u_reg|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:8:u_reg|q[6]~feeder_combout\ = \D_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[6]~input_o\,
	combout => \gen_regs:8:u_reg|q[6]~feeder_combout\);

-- Location: FF_X32_Y29_N3
\gen_regs:8:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:8:u_reg|q[6]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:8:u_reg|q\(6));

-- Location: FF_X29_Y30_N31
\gen_regs:12:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[6]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:12:u_reg|q\(6));

-- Location: LCCOMB_X29_Y30_N30
\u_mux|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux1~5_combout\ = (\u_mux|Mux1~4_combout\ & (((\gen_regs:12:u_reg|q\(6)) # (!\addr[3]~input_o\)))) # (!\u_mux|Mux1~4_combout\ & (\gen_regs:8:u_reg|q\(6) & ((\addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux1~4_combout\,
	datab => \gen_regs:8:u_reg|q\(6),
	datac => \gen_regs:12:u_reg|q\(6),
	datad => \addr[3]~input_o\,
	combout => \u_mux|Mux1~5_combout\);

-- Location: FF_X28_Y29_N17
\gen_regs:10:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[6]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:10:u_reg|q\(6));

-- Location: LCCOMB_X28_Y30_N28
\gen_regs:6:u_reg|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:6:u_reg|q[6]~feeder_combout\ = \D_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[6]~input_o\,
	combout => \gen_regs:6:u_reg|q[6]~feeder_combout\);

-- Location: FF_X28_Y30_N29
\gen_regs:6:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:6:u_reg|q[6]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:6:u_reg|q\(6));

-- Location: FF_X30_Y32_N13
\gen_regs:2:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[6]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:2:u_reg|q\(6));

-- Location: LCCOMB_X30_Y32_N12
\u_mux|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux1~2_combout\ = (\addr[3]~input_o\ & (((\addr[2]~input_o\)))) # (!\addr[3]~input_o\ & ((\addr[2]~input_o\ & (\gen_regs:6:u_reg|q\(6))) # (!\addr[2]~input_o\ & ((\gen_regs:2:u_reg|q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[3]~input_o\,
	datab => \gen_regs:6:u_reg|q\(6),
	datac => \gen_regs:2:u_reg|q\(6),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux1~2_combout\);

-- Location: FF_X29_Y30_N5
\gen_regs:14:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[6]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:14:u_reg|q\(6));

-- Location: LCCOMB_X29_Y30_N4
\u_mux|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux1~3_combout\ = (\u_mux|Mux1~2_combout\ & (((\gen_regs:14:u_reg|q\(6)) # (!\addr[3]~input_o\)))) # (!\u_mux|Mux1~2_combout\ & (\gen_regs:10:u_reg|q\(6) & ((\addr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:10:u_reg|q\(6),
	datab => \u_mux|Mux1~2_combout\,
	datac => \gen_regs:14:u_reg|q\(6),
	datad => \addr[3]~input_o\,
	combout => \u_mux|Mux1~3_combout\);

-- Location: LCCOMB_X28_Y30_N14
\u_mux|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux1~6_combout\ = (\addr[0]~input_o\ & (((\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & ((\u_mux|Mux1~3_combout\))) # (!\addr[1]~input_o\ & (\u_mux|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux1~5_combout\,
	datab => \addr[0]~input_o\,
	datac => \addr[1]~input_o\,
	datad => \u_mux|Mux1~3_combout\,
	combout => \u_mux|Mux1~6_combout\);

-- Location: FF_X28_Y29_N7
\gen_regs:5:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[6]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:5:u_reg|q\(6));

-- Location: FF_X30_Y29_N1
\gen_regs:1:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[6]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:1:u_reg|q\(6));

-- Location: LCCOMB_X30_Y29_N0
\u_mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux1~0_combout\ = (\addr[3]~input_o\ & (((\addr[2]~input_o\)))) # (!\addr[3]~input_o\ & ((\addr[2]~input_o\ & (\gen_regs:5:u_reg|q\(6))) # (!\addr[2]~input_o\ & ((\gen_regs:1:u_reg|q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:5:u_reg|q\(6),
	datab => \addr[3]~input_o\,
	datac => \gen_regs:1:u_reg|q\(6),
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux1~0_combout\);

-- Location: FF_X32_Y30_N15
\gen_regs:13:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[6]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:13:u_reg|q\(6));

-- Location: LCCOMB_X32_Y29_N16
\gen_regs:9:u_reg|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:9:u_reg|q[6]~feeder_combout\ = \D_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[6]~input_o\,
	combout => \gen_regs:9:u_reg|q[6]~feeder_combout\);

-- Location: FF_X32_Y29_N17
\gen_regs:9:u_reg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:9:u_reg|q[6]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:9:u_reg|q\(6));

-- Location: LCCOMB_X32_Y30_N14
\u_mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux1~1_combout\ = (\u_mux|Mux1~0_combout\ & (((\gen_regs:13:u_reg|q\(6))) # (!\addr[3]~input_o\))) # (!\u_mux|Mux1~0_combout\ & (\addr[3]~input_o\ & ((\gen_regs:9:u_reg|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux1~0_combout\,
	datab => \addr[3]~input_o\,
	datac => \gen_regs:13:u_reg|q\(6),
	datad => \gen_regs:9:u_reg|q\(6),
	combout => \u_mux|Mux1~1_combout\);

-- Location: LCCOMB_X32_Y30_N8
\u_mux|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux1~9_combout\ = (\addr[0]~input_o\ & ((\u_mux|Mux1~6_combout\ & (\u_mux|Mux1~8_combout\)) # (!\u_mux|Mux1~6_combout\ & ((\u_mux|Mux1~1_combout\))))) # (!\addr[0]~input_o\ & (((\u_mux|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \u_mux|Mux1~8_combout\,
	datac => \u_mux|Mux1~6_combout\,
	datad => \u_mux|Mux1~1_combout\,
	combout => \u_mux|Mux1~9_combout\);

-- Location: IOIBUF_X40_Y34_N1
\D_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(7),
	o => \D_in[7]~input_o\);

-- Location: FF_X30_Y29_N7
\gen_regs:0:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:0:u_reg|q\(7));

-- Location: FF_X30_Y29_N29
\gen_regs:1:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:1:u_reg|q\(7));

-- Location: LCCOMB_X30_Y29_N6
\u_mux|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux0~4_combout\ = (\addr[1]~input_o\ & (\addr[0]~input_o\)) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & ((\gen_regs:1:u_reg|q\(7)))) # (!\addr[0]~input_o\ & (\gen_regs:0:u_reg|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \gen_regs:0:u_reg|q\(7),
	datad => \gen_regs:1:u_reg|q\(7),
	combout => \u_mux|Mux0~4_combout\);

-- Location: LCCOMB_X30_Y32_N30
\gen_regs:2:u_reg|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:2:u_reg|q[7]~feeder_combout\ = \D_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[7]~input_o\,
	combout => \gen_regs:2:u_reg|q[7]~feeder_combout\);

-- Location: FF_X30_Y32_N31
\gen_regs:2:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:2:u_reg|q[7]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:2:u_reg|q\(7));

-- Location: FF_X31_Y29_N27
\gen_regs:3:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:3:u_reg|q\(7));

-- Location: LCCOMB_X31_Y29_N26
\u_mux|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux0~5_combout\ = (\u_mux|Mux0~4_combout\ & (((\gen_regs:3:u_reg|q\(7)) # (!\addr[1]~input_o\)))) # (!\u_mux|Mux0~4_combout\ & (\gen_regs:2:u_reg|q\(7) & ((\addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux0~4_combout\,
	datab => \gen_regs:2:u_reg|q\(7),
	datac => \gen_regs:3:u_reg|q\(7),
	datad => \addr[1]~input_o\,
	combout => \u_mux|Mux0~5_combout\);

-- Location: FF_X32_Y29_N21
\gen_regs:9:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:9:u_reg|q\(7));

-- Location: FF_X32_Y29_N7
\gen_regs:8:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:8:u_reg|q\(7));

-- Location: LCCOMB_X32_Y29_N6
\u_mux|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux0~2_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & (\gen_regs:9:u_reg|q\(7))) # (!\addr[0]~input_o\ & ((\gen_regs:8:u_reg|q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \gen_regs:9:u_reg|q\(7),
	datac => \gen_regs:8:u_reg|q\(7),
	datad => \addr[0]~input_o\,
	combout => \u_mux|Mux0~2_combout\);

-- Location: FF_X28_Y29_N21
\gen_regs:10:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:10:u_reg|q\(7));

-- Location: FF_X31_Y29_N25
\gen_regs:11:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:11:u_reg|q\(7));

-- Location: LCCOMB_X31_Y29_N24
\u_mux|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux0~3_combout\ = (\u_mux|Mux0~2_combout\ & (((\gen_regs:11:u_reg|q\(7)) # (!\addr[1]~input_o\)))) # (!\u_mux|Mux0~2_combout\ & (\gen_regs:10:u_reg|q\(7) & ((\addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux0~2_combout\,
	datab => \gen_regs:10:u_reg|q\(7),
	datac => \gen_regs:11:u_reg|q\(7),
	datad => \addr[1]~input_o\,
	combout => \u_mux|Mux0~3_combout\);

-- Location: LCCOMB_X30_Y30_N2
\u_mux|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux0~6_combout\ = (\addr[3]~input_o\ & (((\u_mux|Mux0~3_combout\) # (\addr[2]~input_o\)))) # (!\addr[3]~input_o\ & (\u_mux|Mux0~5_combout\ & ((!\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux0~5_combout\,
	datab => \u_mux|Mux0~3_combout\,
	datac => \addr[3]~input_o\,
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux0~6_combout\);

-- Location: FF_X32_Y30_N3
\gen_regs:13:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:13:u_reg|q\(7));

-- Location: FF_X32_Y30_N29
\gen_regs:15:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:15:u_reg|q\(7));

-- Location: LCCOMB_X29_Y30_N16
\gen_regs:14:u_reg|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_regs:14:u_reg|q[7]~feeder_combout\ = \D_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D_in[7]~input_o\,
	combout => \gen_regs:14:u_reg|q[7]~feeder_combout\);

-- Location: FF_X29_Y30_N17
\gen_regs:14:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen_regs:14:u_reg|q[7]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \u_dec|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:14:u_reg|q\(7));

-- Location: FF_X29_Y30_N19
\gen_regs:12:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:12:u_reg|q\(7));

-- Location: LCCOMB_X29_Y30_N18
\u_mux|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux0~7_combout\ = (\addr[0]~input_o\ & (((\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & (\gen_regs:14:u_reg|q\(7))) # (!\addr[1]~input_o\ & ((\gen_regs:12:u_reg|q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \gen_regs:14:u_reg|q\(7),
	datac => \gen_regs:12:u_reg|q\(7),
	datad => \addr[1]~input_o\,
	combout => \u_mux|Mux0~7_combout\);

-- Location: LCCOMB_X32_Y30_N28
\u_mux|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux0~8_combout\ = (\addr[0]~input_o\ & ((\u_mux|Mux0~7_combout\ & ((\gen_regs:15:u_reg|q\(7)))) # (!\u_mux|Mux0~7_combout\ & (\gen_regs:13:u_reg|q\(7))))) # (!\addr[0]~input_o\ & (((\u_mux|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \gen_regs:13:u_reg|q\(7),
	datac => \gen_regs:15:u_reg|q\(7),
	datad => \u_mux|Mux0~7_combout\,
	combout => \u_mux|Mux0~8_combout\);

-- Location: FF_X27_Y30_N7
\gen_regs:6:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:6:u_reg|q\(7));

-- Location: FF_X27_Y30_N9
\gen_regs:4:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:4:u_reg|q\(7));

-- Location: LCCOMB_X27_Y30_N8
\u_mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux0~0_combout\ = (\addr[0]~input_o\ & (((\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & (\gen_regs:6:u_reg|q\(7))) # (!\addr[1]~input_o\ & ((\gen_regs:4:u_reg|q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_regs:6:u_reg|q\(7),
	datab => \addr[0]~input_o\,
	datac => \gen_regs:4:u_reg|q\(7),
	datad => \addr[1]~input_o\,
	combout => \u_mux|Mux0~0_combout\);

-- Location: FF_X28_Y30_N19
\gen_regs:7:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:7:u_reg|q\(7));

-- Location: FF_X28_Y29_N3
\gen_regs:5:u_reg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D_in[7]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_dec|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen_regs:5:u_reg|q\(7));

-- Location: LCCOMB_X28_Y30_N18
\u_mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux0~1_combout\ = (\u_mux|Mux0~0_combout\ & (((\gen_regs:7:u_reg|q\(7))) # (!\addr[0]~input_o\))) # (!\u_mux|Mux0~0_combout\ & (\addr[0]~input_o\ & ((\gen_regs:5:u_reg|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux0~0_combout\,
	datab => \addr[0]~input_o\,
	datac => \gen_regs:7:u_reg|q\(7),
	datad => \gen_regs:5:u_reg|q\(7),
	combout => \u_mux|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y30_N26
\u_mux|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mux|Mux0~9_combout\ = (\u_mux|Mux0~6_combout\ & ((\u_mux|Mux0~8_combout\) # ((!\addr[2]~input_o\)))) # (!\u_mux|Mux0~6_combout\ & (((\u_mux|Mux0~1_combout\ & \addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux|Mux0~6_combout\,
	datab => \u_mux|Mux0~8_combout\,
	datac => \u_mux|Mux0~1_combout\,
	datad => \addr[2]~input_o\,
	combout => \u_mux|Mux0~9_combout\);

ww_D_out(0) <= \D_out[0]~output_o\;

ww_D_out(1) <= \D_out[1]~output_o\;

ww_D_out(2) <= \D_out[2]~output_o\;

ww_D_out(3) <= \D_out[3]~output_o\;

ww_D_out(4) <= \D_out[4]~output_o\;

ww_D_out(5) <= \D_out[5]~output_o\;

ww_D_out(6) <= \D_out[6]~output_o\;

ww_D_out(7) <= \D_out[7]~output_o\;
END structure;


