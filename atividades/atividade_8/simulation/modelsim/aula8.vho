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

-- DATE "05/05/2022 18:40:09"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador IS
    PORT (
	endROM : OUT std_logic_vector(8 DOWNTO 0);
	endRAM : OUT std_logic_vector(5 DOWNTO 0);
	valorDado : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	teste_datain : OUT std_logic_vector(7 DOWNTO 0);
	teste_hab : OUT std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	flaginha : OUT std_logic;
	ula_bin : OUT std_logic_vector(7 DOWNTO 0);
	ula_out : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END contador;

-- Design Ports Information
-- endROM[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[8]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[7]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_hab	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flaginha	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[6]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[2]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[4]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_endROM : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_endRAM : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_valorDado : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_teste_datain : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_teste_hab : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_flaginha : std_logic;
SIGNAL ww_ula_bin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ula_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|operacao~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~2_combout\ : std_logic;
SIGNAL \CPU|ULA|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~6\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~10\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~14\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~18\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~22\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~26\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~30\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ADDR_511~0_combout\ : std_logic;
SIGNAL \ADDR_511~combout\ : std_logic;
SIGNAL \FF_Debouncer|DOUT~q\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \habKEY0~0_combout\ : std_logic;
SIGNAL \habKEY0~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|habAcumulador~0_combout\ : std_logic;
SIGNAL \habKEY0~2_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|dado_out~16_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|operacao~1_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \RAM|dado_out[1]~19_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~2\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~4_combout\ : std_logic;
SIGNAL \RAM|process_0~1_combout\ : std_logic;
SIGNAL \RAM|ram~579_combout\ : std_logic;
SIGNAL \RAM|ram~580_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~587_combout\ : std_logic;
SIGNAL \RAM|ram~588_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~581_combout\ : std_logic;
SIGNAL \RAM|ram~582_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~589_combout\ : std_logic;
SIGNAL \RAM|ram~590_combout\ : std_logic;
SIGNAL \RAM|ram~96_q\ : std_logic;
SIGNAL \RAM|ram~583_combout\ : std_logic;
SIGNAL \RAM|ram~584_combout\ : std_logic;
SIGNAL \RAM|ram~80_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~585_combout\ : std_logic;
SIGNAL \RAM|ram~586_combout\ : std_logic;
SIGNAL \RAM|ram~88_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[6]~24_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~89_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~81_q\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~97_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|dado_out[2]~20_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ram~82_q\ : std_logic;
SIGNAL \RAM|ram~98_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~90_q\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|dado_out[3]~21_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~83_q\ : std_logic;
SIGNAL \RAM|ram~99_q\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~91_q\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|dado_out[4]~22_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~100_q\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~564_combout\ : std_logic;
SIGNAL \RAM|ram~566_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~84_q\ : std_logic;
SIGNAL \RAM|ram~92_q\ : std_logic;
SIGNAL \RAM|ram~562_combout\ : std_logic;
SIGNAL \RAM|ram~563_combout\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \RAM|dado_out[5]~23_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ram~21feeder_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~568_combout\ : std_logic;
SIGNAL \RAM|ram~569_combout\ : std_logic;
SIGNAL \RAM|ram~93_q\ : std_logic;
SIGNAL \RAM|ram~101_q\ : std_logic;
SIGNAL \RAM|ram~85_q\ : std_logic;
SIGNAL \RAM|ram~570_combout\ : std_logic;
SIGNAL \RAM|ram~571_combout\ : std_logic;
SIGNAL \RAM|ram~572_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM|dado_out[7]~25_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ram~94_q\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~576_combout\ : std_logic;
SIGNAL \RAM|ram~577_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~102_q\ : std_logic;
SIGNAL \RAM|ram~574_combout\ : std_logic;
SIGNAL \RAM|ram~22feeder_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~86_q\ : std_logic;
SIGNAL \RAM|ram~573_combout\ : std_logic;
SIGNAL \RAM|ram~575_combout\ : std_logic;
SIGNAL \RAM|ram~578_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~4_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~2_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~3_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~0_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~1_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~5_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~2\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~95_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~79_q\ : std_logic;
SIGNAL \RAM|ram~87_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~17_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~18_combout\ : std_logic;
SIGNAL \habHEX0~0_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HEX1_decoder|REG_4bits|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \habHEX1~0_combout\ : std_logic;
SIGNAL \HEX1_decoder|REG_4bits|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \HEX1_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX1_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX1_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX1_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX1_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX1_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX1_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habHEX2~0_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HEX3DEC|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX3DEC|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX3DEC|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX3DEC|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX3DEC|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX3DEC|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX3DEC|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HEX4DEC|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX4DEC|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX4DEC|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX4DEC|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX4DEC|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX4DEC|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX4DEC|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \HEX2_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \HEX0_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|DECODER|saida\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \HEX1_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|ALT_INV_dado_out~16_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_habAcumulador~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \HEX2_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX1_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FF_Debouncer|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|PC_INC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REG_A|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~1_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~0_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_operacao~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_operacao~0_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ALT_INV_habKEY0~2_combout\ : std_logic;
SIGNAL \ALT_INV_habKEY0~1_combout\ : std_logic;
SIGNAL \ALT_INV_habKEY0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \HEX2_decoder|REG_4bits|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG_A|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG_A|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG_A|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[7]~25_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[6]~24_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[5]~23_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[4]~22_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[3]~21_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[2]~20_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[1]~19_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_511~combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_511~0_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~17_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~3_combout\ : std_logic;

BEGIN

endROM <= ww_endROM;
endRAM <= ww_endRAM;
valorDado <= ww_valorDado;
LEDR <= ww_LEDR;
ww_SW <= SW;
teste_datain <= ww_teste_datain;
teste_hab <= ww_teste_hab;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
flaginha <= ww_flaginha;
ula_bin <= ww_ula_bin;
ula_out <= ww_ula_out;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM|ALT_INV_dado_out~16_combout\ <= NOT \RAM|dado_out~16_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\CPU|DECODER|ALT_INV_habAcumulador~0_combout\ <= NOT \CPU|DECODER|habAcumulador~0_combout\;
\CPU|DECODER|ALT_INV_Equal1~1_combout\ <= NOT \CPU|DECODER|Equal1~1_combout\;
\CPU|DECODER|ALT_INV_Equal1~0_combout\ <= NOT \CPU|DECODER|Equal1~0_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX2_decoder|REG_4bits|DOUT\(2);
\HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX2_decoder|REG_4bits|DOUT\(1);
\HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX2_decoder|REG_4bits|DOUT\(3);
\HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX2_decoder|REG_4bits|DOUT\(0);
\HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX1_decoder|REG_4bits|DOUT\(2);
\HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX1_decoder|REG_4bits|DOUT\(1);
\HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX1_decoder|REG_4bits|DOUT\(3);
\HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX1_decoder|REG_4bits|DOUT\(0);
\HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX0_decoder|REG_4bits|DOUT\(2);
\HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX0_decoder|REG_4bits|DOUT\(1);
\HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX0_decoder|REG_4bits|DOUT\(3);
\HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX0_decoder|REG_4bits|DOUT\(0);
\FF_Debouncer|ALT_INV_DOUT~q\ <= NOT \FF_Debouncer|DOUT~q\;
\CPU|FLAGer|ALT_INV_DOUT~q\ <= NOT \CPU|FLAGer|DOUT~q\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|PC_INC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|PC_INC|Add0~33_sumout\;
\CPU|PC_INC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|PC_INC|Add0~29_sumout\;
\CPU|PC_INC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|PC_INC|Add0~25_sumout\;
\CPU|PC_INC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|PC_INC|Add0~21_sumout\;
\CPU|PC_INC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|PC_INC|Add0~17_sumout\;
\CPU|PC_INC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|PC_INC|Add0~13_sumout\;
\CPU|PC_INC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|PC_INC|Add0~9_sumout\;
\CPU|PC_INC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|PC_INC|Add0~5_sumout\;
\CPU|PC_INC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|PC_INC|Add0~1_sumout\;
\CPU|ULA|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA|Add0~29_sumout\;
\CPU|ULA|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA|Add0~25_sumout\;
\CPU|ULA|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA|Add0~21_sumout\;
\CPU|ULA|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA|Add0~17_sumout\;
\CPU|ULA|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA|Add0~13_sumout\;
\CPU|ULA|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA|Add0~9_sumout\;
\CPU|ULA|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA|Add0~5_sumout\;
\CPU|ULA|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA|Add0~1_sumout\;
\CPU|REG_A|ALT_INV_DOUT\(7) <= NOT \CPU|REG_A|DOUT\(7);
\CPU|REG_A|ALT_INV_DOUT\(6) <= NOT \CPU|REG_A|DOUT\(6);
\CPU|REG_A|ALT_INV_DOUT\(5) <= NOT \CPU|REG_A|DOUT\(5);
\CPU|REG_A|ALT_INV_DOUT\(4) <= NOT \CPU|REG_A|DOUT\(4);
\CPU|REG_A|ALT_INV_DOUT\(3) <= NOT \CPU|REG_A|DOUT\(3);
\CPU|REG_A|ALT_INV_DOUT\(2) <= NOT \CPU|REG_A|DOUT\(2);
\CPU|REG_A|ALT_INV_DOUT\(1) <= NOT \CPU|REG_A|DOUT\(1);
\CPU|REG_A|ALT_INV_DOUT\(0) <= NOT \CPU|REG_A|DOUT\(0);
\CPU|END_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|END_RETORNO|DOUT\(0);
\CPU|PC|ALT_INV_DOUT[5]~1_combout\ <= NOT \CPU|PC|DOUT[5]~1_combout\;
\CPU|PC|ALT_INV_DOUT[5]~0_combout\ <= NOT \CPU|PC|DOUT[5]~0_combout\;
\CPU|ULA|ALT_INV_saida[7]~7_combout\ <= NOT \CPU|ULA|saida[7]~7_combout\;
\CPU|ULA|ALT_INV_saida[6]~6_combout\ <= NOT \CPU|ULA|saida[6]~6_combout\;
\CPU|DECODER|ALT_INV_operacao~1_combout\ <= NOT \CPU|DECODER|operacao~1_combout\;
\CPU|DECODER|ALT_INV_Equal1~2_combout\ <= NOT \CPU|DECODER|Equal1~2_combout\;
\CPU|DECODER|ALT_INV_operacao~0_combout\ <= NOT \CPU|DECODER|operacao~0_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[7]~7_combout\;
\RAM|ALT_INV_ram~578_combout\ <= NOT \RAM|ram~578_combout\;
\RAM|ALT_INV_ram~577_combout\ <= NOT \RAM|ram~577_combout\;
\RAM|ALT_INV_ram~576_combout\ <= NOT \RAM|ram~576_combout\;
\RAM|ALT_INV_ram~94_q\ <= NOT \RAM|ram~94_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~575_combout\ <= NOT \RAM|ram~575_combout\;
\RAM|ALT_INV_ram~574_combout\ <= NOT \RAM|ram~574_combout\;
\RAM|ALT_INV_ram~102_q\ <= NOT \RAM|ram~102_q\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~573_combout\ <= NOT \RAM|ram~573_combout\;
\RAM|ALT_INV_ram~86_q\ <= NOT \RAM|ram~86_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[6]~6_combout\;
\RAM|ALT_INV_ram~572_combout\ <= NOT \RAM|ram~572_combout\;
\RAM|ALT_INV_ram~571_combout\ <= NOT \RAM|ram~571_combout\;
\RAM|ALT_INV_ram~570_combout\ <= NOT \RAM|ram~570_combout\;
\RAM|ALT_INV_ram~93_q\ <= NOT \RAM|ram~93_q\;
\RAM|ALT_INV_ram~101_q\ <= NOT \RAM|ram~101_q\;
\RAM|ALT_INV_ram~85_q\ <= NOT \RAM|ram~85_q\;
\RAM|ALT_INV_ram~569_combout\ <= NOT \RAM|ram~569_combout\;
\RAM|ALT_INV_ram~568_combout\ <= NOT \RAM|ram~568_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[5]~5_combout\;
\RAM|ALT_INV_ram~567_combout\ <= NOT \RAM|ram~567_combout\;
\RAM|ALT_INV_ram~566_combout\ <= NOT \RAM|ram~566_combout\;
\RAM|ALT_INV_ram~565_combout\ <= NOT \RAM|ram~565_combout\;
\RAM|ALT_INV_ram~100_q\ <= NOT \RAM|ram~100_q\;
\RAM|ALT_INV_ram~564_combout\ <= NOT \RAM|ram~564_combout\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~563_combout\ <= NOT \RAM|ram~563_combout\;
\RAM|ALT_INV_ram~562_combout\ <= NOT \RAM|ram~562_combout\;
\RAM|ALT_INV_ram~92_q\ <= NOT \RAM|ram~92_q\;
\RAM|ALT_INV_ram~84_q\ <= NOT \RAM|ram~84_q\;
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[4]~4_combout\;
\RAM|ALT_INV_ram~560_combout\ <= NOT \RAM|ram~560_combout\;
\RAM|ALT_INV_ram~559_combout\ <= NOT \RAM|ram~559_combout\;
\RAM|ALT_INV_ram~558_combout\ <= NOT \RAM|ram~558_combout\;
\RAM|ALT_INV_ram~91_q\ <= NOT \RAM|ram~91_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~99_q\ <= NOT \RAM|ram~99_q\;
\RAM|ALT_INV_ram~83_q\ <= NOT \RAM|ram~83_q\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[3]~3_combout\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~90_q\ <= NOT \RAM|ram~90_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~98_q\ <= NOT \RAM|ram~98_q\;
\RAM|ALT_INV_ram~82_q\ <= NOT \RAM|ram~82_q\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[2]~2_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~97_q\ <= NOT \RAM|ram~97_q\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~89_q\ <= NOT \RAM|ram~89_q\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~81_q\ <= NOT \RAM|ram~81_q\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[1]~1_combout\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~88_q\ <= NOT \RAM|ram~88_q\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~96_q\ <= NOT \RAM|ram~96_q\;
\RAM|ALT_INV_ram~80_q\ <= NOT \RAM|ram~80_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[0]~0_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~95_q\ <= NOT \RAM|ram~95_q\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~87_q\ <= NOT \RAM|ram~87_q\;
\RAM|ALT_INV_ram~79_q\ <= NOT \RAM|ram~79_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\ALT_INV_habKEY0~2_combout\ <= NOT \habKEY0~2_combout\;
\ALT_INV_habKEY0~1_combout\ <= NOT \habKEY0~1_combout\;
\ALT_INV_habKEY0~0_combout\ <= NOT \habKEY0~0_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\HEX2_decoder|REG_4bits|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|REG_A|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|REG_A|DOUT[7]~DUPLICATE_q\;
\CPU|REG_A|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|REG_A|DOUT[6]~DUPLICATE_q\;
\CPU|REG_A|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|REG_A|DOUT[3]~DUPLICATE_q\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\RAM|ALT_INV_dado_out[7]~25_combout\ <= NOT \RAM|dado_out[7]~25_combout\;
\RAM|ALT_INV_dado_out[6]~24_combout\ <= NOT \RAM|dado_out[6]~24_combout\;
\RAM|ALT_INV_dado_out[5]~23_combout\ <= NOT \RAM|dado_out[5]~23_combout\;
\RAM|ALT_INV_dado_out[4]~22_combout\ <= NOT \RAM|dado_out[4]~22_combout\;
\RAM|ALT_INV_dado_out[3]~21_combout\ <= NOT \RAM|dado_out[3]~21_combout\;
\RAM|ALT_INV_dado_out[2]~20_combout\ <= NOT \RAM|dado_out[2]~20_combout\;
\RAM|ALT_INV_dado_out[1]~19_combout\ <= NOT \RAM|dado_out[1]~19_combout\;
\CPU|ULA|ALT_INV_Equal1~0_combout\ <= NOT \CPU|ULA|Equal1~0_combout\;
\RAM|ALT_INV_ram~589_combout\ <= NOT \RAM|ram~589_combout\;
\RAM|ALT_INV_ram~587_combout\ <= NOT \RAM|ram~587_combout\;
\RAM|ALT_INV_ram~585_combout\ <= NOT \RAM|ram~585_combout\;
\RAM|ALT_INV_ram~583_combout\ <= NOT \RAM|ram~583_combout\;
\RAM|ALT_INV_ram~581_combout\ <= NOT \RAM|ram~581_combout\;
\RAM|ALT_INV_process_0~1_combout\ <= NOT \RAM|process_0~1_combout\;
\RAM|ALT_INV_ram~579_combout\ <= NOT \RAM|ram~579_combout\;
\CPU|DECODER|ALT_INV_Equal1~4_combout\ <= NOT \CPU|DECODER|Equal1~4_combout\;
\ALT_INV_ADDR_511~combout\ <= NOT \ADDR_511~combout\;
\ALT_INV_ADDR_511~0_combout\ <= NOT \ADDR_511~0_combout\;
\CPU|FLAGer|ALT_INV_DOUT~3_combout\ <= NOT \CPU|FLAGer|DOUT~3_combout\;
\CPU|FLAGer|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAGer|DOUT~2_combout\;
\CPU|FLAGer|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAGer|DOUT~1_combout\;
\CPU|FLAGer|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FLAGer|DOUT~0_combout\;
\RAM|ALT_INV_dado_out[0]~17_combout\ <= NOT \RAM|dado_out[0]~17_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|END_RETORNO|DOUT\(8);
\CPU|END_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|END_RETORNO|DOUT\(7);
\CPU|END_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|END_RETORNO|DOUT\(6);
\CPU|END_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|END_RETORNO|DOUT\(5);
\CPU|END_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|END_RETORNO|DOUT\(4);
\CPU|PC|ALT_INV_DOUT[7]~2_combout\ <= NOT \CPU|PC|DOUT[7]~2_combout\;
\CPU|DECODER|ALT_INV_Equal1~3_combout\ <= NOT \CPU|DECODER|Equal1~3_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|END_RETORNO|DOUT\(3);
\CPU|END_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|END_RETORNO|DOUT\(2);
\CPU|END_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|END_RETORNO|DOUT\(1);

-- Location: IOOBUF_X32_Y45_N59
\valorDado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[0]~17_combout\,
	oe => \RAM|dado_out[0]~18_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(0));

-- Location: IOOBUF_X54_Y14_N96
\valorDado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~539_combout\,
	oe => \RAM|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(1));

