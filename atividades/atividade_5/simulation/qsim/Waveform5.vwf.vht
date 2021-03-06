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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/30/2022 16:45:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          dataFlow
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY dataFlow_vhd_vec_tst IS
END dataFlow_vhd_vec_tst;
ARCHITECTURE dataFlow_arch OF dataFlow_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ACUMULADOR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL entradaA_ULA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL entradaB_ULA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL habilita_flag : STD_LOGIC;
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL RESULTADO_ULA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saidaFlag_H : STD_LOGIC;
SIGNAL sel_MUX_t : STD_LOGIC;
SIGNAL seletorDaULA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL vimediatoValor : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT dataFlow
	PORT (
	ACUMULADOR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLOCK_50 : IN STD_LOGIC;
	entradaA_ULA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	entradaB_ULA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	habilita_flag : OUT STD_LOGIC;
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	PC_OUT : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	RESULTADO_ULA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	saidaFlag_H : OUT STD_LOGIC;
	sel_MUX_t : OUT STD_LOGIC;
	seletorDaULA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	vimediatoValor : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : dataFlow
	PORT MAP (
-- list connections between master ports and signals
	ACUMULADOR => ACUMULADOR,
	CLOCK_50 => CLOCK_50,
	entradaA_ULA => entradaA_ULA,
	entradaB_ULA => entradaB_ULA,
	habilita_flag => habilita_flag,
	KEY => KEY,
	PC_OUT => PC_OUT,
	RESULTADO_ULA => RESULTADO_ULA,
	saidaFlag_H => saidaFlag_H,
	sel_MUX_t => sel_MUX_t,
	seletorDaULA => seletorDaULA,
	SW => SW,
	vimediatoValor => vimediatoValor
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
	WAIT FOR 30000 ps;
	FOR i IN 1 TO 16
	LOOP
		KEY(0) <= '0';
		WAIT FOR 30000 ps;
		KEY(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END dataFlow_arch;
