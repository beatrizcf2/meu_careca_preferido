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
-- Generated on "04/14/2022 09:31:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          contador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contador_vhd_vec_tst IS
END contador_vhd_vec_tst;
ARCHITECTURE contador_arch OF contador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL clovis : STD_LOGIC;
SIGNAL endRAM : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL endROM : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL LED8 : STD_LOGIC;
SIGNAL LED9 : STD_LOGIC;
SIGNAL LEDconj : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL valorDado : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT contador
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	clovis : IN STD_LOGIC;
	endRAM : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	endROM : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	LED8 : OUT STD_LOGIC;
	LED9 : OUT STD_LOGIC;
	LEDconj : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	valorDado : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : contador
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	clovis => clovis,
	endRAM => endRAM,
	endROM => endROM,
	LED8 => LED8,
	LED9 => LED9,
	LEDconj => LEDconj,
	valorDado => valorDado
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;

-- clovis
t_prcs_clovis: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		clovis <= '0';
		WAIT FOR 30000 ps;
		clovis <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	clovis <= '0';
	WAIT FOR 30000 ps;
	clovis <= '1';
WAIT;
END PROCESS t_prcs_clovis;
END contador_arch;
