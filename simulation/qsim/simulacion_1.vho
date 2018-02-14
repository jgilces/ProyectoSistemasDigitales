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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "01/18/2018 10:05:38"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	simulacion_1 IS
    PORT (
	OB : OUT std_logic;
	resetn : IN std_logic;
	clock : IN std_logic;
	stop : IN std_logic;
	start : IN std_logic;
	min : IN std_logic;
	max : IN std_logic;
	promedio : IN std_logic;
	ADC_SENSOR : IN std_logic_vector(7 DOWNTO 0);
	OC : OUT std_logic;
	OE : OUT std_logic;
	OD : OUT std_logic;
	\OF\ : OUT std_logic;
	OG : OUT std_logic;
	OA : OUT std_logic;
	RBON : OUT std_logic;
	OB10 : OUT std_logic;
	OC11 : OUT std_logic;
	OE12 : OUT std_logic;
	OD13 : OUT std_logic;
	OF14 : OUT std_logic;
	OG15 : OUT std_logic;
	OA16 : OUT std_logic;
	RBON17 : OUT std_logic;
	salida_frecuencia_final : OUT std_logic_vector(7 DOWNTO 0)
	);
END simulacion_1;

-- Design Ports Information
-- OB	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OC	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OE	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OD	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OF	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OG	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OA	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RBON	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OB10	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OC11	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OE12	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OD13	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OF14	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OG15	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OA16	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RBON17	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_frecuencia_final[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_frecuencia_final[6]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_frecuencia_final[5]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_frecuencia_final[4]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_frecuencia_final[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_frecuencia_final[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_frecuencia_final[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida_frecuencia_final[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SENSOR[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SENSOR[6]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SENSOR[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SENSOR[4]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SENSOR[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SENSOR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SENSOR[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SENSOR[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- promedio	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF simulacion_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OB : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_min : std_logic;
SIGNAL ww_max : std_logic;
SIGNAL ww_promedio : std_logic;
SIGNAL ww_ADC_SENSOR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OC : std_logic;
SIGNAL ww_OE : std_logic;
SIGNAL ww_OD : std_logic;
SIGNAL \ww_OF\ : std_logic;
SIGNAL ww_OG : std_logic;
SIGNAL ww_OA : std_logic;
SIGNAL ww_RBON : std_logic;
SIGNAL ww_OB10 : std_logic;
SIGNAL ww_OC11 : std_logic;
SIGNAL ww_OE12 : std_logic;
SIGNAL ww_OD13 : std_logic;
SIGNAL ww_OF14 : std_logic;
SIGNAL ww_OG15 : std_logic;
SIGNAL ww_OA16 : std_logic;
SIGNAL ww_RBON17 : std_logic;
SIGNAL ww_salida_frecuencia_final : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADC_SENSOR[7]~input_o\ : std_logic;
SIGNAL \ADC_SENSOR[6]~input_o\ : std_logic;
SIGNAL \ADC_SENSOR[5]~input_o\ : std_logic;
SIGNAL \ADC_SENSOR[4]~input_o\ : std_logic;
SIGNAL \ADC_SENSOR[3]~input_o\ : std_logic;
SIGNAL \ADC_SENSOR[2]~input_o\ : std_logic;
SIGNAL \ADC_SENSOR[1]~input_o\ : std_logic;
SIGNAL \ADC_SENSOR[0]~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \min~input_o\ : std_logic;
SIGNAL \promedio~input_o\ : std_logic;
SIGNAL \max~input_o\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

OB <= ww_OB;
ww_resetn <= resetn;
ww_clock <= clock;
ww_stop <= stop;
ww_start <= start;
ww_min <= min;
ww_max <= max;
ww_promedio <= promedio;
ww_ADC_SENSOR <= ADC_SENSOR;
OC <= ww_OC;
OE <= ww_OE;
OD <= ww_OD;
\OF\ <= \ww_OF\;
OG <= ww_OG;
OA <= ww_OA;
RBON <= ww_RBON;
OB10 <= ww_OB10;
OC11 <= ww_OC11;
OE12 <= ww_OE12;
OD13 <= ww_OD13;
OF14 <= ww_OF14;
OG15 <= ww_OG15;
OA16 <= ww_OA16;
RBON17 <= ww_RBON17;
salida_frecuencia_final <= ww_salida_frecuencia_final;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X64_Y0_N36
\OB~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OB);

-- Location: IOOBUF_X89_Y9_N56
\OC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OC);

-- Location: IOOBUF_X60_Y81_N36
\OE~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OE);

-- Location: IOOBUF_X30_Y81_N2
\OD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OD);

-- Location: IOOBUF_X60_Y0_N2
\OF~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_OF\);

-- Location: IOOBUF_X56_Y81_N2
\OG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_OG);

-- Location: IOOBUF_X52_Y0_N2
\OA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OA);

-- Location: IOOBUF_X34_Y81_N76
\RBON~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_RBON);

-- Location: IOOBUF_X32_Y0_N36
\OB10~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OB10);

-- Location: IOOBUF_X88_Y81_N54
\OC11~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OC11);