-- Location: IOOBUF_X54_Y18_N62
\valorDado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~548_combout\,
	oe => \RAM|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(2));

-- Location: IOOBUF_X11_Y0_N19
\valorDado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~554_combout\,
	oe => \RAM|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(3));

-- Location: IOOBUF_X19_Y0_N36
\valorDado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~560_combout\,
	oe => \RAM|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(4));

-- Location: IOOBUF_X54_Y20_N39
\valorDado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~567_combout\,
	oe => \RAM|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(5));

-- Location: IOOBUF_X11_Y0_N2
\valorDado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~572_combout\,
	oe => \RAM|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(6));

-- Location: IOOBUF_X54_Y18_N79
\valorDado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~578_combout\,
	oe => \RAM|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(7));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[0]~17_combout\,
	oe => \RAM|dado_out[0]~18_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~539_combout\,
	oe => \RAM|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~548_combout\,
	oe => \RAM|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~554_combout\,
	oe => \RAM|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~560_combout\,
	oe => \RAM|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~567_combout\,
	oe => \RAM|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~572_combout\,
	oe => \RAM|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~578_combout\,
	oe => \RAM|dado_out~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X25_Y0_N36
\endROM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_endROM(0));

-- Location: IOOBUF_X54_Y14_N45
\endROM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_endROM(1));

-- Location: IOOBUF_X29_Y0_N36
\endROM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_endROM(2));

-- Location: IOOBUF_X44_Y45_N36
\endROM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_endROM(3));

-- Location: IOOBUF_X25_Y0_N2
\endROM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_endROM(4));

-- Location: IOOBUF_X24_Y0_N2
\endROM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_endROM(5));

-- Location: IOOBUF_X54_Y15_N39
\endROM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_endROM(6));

-- Location: IOOBUF_X25_Y0_N19
\endROM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_endROM(7));

-- Location: IOOBUF_X12_Y0_N2
\endROM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_endROM(8));

-- Location: IOOBUF_X44_Y45_N19
\endRAM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(0));

-- Location: IOOBUF_X54_Y15_N22
\endRAM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(1));

-- Location: IOOBUF_X38_Y0_N2
\endRAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(2));

-- Location: IOOBUF_X29_Y0_N53
\endRAM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(3));

-- Location: IOOBUF_X54_Y16_N22
\endRAM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~7_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(4));

-- Location: IOOBUF_X54_Y14_N79
\endRAM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(5));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|FLAGer|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FF_Debouncer|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X25_Y0_N53
\teste_datain[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_teste_datain(0));

-- Location: IOOBUF_X50_Y0_N2
\teste_datain[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(1),
	devoe => ww_devoe,
	o => ww_teste_datain(1));

-- Location: IOOBUF_X40_Y45_N42
\teste_datain[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(2),
	devoe => ww_devoe,
	o => ww_teste_datain(2));

-- Location: IOOBUF_X54_Y16_N5
\teste_datain[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_teste_datain(3));

-- Location: IOOBUF_X23_Y0_N59
\teste_datain[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(4),
	devoe => ww_devoe,
	o => ww_teste_datain(4));

-- Location: IOOBUF_X24_Y0_N19
\teste_datain[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(5),
	devoe => ww_devoe,
	o => ww_teste_datain(5));

-- Location: IOOBUF_X23_Y0_N93
\teste_datain[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_teste_datain(6));

-- Location: IOOBUF_X40_Y45_N93
\teste_datain[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_teste_datain(7));

-- Location: IOOBUF_X32_Y45_N93
\teste_hab~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_teste_hab);

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3DEC|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3DEC|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3DEC|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3DEC|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3DEC|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3DEC|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3DEC|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4DEC|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4DEC|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4DEC|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4DEC|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4DEC|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4DEC|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4DEC|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X54_Y17_N56
\flaginha~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|FLAGer|DOUT~q\,
	devoe => ww_devoe,
	o => ww_flaginha);

-- Location: IOOBUF_X23_Y0_N42
\ula_bin[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ULA|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_ula_bin(0));

-- Location: IOOBUF_X24_Y0_N36
\ula_bin[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ULA|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_ula_bin(1));

-- Location: IOOBUF_X19_Y0_N2
\ula_bin[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ULA|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_ula_bin(2));

-- Location: IOOBUF_X40_Y45_N59
\ula_bin[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ULA|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_ula_bin(3));

-- Location: IOOBUF_X24_Y0_N53
\ula_bin[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ULA|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_ula_bin(4));

-- Location: IOOBUF_X54_Y15_N5
\ula_bin[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ULA|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_ula_bin(5));

-- Location: IOOBUF_X40_Y45_N76
\ula_bin[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ULA|saida_MUX[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_ula_bin(6));

-- Location: IOOBUF_X42_Y45_N2
\ula_bin[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ULA|saida_MUX[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_ula_bin(7));

-- Location: IOOBUF_X44_Y45_N2
\ula_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(0));

-- Location: IOOBUF_X44_Y45_N53
\ula_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(1));

-- Location: IOOBUF_X48_Y45_N36
\ula_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(2));

-- Location: IOOBUF_X19_Y0_N19
\ula_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(3));

-- Location: IOOBUF_X54_Y16_N39
\ula_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(4));

-- Location: IOOBUF_X54_Y17_N5
\ula_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(5));

-- Location: IOOBUF_X54_Y15_N56
\ula_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA|saida[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(6));

-- Location: IOOBUF_X43_Y45_N2
\ula_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA|saida[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(7));

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LABCELL_X14_Y1_N51
\detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saidaQ~0_combout\ = ( !\KEY[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \detectorSub0|saidaQ~0_combout\);

-- Location: FF_X14_Y1_N52
\detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub0|saidaQ~q\);

-- Location: LABCELL_X41_Y3_N21
\detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saida~combout\ = LCELL((!\KEY[3]~input_o\ & !\detectorSub0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \detectorSub0|ALT_INV_saidaQ~q\,
	combout => \detectorSub0|saida~combout\);

-- Location: LABCELL_X40_Y2_N30
\CPU|PC_INC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|PC_INC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|PC_INC|Add0~1_sumout\,
	cout => \CPU|PC_INC|Add0~2\);

-- Location: FF_X43_Y2_N59
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X41_Y3_N6
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( 
-- (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT[4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100001010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~11_combout\);

-- Location: LABCELL_X41_Y3_N0
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\) # ((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT[4]~DUPLICATE_q\) # ((!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) $ 
-- (!\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101100111010001111010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~10_combout\);

-- Location: FF_X43_Y2_N55
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X44_Y2_N18
\CPU|DECODER|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~1_combout\ = ( \CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \CPU|DECODER|Equal1~1_combout\);

-- Location: MLABCELL_X42_Y3_N21
\CPU|DECODER|operacao~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|operacao~0_combout\ = ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~11_combout\)) ) ) # ( !\ROM|memROM~13_combout\ & ( (!\ROM|memROM~12_combout\ & (\ROM|memROM~10_combout\ & 
-- \ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER|operacao~0_combout\);

-- Location: MLABCELL_X42_Y3_N6
\CPU|DECODER|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~2_combout\ = ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~13_combout\ & \ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODER|Equal1~2_combout\);

-- Location: MLABCELL_X42_Y3_N0
\CPU|ULA|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Equal1~0_combout\ = ( \CPU|DECODER|Equal1~2_combout\ & ( !\CPU|DECODER|operacao~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_operacao~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	combout => \CPU|ULA|Equal1~0_combout\);

-- Location: MLABCELL_X42_Y3_N3
\CPU|DECODER|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~0_combout\ = ( \ROM|memROM~12_combout\ & ( (!\ROM|memROM~13_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODER|Equal1~0_combout\);

-- Location: FF_X43_Y2_N47
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X43_Y2_N48
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \CPU|PC|DOUT\(0) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(4) & (((\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(1)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(0) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001100000001000010000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

-- Location: MLABCELL_X42_Y3_N24
\CPU|REG_A|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_A|DOUT[0]~feeder_combout\ = ( \CPU|ULA|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	combout => \CPU|REG_A|DOUT[0]~feeder_combout\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X44_Y2_N45
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (\CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~14_combout\);

-- Location: LABCELL_X43_Y2_N18
\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( \ROM|memROM~14_combout\ & ( (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \ROM|memROM~16_combout\);

-- Location: LABCELL_X40_Y2_N33
\CPU|PC_INC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|PC_INC|Add0~2\ ))
-- \CPU|PC_INC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|PC_INC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|PC_INC|Add0~2\,
	sumout => \CPU|PC_INC|Add0~5_sumout\,
	cout => \CPU|PC_INC|Add0~6\);

-- Location: LABCELL_X40_Y2_N36
\CPU|PC_INC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~6\ ))
-- \CPU|PC_INC|Add0~10\ = CARRY(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|PC_INC|Add0~6\,
	sumout => \CPU|PC_INC|Add0~9_sumout\,
	cout => \CPU|PC_INC|Add0~10\);

-- Location: LABCELL_X40_Y2_N39
\CPU|PC_INC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|PC_INC|Add0~10\ ))
-- \CPU|PC_INC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|PC_INC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|PC_INC|Add0~10\,
	sumout => \CPU|PC_INC|Add0~13_sumout\,
	cout => \CPU|PC_INC|Add0~14\);

-- Location: LABCELL_X40_Y2_N42
\CPU|PC_INC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~14\ ))
-- \CPU|PC_INC|Add0~18\ = CARRY(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|PC_INC|Add0~14\,
	sumout => \CPU|PC_INC|Add0~17_sumout\,
	cout => \CPU|PC_INC|Add0~18\);

-- Location: LABCELL_X40_Y2_N45
\CPU|PC_INC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|PC_INC|Add0~18\ ))
-- \CPU|PC_INC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|PC_INC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|PC_INC|Add0~18\,
	sumout => \CPU|PC_INC|Add0~21_sumout\,
	cout => \CPU|PC_INC|Add0~22\);

-- Location: FF_X40_Y2_N46
\CPU|END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|PC_INC|Add0~21_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(5));

-- Location: LABCELL_X43_Y2_N3
\CPU|MUX_DESVIO|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\ = ( \CPU|PC_INC|Add0~21_sumout\ & ( (!\CPU|PC|DOUT[5]~1_combout\ & ((!\CPU|PC|DOUT[5]~0_combout\) # (\CPU|END_RETORNO|DOUT\(5)))) ) ) # ( !\CPU|PC_INC|Add0~21_sumout\ & ( (!\CPU|PC|DOUT[5]~1_combout\ & 
-- (\CPU|END_RETORNO|DOUT\(5) & \CPU|PC|DOUT[5]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~1_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT[5]~0_combout\,
	dataf => \CPU|PC_INC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\);

-- Location: FF_X43_Y2_N5
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: FF_X43_Y2_N43
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N48
\CPU|PC_INC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|PC_INC|Add0~22\ ))
-- \CPU|PC_INC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|PC_INC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|PC_INC|Add0~22\,
	sumout => \CPU|PC_INC|Add0~25_sumout\,
	cout => \CPU|PC_INC|Add0~26\);

-- Location: FF_X40_Y2_N50
\CPU|END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|PC_INC|Add0~25_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(6));

