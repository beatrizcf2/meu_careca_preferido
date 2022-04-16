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
-- Generated on "04/16/2022 15:57:15"
                                                             
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
SIGNAL acum_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL clovis : STD_LOGIC;
SIGNAL dadoIN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dadoOUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL endData : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL endRAM : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL endROM : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL habAcum : STD_LOGIC;
SIGNAL habFF8 : STD_LOGIC;
SIGNAL habFF9 : STD_LOGIC;
SIGNAL habRAM : STD_LOGIC;
SIGNAL LED8 : STD_LOGIC;
SIGNAL LED9 : STD_LOGIC;
SIGNAL LEDconj : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MUX_inAx : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MUX_inBx : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MUX_outx : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MUX_selx : STD_LOGIC;
SIGNAL readRAM : STD_LOGIC;
SIGNAL ULA_inA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ULA_inB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ULA_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ULA_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL valorDado : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL writeRAM : STD_LOGIC;
SIGNAL writtenData : STD_LOGIC;
COMPONENT contador
	PORT (
	acum_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLOCK_50 : IN STD_LOGIC;
	clovis : IN STD_LOGIC;
	dadoIN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	dadoOUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	endData : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	endRAM : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	endROM : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	habAcum : OUT STD_LOGIC;
	habFF8 : OUT STD_LOGIC;
	habFF9 : OUT STD_LOGIC;
	habRAM : OUT STD_LOGIC;
	LED8 : OUT STD_LOGIC;
	LED9 : OUT STD_LOGIC;
	LEDconj : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MUX_inAx : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MUX_inBx : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MUX_outx : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MUX_selx : OUT STD_LOGIC;
	readRAM : OUT STD_LOGIC;
	ULA_inA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ULA_inB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ULA_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ULA_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	valorDado : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	writeRAM : OUT STD_LOGIC;
	writtenData : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : contador
	PORT MAP (
-- list connections between master ports and signals
	acum_out => acum_out,
	CLOCK_50 => CLOCK_50,
	clovis => clovis,
	dadoIN => dadoIN,
	dadoOUT => dadoOUT,
	endData => endData,
	endRAM => endRAM,
	endROM => endROM,
	habAcum => habAcum,
	habFF8 => habFF8,
	habFF9 => habFF9,
	habRAM => habRAM,
	LED8 => LED8,
	LED9 => LED9,
	LEDconj => LEDconj,
	MUX_inAx => MUX_inAx,
	MUX_inBx => MUX_inBx,
	MUX_outx => MUX_outx,
	MUX_selx => MUX_selx,
	readRAM => readRAM,
	ULA_inA => ULA_inA,
	ULA_inB => ULA_inB,
	ULA_out => ULA_out,
	ULA_sel => ULA_sel,
	valorDado => valorDado,
	writeRAM => writeRAM,
	writtenData => writtenData
	);

-- clovis
t_prcs_clovis: PROCESS
BEGIN
	clovis <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 24
	LOOP
		clovis <= '0';
		WAIT FOR 20000 ps;
		clovis <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	clovis <= '0';
WAIT;
END PROCESS t_prcs_clovis;
END contador_arch;
