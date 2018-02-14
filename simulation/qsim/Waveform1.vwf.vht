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
-- Generated on "01/14/2018 19:42:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          reg_sostenimiento
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY reg_sostenimiento_vhd_vec_tst IS
END reg_sostenimiento_vhd_vec_tst;
ARCHITECTURE reg_sostenimiento_arch OF reg_sostenimiento_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en_reg : STD_LOGIC;
SIGNAL reset_reg : STD_LOGIC;
COMPONENT reg_sostenimiento
	PORT (
	clock : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_out : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	en_reg : IN STD_LOGIC;
	reset_reg : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : reg_sostenimiento
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	data_in => data_in,
	data_out => data_out,
	en_reg => en_reg,
	reset_reg => reset_reg
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 160000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- data_in[7]
t_prcs_data_in_7: PROCESS
BEGIN
	data_in(7) <= '0';
	WAIT FOR 5000 ps;
	data_in(7) <= '1';
	WAIT FOR 15000 ps;
	data_in(7) <= '0';
	WAIT FOR 35000 ps;
	data_in(7) <= '1';
	WAIT FOR 10000 ps;
	data_in(7) <= '0';
	WAIT FOR 5000 ps;
	data_in(7) <= '1';
	WAIT FOR 5000 ps;
	data_in(7) <= '0';
	WAIT FOR 5000 ps;
	data_in(7) <= '1';
	WAIT FOR 5000 ps;
	data_in(7) <= '0';
	WAIT FOR 15000 ps;
	data_in(7) <= '1';
	WAIT FOR 20000 ps;
	data_in(7) <= '0';
	WAIT FOR 35000 ps;
	data_in(7) <= '1';
WAIT;
END PROCESS t_prcs_data_in_7;
-- data_in[6]
t_prcs_data_in_6: PROCESS
BEGIN
	data_in(6) <= '0';
	WAIT FOR 10000 ps;
	data_in(6) <= '1';
	WAIT FOR 5000 ps;
	data_in(6) <= '0';
	WAIT FOR 50000 ps;
	data_in(6) <= '1';
	WAIT FOR 10000 ps;
	data_in(6) <= '0';
	WAIT FOR 20000 ps;
	data_in(6) <= '1';
	WAIT FOR 5000 ps;
	data_in(6) <= '0';
	WAIT FOR 5000 ps;
	data_in(6) <= '1';
	WAIT FOR 15000 ps;
	data_in(6) <= '0';
	WAIT FOR 5000 ps;
	data_in(6) <= '1';
	WAIT FOR 10000 ps;
	data_in(6) <= '0';
	WAIT FOR 5000 ps;
	data_in(6) <= '1';
	WAIT FOR 5000 ps;
	data_in(6) <= '0';
	WAIT FOR 5000 ps;
	data_in(6) <= '1';
	WAIT FOR 5000 ps;
	data_in(6) <= '0';
WAIT;
END PROCESS t_prcs_data_in_6;
-- data_in[5]
t_prcs_data_in_5: PROCESS
BEGIN
	data_in(5) <= '1';
	WAIT FOR 5000 ps;
	data_in(5) <= '0';
	WAIT FOR 5000 ps;
	data_in(5) <= '1';
	WAIT FOR 5000 ps;
	data_in(5) <= '0';
	WAIT FOR 15000 ps;
	data_in(5) <= '1';
	WAIT FOR 5000 ps;
	data_in(5) <= '0';
	WAIT FOR 10000 ps;
	data_in(5) <= '1';
	WAIT FOR 5000 ps;
	data_in(5) <= '0';
	WAIT FOR 5000 ps;
	data_in(5) <= '1';
	WAIT FOR 5000 ps;
	data_in(5) <= '0';
	WAIT FOR 5000 ps;
	data_in(5) <= '1';
	WAIT FOR 5000 ps;
	data_in(5) <= '0';
	WAIT FOR 20000 ps;
	data_in(5) <= '1';
	WAIT FOR 5000 ps;
	data_in(5) <= '0';
	WAIT FOR 5000 ps;
	data_in(5) <= '1';
	WAIT FOR 20000 ps;
	data_in(5) <= '0';
	WAIT FOR 5000 ps;
	data_in(5) <= '1';
	WAIT FOR 15000 ps;
	data_in(5) <= '0';
WAIT;
END PROCESS t_prcs_data_in_5;
-- data_in[4]
t_prcs_data_in_4: PROCESS
BEGIN
	data_in(4) <= '1';
	WAIT FOR 15000 ps;
	data_in(4) <= '0';
	WAIT FOR 10000 ps;
	data_in(4) <= '1';
	WAIT FOR 10000 ps;
	data_in(4) <= '0';
	WAIT FOR 10000 ps;
	data_in(4) <= '1';
	WAIT FOR 10000 ps;
	data_in(4) <= '0';
	WAIT FOR 30000 ps;
	data_in(4) <= '1';
	WAIT FOR 15000 ps;
	data_in(4) <= '0';
	WAIT FOR 15000 ps;
	data_in(4) <= '1';
	WAIT FOR 15000 ps;
	data_in(4) <= '0';
	WAIT FOR 5000 ps;
	data_in(4) <= '1';
	WAIT FOR 5000 ps;
	data_in(4) <= '0';
	WAIT FOR 5000 ps;
	data_in(4) <= '1';
	WAIT FOR 10000 ps;
	data_in(4) <= '0';
WAIT;
END PROCESS t_prcs_data_in_4;
-- data_in[3]
t_prcs_data_in_3: PROCESS
BEGIN
	data_in(3) <= '1';
	WAIT FOR 15000 ps;
	data_in(3) <= '0';
	WAIT FOR 10000 ps;
	data_in(3) <= '1';
	WAIT FOR 5000 ps;
	data_in(3) <= '0';
	WAIT FOR 10000 ps;
	data_in(3) <= '1';
	WAIT FOR 10000 ps;
	data_in(3) <= '0';
	WAIT FOR 15000 ps;
	data_in(3) <= '1';
	WAIT FOR 5000 ps;
	data_in(3) <= '0';
	WAIT FOR 15000 ps;
	data_in(3) <= '1';
	WAIT FOR 5000 ps;
	data_in(3) <= '0';
	WAIT FOR 5000 ps;
	data_in(3) <= '1';
	WAIT FOR 5000 ps;
	data_in(3) <= '0';
	WAIT FOR 5000 ps;
	data_in(3) <= '1';
	WAIT FOR 10000 ps;
	data_in(3) <= '0';
	WAIT FOR 10000 ps;
	data_in(3) <= '1';
	WAIT FOR 10000 ps;
	data_in(3) <= '0';
	WAIT FOR 5000 ps;
	data_in(3) <= '1';
	WAIT FOR 5000 ps;
	data_in(3) <= '0';
	WAIT FOR 5000 ps;
	data_in(3) <= '1';
WAIT;
END PROCESS t_prcs_data_in_3;
-- data_in[2]
t_prcs_data_in_2: PROCESS
BEGIN
	data_in(2) <= '1';
	WAIT FOR 10000 ps;
	data_in(2) <= '0';
	WAIT FOR 5000 ps;
	data_in(2) <= '1';
	WAIT FOR 5000 ps;
	data_in(2) <= '0';
	WAIT FOR 10000 ps;
	data_in(2) <= '1';
	WAIT FOR 15000 ps;
	data_in(2) <= '0';
	WAIT FOR 5000 ps;
	data_in(2) <= '1';
	WAIT FOR 10000 ps;
	data_in(2) <= '0';
	WAIT FOR 5000 ps;
	data_in(2) <= '1';
	WAIT FOR 5000 ps;
	data_in(2) <= '0';
	WAIT FOR 5000 ps;
	data_in(2) <= '1';
	WAIT FOR 30000 ps;
	data_in(2) <= '0';
	WAIT FOR 5000 ps;
	data_in(2) <= '1';
	WAIT FOR 10000 ps;
	data_in(2) <= '0';
	WAIT FOR 15000 ps;
	data_in(2) <= '1';
	WAIT FOR 10000 ps;
	data_in(2) <= '0';
	WAIT FOR 5000 ps;
	data_in(2) <= '1';
WAIT;
END PROCESS t_prcs_data_in_2;
-- data_in[1]
t_prcs_data_in_1: PROCESS
BEGIN
	data_in(1) <= '0';
	WAIT FOR 25000 ps;
	data_in(1) <= '1';
	WAIT FOR 5000 ps;
	data_in(1) <= '0';
	WAIT FOR 10000 ps;
	data_in(1) <= '1';
	WAIT FOR 5000 ps;
	data_in(1) <= '0';
	WAIT FOR 5000 ps;
	data_in(1) <= '1';
	WAIT FOR 35000 ps;
	data_in(1) <= '0';
	WAIT FOR 10000 ps;
	data_in(1) <= '1';
	WAIT FOR 5000 ps;
	data_in(1) <= '0';
	WAIT FOR 15000 ps;
	data_in(1) <= '1';
	WAIT FOR 15000 ps;
	data_in(1) <= '0';
	WAIT FOR 10000 ps;
	data_in(1) <= '1';
	WAIT FOR 10000 ps;
	data_in(1) <= '0';
	WAIT FOR 5000 ps;
	data_in(1) <= '1';
WAIT;
END PROCESS t_prcs_data_in_1;
-- data_in[0]
t_prcs_data_in_0: PROCESS
BEGIN
	data_in(0) <= '1';
	WAIT FOR 20000 ps;
	data_in(0) <= '0';
	WAIT FOR 5000 ps;
	data_in(0) <= '1';
	WAIT FOR 15000 ps;
	data_in(0) <= '0';
	WAIT FOR 5000 ps;
	data_in(0) <= '1';
	WAIT FOR 15000 ps;
	data_in(0) <= '0';
	WAIT FOR 15000 ps;
	data_in(0) <= '1';
	WAIT FOR 5000 ps;
	data_in(0) <= '0';
	WAIT FOR 10000 ps;
	data_in(0) <= '1';
	WAIT FOR 15000 ps;
	data_in(0) <= '0';
	WAIT FOR 5000 ps;
	data_in(0) <= '1';
	WAIT FOR 30000 ps;
	data_in(0) <= '0';
	WAIT FOR 5000 ps;
	data_in(0) <= '1';
WAIT;
END PROCESS t_prcs_data_in_0;

-- en_reg
t_prcs_en_reg: PROCESS
BEGIN
	en_reg <= '0';
	WAIT FOR 20000 ps;
	en_reg <= '1';
	WAIT FOR 10000 ps;
	en_reg <= '0';
	WAIT FOR 20000 ps;
	en_reg <= '1';
	WAIT FOR 30000 ps;
	en_reg <= '0';
	WAIT FOR 30000 ps;
	en_reg <= '1';
	WAIT FOR 20000 ps;
	en_reg <= '0';
WAIT;
END PROCESS t_prcs_en_reg;

-- reset_reg
t_prcs_reset_reg: PROCESS
BEGIN
	reset_reg <= '1';
	WAIT FOR 90000 ps;
	reset_reg <= '0';
WAIT;
END PROCESS t_prcs_reset_reg;
END reg_sostenimiento_arch;