-- Location: LABCELL_X43_Y4_N12
\CPU|MUX_DESVIO|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\ = ( \CPU|PC|DOUT[5]~1_combout\ & ( \CPU|PC_INC|Add0~25_sumout\ & ( (\CPU|PC|DOUT[5]~0_combout\ & \ROM|memROM~16_combout\) ) ) ) # ( !\CPU|PC|DOUT[5]~1_combout\ & ( \CPU|PC_INC|Add0~25_sumout\ & ( 
-- (!\CPU|PC|DOUT[5]~0_combout\) # (\CPU|END_RETORNO|DOUT\(6)) ) ) ) # ( \CPU|PC|DOUT[5]~1_combout\ & ( !\CPU|PC_INC|Add0~25_sumout\ & ( (\CPU|PC|DOUT[5]~0_combout\ & \ROM|memROM~16_combout\) ) ) ) # ( !\CPU|PC|DOUT[5]~1_combout\ & ( 
-- !\CPU|PC_INC|Add0~25_sumout\ & ( (\CPU|PC|DOUT[5]~0_combout\ & \CPU|END_RETORNO|DOUT\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100010001000110101111101011110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~0_combout\,
	datab => \ROM|ALT_INV_memROM~16_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT[5]~1_combout\,
	dataf => \CPU|PC_INC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\);

-- Location: FF_X43_Y2_N32
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X40_Y2_N51
\CPU|PC_INC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~26\ ))
-- \CPU|PC_INC|Add0~30\ = CARRY(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|PC_INC|Add0~26\,
	sumout => \CPU|PC_INC|Add0~29_sumout\,
	cout => \CPU|PC_INC|Add0~30\);

-- Location: LABCELL_X40_Y2_N54
\CPU|PC_INC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|PC_INC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|PC_INC|Add0~30\,
	sumout => \CPU|PC_INC|Add0~33_sumout\);

-- Location: FF_X40_Y2_N56
\CPU|END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|PC_INC|Add0~33_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(8));

-- Location: LABCELL_X43_Y2_N21
\CPU|MUX_DESVIO|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\ = ( \CPU|PC_INC|Add0~33_sumout\ & ( (!\CPU|PC|DOUT[5]~1_combout\ & ((!\CPU|PC|DOUT[5]~0_combout\) # (\CPU|END_RETORNO|DOUT\(8)))) ) ) # ( !\CPU|PC_INC|Add0~33_sumout\ & ( (!\CPU|PC|DOUT[5]~1_combout\ & 
-- (\CPU|END_RETORNO|DOUT\(8) & \CPU|PC|DOUT[5]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~1_combout\,
	datab => \CPU|END_RETORNO|ALT_INV_DOUT\(8),
	datac => \CPU|PC|ALT_INV_DOUT[5]~0_combout\,
	dataf => \CPU|PC_INC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\);

-- Location: FF_X43_Y2_N53
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: MLABCELL_X42_Y2_N51
\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = ( \CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(1)) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000101101001010000010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~17_combout\);

-- Location: MLABCELL_X42_Y2_N6
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( !\CPU|PC|DOUT\(6) & ( \ROM|memROM~17_combout\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(8) & !\CPU|PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X44_Y2_N6
\ADDR_511~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_511~0_combout\ = ( \CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( 
-- (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ADDR_511~0_combout\);

-- Location: MLABCELL_X42_Y2_N30
ADDR_511 : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_511~combout\ = ( \ROM|memROM~7_combout\ & ( (\ROM|memROM~16_combout\ & (\ROM|memROM~5_combout\ & (\ADDR_511~0_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ALT_INV_ADDR_511~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ADDR_511~combout\);

-- Location: FF_X42_Y2_N50
\FF_Debouncer|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \SW[9]~input_o\,
	clrn => \ALT_INV_ADDR_511~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_Debouncer|DOUT~q\);

-- Location: LABCELL_X43_Y2_N33
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \CPU|PC|DOUT\(0) & ( \ROM|memROM~0_combout\ & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( \ROM|memROM~0_combout\ & ( 
-- (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # ((\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT\(4))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110110010000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~2_combout\);

-- Location: LABCELL_X44_Y2_N24
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( \CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0))) ) ) ) # ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(2)))) ) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101001010000000000001010010100000000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~8_combout\);

-- Location: LABCELL_X41_Y2_N33
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(2))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X44_Y2_N30
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))))) ) ) # ( 
-- !\CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(1))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101000100001110010100010000101000010000000000100001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~15_combout\);

-- Location: LABCELL_X44_Y2_N12
\habKEY0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habKEY0~0_combout\ = ( \ROM|memROM~6_combout\ & ( \ROM|memROM~15_combout\ & ( (\ROM|memROM~8_combout\ & (\CPU|PC|DOUT\(4) & \ROM|memROM~0_combout\)) ) ) ) # ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~15_combout\ & ( (\ROM|memROM~8_combout\ & 
-- (\ROM|memROM~0_combout\ & ((!\ROM|memROM~3_combout\) # (\CPU|PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \habKEY0~0_combout\);

-- Location: MLABCELL_X42_Y2_N36
\habKEY0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habKEY0~1_combout\ = ( \habKEY0~0_combout\ & ( (\ROM|memROM~16_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ALT_INV_habKEY0~0_combout\,
	combout => \habKEY0~1_combout\);

-- Location: LABCELL_X41_Y3_N15
\CPU|DECODER|habAcumulador~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|habAcumulador~0_combout\ = ( !\ROM|memROM~13_combout\ & ( (!\ROM|memROM~12_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER|habAcumulador~0_combout\);

-- Location: MLABCELL_X42_Y2_N21
\habKEY0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \habKEY0~2_combout\ = ( \CPU|DECODER|habAcumulador~0_combout\ & ( \habKEY0~1_combout\ ) ) # ( !\CPU|DECODER|habAcumulador~0_combout\ & ( (\CPU|DECODER|Equal1~1_combout\ & \habKEY0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_habKEY0~1_combout\,
	dataf => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	combout => \habKEY0~2_combout\);

-- Location: LABCELL_X41_Y3_N18
\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( \ROM|memROM~15_combout\ & ( \ROM|memROM~0_combout\ ) ) # ( !\ROM|memROM~15_combout\ & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & ((\ROM|memROM~14_combout\) # (\ROM|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001100000001000000110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \RAM|process_0~0_combout\);

-- Location: LABCELL_X41_Y3_N48
\RAM|dado_out~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~16_combout\ = ( \CPU|DECODER|habAcumulador~0_combout\ & ( !\RAM|process_0~0_combout\ ) ) # ( !\CPU|DECODER|habAcumulador~0_combout\ & ( (!\RAM|process_0~0_combout\ & \CPU|DECODER|Equal1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	dataf => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	combout => \RAM|dado_out~16_combout\);

-- Location: LABCELL_X43_Y3_N24
\CPU|MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[0]~0_combout\ = ( \RAM|ram~533_combout\ & ( \CPU|DECODER|Equal1~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\RAM|ram~533_combout\ & ( \CPU|DECODER|Equal1~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \RAM|ram~533_combout\ & ( 
-- !\CPU|DECODER|Equal1~0_combout\ & ( (!\habKEY0~2_combout\) # (\FF_Debouncer|DOUT~q\) ) ) ) # ( !\RAM|ram~533_combout\ & ( !\CPU|DECODER|Equal1~0_combout\ & ( (!\RAM|dado_out~16_combout\ & ((!\habKEY0~2_combout\) # (\FF_Debouncer|DOUT~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000111101011111010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF_Debouncer|ALT_INV_DOUT~q\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ALT_INV_habKEY0~2_combout\,
	datad => \RAM|ALT_INV_dado_out~16_combout\,
	datae => \RAM|ALT_INV_ram~533_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X43_Y3_N21
\CPU|DECODER|operacao~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|operacao~1_combout\ = ( !\CPU|DECODER|operacao~0_combout\ & ( !\ROM|memROM~13_combout\ & ( (!\ROM|memROM~11_combout\ & (!\CPU|DECODER|Equal1~2_combout\ & (!\ROM|memROM~10_combout\ $ (!\ROM|memROM~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datae => \CPU|DECODER|ALT_INV_operacao~0_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER|operacao~1_combout\);

-- Location: LABCELL_X40_Y3_N57
\CPU|DECODER|saida[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida\(5) = ( \CPU|DECODER|habAcumulador~0_combout\ & ( \CPU|DECODER|Equal1~0_combout\ ) ) # ( !\CPU|DECODER|habAcumulador~0_combout\ & ( \CPU|DECODER|Equal1~0_combout\ ) ) # ( \CPU|DECODER|habAcumulador~0_combout\ & ( 
-- !\CPU|DECODER|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	combout => \CPU|DECODER|saida\(5));

-- Location: FF_X42_Y3_N26
\CPU|REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|REG_A|DOUT[0]~feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(0));

-- Location: MLABCELL_X42_Y3_N30
\CPU|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~34_cout\ = CARRY(( (!\CPU|DECODER|Equal1~2_combout\) # (\CPU|DECODER|operacao~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_operacao~0_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	cin => GND,
	cout => \CPU|ULA|Add0~34_cout\);

-- Location: MLABCELL_X42_Y3_N33
\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[0]~17_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~1_combout\)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA|Add0~34_cout\ ))
-- \CPU|ULA|Add0~2\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[0]~17_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~1_combout\)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~17_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => \CPU|ULA|Add0~34_cout\,
	sumout => \CPU|ULA|Add0~1_sumout\,
	cout => \CPU|ULA|Add0~2\);

-- Location: LABCELL_X44_Y2_N3
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~9_combout\);

-- Location: MLABCELL_X42_Y2_N27
\RAM|dado_out[1]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~19_combout\ = (!\RAM|dado_out~16_combout\) # (\RAM|ram~539_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~539_combout\,
	datad => \RAM|ALT_INV_dado_out~16_combout\,
	combout => \RAM|dado_out[1]~19_combout\);

-- Location: FF_X42_Y3_N10
\CPU|REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|REG_A|DOUT[1]~feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(1));

-- Location: MLABCELL_X42_Y3_N36
\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[1]~19_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA|Add0~2\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[1]~19_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_dado_out[1]~19_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	cin => \CPU|ULA|Add0~2\,
	sumout => \CPU|ULA|Add0~5_sumout\,
	cout => \CPU|ULA|Add0~6\);

-- Location: MLABCELL_X42_Y3_N9
\CPU|REG_A|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_A|DOUT[1]~feeder_combout\ = ( \CPU|ULA|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	combout => \CPU|REG_A|DOUT[1]~feeder_combout\);

-- Location: FF_X42_Y3_N11
\CPU|REG_A|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|REG_A|DOUT[1]~feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y2_N48
\CPU|DECODER|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~4_combout\ = ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( \CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (\ROM|memROM~0_combout\ & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(0) & 
-- !\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (\ROM|memROM~0_combout\ & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0) & 
-- \CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (\ROM|memROM~0_combout\ & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011110000000001000000100000000010010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \CPU|DECODER|Equal1~4_combout\);

-- Location: MLABCELL_X42_Y2_N54
\RAM|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~1_combout\ = ( !\RAM|process_0~0_combout\ & ( \CPU|DECODER|Equal1~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|process_0~1_combout\);

-- Location: MLABCELL_X42_Y2_N0
\RAM|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~579_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~5_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~579_combout\);

-- Location: MLABCELL_X42_Y2_N39
\RAM|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~580_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~579_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datad => \RAM|ALT_INV_ram~579_combout\,
	combout => \RAM|ram~580_combout\);

-- Location: FF_X41_Y3_N4
\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: MLABCELL_X42_Y4_N12
\RAM|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~587_combout\ = ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & (!\ROM|memROM~9_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~587_combout\);

-- Location: MLABCELL_X42_Y4_N57
\RAM|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~588_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~587_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~587_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~588_combout\);

-- Location: FF_X43_Y2_N17
\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

-- Location: LABCELL_X43_Y2_N9
\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \RAM|ram~32_q\ & ( (!\ROM|memROM~4_combout\ & ((\RAM|ram~16_q\) # (\ROM|memROM~2_combout\))) ) ) # ( !\RAM|ram~32_q\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~16_q\ & !\ROM|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~16_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~32_q\,
	combout => \RAM|ram~534_combout\);

-- Location: MLABCELL_X42_Y4_N18
\RAM|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~581_combout\ = ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~7_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~581_combout\);

-- Location: MLABCELL_X42_Y4_N3
\RAM|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~582_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~581_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~581_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~582_combout\);

-- Location: FF_X43_Y3_N20
\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

-- Location: LABCELL_X43_Y2_N0
\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\ROM|memROM~2_combout\ & ( (\RAM|ram~24_q\ & !\ROM|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~24_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~536_combout\);

-- Location: MLABCELL_X42_Y4_N27
\RAM|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~589_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~9_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~589_combout\);

-- Location: MLABCELL_X42_Y4_N6
\RAM|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~590_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~589_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~589_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~590_combout\);

-- Location: FF_X44_Y3_N1
\RAM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~96_q\);

-- Location: MLABCELL_X42_Y4_N21
\RAM|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~583_combout\ = ( \ROM|memROM~5_combout\ & ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~7_combout\ & (!\ROM|memROM~9_combout\ & !\ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~583_combout\);

-- Location: MLABCELL_X42_Y4_N39
\RAM|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~584_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~583_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~583_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~584_combout\);

-- Location: FF_X41_Y3_N40
\RAM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~80_q\);

-- Location: LABCELL_X43_Y2_N36
\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \ROM|memROM~2_combout\ & ( (\RAM|ram~96_q\ & !\ROM|memROM~4_combout\) ) ) # ( !\ROM|memROM~2_combout\ & ( (\RAM|ram~80_q\ & !\ROM|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~96_q\,
	datac => \RAM|ALT_INV_ram~80_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~535_combout\);

-- Location: MLABCELL_X42_Y4_N24
\RAM|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~585_combout\ = ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~9_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~585_combout\);

-- Location: MLABCELL_X42_Y4_N33
\RAM|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~586_combout\ = ( \RAM|process_0~1_combout\ & ( \RAM|ram~585_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~585_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~586_combout\);

-- Location: FF_X41_Y2_N56
\RAM|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~88_q\);

-- Location: LABCELL_X41_Y2_N54
\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~4_combout\ & \RAM|ram~88_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~88_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~537_combout\);