-- Location: IOOBUF_X40_Y0_N36
\OE12~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OE12);

-- Location: IOOBUF_X76_Y81_N19
\OD13~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OD13);

-- Location: IOOBUF_X88_Y81_N37
\OF14~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OF14);

-- Location: IOOBUF_X70_Y81_N2
\OG15~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_OG15);

-- Location: IOOBUF_X76_Y81_N53
\OA16~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OA16);

-- Location: IOOBUF_X82_Y81_N42
\RBON17~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_RBON17);

-- Location: IOOBUF_X64_Y81_N2
\salida_frecuencia_final[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_salida_frecuencia_final(7));

-- Location: IOOBUF_X89_Y4_N96
\salida_frecuencia_final[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_salida_frecuencia_final(6));

-- Location: IOOBUF_X89_Y4_N45
\salida_frecuencia_final[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_salida_frecuencia_final(5));

-- Location: IOOBUF_X80_Y81_N36
\salida_frecuencia_final[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_salida_frecuencia_final(4));

-- Location: IOOBUF_X50_Y81_N76
\salida_frecuencia_final[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_salida_frecuencia_final(3));

-- Location: IOOBUF_X82_Y81_N93
\salida_frecuencia_final[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_salida_frecuencia_final(2));

-- Location: IOOBUF_X89_Y6_N22
\salida_frecuencia_final[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_salida_frecuencia_final(1));

-- Location: IOOBUF_X40_Y0_N53
\salida_frecuencia_final[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_salida_frecuencia_final(0));

-- Location: IOIBUF_X62_Y81_N1
\ADC_SENSOR[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SENSOR(7),
	o => \ADC_SENSOR[7]~input_o\);

-- Location: IOIBUF_X86_Y81_N1
\ADC_SENSOR[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SENSOR(6),
	o => \ADC_SENSOR[6]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\ADC_SENSOR[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SENSOR(5),
	o => \ADC_SENSOR[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\ADC_SENSOR[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SENSOR(4),
	o => \ADC_SENSOR[4]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\ADC_SENSOR[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SENSOR(3),
	o => \ADC_SENSOR[3]~input_o\);

-- Location: IOIBUF_X36_Y81_N35
\ADC_SENSOR[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SENSOR(2),
	o => \ADC_SENSOR[2]~input_o\);

-- Location: IOIBUF_X58_Y81_N92
\ADC_SENSOR[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SENSOR(1),
	o => \ADC_SENSOR[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\ADC_SENSOR[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SENSOR(0),
	o => \ADC_SENSOR[0]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X76_Y81_N1
\stop~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\min~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min,
	o => \min~input_o\);

-- Location: IOIBUF_X36_Y81_N1
\promedio~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_promedio,
	o => \promedio~input_o\);

-- Location: IOIBUF_X86_Y81_N18
\max~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_max,
	o => \max~input_o\);

-- Location: IOIBUF_X26_Y81_N41
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: LABCELL_X60_Y68_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


