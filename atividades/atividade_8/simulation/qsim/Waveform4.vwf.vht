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
-- Generated on "05/05/2022 19:23:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ULASomaSub
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ULASomaSub_vhd_vec_tst IS
END ULASomaSub_vhd_vec_tst;
ARCHITECTURE ULASomaSub_arch OF ULASomaSub_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL entradaA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL entradaB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL flagEqual : STD_LOGIC;
SIGNAL saida : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL seletor : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT ULASomaSub
	PORT (
	entradaA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	entradaB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	flagEqual : OUT STD_LOGIC;
	saida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	seletor : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ULASomaSub
	PORT MAP (
-- list connections between master ports and signals
	entradaA => entradaA,
	entradaB => entradaB,
	flagEqual => flagEqual,
	saida => saida,
	seletor => seletor
	);
-- entradaA[7]
t_prcs_entradaA_7: PROCESS
BEGIN
	entradaA(7) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_7;
-- entradaA[6]
t_prcs_entradaA_6: PROCESS
BEGIN
	entradaA(6) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_6;
-- entradaA[5]
t_prcs_entradaA_5: PROCESS
BEGIN
	entradaA(5) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_5;
-- entradaA[4]
t_prcs_entradaA_4: PROCESS
BEGIN
	entradaA(4) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_4;
-- entradaA[3]
t_prcs_entradaA_3: PROCESS
BEGIN
	entradaA(3) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_3;
-- entradaA[2]
t_prcs_entradaA_2: PROCESS
BEGIN
	entradaA(2) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_2;
-- entradaA[1]
t_prcs_entradaA_1: PROCESS
BEGIN
	entradaA(1) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_1;
-- entradaA[0]
t_prcs_entradaA_0: PROCESS
BEGIN
	entradaA(0) <= '0';
WAIT;
END PROCESS t_prcs_entradaA_0;
-- entradaB[7]
t_prcs_entradaB_7: PROCESS
BEGIN
	entradaB(7) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_7;
-- entradaB[6]
t_prcs_entradaB_6: PROCESS
BEGIN
	entradaB(6) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_6;
-- entradaB[5]
t_prcs_entradaB_5: PROCESS
BEGIN
	entradaB(5) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_5;
-- entradaB[4]
t_prcs_entradaB_4: PROCESS
BEGIN
	entradaB(4) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_4;
-- entradaB[3]
t_prcs_entradaB_3: PROCESS
BEGIN
	entradaB(3) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_3;
-- entradaB[2]
t_prcs_entradaB_2: PROCESS
BEGIN
	entradaB(2) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_2;
-- entradaB[1]
t_prcs_entradaB_1: PROCESS
BEGIN
	entradaB(1) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_1;
-- entradaB[0]
t_prcs_entradaB_0: PROCESS
BEGIN
	entradaB(0) <= '0';
WAIT;
END PROCESS t_prcs_entradaB_0;
-- seletor[1]
t_prcs_seletor_1: PROCESS
BEGIN
	seletor(1) <= '0';
WAIT;
END PROCESS t_prcs_seletor_1;
-- seletor[0]
t_prcs_seletor_0: PROCESS
BEGIN
	seletor(0) <= '0';
WAIT;
END PROCESS t_prcs_seletor_0;
END ULASomaSub_arch;