-- Location: LABCELL_X43_Y2_N12
\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \RAM|ram~535_combout\ & ( \RAM|ram~537_combout\ & ( ((!\ROM|memROM~1_combout\ & (\RAM|ram~534_combout\)) # (\ROM|memROM~1_combout\ & ((\RAM|ram~536_combout\)))) # (\ROM|memROM~5_combout\) ) ) ) # ( !\RAM|ram~535_combout\ & ( 
-- \RAM|ram~537_combout\ & ( (!\ROM|memROM~1_combout\ & (\RAM|ram~534_combout\ & ((!\ROM|memROM~5_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~5_combout\) # (\RAM|ram~536_combout\)))) ) ) ) # ( \RAM|ram~535_combout\ & ( !\RAM|ram~537_combout\ & ( 
-- (!\ROM|memROM~1_combout\ & (((\ROM|memROM~5_combout\)) # (\RAM|ram~534_combout\))) # (\ROM|memROM~1_combout\ & (((\RAM|ram~536_combout\ & !\ROM|memROM~5_combout\)))) ) ) ) # ( !\RAM|ram~535_combout\ & ( !\RAM|ram~537_combout\ & ( (!\ROM|memROM~5_combout\ 
-- & ((!\ROM|memROM~1_combout\ & (\RAM|ram~534_combout\)) # (\ROM|memROM~1_combout\ & ((\RAM|ram~536_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \RAM|ALT_INV_ram~534_combout\,
	datac => \RAM|ALT_INV_ram~536_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \RAM|ALT_INV_ram~535_combout\,
	dataf => \RAM|ALT_INV_ram~537_combout\,
	combout => \RAM|ram~538_combout\);

-- Location: MLABCELL_X42_Y2_N15
\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \RAM|ram~538_combout\ & ( (!\ROM|memROM~7_combout\ & !\ROM|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~538_combout\,
	combout => \RAM|ram~539_combout\);

-- Location: LABCELL_X43_Y3_N15
\CPU|MUX_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[1]~1_combout\ = ( !\CPU|DECODER|Equal1~0_combout\ & ( (!\RAM|dado_out~16_combout\) # (\RAM|ram~539_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_dado_out~16_combout\,
	datad => \RAM|ALT_INV_ram~539_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X43_Y3_N0
\CPU|FLAGer|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~1_combout\ = ( \CPU|DECODER|operacao~1_combout\ & ( \CPU|ULA|Add0~5_sumout\ & ( (\CPU|DECODER|Equal1~1_combout\ & (!\CPU|MUX_ULA|saida_MUX[0]~0_combout\ & !\CPU|MUX_ULA|saida_MUX[1]~1_combout\)) ) ) ) # ( \CPU|DECODER|operacao~1_combout\ 
-- & ( !\CPU|ULA|Add0~5_sumout\ & ( (\CPU|DECODER|Equal1~1_combout\ & (!\CPU|MUX_ULA|saida_MUX[0]~0_combout\ & !\CPU|MUX_ULA|saida_MUX[1]~1_combout\)) ) ) ) # ( !\CPU|DECODER|operacao~1_combout\ & ( !\CPU|ULA|Add0~5_sumout\ & ( 
-- (\CPU|DECODER|Equal1~1_combout\ & !\CPU|ULA|Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010100000000000000000000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	datac => \CPU|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \CPU|MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	dataf => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	combout => \CPU|FLAGer|DOUT~1_combout\);

-- Location: LABCELL_X40_Y3_N0
\CPU|FLAGer|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~0_combout\ = ( !\CPU|DECODER|Equal1~1_combout\ & ( \CPU|FLAGer|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FLAGer|ALT_INV_DOUT~q\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	combout => \CPU|FLAGer|DOUT~0_combout\);

-- Location: MLABCELL_X42_Y4_N9
\RAM|dado_out[6]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[6]~24_combout\ = ( \RAM|dado_out~16_combout\ & ( \RAM|ram~572_combout\ ) ) # ( !\RAM|dado_out~16_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~572_combout\,
	dataf => \RAM|ALT_INV_dado_out~16_combout\,
	combout => \RAM|dado_out[6]~24_combout\);

-- Location: FF_X39_Y3_N32
\CPU|REG_A|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|REG_A|DOUT[6]~feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(6));

-- Location: LABCELL_X41_Y3_N57
\CPU|MUX_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[3]~3_combout\ = ( \RAM|ram~554_combout\ & ( (!\CPU|DECODER|Equal1~0_combout\) # (\ROM|memROM~5_combout\) ) ) # ( !\RAM|ram~554_combout\ & ( (!\CPU|DECODER|Equal1~0_combout\ & (!\RAM|dado_out~16_combout\)) # 
-- (\CPU|DECODER|Equal1~0_combout\ & ((\ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001110100011101000111010001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~16_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	dataf => \RAM|ALT_INV_ram~554_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[3]~3_combout\);

-- Location: FF_X42_Y3_N20
\CPU|REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|REG_A|DOUT[3]~feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(3));

-- Location: MLABCELL_X42_Y3_N39
\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[2]~20_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA|Add0~6\ ))
-- \CPU|ULA|Add0~10\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[2]~20_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_dado_out[2]~20_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA|Add0~6\,
	sumout => \CPU|ULA|Add0~9_sumout\,
	cout => \CPU|ULA|Add0~10\);

-- Location: MLABCELL_X42_Y3_N15
\CPU|REG_A|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_A|DOUT[2]~feeder_combout\ = ( \CPU|ULA|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~9_sumout\,
	combout => \CPU|REG_A|DOUT[2]~feeder_combout\);

-- Location: LABCELL_X43_Y3_N6
\CPU|MUX_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[2]~2_combout\ = ( \CPU|DECODER|Equal1~0_combout\ & ( \ROM|memROM~4_combout\ ) ) # ( !\CPU|DECODER|Equal1~0_combout\ & ( (!\RAM|dado_out~16_combout\) # (\RAM|ram~548_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~16_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~548_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[2]~2_combout\);

-- Location: FF_X42_Y3_N16
\CPU|REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|REG_A|DOUT[2]~feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(2));

-- Location: FF_X40_Y3_N37
\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

-- Location: LABCELL_X41_Y2_N0
\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( !\ROM|memROM~9_combout\ & ( (\RAM|ram~25_q\ & !\ROM|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~25_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~542_combout\);

-- Location: FF_X40_Y2_N19
\RAM|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~89_q\);

-- Location: LABCELL_X41_Y2_N24
\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~7_combout\ & \RAM|ram~89_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~89_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~543_combout\);

-- Location: FF_X40_Y2_N14
\RAM|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~81_q\);

-- Location: LABCELL_X40_Y2_N21
\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( !\ROM|memROM~9_combout\ & ( (\RAM|ram~81_q\ & !\ROM|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~81_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~541_combout\);

-- Location: FF_X43_Y2_N23
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: LABCELL_X43_Y2_N39
\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( !\ROM|memROM~7_combout\ & ( (\RAM|ram~17_q\ & !\ROM|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~17_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~540_combout\);

-- Location: LABCELL_X41_Y2_N18
\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( \RAM|ram~541_combout\ & ( \RAM|ram~540_combout\ & ( (!\ROM|memROM~1_combout\) # ((!\ROM|memROM~5_combout\ & (\RAM|ram~542_combout\)) # (\ROM|memROM~5_combout\ & ((\RAM|ram~543_combout\)))) ) ) ) # ( !\RAM|ram~541_combout\ & ( 
-- \RAM|ram~540_combout\ & ( (!\ROM|memROM~1_combout\ & (((!\ROM|memROM~5_combout\)))) # (\ROM|memROM~1_combout\ & ((!\ROM|memROM~5_combout\ & (\RAM|ram~542_combout\)) # (\ROM|memROM~5_combout\ & ((\RAM|ram~543_combout\))))) ) ) ) # ( \RAM|ram~541_combout\ & 
-- ( !\RAM|ram~540_combout\ & ( (!\ROM|memROM~1_combout\ & (((\ROM|memROM~5_combout\)))) # (\ROM|memROM~1_combout\ & ((!\ROM|memROM~5_combout\ & (\RAM|ram~542_combout\)) # (\ROM|memROM~5_combout\ & ((\RAM|ram~543_combout\))))) ) ) ) # ( 
-- !\RAM|ram~541_combout\ & ( !\RAM|ram~540_combout\ & ( (\ROM|memROM~1_combout\ & ((!\ROM|memROM~5_combout\ & (\RAM|ram~542_combout\)) # (\ROM|memROM~5_combout\ & ((\RAM|ram~543_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~542_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \RAM|ALT_INV_ram~543_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \RAM|ALT_INV_ram~541_combout\,
	dataf => \RAM|ALT_INV_ram~540_combout\,
	combout => \RAM|ram~544_combout\);

-- Location: FF_X41_Y2_N14
\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

-- Location: LABCELL_X41_Y2_N12
\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~7_combout\ & \RAM|ram~33_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_ram~33_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~545_combout\);

-- Location: FF_X41_Y2_N23
\RAM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~97_q\);

-- Location: LABCELL_X41_Y2_N39
\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~9_combout\ & \RAM|ram~97_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~97_q\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~546_combout\);

-- Location: LABCELL_X41_Y2_N15
\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( \RAM|ram~546_combout\ & ( (!\ROM|memROM~1_combout\ & ((\RAM|ram~545_combout\) # (\ROM|memROM~5_combout\))) ) ) # ( !\RAM|ram~546_combout\ & ( (!\ROM|memROM~5_combout\ & (\RAM|ram~545_combout\ & !\ROM|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~545_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \RAM|ALT_INV_ram~546_combout\,
	combout => \RAM|ram~547_combout\);

-- Location: LABCELL_X41_Y2_N27
\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( \RAM|ram~547_combout\ & ( (!\ROM|memROM~4_combout\ & ((\ROM|memROM~2_combout\) # (\RAM|ram~544_combout\))) ) ) # ( !\RAM|ram~547_combout\ & ( (\RAM|ram~544_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~544_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~547_combout\,
	combout => \RAM|ram~548_combout\);

-- Location: LABCELL_X41_Y2_N51
\RAM|dado_out[2]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[2]~20_combout\ = ( \RAM|ram~548_combout\ ) # ( !\RAM|ram~548_combout\ & ( !\RAM|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out~16_combout\,
	dataf => \RAM|ALT_INV_ram~548_combout\,
	combout => \RAM|dado_out[2]~20_combout\);

-- Location: MLABCELL_X42_Y3_N42
\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[3]~21_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~5_combout\)))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA|Add0~10\ ))
-- \CPU|ULA|Add0~14\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[3]~21_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~5_combout\)))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_dado_out[3]~21_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA|Add0~10\,
	sumout => \CPU|ULA|Add0~13_sumout\,
	cout => \CPU|ULA|Add0~14\);

-- Location: MLABCELL_X42_Y3_N18
\CPU|REG_A|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_A|DOUT[3]~feeder_combout\ = ( \CPU|ULA|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~13_sumout\,
	combout => \CPU|REG_A|DOUT[3]~feeder_combout\);

-- Location: FF_X42_Y3_N19
\CPU|REG_A|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|REG_A|DOUT[3]~feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X41_Y3_N29
\RAM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~82_q\);

-- Location: FF_X40_Y3_N50
\RAM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~98_q\);

-- Location: LABCELL_X40_Y3_N30
\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( !\ROM|memROM~4_combout\ & ( \RAM|ram~98_q\ & ( (\ROM|memROM~2_combout\) # (\RAM|ram~82_q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\RAM|ram~98_q\ & ( (\RAM|ram~82_q\ & !\ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~82_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~98_q\,
	combout => \RAM|ram~550_combout\);

-- Location: FF_X42_Y3_N56
\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

-- Location: FF_X41_Y3_N43
\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: LABCELL_X40_Y3_N9
\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( \ROM|memROM~2_combout\ & ( \RAM|ram~18_q\ & ( (\RAM|ram~34_q\ & !\ROM|memROM~4_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( \RAM|ram~18_q\ & ( !\ROM|memROM~4_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\RAM|ram~18_q\ & ( 
-- (\RAM|ram~34_q\ & !\ROM|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011111111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~34_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~18_q\,
	combout => \RAM|ram~549_combout\);

-- Location: LABCELL_X41_Y3_N24
\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \RAM|ram~549_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~5_combout\) # (\RAM|ram~550_combout\))) ) ) # ( !\RAM|ram~549_combout\ & ( (\ROM|memROM~5_combout\ & (\RAM|ram~550_combout\ & !\ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~550_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~549_combout\,
	combout => \RAM|ram~551_combout\);

-- Location: FF_X41_Y3_N53
\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

-- Location: FF_X40_Y3_N25
\RAM|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~90_q\);

-- Location: LABCELL_X41_Y3_N51
\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( \RAM|ram~90_q\ & ( (!\ROM|memROM~4_combout\ & ((\RAM|ram~26_q\) # (\ROM|memROM~5_combout\))) ) ) # ( !\RAM|ram~90_q\ & ( (!\ROM|memROM~5_combout\ & (!\ROM|memROM~4_combout\ & \RAM|ram~26_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~26_q\,
	dataf => \RAM|ALT_INV_ram~90_q\,
	combout => \RAM|ram~552_combout\);

-- Location: LABCELL_X41_Y3_N12
\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( \RAM|ram~552_combout\ & ( (!\ROM|memROM~2_combout\ & !\ROM|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~552_combout\,
	combout => \RAM|ram~553_combout\);

-- Location: LABCELL_X41_Y3_N42
\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( \RAM|ram~553_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM|ram~551_combout\) # (\ROM|memROM~1_combout\))) ) ) # ( !\RAM|ram~553_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~1_combout\ & \RAM|ram~551_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \RAM|ALT_INV_ram~551_combout\,
	dataf => \RAM|ALT_INV_ram~553_combout\,
	combout => \RAM|ram~554_combout\);

-- Location: LABCELL_X41_Y3_N27
\RAM|dado_out[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[3]~21_combout\ = ( \RAM|ram~554_combout\ ) # ( !\RAM|ram~554_combout\ & ( !\RAM|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~16_combout\,
	dataf => \RAM|ALT_INV_ram~554_combout\,
	combout => \RAM|dado_out[3]~21_combout\);

-- Location: MLABCELL_X42_Y3_N45
\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[4]~22_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~7_combout\)))) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA|Add0~14\ ))
-- \CPU|ULA|Add0~18\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[4]~22_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~7_combout\)))) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_dado_out[4]~22_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA|Add0~14\,
	sumout => \CPU|ULA|Add0~17_sumout\,
	cout => \CPU|ULA|Add0~18\);

-- Location: MLABCELL_X42_Y3_N27
\CPU|REG_A|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_A|DOUT[4]~feeder_combout\ = \CPU|ULA|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	combout => \CPU|REG_A|DOUT[4]~feeder_combout\);

-- Location: LABCELL_X40_Y3_N42
\CPU|MUX_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[4]~4_combout\ = ( \RAM|dado_out~16_combout\ & ( \CPU|DECODER|Equal1~0_combout\ & ( \ROM|memROM~7_combout\ ) ) ) # ( !\RAM|dado_out~16_combout\ & ( \CPU|DECODER|Equal1~0_combout\ & ( \ROM|memROM~7_combout\ ) ) ) # ( 
-- \RAM|dado_out~16_combout\ & ( !\CPU|DECODER|Equal1~0_combout\ & ( \RAM|ram~560_combout\ ) ) ) # ( !\RAM|dado_out~16_combout\ & ( !\CPU|DECODER|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~560_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM|ALT_INV_dado_out~16_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[4]~4_combout\);

-- Location: FF_X42_Y3_N29
\CPU|REG_A|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|REG_A|DOUT[4]~feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(4));

-- Location: FF_X41_Y3_N14
\RAM|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~83_q\);

-- Location: FF_X41_Y2_N32
\RAM|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~99_q\);

-- Location: LABCELL_X41_Y2_N30
\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~83_q\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~99_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~83_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~99_q\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~556_combout\);

-- Location: FF_X41_Y3_N56
\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

-- Location: FF_X41_Y2_N50
\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

-- Location: LABCELL_X41_Y2_N48
\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & \RAM|ram~35_q\) ) ) # ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & \RAM|ram~19_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~19_q\,
	datad => \RAM|ALT_INV_ram~35_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~555_combout\);

-- Location: LABCELL_X41_Y2_N57
\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( \RAM|ram~555_combout\ & ( (!\ROM|memROM~4_combout\ & ((!\ROM|memROM~5_combout\) # (\RAM|ram~556_combout\))) ) ) # ( !\RAM|ram~555_combout\ & ( (!\ROM|memROM~4_combout\ & (\RAM|ram~556_combout\ & \ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datac => \RAM|ALT_INV_ram~556_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \RAM|ALT_INV_ram~555_combout\,
	combout => \RAM|ram~557_combout\);

-- Location: FF_X41_Y3_N50
\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

-- Location: FF_X41_Y2_N44
\RAM|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~91_q\);

-- Location: LABCELL_X41_Y2_N42
\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~5_combout\ & (\RAM|ram~27_q\)) # (\ROM|memROM~5_combout\ & ((\RAM|ram~91_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~27_q\,
	datad => \RAM|ALT_INV_ram~91_q\,
	combout => \RAM|ram~558_combout\);

-- Location: LABCELL_X41_Y2_N9
\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = ( !\ROM|memROM~4_combout\ & ( \RAM|ram~558_combout\ & ( !\ROM|memROM~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~558_combout\,
	combout => \RAM|ram~559_combout\);

-- Location: LABCELL_X41_Y2_N3
\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( \RAM|ram~559_combout\ & ( (!\ROM|memROM~9_combout\ & ((\RAM|ram~557_combout\) # (\ROM|memROM~1_combout\))) ) ) # ( !\RAM|ram~559_combout\ & ( (!\ROM|memROM~1_combout\ & (!\ROM|memROM~9_combout\ & \RAM|ram~557_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~557_combout\,
	dataf => \RAM|ALT_INV_ram~559_combout\,
	combout => \RAM|ram~560_combout\);

-- Location: LABCELL_X41_Y3_N54
\RAM|dado_out[4]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[4]~22_combout\ = ( \RAM|ram~560_combout\ ) # ( !\RAM|ram~560_combout\ & ( !\RAM|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~16_combout\,
	dataf => \RAM|ALT_INV_ram~560_combout\,
	combout => \RAM|dado_out[4]~22_combout\);

-- Location: MLABCELL_X42_Y3_N48
\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[5]~23_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~9_combout\)))) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA|Add0~18\ ))
-- \CPU|ULA|Add0~22\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[5]~23_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~9_combout\)))) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_dado_out[5]~23_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	cin => \CPU|ULA|Add0~18\,
	sumout => \CPU|ULA|Add0~21_sumout\,
	cout => \CPU|ULA|Add0~22\);

