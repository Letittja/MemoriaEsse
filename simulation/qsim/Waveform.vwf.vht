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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/27/2026 18:22:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          memoria
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY memoria_vhd_vec_tst IS
END memoria_vhd_vec_tst;
ARCHITECTURE memoria_arch OF memoria_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clear : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL D_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL D_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
COMPONENT memoria
	PORT (
	addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	clear : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	D_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	D_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	enable : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : memoria
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clear => clear,
	clk => clk,
	D_in => D_in,
	D_out => D_out,
	enable => enable
	);
-- addr[3]
t_prcs_addr_3: PROCESS
BEGIN
	addr(3) <= '0';
WAIT;
END PROCESS t_prcs_addr_3;
-- addr[2]
t_prcs_addr_2: PROCESS
BEGIN
	addr(2) <= '0';
WAIT;
END PROCESS t_prcs_addr_2;
-- addr[1]
t_prcs_addr_1: PROCESS
BEGIN
	addr(1) <= '0';
	WAIT FOR 50000 ps;
	addr(1) <= '1';
	WAIT FOR 230000 ps;
	addr(1) <= '0';
WAIT;
END PROCESS t_prcs_addr_1;
-- addr[0]
t_prcs_addr_0: PROCESS
BEGIN
	addr(0) <= '0';
WAIT;
END PROCESS t_prcs_addr_0;

-- clear
t_prcs_clear: PROCESS
BEGIN
	clear <= '1';
	WAIT FOR 30000 ps;
	clear <= '0';
	WAIT FOR 660000 ps;
	clear <= '1';
	WAIT FOR 80000 ps;
	clear <= '0';
WAIT;
END PROCESS t_prcs_clear;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- D_in[7]
t_prcs_D_in_7: PROCESS
BEGIN
	D_in(7) <= '0';
	WAIT FOR 50000 ps;
	D_in(7) <= '1';
	WAIT FOR 120000 ps;
	D_in(7) <= '0';
WAIT;
END PROCESS t_prcs_D_in_7;
-- D_in[6]
t_prcs_D_in_6: PROCESS
BEGIN
	D_in(6) <= '0';
WAIT;
END PROCESS t_prcs_D_in_6;
-- D_in[5]
t_prcs_D_in_5: PROCESS
BEGIN
	D_in(5) <= '0';
	WAIT FOR 50000 ps;
	D_in(5) <= '1';
	WAIT FOR 120000 ps;
	D_in(5) <= '0';
WAIT;
END PROCESS t_prcs_D_in_5;
-- D_in[4]
t_prcs_D_in_4: PROCESS
BEGIN
	D_in(4) <= '0';
WAIT;
END PROCESS t_prcs_D_in_4;
-- D_in[3]
t_prcs_D_in_3: PROCESS
BEGIN
	D_in(3) <= '0';
WAIT;
END PROCESS t_prcs_D_in_3;
-- D_in[2]
t_prcs_D_in_2: PROCESS
BEGIN
	D_in(2) <= '0';
	WAIT FOR 50000 ps;
	D_in(2) <= '1';
	WAIT FOR 120000 ps;
	D_in(2) <= '0';
WAIT;
END PROCESS t_prcs_D_in_2;
-- D_in[1]
t_prcs_D_in_1: PROCESS
BEGIN
	D_in(1) <= '0';
WAIT;
END PROCESS t_prcs_D_in_1;
-- D_in[0]
t_prcs_D_in_0: PROCESS
BEGIN
	D_in(0) <= '0';
	WAIT FOR 50000 ps;
	D_in(0) <= '1';
	WAIT FOR 120000 ps;
	D_in(0) <= '0';
WAIT;
END PROCESS t_prcs_D_in_0;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
	WAIT FOR 50000 ps;
	enable <= '1';
	WAIT FOR 120000 ps;
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;
END memoria_arch;
