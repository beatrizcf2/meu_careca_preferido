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
-- Generated on "04/16/2022 16:42:50"
                                                             
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
SIGNAL FPGA_RESST : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY0 : STD_LOGIC;
SIGNAL KEY1 : STD_LOGIC;
SIGNAL KEY2 : STD_LOGIC;
SIGNAL KEY3 : STD_LOGIC;
SIGNAL LED8 : STD_LOGIC;
SIGNAL LED9 : STD_LOGIC;
SIGNAL LEDconj : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL valorDado : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT contador
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	clovis : IN STD_LOGIC;
	endRAM : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	endROM : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	FPGA_RESST : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY0 : IN STD_LOGIC;
	KEY1 : IN STD_LOGIC;
	KEY2 : IN STD_LOGIC;
	KEY3 : IN STD_LOGIC;
	LED8 : OUT STD_LOGIC;
	LED9 : OUT STD_LOGIC;
	LEDconj : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
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
	FPGA_RESST => FPGA_RESST,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY0 => KEY0,
	KEY1 => KEY1,
	KEY2 => KEY2,
	KEY3 => KEY3,
	LED8 => LED8,
	LED9 => LED9,
	LEDconj => LEDconj,
	LEDR => LEDR,
	SW => SW,
	valorDado => valorDado
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

-- FPGA_RESST
t_prcs_FPGA_RESST: PROCESS
BEGIN
	FPGA_RESST <= '0';
WAIT;
END PROCESS t_prcs_FPGA_RESST;

-- KEY0
t_prcs_KEY0: PROCESS
BEGIN
	KEY0 <= '0';
WAIT;
END PROCESS t_prcs_KEY0;

-- KEY1
t_prcs_KEY1: PROCESS
BEGIN
	KEY1 <= '0';
WAIT;
END PROCESS t_prcs_KEY1;

-- KEY2
t_prcs_KEY2: PROCESS
BEGIN
	KEY2 <= '0';
WAIT;
END PROCESS t_prcs_KEY2;

-- KEY3
t_prcs_KEY3: PROCESS
BEGIN
	KEY3 <= '0';
WAIT;
END PROCESS t_prcs_KEY3;
END contador_arch;