-- Location: LABCELL_X39_Y3_N27
\CPU|REG_A|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_A|DOUT[5]~feeder_combout\ = ( \CPU|ULA|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~21_sumout\,
	combout => \CPU|REG_A|DOUT[5]~feeder_combout\);

-- Location: LABCELL_X44_Y3_N57
\CPU|MUX_ULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[5]~5_combout\ = ( \RAM|ram~567_combout\ & ( !\CPU|DECODER|Equal1~0_combout\ ) ) # ( !\RAM|ram~567_combout\ & ( (!\RAM|dado_out~16_combout\ & !\CPU|DECODER|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_dado_out~16_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	dataf => \RAM|ALT_INV_ram~567_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[5]~5_combout\);

-- Location: FF_X39_Y3_N28
\CPU|REG_A|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|REG_A|DOUT[5]~feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(5));

-- Location: FF_X44_Y3_N20
\RAM|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~100_q\);

-- Location: LABCELL_X44_Y3_N21
\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( !\ROM|memROM~9_combout\ & ( \RAM|ram~100_q\ & ( !\ROM|memROM~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~100_q\,
	combout => \RAM|ram~565_combout\);

-- Location: FF_X42_Y3_N35
\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

-- Location: LABCELL_X44_Y3_N48
\RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~564_combout\ = ( !\ROM|memROM~9_combout\ & ( (\RAM|ram~36_q\ & !\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~36_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~564_combout\);

-- Location: LABCELL_X44_Y3_N3
\RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~566_combout\ = ( \RAM|ram~565_combout\ & ( \RAM|ram~564_combout\ & ( !\ROM|memROM~7_combout\ ) ) ) # ( !\RAM|ram~565_combout\ & ( \RAM|ram~564_combout\ & ( (!\ROM|memROM~7_combout\ & !\ROM|memROM~5_combout\) ) ) ) # ( \RAM|ram~565_combout\ & ( 
-- !\RAM|ram~564_combout\ & ( (!\ROM|memROM~7_combout\ & \ROM|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000011110000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \RAM|ALT_INV_ram~565_combout\,
	dataf => \RAM|ALT_INV_ram~564_combout\,
	combout => \RAM|ram~566_combout\);

-- Location: FF_X41_Y3_N59
\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

-- Location: FF_X44_Y3_N38
\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

-- Location: LABCELL_X44_Y3_N36
\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~1_combout\ & (\RAM|ram~20_q\)) # (\ROM|memROM~1_combout\ & ((\RAM|ram~28_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~20_q\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \RAM|ALT_INV_ram~28_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~561_combout\);

-- Location: FF_X41_Y3_N10
\RAM|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~84_q\);

-- Location: FF_X44_Y3_N53
\RAM|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~92_q\);

-- Location: LABCELL_X44_Y3_N51
\RAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~562_combout\ = ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~1_combout\ & (\RAM|ram~84_q\)) # (\ROM|memROM~1_combout\ & ((\RAM|ram~92_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~84_q\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \RAM|ALT_INV_ram~92_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~562_combout\);

-- Location: LABCELL_X44_Y3_N39
\RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~563_combout\ = ( \RAM|ram~562_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM|ram~561_combout\) # (\ROM|memROM~5_combout\))) ) ) # ( !\RAM|ram~562_combout\ & ( (!\ROM|memROM~5_combout\ & (!\ROM|memROM~7_combout\ & \RAM|ram~561_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_ram~561_combout\,
	dataf => \RAM|ALT_INV_ram~562_combout\,
	combout => \RAM|ram~563_combout\);

-- Location: LABCELL_X44_Y3_N24
\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = ( \RAM|ram~563_combout\ & ( (!\ROM|memROM~4_combout\ & ((!\ROM|memROM~2_combout\) # (\RAM|ram~566_combout\))) ) ) # ( !\RAM|ram~563_combout\ & ( (!\ROM|memROM~4_combout\ & (\ROM|memROM~2_combout\ & \RAM|ram~566_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~566_combout\,
	dataf => \RAM|ALT_INV_ram~563_combout\,
	combout => \RAM|ram~567_combout\);

-- Location: LABCELL_X43_Y3_N42
\RAM|dado_out[5]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[5]~23_combout\ = ( \RAM|ram~567_combout\ ) # ( !\RAM|ram~567_combout\ & ( !\RAM|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out~16_combout\,
	dataf => \RAM|ALT_INV_ram~567_combout\,
	combout => \RAM|dado_out[5]~23_combout\);

-- Location: MLABCELL_X42_Y3_N51
\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[6]~24_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~16_combout\)))) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA|Add0~22\ ))
-- \CPU|ULA|Add0~26\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[6]~24_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~16_combout\)))) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \RAM|ALT_INV_dado_out[6]~24_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	cin => \CPU|ULA|Add0~22\,
	sumout => \CPU|ULA|Add0~25_sumout\,
	cout => \CPU|ULA|Add0~26\);

-- Location: LABCELL_X39_Y3_N30
\CPU|REG_A|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_A|DOUT[6]~feeder_combout\ = ( \CPU|ULA|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~25_sumout\,
	combout => \CPU|REG_A|DOUT[6]~feeder_combout\);

-- Location: FF_X39_Y3_N31
\CPU|REG_A|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|REG_A|DOUT[6]~feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT[6]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y1_N15
\RAM|ram~21feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~21feeder_combout\ = ( \CPU|REG_A|DOUT[6]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \RAM|ram~21feeder_combout\);

-- Location: FF_X42_Y1_N17
\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \RAM|ram~21feeder_combout\,
	ena => \RAM|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

-- Location: FF_X41_Y4_N28
\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

-- Location: FF_X41_Y4_N46
\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

-- Location: MLABCELL_X42_Y4_N0
\RAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~568_combout\ = ( \RAM|ram~29_q\ & ( (!\ROM|memROM~2_combout\ & (((\ROM|memROM~1_combout\)) # (\RAM|ram~21_q\))) # (\ROM|memROM~2_combout\ & (((!\ROM|memROM~1_combout\ & \RAM|ram~37_q\)))) ) ) # ( !\RAM|ram~29_q\ & ( (!\ROM|memROM~1_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\RAM|ram~21_q\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~37_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000101010011110100010101001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \RAM|ALT_INV_ram~21_q\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \RAM|ALT_INV_ram~37_q\,
	dataf => \RAM|ALT_INV_ram~29_q\,
	combout => \RAM|ram~568_combout\);

-- Location: MLABCELL_X42_Y4_N30
\RAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~569_combout\ = ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~4_combout\ & \RAM|ram~568_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~568_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~569_combout\);

-- Location: FF_X42_Y4_N35
\RAM|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~93_q\);

-- Location: FF_X42_Y4_N56
\RAM|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~101_q\);

-- Location: FF_X42_Y4_N17
\RAM|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~85_q\);

