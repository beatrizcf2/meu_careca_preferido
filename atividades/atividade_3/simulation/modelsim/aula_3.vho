-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "03/15/2022 15:23:59"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	memoriaROM IS
    PORT (
	Endereco : IN std_logic_vector(2 DOWNTO 0);
	Dado : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END memoriaROM;

-- Design Ports Information
-- Dado[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Endereco[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Endereco[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Endereco[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF memoriaROM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Endereco : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Dado : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Endereco[2]~input_o\ : std_logic;
SIGNAL \Endereco[1]~input_o\ : std_logic;
SIGNAL \Endereco[0]~input_o\ : std_logic;
SIGNAL \memROM~0_combout\ : std_logic;
SIGNAL \ALT_INV_Endereco[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[0]~input_o\ : std_logic;

BEGIN

ww_Endereco <= Endereco;
Dado <= ww_Dado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Endereco[2]~input_o\ <= NOT \Endereco[2]~input_o\;
\ALT_INV_Endereco[1]~input_o\ <= NOT \Endereco[1]~input_o\;
\ALT_INV_Endereco[0]~input_o\ <= NOT \Endereco[0]~input_o\;

-- Location: IOOBUF_X18_Y0_N36
\Dado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Dado(0));

-- Location: IOOBUF_X12_Y0_N53
\Dado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Endereco[2]~input_o\,
	devoe => ww_devoe,
	o => ww_Dado(1));

-- Location: IOOBUF_X43_Y0_N53
\Dado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Dado(2));

-- Location: IOOBUF_X33_Y0_N42
\Dado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Dado(3));

-- Location: IOIBUF_X16_Y0_N58
\Endereco[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(2),
	o => \Endereco[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N41
\Endereco[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(1),
	o => \Endereco[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N92
\Endereco[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(0),
	o => \Endereco[0]~input_o\);

-- Location: LABCELL_X16_Y1_N0
\memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~0_combout\ = ( \Endereco[1]~input_o\ & ( \Endereco[0]~input_o\ & ( !\Endereco[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Endereco[2]~input_o\,
	datae => \ALT_INV_Endereco[1]~input_o\,
	dataf => \ALT_INV_Endereco[0]~input_o\,
	combout => \memROM~0_combout\);

-- Location: MLABCELL_X49_Y7_N0
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


