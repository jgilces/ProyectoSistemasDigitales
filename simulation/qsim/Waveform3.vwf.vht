-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/15/2018 01:25:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          contador_prueba
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contador_prueba_vhd_vec_tst IS
END contador_prueba_vhd_vec_tst;
ARCHITECTURE contador_prueba_arch OF contador_prueba_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL data_out : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL en_cnt : STD_LOGIC;
SIGNAL reset_cnt : STD_LOGIC;
COMPONENT contador_prueba
	PORT (
	clock : IN STD_LOGIC;
	data_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	en_cnt : IN STD_LOGIC;
	reset_cnt : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : contador_prueba
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	data_out => data_out,
	en_cnt => en_cnt,
	reset_cnt => reset_cnt
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- en_cnt
t_prcs_en_cnt: PROCESS
BEGIN
	en_cnt <= '0';
	WAIT FOR 30000 ps;
	en_cnt <= '1';
	WAIT FOR 20000 ps;
	en_cnt <= '0';
	WAIT FOR 80000 ps;
	en_cnt <= '1';
	WAIT FOR 10000 ps;
	en_cnt <= '0';
	WAIT FOR 50000 ps;
	en_cnt <= '1';
	WAIT FOR 10000 ps;
	en_cnt <= '0';
	WAIT FOR 70000 ps;
	en_cnt <= '1';
	WAIT FOR 30000 ps;
	en_cnt <= '0';
	WAIT FOR 120000 ps;
	en_cnt <= '1';
	WAIT FOR 20000 ps;
	en_cnt <= '0';
	WAIT FOR 50000 ps;
	en_cnt <= '1';
	WAIT FOR 60000 ps;
	en_cnt <= '0';
WAIT;
END PROCESS t_prcs_en_cnt;

-- reset_cnt
t_prcs_reset_cnt: PROCESS
BEGIN
	reset_cnt <= '0';
	WAIT FOR 10000 ps;
	reset_cnt <= '1';
	WAIT FOR 380000 ps;
	reset_cnt <= '0';
	WAIT FOR 140000 ps;
	reset_cnt <= '1';
	WAIT FOR 370000 ps;
	reset_cnt <= '0';
WAIT;
END PROCESS t_prcs_reset_cnt;
END contador_prueba_arch;