-- Location: MLABCELL_X42_Y4_N54
\RAM|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~570_combout\ = ( \RAM|ram~85_q\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~1_combout\) # ((\RAM|ram~93_q\)))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~1_combout\ & ((\RAM|ram~101_q\)))) ) ) # ( !\RAM|ram~85_q\ & ( (!\ROM|memROM~2_combout\ & 
-- (\ROM|memROM~1_combout\ & (\RAM|ram~93_q\))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~1_combout\ & ((\RAM|ram~101_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \RAM|ALT_INV_ram~93_q\,
	datad => \RAM|ALT_INV_ram~101_q\,
	dataf => \RAM|ALT_INV_ram~85_q\,
	combout => \RAM|ram~570_combout\);

-- Location: MLABCELL_X42_Y4_N51
\RAM|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~571_combout\ = ( \RAM|ram~570_combout\ & ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_ram~570_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~571_combout\);

-- Location: MLABCELL_X42_Y4_N42
\RAM|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~572_combout\ = ( \RAM|ram~571_combout\ & ( (!\ROM|memROM~7_combout\ & ((\ROM|memROM~5_combout\) # (\RAM|ram~569_combout\))) ) ) # ( !\RAM|ram~571_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~569_combout\ & !\ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~569_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \RAM|ALT_INV_ram~571_combout\,
	combout => \RAM|ram~572_combout\);

-- Location: MLABCELL_X42_Y4_N36
\CPU|MUX_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[6]~6_combout\ = ( \RAM|ram~572_combout\ & ( (!\CPU|DECODER|Equal1~0_combout\) # (\ROM|memROM~16_combout\) ) ) # ( !\RAM|ram~572_combout\ & ( (!\CPU|DECODER|Equal1~0_combout\ & (!\RAM|dado_out~16_combout\)) # 
-- (\CPU|DECODER|Equal1~0_combout\ & ((\ROM|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001111110011000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~16_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	dataf => \RAM|ALT_INV_ram~572_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[6]~6_combout\);

-- Location: LABCELL_X43_Y3_N54
\CPU|ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[6]~6_combout\ = ( \CPU|ULA|Add0~25_sumout\ & ( (!\CPU|DECODER|operacao~1_combout\) # (\CPU|MUX_ULA|saida_MUX[6]~6_combout\) ) ) # ( !\CPU|ULA|Add0~25_sumout\ & ( (\CPU|MUX_ULA|saida_MUX[6]~6_combout\ & \CPU|DECODER|operacao~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\,
	datad => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	dataf => \CPU|ULA|ALT_INV_Add0~25_sumout\,
	combout => \CPU|ULA|saida[6]~6_combout\);

-- Location: LABCELL_X41_Y3_N45
\RAM|dado_out[7]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[7]~25_combout\ = ( \RAM|ram~578_combout\ ) # ( !\RAM|ram~578_combout\ & ( !\RAM|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out~16_combout\,
	dataf => \RAM|ALT_INV_ram~578_combout\,
	combout => \RAM|dado_out[7]~25_combout\);

-- Location: FF_X42_Y3_N14
\CPU|REG_A|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|REG_A|DOUT[7]~feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(7));

-- Location: MLABCELL_X42_Y3_N54
\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~0_combout\ & ((\RAM|dado_out[7]~25_combout\))) # (\CPU|DECODER|Equal1~0_combout\ & (\ROM|memROM~7_combout\)))) ) + ( \CPU|REG_A|DOUT\(7) ) + ( \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datad => \RAM|ALT_INV_dado_out[7]~25_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	cin => \CPU|ULA|Add0~26\,
	sumout => \CPU|ULA|Add0~29_sumout\);

-- Location: MLABCELL_X42_Y3_N12
\CPU|REG_A|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_A|DOUT[7]~feeder_combout\ = ( \CPU|ULA|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~29_sumout\,
	combout => \CPU|REG_A|DOUT[7]~feeder_combout\);

-- Location: FF_X42_Y3_N13
\CPU|REG_A|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|REG_A|DOUT[7]~feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X44_Y3_N44
\RAM|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~94_q\);

-- Location: FF_X44_Y3_N13
\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

-- Location: LABCELL_X44_Y3_N42
\RAM|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~576_combout\ = ( \RAM|ram~30_q\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~5_combout\) # (\RAM|ram~94_q\))) ) ) # ( !\RAM|ram~30_q\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~5_combout\ & \RAM|ram~94_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~94_q\,
	dataf => \RAM|ALT_INV_ram~30_q\,
	combout => \RAM|ram~576_combout\);

-- Location: LABCELL_X44_Y3_N15
\RAM|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~577_combout\ = ( !\ROM|memROM~2_combout\ & ( \RAM|ram~576_combout\ & ( !\ROM|memROM~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~576_combout\,
	combout => \RAM|ram~577_combout\);

-- Location: FF_X42_Y3_N59
\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

-- Location: FF_X44_Y3_N56
\RAM|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~102_q\);

-- Location: LABCELL_X44_Y3_N54
\RAM|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~574_combout\ = ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~5_combout\ & (\RAM|ram~38_q\)) # (\ROM|memROM~5_combout\ & ((\RAM|ram~102_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~38_q\,
	datad => \RAM|ALT_INV_ram~102_q\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~574_combout\);

-- Location: MLABCELL_X45_Y2_N33
\RAM|ram~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~22feeder_combout\ = ( \CPU|REG_A|DOUT[7]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \RAM|ram~22feeder_combout\);

-- Location: FF_X45_Y2_N35
\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \RAM|ram~22feeder_combout\,
	ena => \RAM|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

-- Location: FF_X45_Y2_N5
\RAM|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~86_q\);

-- Location: MLABCELL_X45_Y2_N3
\RAM|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~573_combout\ = ( \RAM|ram~86_q\ & ( !\ROM|memROM~7_combout\ & ( (\RAM|ram~22_q\) # (\ROM|memROM~5_combout\) ) ) ) # ( !\RAM|ram~86_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~5_combout\ & \RAM|ram~22_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~22_q\,
	datae => \RAM|ALT_INV_ram~86_q\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~573_combout\);

-- Location: LABCELL_X44_Y3_N33
\RAM|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~575_combout\ = ( \RAM|ram~574_combout\ & ( \RAM|ram~573_combout\ & ( !\ROM|memROM~4_combout\ ) ) ) # ( !\RAM|ram~574_combout\ & ( \RAM|ram~573_combout\ & ( (!\ROM|memROM~4_combout\ & !\ROM|memROM~2_combout\) ) ) ) # ( \RAM|ram~574_combout\ & ( 
-- !\RAM|ram~573_combout\ & ( (!\ROM|memROM~4_combout\ & \ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000011110000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~574_combout\,
	dataf => \RAM|ALT_INV_ram~573_combout\,
	combout => \RAM|ram~575_combout\);

-- Location: LABCELL_X44_Y3_N9
\RAM|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~578_combout\ = ( \RAM|ram~575_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~1_combout\) # (\RAM|ram~577_combout\))) ) ) # ( !\RAM|ram~575_combout\ & ( (\ROM|memROM~1_combout\ & (\RAM|ram~577_combout\ & !\ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datac => \RAM|ALT_INV_ram~577_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~575_combout\,
	combout => \RAM|ram~578_combout\);

-- Location: LABCELL_X44_Y3_N27
\CPU|MUX_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[7]~7_combout\ = ( \RAM|ram~578_combout\ & ( (!\CPU|DECODER|Equal1~0_combout\) # (\ROM|memROM~7_combout\) ) ) # ( !\RAM|ram~578_combout\ & ( (!\CPU|DECODER|Equal1~0_combout\ & (!\RAM|dado_out~16_combout\)) # 
-- (\CPU|DECODER|Equal1~0_combout\ & ((\ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001111101010100000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~16_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	dataf => \RAM|ALT_INV_ram~578_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[7]~7_combout\);

-- Location: LABCELL_X43_Y3_N9
\CPU|ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[7]~7_combout\ = ( \CPU|ULA|Add0~29_sumout\ & ( (!\CPU|DECODER|operacao~1_combout\) # (\CPU|MUX_ULA|saida_MUX[7]~7_combout\) ) ) # ( !\CPU|ULA|Add0~29_sumout\ & ( (\CPU|DECODER|operacao~1_combout\ & \CPU|MUX_ULA|saida_MUX[7]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datad => \CPU|MUX_ULA|ALT_INV_saida_MUX[7]~7_combout\,
	dataf => \CPU|ULA|ALT_INV_Add0~29_sumout\,
	combout => \CPU|ULA|saida[7]~7_combout\);

-- Location: LABCELL_X43_Y3_N45
\CPU|FLAGer|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~3_combout\ = ( \CPU|ULA|Add0~9_sumout\ & ( (\CPU|DECODER|operacao~1_combout\ & (!\CPU|MUX_ULA|saida_MUX[3]~3_combout\ & !\CPU|MUX_ULA|saida_MUX[2]~2_combout\)) ) ) # ( !\CPU|ULA|Add0~9_sumout\ & ( (!\CPU|DECODER|operacao~1_combout\ & 
-- (((!\CPU|ULA|Add0~13_sumout\)))) # (\CPU|DECODER|operacao~1_combout\ & (!\CPU|MUX_ULA|saida_MUX[3]~3_combout\ & (!\CPU|MUX_ULA|saida_MUX[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101001000000111010100100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datab => \CPU|MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	datac => \CPU|MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|ULA|ALT_INV_Add0~13_sumout\,
	dataf => \CPU|ULA|ALT_INV_Add0~9_sumout\,
	combout => \CPU|FLAGer|DOUT~3_combout\);

-- Location: LABCELL_X43_Y3_N12
\CPU|FLAGer|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~2_combout\ = ( \CPU|ULA|Add0~21_sumout\ & ( (\CPU|DECODER|operacao~1_combout\ & (!\CPU|MUX_ULA|saida_MUX[4]~4_combout\ & !\CPU|MUX_ULA|saida_MUX[5]~5_combout\)) ) ) # ( !\CPU|ULA|Add0~21_sumout\ & ( (!\CPU|DECODER|operacao~1_combout\ & 
-- (((!\CPU|ULA|Add0~17_sumout\)))) # (\CPU|DECODER|operacao~1_combout\ & (!\CPU|MUX_ULA|saida_MUX[4]~4_combout\ & ((!\CPU|MUX_ULA|saida_MUX[5]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010010100000111001001010000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datab => \CPU|MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	datad => \CPU|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \CPU|ULA|ALT_INV_Add0~21_sumout\,
	combout => \CPU|FLAGer|DOUT~2_combout\);

-- Location: LABCELL_X43_Y3_N48
\CPU|FLAGer|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~4_combout\ = ( \CPU|FLAGer|DOUT~3_combout\ & ( \CPU|FLAGer|DOUT~2_combout\ & ( ((\CPU|FLAGer|DOUT~1_combout\ & (!\CPU|ULA|saida[6]~6_combout\ & !\CPU|ULA|saida[7]~7_combout\))) # (\CPU|FLAGer|DOUT~0_combout\) ) ) ) # ( 
-- !\CPU|FLAGer|DOUT~3_combout\ & ( \CPU|FLAGer|DOUT~2_combout\ & ( \CPU|FLAGer|DOUT~0_combout\ ) ) ) # ( \CPU|FLAGer|DOUT~3_combout\ & ( !\CPU|FLAGer|DOUT~2_combout\ & ( \CPU|FLAGer|DOUT~0_combout\ ) ) ) # ( !\CPU|FLAGer|DOUT~3_combout\ & ( 
-- !\CPU|FLAGer|DOUT~2_combout\ & ( \CPU|FLAGer|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FLAGer|ALT_INV_DOUT~1_combout\,
	datab => \CPU|FLAGer|ALT_INV_DOUT~0_combout\,
	datac => \CPU|ULA|ALT_INV_saida[6]~6_combout\,
	datad => \CPU|ULA|ALT_INV_saida[7]~7_combout\,
	datae => \CPU|FLAGer|ALT_INV_DOUT~3_combout\,
	dataf => \CPU|FLAGer|ALT_INV_DOUT~2_combout\,
	combout => \CPU|FLAGer|DOUT~4_combout\);

-- Location: FF_X43_Y3_N50
\CPU|FLAGer|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|FLAGer|DOUT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAGer|DOUT~q\);

-- Location: LABCELL_X43_Y3_N57
\CPU|PC|DOUT[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[7]~2_combout\ = ( \CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~13_combout\ & (\ROM|memROM~12_combout\ & (\ROM|memROM~11_combout\))) # (\ROM|memROM~13_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~11_combout\ $ (!\ROM|memROM~10_combout\)))) ) 
-- ) # ( !\CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~13_combout\ & (\ROM|memROM~12_combout\ & (\ROM|memROM~11_combout\ & !\ROM|memROM~10_combout\))) # (\ROM|memROM~13_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~11_combout\ $ (!\ROM|memROM~10_combout\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001000000000001100100000000000110010000100000011001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \CPU|FLAGer|ALT_INV_DOUT~q\,
	combout => \CPU|PC|DOUT[7]~2_combout\);

-- Location: FF_X40_Y2_N52
\CPU|END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|PC_INC|Add0~29_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(7));

-- Location: LABCELL_X43_Y3_N33
\CPU|DECODER|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~3_combout\ = ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & \ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER|Equal1~3_combout\);

-- Location: LABCELL_X43_Y2_N42
\CPU|MUX_DESVIO|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\ = ( \CPU|PC_INC|Add0~29_sumout\ & ( (!\CPU|PC|DOUT[7]~2_combout\) # ((!\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~7_combout\)) # (\CPU|DECODER|Equal1~3_combout\ & ((\CPU|END_RETORNO|DOUT\(7))))) ) ) # ( 
-- !\CPU|PC_INC|Add0~29_sumout\ & ( (\CPU|PC|DOUT[7]~2_combout\ & ((!\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~7_combout\)) # (\CPU|DECODER|Equal1~3_combout\ & ((\CPU|END_RETORNO|DOUT\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001111011101110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~2_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(7),
	datad => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	dataf => \CPU|PC_INC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\);

-- Location: FF_X43_Y2_N44
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X43_Y2_N24
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(8) & !\CPU|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X41_Y2_N45
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \ROM|memROM~6_combout\ & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~7_combout\);

-- Location: FF_X40_Y2_N44
\CPU|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|PC_INC|Add0~17_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(4));

-- Location: LABCELL_X43_Y2_N45
\CPU|MUX_DESVIO|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\ = ( \CPU|PC_INC|Add0~17_sumout\ & ( (!\CPU|PC|DOUT[7]~2_combout\) # ((!\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~7_combout\)) # (\CPU|DECODER|Equal1~3_combout\ & ((\CPU|END_RETORNO|DOUT\(4))))) ) ) # ( 
-- !\CPU|PC_INC|Add0~17_sumout\ & ( (\CPU|PC|DOUT[7]~2_combout\ & ((!\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~7_combout\)) # (\CPU|DECODER|Equal1~3_combout\ & ((\CPU|END_RETORNO|DOUT\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001111011101110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~2_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(4),
	datad => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	dataf => \CPU|PC_INC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\);

-- Location: FF_X43_Y2_N46
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y3_N36
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(3)) # ((!\CPU|PC|DOUT[4]~DUPLICATE_q\ & \CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- (((!\CPU|PC|DOUT[4]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[4]~DUPLICATE_q\))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3))))) # 
-- (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001000101010001010111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~12_combout\);

-- Location: LABCELL_X43_Y3_N36
\CPU|PC|DOUT[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[5]~0_combout\ = ( \CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~13_combout\ & (\ROM|memROM~12_combout\ & ((\ROM|memROM~11_combout\)))) # (\ROM|memROM~13_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ $ (!\ROM|memROM~11_combout\)))) 
-- ) ) # ( !\CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~13_combout\ & (\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~11_combout\))) # (\ROM|memROM~13_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ $ 
-- (!\ROM|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001100000000001000110000000000100011000100000010001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \CPU|FLAGer|ALT_INV_DOUT~q\,
	combout => \CPU|PC|DOUT[5]~0_combout\);

-- Location: FF_X40_Y2_N37
\CPU|END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|PC_INC|Add0~9_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(2));

-- Location: LABCELL_X43_Y2_N54
\CPU|MUX_DESVIO|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\ = ( \CPU|PC_INC|Add0~9_sumout\ & ( (!\CPU|PC|DOUT[5]~1_combout\ & ((!\CPU|PC|DOUT[5]~0_combout\) # ((\CPU|END_RETORNO|DOUT\(2))))) # (\CPU|PC|DOUT[5]~1_combout\ & (\CPU|PC|DOUT[5]~0_combout\ & 
-- (\ROM|memROM~4_combout\))) ) ) # ( !\CPU|PC_INC|Add0~9_sumout\ & ( (\CPU|PC|DOUT[5]~0_combout\ & ((!\CPU|PC|DOUT[5]~1_combout\ & ((\CPU|END_RETORNO|DOUT\(2)))) # (\CPU|PC|DOUT[5]~1_combout\ & (\ROM|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001110001001101010111000100110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[5]~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(2),
	dataf => \CPU|PC_INC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\);

-- Location: FF_X43_Y2_N56
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y3_N30
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( 
-- (\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[4]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000100000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X43_Y3_N39
\CPU|PC|DOUT[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[5]~1_combout\ = ( \CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~13_combout\ & (\ROM|memROM~12_combout\ & (\ROM|memROM~11_combout\))) # (\ROM|memROM~13_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~11_combout\ & \ROM|memROM~10_combout\))) ) ) # 
-- ( !\CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~13_combout\ & (\ROM|memROM~12_combout\ & (\ROM|memROM~11_combout\ & !\ROM|memROM~10_combout\))) # (\ROM|memROM~13_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~11_combout\ & \ROM|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000100100000000000010010000100000001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \CPU|FLAGer|ALT_INV_DOUT~q\,
	combout => \CPU|PC|DOUT[5]~1_combout\);

-- Location: FF_X40_Y2_N40
\CPU|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|PC_INC|Add0~13_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(3));

-- Location: LABCELL_X43_Y2_N57
\CPU|MUX_DESVIO|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\ = ( \ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT[5]~1_combout\ & ((!\CPU|PC|DOUT[5]~0_combout\ & ((\CPU|PC_INC|Add0~13_sumout\))) # (\CPU|PC|DOUT[5]~0_combout\ & (\CPU|END_RETORNO|DOUT\(3))))) # 
-- (\CPU|PC|DOUT[5]~1_combout\ & (\CPU|PC|DOUT[5]~0_combout\)) ) ) # ( !\ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT[5]~1_combout\ & ((!\CPU|PC|DOUT[5]~0_combout\ & ((\CPU|PC_INC|Add0~13_sumout\))) # (\CPU|PC|DOUT[5]~0_combout\ & (\CPU|END_RETORNO|DOUT\(3))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000010011100110110001001110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[5]~0_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(3),
	datad => \CPU|PC_INC|ALT_INV_Add0~13_sumout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\);

-- Location: FF_X43_Y2_N58
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y2_N21
\CPU|DECODER|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~5_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \CPU|DECODER|Equal1~5_combout\);

-- Location: FF_X40_Y2_N31
\CPU|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|PC_INC|Add0~1_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(0));

-- Location: MLABCELL_X45_Y2_N12
\CPU|MUX_DESVIO|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\ = ( \CPU|PC|DOUT[5]~0_combout\ & ( \CPU|PC|DOUT[5]~1_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \CPU|PC|DOUT[5]~0_combout\ & ( !\CPU|PC|DOUT[5]~1_combout\ & ( \CPU|END_RETORNO|DOUT\(0) ) ) ) # ( 
-- !\CPU|PC|DOUT[5]~0_combout\ & ( !\CPU|PC|DOUT[5]~1_combout\ & ( \CPU|PC_INC|Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|END_RETORNO|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC_INC|ALT_INV_Add0~1_sumout\,
	datae => \CPU|PC|ALT_INV_DOUT[5]~0_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT[5]~1_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\);

-- Location: FF_X44_Y2_N59
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: FF_X40_Y2_N34
\CPU|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|PC_INC|Add0~5_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(1));

-- Location: LABCELL_X47_Y2_N27
\CPU|MUX_DESVIO|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\ = ( \CPU|PC_INC|Add0~5_sumout\ & ( \CPU|PC|DOUT[5]~0_combout\ & ( (!\CPU|PC|DOUT[5]~1_combout\ & (\CPU|END_RETORNO|DOUT\(1))) # (\CPU|PC|DOUT[5]~1_combout\ & ((\ROM|memROM~2_combout\))) ) ) ) # ( 
-- !\CPU|PC_INC|Add0~5_sumout\ & ( \CPU|PC|DOUT[5]~0_combout\ & ( (!\CPU|PC|DOUT[5]~1_combout\ & (\CPU|END_RETORNO|DOUT\(1))) # (\CPU|PC|DOUT[5]~1_combout\ & ((\ROM|memROM~2_combout\))) ) ) ) # ( \CPU|PC_INC|Add0~5_sumout\ & ( !\CPU|PC|DOUT[5]~0_combout\ & ( 
-- !\CPU|PC|DOUT[5]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110001000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|END_RETORNO|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[5]~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datae => \CPU|PC_INC|ALT_INV_Add0~5_sumout\,
	dataf => \CPU|PC|ALT_INV_DOUT[5]~0_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\);

-- Location: FF_X44_Y2_N38
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X43_Y2_N6
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(0)))) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~3_combout\);

-- Location: LABCELL_X43_Y2_N27
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~3_combout\ & !\CPU|PC|DOUT[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~4_combout\);

-- Location: FF_X42_Y3_N25
\CPU|REG_A|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \CPU|REG_A|DOUT[0]~feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X42_Y3_N1
\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

-- Location: MLABCELL_X42_Y2_N45
\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( !\ROM|memROM~9_combout\ & ( (\RAM|ram~31_q\ & !\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~31_q\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~530_combout\);

-- Location: FF_X41_Y2_N25
\RAM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~95_q\);

-- Location: MLABCELL_X42_Y2_N33
\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \RAM|ram~95_q\ & ( (!\ROM|memROM~1_combout\ & !\ROM|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~95_q\,
	combout => \RAM|ram~531_combout\);

-- Location: MLABCELL_X42_Y2_N57
\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \RAM|ram~531_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM|ram~530_combout\) # (\ROM|memROM~5_combout\))) ) ) # ( !\RAM|ram~531_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~5_combout\ & \RAM|ram~530_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~530_combout\,
	dataf => \RAM|ALT_INV_ram~531_combout\,
	combout => \RAM|ram~532_combout\);

-- Location: FF_X41_Y3_N35
\RAM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~79_q\);

-- Location: FF_X41_Y2_N8
\RAM|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~87_q\);

-- Location: LABCELL_X41_Y2_N36
\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \RAM|ram~87_q\ & ( (!\ROM|memROM~9_combout\ & ((\ROM|memROM~1_combout\) # (\RAM|ram~79_q\))) ) ) # ( !\RAM|ram~87_q\ & ( (\RAM|ram~79_q\ & (!\ROM|memROM~9_combout\ & !\ROM|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~79_q\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \RAM|ALT_INV_ram~87_q\,
	combout => \RAM|ram~528_combout\);

-- Location: FF_X43_Y3_N5
\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

-- Location: FF_X41_Y3_N19
\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: LABCELL_X43_Y3_N30
\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~1_combout\ & ((\RAM|ram~15_q\))) # (\ROM|memROM~1_combout\ & (\RAM|ram~23_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \RAM|ALT_INV_ram~23_q\,
	datad => \RAM|ALT_INV_ram~15_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~527_combout\);

-- Location: MLABCELL_X42_Y2_N12
\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \RAM|ram~527_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~5_combout\) # (\RAM|ram~528_combout\))) ) ) # ( !\RAM|ram~527_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~5_combout\ & \RAM|ram~528_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~528_combout\,
	dataf => \RAM|ALT_INV_ram~527_combout\,
	combout => \RAM|ram~529_combout\);

-- Location: MLABCELL_X42_Y2_N42
\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \RAM|ram~529_combout\ & ( (!\ROM|memROM~4_combout\ & ((!\ROM|memROM~2_combout\) # (\RAM|ram~532_combout\))) ) ) # ( !\RAM|ram~529_combout\ & ( (!\ROM|memROM~4_combout\ & (\ROM|memROM~2_combout\ & \RAM|ram~532_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~532_combout\,
	dataf => \RAM|ALT_INV_ram~529_combout\,
	combout => \RAM|ram~533_combout\);

-- Location: MLABCELL_X42_Y2_N48
\RAM|dado_out[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~17_combout\ = ( \RAM|dado_out~16_combout\ & ( (\RAM|ram~533_combout\ & ((!\habKEY0~2_combout\) # (\FF_Debouncer|DOUT~q\))) ) ) # ( !\RAM|dado_out~16_combout\ & ( (!\habKEY0~2_combout\) # (\FF_Debouncer|DOUT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~533_combout\,
	datac => \ALT_INV_habKEY0~2_combout\,
	datad => \FF_Debouncer|ALT_INV_DOUT~q\,
	dataf => \RAM|ALT_INV_dado_out~16_combout\,
	combout => \RAM|dado_out[0]~17_combout\);

-- Location: MLABCELL_X42_Y4_N45
\RAM|dado_out[0]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~18_combout\ = ( \CPU|DECODER|habAcumulador~0_combout\ & ( (!\RAM|process_0~0_combout\) # (\habKEY0~1_combout\) ) ) # ( !\CPU|DECODER|habAcumulador~0_combout\ & ( (\CPU|DECODER|Equal1~1_combout\ & ((!\RAM|process_0~0_combout\) # 
-- (\habKEY0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habKEY0~1_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	dataf => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	combout => \RAM|dado_out[0]~18_combout\);

-- Location: MLABCELL_X42_Y2_N18
\habHEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~0_combout\ = ( !\ROM|memROM~2_combout\ & ( (\CPU|DECODER|Equal1~4_combout\ & (\habKEY0~0_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	datab => \ALT_INV_habKEY0~0_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \habHEX0~0_combout\);

-- Location: FF_X44_Y2_N28
\HEX0_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \habHEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(0));

-- Location: FF_X42_Y2_N47
\HEX0_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \habHEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(3));

-- Location: FF_X44_Y2_N16
\HEX0_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \habHEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(1));

-- Location: FF_X42_Y2_N14
\HEX0_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \habHEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(2));

-- Location: LABCELL_X48_Y2_N12
\HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( !\HEX0_decoder|REG_4bits|DOUT\(0) $ (\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( 
-- !\HEX0_decoder|REG_4bits|DOUT\(2) & ( (\HEX0_decoder|REG_4bits|DOUT\(0) & \HEX0_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( !\HEX0_decoder|REG_4bits|DOUT\(2) & ( (\HEX0_decoder|REG_4bits|DOUT\(0) & 
-- !\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000001010000010110100101101001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X48_Y2_N33
\HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( (!\HEX0_decoder|REG_4bits|DOUT\(0)) # (\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( 
-- \HEX0_decoder|REG_4bits|DOUT\(2) & ( !\HEX0_decoder|REG_4bits|DOUT\(3) $ (!\HEX0_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( !\HEX0_decoder|REG_4bits|DOUT\(2) & ( (\HEX0_decoder|REG_4bits|DOUT\(3) & 
-- \HEX0_decoder|REG_4bits|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010101010101101010101111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X48_Y2_N48
\HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( \HEX0_decoder|REG_4bits|DOUT\(3) ) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( 
-- (!\HEX0_decoder|REG_4bits|DOUT\(0) & \HEX0_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( !\HEX0_decoder|REG_4bits|DOUT\(2) & ( (!\HEX0_decoder|REG_4bits|DOUT\(0) & !\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000001010000010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y2_N36
\HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(0) & ( (!\HEX0_decoder|REG_4bits|DOUT\(2) & (!\HEX0_decoder|REG_4bits|DOUT\(3) & !\HEX0_decoder|REG_4bits|DOUT\(1))) # (\HEX0_decoder|REG_4bits|DOUT\(2) & 
-- ((\HEX0_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(0) & ( (!\HEX0_decoder|REG_4bits|DOUT\(3) & (\HEX0_decoder|REG_4bits|DOUT\(2) & !\HEX0_decoder|REG_4bits|DOUT\(1))) # (\HEX0_decoder|REG_4bits|DOUT\(3) & 
-- (!\HEX0_decoder|REG_4bits|DOUT\(2) & \HEX0_decoder|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001000100100010000011001100100010010001001000100000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X45_Y2_N57
\HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(0) & ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( !\HEX0_decoder|REG_4bits|DOUT\(3) ) ) ) # ( \HEX0_decoder|REG_4bits|DOUT\(0) & ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( 
-- (!\HEX0_decoder|REG_4bits|DOUT\(2)) # (!\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(0) & ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( (\HEX0_decoder|REG_4bits|DOUT\(2) & !\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111111111111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X48_Y2_N9
\HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( (!\HEX0_decoder|REG_4bits|DOUT\(3) & \HEX0_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( 
-- \HEX0_decoder|REG_4bits|DOUT\(2) & ( (\HEX0_decoder|REG_4bits|DOUT\(3) & \HEX0_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( !\HEX0_decoder|REG_4bits|DOUT\(2) & ( !\HEX0_decoder|REG_4bits|DOUT\(3) ) ) ) # ( 
-- !\HEX0_decoder|REG_4bits|DOUT\(1) & ( !\HEX0_decoder|REG_4bits|DOUT\(2) & ( (!\HEX0_decoder|REG_4bits|DOUT\(3) & \HEX0_decoder|REG_4bits|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010101010101010101000000000010101010000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y2_N42
\HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(0) & ( (!\HEX0_decoder|REG_4bits|DOUT\(3) & (!\HEX0_decoder|REG_4bits|DOUT\(2) $ (\HEX0_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(0) & ( 
-- (!\HEX0_decoder|REG_4bits|DOUT\(1) & (!\HEX0_decoder|REG_4bits|DOUT\(3) $ (\HEX0_decoder|REG_4bits|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100000000100010000010001010011001000000001000100000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X45_Y3_N48
\HEX1_decoder|REG_4bits|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|REG_4bits|DOUT[3]~feeder_combout\ = ( \CPU|REG_A|DOUT[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \HEX1_decoder|REG_4bits|DOUT[3]~feeder_combout\);

-- Location: MLABCELL_X45_Y2_N24
\habHEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX1~0_combout\ = ( \habKEY0~0_combout\ & ( !\ROM|memROM~16_combout\ & ( (!\ROM|memROM~2_combout\ & (\CPU|DECODER|Equal1~4_combout\ & \ROM|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ALT_INV_habKEY0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \habHEX1~0_combout\);

-- Location: FF_X45_Y3_N49
\HEX1_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \HEX1_decoder|REG_4bits|DOUT[3]~feeder_combout\,
	ena => \habHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_decoder|REG_4bits|DOUT\(3));

-- Location: FF_X45_Y3_N26
\HEX1_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \habHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_decoder|REG_4bits|DOUT\(2));

-- Location: FF_X43_Y3_N28
\HEX1_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \habHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_decoder|REG_4bits|DOUT\(0));

-- Location: MLABCELL_X45_Y3_N30
\HEX1_decoder|REG_4bits|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|REG_4bits|DOUT[1]~feeder_combout\ = ( \CPU|REG_A|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	combout => \HEX1_decoder|REG_4bits|DOUT[1]~feeder_combout\);

-- Location: FF_X45_Y3_N32
\HEX1_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \HEX1_decoder|REG_4bits|DOUT[1]~feeder_combout\,
	ena => \habHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_decoder|REG_4bits|DOUT\(1));

-- Location: MLABCELL_X45_Y3_N54
\HEX1_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX1_decoder|REG_4bits|DOUT\(0) & ( \HEX1_decoder|REG_4bits|DOUT\(1) & ( (\HEX1_decoder|REG_4bits|DOUT\(3) & !\HEX1_decoder|REG_4bits|DOUT\(2)) ) ) ) # ( \HEX1_decoder|REG_4bits|DOUT\(0) & ( 
-- !\HEX1_decoder|REG_4bits|DOUT\(1) & ( !\HEX1_decoder|REG_4bits|DOUT\(3) $ (\HEX1_decoder|REG_4bits|DOUT\(2)) ) ) ) # ( !\HEX1_decoder|REG_4bits|DOUT\(0) & ( !\HEX1_decoder|REG_4bits|DOUT\(1) & ( (!\HEX1_decoder|REG_4bits|DOUT\(3) & 
-- \HEX1_decoder|REG_4bits|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000111100001100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datae => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X45_Y3_N3
\HEX1_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX1_decoder|REG_4bits|DOUT\(0) & ( (!\HEX1_decoder|REG_4bits|DOUT\(1) & (!\HEX1_decoder|REG_4bits|DOUT\(3) & \HEX1_decoder|REG_4bits|DOUT\(2))) # (\HEX1_decoder|REG_4bits|DOUT\(1) & 
-- (\HEX1_decoder|REG_4bits|DOUT\(3))) ) ) # ( !\HEX1_decoder|REG_4bits|DOUT\(0) & ( (\HEX1_decoder|REG_4bits|DOUT\(2) & ((\HEX1_decoder|REG_4bits|DOUT\(3)) # (\HEX1_decoder|REG_4bits|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000111100001100000000001111110000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datae => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y3_N9
\HEX1_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX1_decoder|REG_4bits|DOUT\(1) & ( (!\HEX1_decoder|REG_4bits|DOUT\(2) & (!\HEX1_decoder|REG_4bits|DOUT\(0) & !\HEX1_decoder|REG_4bits|DOUT\(3))) # (\HEX1_decoder|REG_4bits|DOUT\(2) & 
-- ((\HEX1_decoder|REG_4bits|DOUT\(3)))) ) ) # ( !\HEX1_decoder|REG_4bits|DOUT\(1) & ( (\HEX1_decoder|REG_4bits|DOUT\(2) & (!\HEX1_decoder|REG_4bits|DOUT\(0) & \HEX1_decoder|REG_4bits|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y3_N39
\HEX1_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX1_decoder|REG_4bits|DOUT\(0) & ( (!\HEX1_decoder|REG_4bits|DOUT\(1) & (!\HEX1_decoder|REG_4bits|DOUT\(3) & !\HEX1_decoder|REG_4bits|DOUT\(2))) # (\HEX1_decoder|REG_4bits|DOUT\(1) & 
-- ((\HEX1_decoder|REG_4bits|DOUT\(2)))) ) ) # ( !\HEX1_decoder|REG_4bits|DOUT\(0) & ( (!\HEX1_decoder|REG_4bits|DOUT\(1) & (!\HEX1_decoder|REG_4bits|DOUT\(3) & \HEX1_decoder|REG_4bits|DOUT\(2))) # (\HEX1_decoder|REG_4bits|DOUT\(1) & 
-- (\HEX1_decoder|REG_4bits|DOUT\(3) & !\HEX1_decoder|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000110000000011001100000011110000001100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datae => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X45_Y3_N18
\HEX1_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX1_decoder|REG_4bits|DOUT\(0) & ( \HEX1_decoder|REG_4bits|DOUT\(1) & ( !\HEX1_decoder|REG_4bits|DOUT\(3) ) ) ) # ( \HEX1_decoder|REG_4bits|DOUT\(0) & ( !\HEX1_decoder|REG_4bits|DOUT\(1) & ( 
-- (!\HEX1_decoder|REG_4bits|DOUT\(3)) # (!\HEX1_decoder|REG_4bits|DOUT\(2)) ) ) ) # ( !\HEX1_decoder|REG_4bits|DOUT\(0) & ( !\HEX1_decoder|REG_4bits|DOUT\(1) & ( (!\HEX1_decoder|REG_4bits|DOUT\(3) & \HEX1_decoder|REG_4bits|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111111001111110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datae => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X45_Y3_N12
\HEX1_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX1_decoder|REG_4bits|DOUT\(0) & ( \HEX1_decoder|REG_4bits|DOUT\(1) & ( !\HEX1_decoder|REG_4bits|DOUT\(3) ) ) ) # ( !\HEX1_decoder|REG_4bits|DOUT\(0) & ( \HEX1_decoder|REG_4bits|DOUT\(1) & ( 
-- (!\HEX1_decoder|REG_4bits|DOUT\(3) & !\HEX1_decoder|REG_4bits|DOUT\(2)) ) ) ) # ( \HEX1_decoder|REG_4bits|DOUT\(0) & ( !\HEX1_decoder|REG_4bits|DOUT\(1) & ( !\HEX1_decoder|REG_4bits|DOUT\(3) $ (\HEX1_decoder|REG_4bits|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001111000000110000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datae => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y3_N45
\HEX1_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX1_decoder|REG_4bits|DOUT\(0) & ( (!\HEX1_decoder|REG_4bits|DOUT\(3) & (!\HEX1_decoder|REG_4bits|DOUT\(1) $ (\HEX1_decoder|REG_4bits|DOUT\(2)))) ) ) # ( !\HEX1_decoder|REG_4bits|DOUT\(0) & ( 
-- (!\HEX1_decoder|REG_4bits|DOUT\(1) & (!\HEX1_decoder|REG_4bits|DOUT\(3) $ (\HEX1_decoder|REG_4bits|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000011000011000000000011001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datae => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y2_N24
\habHEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX2~0_combout\ = ( \CPU|DECODER|Equal1~4_combout\ & ( (!\ROM|memROM~1_combout\ & (\habKEY0~0_combout\ & (\ROM|memROM~2_combout\ & !\ROM|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ALT_INV_habKEY0~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	combout => \habHEX2~0_combout\);

-- Location: FF_X42_Y2_N11
\HEX2_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \habHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(3));

-- Location: FF_X42_Y2_N4
\HEX2_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \habHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(2));

-- Location: FF_X42_Y1_N37
\HEX2_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \habHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(0));

-- Location: FF_X42_Y2_N26
\HEX2_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \habHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(1));

-- Location: LABCELL_X40_Y2_N0
\HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( (\HEX2_decoder|REG_4bits|DOUT\(3) & (!\HEX2_decoder|REG_4bits|DOUT\(2) & \HEX2_decoder|REG_4bits|DOUT\(0))) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(1) & ( 
-- (!\HEX2_decoder|REG_4bits|DOUT\(3) & (!\HEX2_decoder|REG_4bits|DOUT\(2) $ (!\HEX2_decoder|REG_4bits|DOUT\(0)))) # (\HEX2_decoder|REG_4bits|DOUT\(3) & (\HEX2_decoder|REG_4bits|DOUT\(2) & \HEX2_decoder|REG_4bits|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y2_N27
\HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(0) & ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( \HEX2_decoder|REG_4bits|DOUT\(3) ) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(0) & ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( 
-- \HEX2_decoder|REG_4bits|DOUT\(2) ) ) ) # ( \HEX2_decoder|REG_4bits|DOUT\(0) & ( !\HEX2_decoder|REG_4bits|DOUT\(1) & ( (\HEX2_decoder|REG_4bits|DOUT\(2) & !\HEX2_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(0) & ( 
-- !\HEX2_decoder|REG_4bits|DOUT\(1) & ( (\HEX2_decoder|REG_4bits|DOUT\(2) & \HEX2_decoder|REG_4bits|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000001010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y2_N12
\HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( (!\HEX2_decoder|REG_4bits|DOUT\(2) & (!\HEX2_decoder|REG_4bits|DOUT\(3) & !\HEX2_decoder|REG_4bits|DOUT\(0))) # (\HEX2_decoder|REG_4bits|DOUT\(2) & 
-- (\HEX2_decoder|REG_4bits|DOUT\(3))) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(1) & ( (\HEX2_decoder|REG_4bits|DOUT\(2) & (\HEX2_decoder|REG_4bits|DOUT\(3) & !\HEX2_decoder|REG_4bits|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X40_Y2_N15
\HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( (!\HEX2_decoder|REG_4bits|DOUT\(2) & (\HEX2_decoder|REG_4bits|DOUT\(3) & !\HEX2_decoder|REG_4bits|DOUT\(0))) # (\HEX2_decoder|REG_4bits|DOUT\(2) & 
-- ((\HEX2_decoder|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(1) & ( (!\HEX2_decoder|REG_4bits|DOUT\(3) & (!\HEX2_decoder|REG_4bits|DOUT\(2) $ (!\HEX2_decoder|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100000100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: FF_X42_Y2_N10
\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	asdata => \CPU|REG_A|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \habHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N9
\HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(0) & ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( !\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\ ) ) ) # ( \HEX2_decoder|REG_4bits|DOUT\(0) & ( 
-- !\HEX2_decoder|REG_4bits|DOUT\(1) & ( (!\HEX2_decoder|REG_4bits|DOUT\(2)) # (!\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\) ) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(0) & ( !\HEX2_decoder|REG_4bits|DOUT\(1) & ( (\HEX2_decoder|REG_4bits|DOUT\(2) & 
-- !\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111111111010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y1_N6
\HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(0) & ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( !\HEX2_decoder|REG_4bits|DOUT\(1) $ (!\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\) ) ) ) # ( 
-- \HEX2_decoder|REG_4bits|DOUT\(0) & ( !\HEX2_decoder|REG_4bits|DOUT\(2) & ( !\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\ ) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(0) & ( !\HEX2_decoder|REG_4bits|DOUT\(2) & ( (\HEX2_decoder|REG_4bits|DOUT\(1) & 
-- !\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000111111110000000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y2_N3
\HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( (\HEX2_decoder|REG_4bits|DOUT\(2) & (!\HEX2_decoder|REG_4bits|DOUT\(3) & \HEX2_decoder|REG_4bits|DOUT\(0))) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(1) & ( 
-- (!\HEX2_decoder|REG_4bits|DOUT\(2) & (!\HEX2_decoder|REG_4bits|DOUT\(3))) # (\HEX2_decoder|REG_4bits|DOUT\(2) & (\HEX2_decoder|REG_4bits|DOUT\(3) & !\HEX2_decoder|REG_4bits|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100000101001011010000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X44_Y2_N39
\HEX3DEC|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3DEC|rascSaida7seg[0]~0_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(1))) ) ) # ( 
-- !\CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010010010100100101001001010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \HEX3DEC|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y2_N36
\HEX3DEC|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3DEC|rascSaida7seg[1]~1_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((\CPU|PC|DOUT\(1)))) ) ) # ( !\CPU|PC|DOUT\(0) & ( 
-- (\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \HEX3DEC|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y2_N57
\HEX3DEC|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3DEC|rascSaida7seg[2]~2_combout\ = ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(1)))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \HEX3DEC|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y2_N0
\HEX3DEC|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3DEC|rascSaida7seg[3]~3_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(1) & ( 
-- (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \HEX3DEC|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y2_N33
\HEX3DEC|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3DEC|rascSaida7seg[4]~4_combout\ = ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[3]~DUPLICATE_q\) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100100010011101110010001000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \HEX3DEC|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y2_N54
\HEX3DEC|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3DEC|rascSaida7seg[5]~5_combout\ = (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (\CPU|PC|DOUT[2]~DUPLICATE_q\)))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\) # 
-- (\CPU|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000110010000001100011001000000110001100100000011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \HEX3DEC|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y2_N42
\HEX3DEC|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3DEC|rascSaida7seg[6]~6_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ $ 
-- (\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \HEX3DEC|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y1_N51
\HEX4DEC|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4DEC|rascSaida7seg[0]~0_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101001011010010100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \HEX4DEC|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y1_N42
\HEX4DEC|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4DEC|rascSaida7seg[1]~1_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(6) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & \CPU|PC|DOUT\(6)) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT[7]~DUPLICATE_q\ & \CPU|PC|DOUT\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \HEX4DEC|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y1_N39
\HEX4DEC|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4DEC|rascSaida7seg[2]~2_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(6) & \CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(6) & \CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000010100101101001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \HEX4DEC|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y1_N18
\HEX4DEC|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4DEC|rascSaida7seg[3]~3_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(6) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & 
-- ( (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111100000000000000000000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \HEX4DEC|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y1_N15
\HEX4DEC|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4DEC|rascSaida7seg[4]~4_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT[7]~DUPLICATE_q\ ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(6)) # (!\CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111110101111101000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \HEX4DEC|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y1_N30
\HEX4DEC|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4DEC|rascSaida7seg[5]~5_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT[7]~DUPLICATE_q\ ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & !\CPU|PC|DOUT\(6)) ) ) ) # ( \CPU|PC|DOUT\(4) & ( 
-- !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT[7]~DUPLICATE_q\ $ (\CPU|PC|DOUT\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001111000000110000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \HEX4DEC|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y1_N0
\HEX4DEC|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4DEC|rascSaida7seg[6]~6_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \HEX4DEC|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X44_Y3_N45
\CPU|ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[0]~0_combout\ = ( \CPU|ULA|Add0~1_sumout\ & ( (!\CPU|DECODER|operacao~1_combout\) # (\CPU|MUX_ULA|saida_MUX[0]~0_combout\) ) ) # ( !\CPU|ULA|Add0~1_sumout\ & ( (\CPU|DECODER|operacao~1_combout\ & \CPU|MUX_ULA|saida_MUX[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datac => \CPU|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	combout => \CPU|ULA|saida[0]~0_combout\);

-- Location: LABCELL_X44_Y3_N6
\CPU|ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[1]~1_combout\ = ( \CPU|MUX_ULA|saida_MUX[1]~1_combout\ & ( (\CPU|DECODER|operacao~1_combout\) # (\CPU|ULA|Add0~5_sumout\) ) ) # ( !\CPU|MUX_ULA|saida_MUX[1]~1_combout\ & ( (\CPU|ULA|Add0~5_sumout\ & !\CPU|DECODER|operacao~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	datac => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	dataf => \CPU|MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|ULA|saida[1]~1_combout\);

-- Location: MLABCELL_X45_Y3_N6
\CPU|ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[2]~2_combout\ = ( \CPU|DECODER|operacao~1_combout\ & ( \CPU|MUX_ULA|saida_MUX[2]~2_combout\ ) ) # ( !\CPU|DECODER|operacao~1_combout\ & ( \CPU|ULA|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|ULA|ALT_INV_Add0~9_sumout\,
	dataf => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	combout => \CPU|ULA|saida[2]~2_combout\);

-- Location: LABCELL_X39_Y3_N36
\CPU|ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[3]~3_combout\ = ( \CPU|DECODER|operacao~1_combout\ & ( \CPU|MUX_ULA|saida_MUX[3]~3_combout\ ) ) # ( !\CPU|DECODER|operacao~1_combout\ & ( \CPU|MUX_ULA|saida_MUX[3]~3_combout\ & ( \CPU|ULA|Add0~13_sumout\ ) ) ) # ( 
-- !\CPU|DECODER|operacao~1_combout\ & ( !\CPU|MUX_ULA|saida_MUX[3]~3_combout\ & ( \CPU|ULA|Add0~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA|ALT_INV_Add0~13_sumout\,
	datae => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	dataf => \CPU|MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|ULA|saida[3]~3_combout\);

-- Location: LABCELL_X40_Y3_N36
\CPU|ULA|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[4]~4_combout\ = ( \CPU|ULA|Add0~17_sumout\ & ( (!\CPU|DECODER|operacao~1_combout\) # (\CPU|MUX_ULA|saida_MUX[4]~4_combout\) ) ) # ( !\CPU|ULA|Add0~17_sumout\ & ( (\CPU|MUX_ULA|saida_MUX[4]~4_combout\ & \CPU|DECODER|operacao~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datad => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datae => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	combout => \CPU|ULA|saida[4]~4_combout\);

-- Location: LABCELL_X39_Y3_N6
\CPU|ULA|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[5]~5_combout\ = ( \CPU|DECODER|operacao~1_combout\ & ( \CPU|MUX_ULA|saida_MUX[5]~5_combout\ ) ) # ( !\CPU|DECODER|operacao~1_combout\ & ( \CPU|MUX_ULA|saida_MUX[5]~5_combout\ & ( \CPU|ULA|Add0~21_sumout\ ) ) ) # ( 
-- !\CPU|DECODER|operacao~1_combout\ & ( !\CPU|MUX_ULA|saida_MUX[5]~5_combout\ & ( \CPU|ULA|Add0~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA|ALT_INV_Add0~21_sumout\,
	datae => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	dataf => \CPU|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|ULA|saida[5]~5_combout\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X54_Y16_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: LABCELL_X36_Y12_N3
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


