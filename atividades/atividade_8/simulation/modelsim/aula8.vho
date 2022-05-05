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

-- DATE "05/05/2022 10:25:04"

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
	ula_ain : OUT std_logic_vector(7 DOWNTO 0);
	ula_bin : OUT std_logic_vector(7 DOWNTO 0);
	ula_out : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END contador;

-- Design Ports Information
-- endROM[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[7]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[8]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[4]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- teste_datain[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[2]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[7]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_hab	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- flaginha	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_ain[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_ain[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_ain[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_ain[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_ain[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_ain[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_ain[6]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_ain[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[5]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_bin[7]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[4]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ula_ain : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ula_bin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ula_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~2\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~22\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~5_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~6\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~10\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \ROM|memROM~22_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~26\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM|memROM~21_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~30\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~3_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~14\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~18\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~4_combout\ : std_logic;
SIGNAL \CPU|DECODER|habAcumulador~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~562_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~74feeder_combout\ : std_logic;
SIGNAL \RAM|ram~563_combout\ : std_logic;
SIGNAL \RAM|ram~564_combout\ : std_logic;
SIGNAL \RAM|ram~74_q\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|dado_out[3]~20_combout\ : std_logic;
SIGNAL \RAM|ram~73_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~17feeder_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~572_combout\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|dado_out[2]~19_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~72_q\ : std_logic;
SIGNAL \RAM|ram~576_combout\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|dado_out[1]~17_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \habHEX0~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \habLED8~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~8_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~10_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~12_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~11_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \habLED9~0_combout\ : std_logic;
SIGNAL \bufferSW9|saida[0]~0_combout\ : std_logic;
SIGNAL \habLEDconj~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \bufferSWConj|saida[0]~0_combout\ : std_logic;
SIGNAL \habSWconj~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \FF_Debouncer|DOUT~feeder_combout\ : std_logic;
SIGNAL \ADDR_511~0_combout\ : std_logic;
SIGNAL \ADDR_511~1_combout\ : std_logic;
SIGNAL \ADDR_511~combout\ : std_logic;
SIGNAL \FF_Debouncer|DOUT~q\ : std_logic;
SIGNAL \RAM|dado_out[0]~26_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \RAM|ram~23feeder_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~71_q\ : std_logic;
SIGNAL \RAM|ram~566_combout\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \habHEX2~0_combout\ : std_logic;
SIGNAL \bufferKEY2|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~27_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \habHEX5~0_combout\ : std_logic;
SIGNAL \bufferKEY1|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~25_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~2\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~2_combout\ : std_logic;
SIGNAL \RAM|ram~77_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|dado_out[6]~23_combout\ : std_logic;
SIGNAL \RAM|ram~76_q\ : std_logic;
SIGNAL \RAM|ram~568_combout\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|dado_out[5]~22_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~75_q\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|dado_out[4]~21_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~78_q\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|dado_out[7]~24_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~1_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \RAM|dado_out~9_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~13_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~15_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~16_combout\ : std_logic;
SIGNAL \RAM|dado_out[1]~18_combout\ : std_logic;
SIGNAL \habHEX0~1_combout\ : std_logic;
SIGNAL \habLEDconj~1_combout\ : std_logic;
SIGNAL \habHEX0~2_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~q\ : std_logic;
SIGNAL \FFLED9|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED9|DOUT~q\ : std_logic;
SIGNAL \habHEX0~3_combout\ : std_logic;
SIGNAL \HEX0_decoder|REG_4bits|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \HEX0_decoder|REG_4bits|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \HEX0_decoder|REG_4bits|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~14_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \HEX0_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegLEDconj|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DECODER|saida\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~27_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~26_combout\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~25_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_511~combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_511~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX0~2_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX0~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[7]~24_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[6]~23_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[5]~22_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[4]~21_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[3]~20_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[2]~19_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[1]~17_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~15_combout\ : std_logic;
SIGNAL \CPU|END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DECODER|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~1_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~0_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[2]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~14_combout\ : std_logic;
SIGNAL \bufferKEY2|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX2~0_combout\ : std_logic;
SIGNAL \bufferSW9|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_habLED9~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~13_combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_511~0_combout\ : std_logic;
SIGNAL \FF_Debouncer|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_habSWconj~0_combout\ : std_logic;
SIGNAL \bufferKEY1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX5~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~12_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX0~0_combout\ : std_logic;
SIGNAL \ALT_INV_habLED8~0_combout\ : std_logic;
SIGNAL \bufferSWConj|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~11_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~10_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out~9_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \HEX0_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_habLEDconj~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_habAcumulador~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \FFLED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FFLED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
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
SIGNAL \RAM|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~568_combout\ : std_logic;
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
ula_ain <= ww_ula_ain;
ula_bin <= ww_ula_bin;
ula_out <= ww_ula_out;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\RAM|ALT_INV_ram~567_combout\ <= NOT \RAM|ram~567_combout\;
\RAM|ALT_INV_ram~566_combout\ <= NOT \RAM|ram~566_combout\;
\RAM|ALT_INV_ram~565_combout\ <= NOT \RAM|ram~565_combout\;
\RAM|ALT_INV_dado_out[0]~27_combout\ <= NOT \RAM|dado_out[0]~27_combout\;
\RAM|ALT_INV_dado_out[0]~26_combout\ <= NOT \RAM|dado_out[0]~26_combout\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\RAM|ALT_INV_dado_out[0]~25_combout\ <= NOT \RAM|dado_out[0]~25_combout\;
\CPU|DECODER|ALT_INV_Equal1~4_combout\ <= NOT \CPU|DECODER|Equal1~4_combout\;
\ALT_INV_ADDR_511~combout\ <= NOT \ADDR_511~combout\;
\ALT_INV_ADDR_511~1_combout\ <= NOT \ADDR_511~1_combout\;
\RAM|ALT_INV_ram~563_combout\ <= NOT \RAM|ram~563_combout\;
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\RAM|ALT_INV_ram~559_combout\ <= NOT \RAM|ram~559_combout\;
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\CPU|FLAGer|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAGer|DOUT~2_combout\;
\CPU|FLAGer|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAGer|DOUT~1_combout\;
\CPU|FLAGer|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FLAGer|DOUT~0_combout\;
\ALT_INV_habHEX0~2_combout\ <= NOT \habHEX0~2_combout\;
\ALT_INV_habHEX0~1_combout\ <= NOT \habHEX0~1_combout\;
\RAM|ALT_INV_dado_out[7]~24_combout\ <= NOT \RAM|dado_out[7]~24_combout\;
\RAM|ALT_INV_dado_out[6]~23_combout\ <= NOT \RAM|dado_out[6]~23_combout\;
\RAM|ALT_INV_dado_out[5]~22_combout\ <= NOT \RAM|dado_out[5]~22_combout\;
\RAM|ALT_INV_dado_out[4]~21_combout\ <= NOT \RAM|dado_out[4]~21_combout\;
\RAM|ALT_INV_dado_out[3]~20_combout\ <= NOT \RAM|dado_out[3]~20_combout\;
\RAM|ALT_INV_dado_out[2]~19_combout\ <= NOT \RAM|dado_out[2]~19_combout\;
\RAM|ALT_INV_dado_out[1]~17_combout\ <= NOT \RAM|dado_out[1]~17_combout\;
\RAM|ALT_INV_dado_out[0]~15_combout\ <= NOT \RAM|dado_out[0]~15_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|END_RETORNO|DOUT\(8);
\CPU|END_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|END_RETORNO|DOUT\(7);
\CPU|END_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|END_RETORNO|DOUT\(6);
\CPU|END_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|END_RETORNO|DOUT\(5);
\CPU|END_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|END_RETORNO|DOUT\(4);
\CPU|DECODER|ALT_INV_Equal1~3_combout\ <= NOT \CPU|DECODER|Equal1~3_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|END_RETORNO|DOUT\(3);
\CPU|END_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|END_RETORNO|DOUT\(2);
\CPU|END_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|END_RETORNO|DOUT\(1);
\CPU|END_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|END_RETORNO|DOUT\(0);
\CPU|PC|ALT_INV_DOUT[2]~1_combout\ <= NOT \CPU|PC|DOUT[2]~1_combout\;
\CPU|PC|ALT_INV_DOUT[2]~0_combout\ <= NOT \CPU|PC|DOUT[2]~0_combout\;
\CPU|ULA|ALT_INV_saida[6]~6_combout\ <= NOT \CPU|ULA|saida[6]~6_combout\;
\CPU|ULA|ALT_INV_saida[3]~3_combout\ <= NOT \CPU|ULA|saida[3]~3_combout\;
\CPU|ULA|ALT_INV_saida[2]~2_combout\ <= NOT \CPU|ULA|saida[2]~2_combout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\RAM|ALT_INV_ram~78_q\ <= NOT \RAM|ram~78_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~77_q\ <= NOT \RAM|ram~77_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\ROM|ALT_INV_memROM~22_combout\ <= NOT \ROM|memROM~22_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~76_q\ <= NOT \RAM|ram~76_q\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~75_q\ <= NOT \RAM|ram~75_q\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~74_q\ <= NOT \RAM|ram~74_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~73_q\ <= NOT \RAM|ram~73_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~72_q\ <= NOT \RAM|ram~72_q\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_dado_out[0]~14_combout\ <= NOT \RAM|dado_out[0]~14_combout\;
\bufferKEY2|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY2|saida[0]~0_combout\;
\ALT_INV_habHEX2~0_combout\ <= NOT \habHEX2~0_combout\;
\bufferSW9|ALT_INV_saida[0]~0_combout\ <= NOT \bufferSW9|saida[0]~0_combout\;
\ALT_INV_habLED9~0_combout\ <= NOT \habLED9~0_combout\;
\RAM|ALT_INV_dado_out[0]~13_combout\ <= NOT \RAM|dado_out[0]~13_combout\;
\ALT_INV_ADDR_511~0_combout\ <= NOT \ADDR_511~0_combout\;
\FF_Debouncer|ALT_INV_DOUT~q\ <= NOT \FF_Debouncer|DOUT~q\;
\ALT_INV_habSWconj~0_combout\ <= NOT \habSWconj~0_combout\;
\bufferKEY1|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY1|saida[0]~0_combout\;
\ALT_INV_habHEX5~0_combout\ <= NOT \habHEX5~0_combout\;
\RAM|ALT_INV_dado_out[0]~12_combout\ <= NOT \RAM|dado_out[0]~12_combout\;
\ALT_INV_habHEX0~0_combout\ <= NOT \habHEX0~0_combout\;
\ALT_INV_habLED8~0_combout\ <= NOT \habLED8~0_combout\;
\bufferSWConj|ALT_INV_saida[0]~0_combout\ <= NOT \bufferSWConj|saida[0]~0_combout\;
\RAM|ALT_INV_dado_out[0]~11_combout\ <= NOT \RAM|dado_out[0]~11_combout\;
\RAM|ALT_INV_dado_out[0]~10_combout\ <= NOT \RAM|dado_out[0]~10_combout\;
\RAM|ALT_INV_dado_out~9_combout\ <= NOT \RAM|dado_out~9_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~71_q\ <= NOT \RAM|ram~71_q\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\CPU|DECODER|ALT_INV_Equal1~2_combout\ <= NOT \CPU|DECODER|Equal1~2_combout\;
\CPU|DECODER|ALT_INV_Equal1~1_combout\ <= NOT \CPU|DECODER|Equal1~1_combout\;
\CPU|FLAGer|ALT_INV_DOUT~q\ <= NOT \CPU|FLAGer|DOUT~q\;
\HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX0_decoder|REG_4bits|DOUT\(2);
\HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX0_decoder|REG_4bits|DOUT\(1);
\HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX0_decoder|REG_4bits|DOUT\(3);
\HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX0_decoder|REG_4bits|DOUT\(0);
\ALT_INV_habLEDconj~0_combout\ <= NOT \habLEDconj~0_combout\;
\RAM|ALT_INV_dado_out[0]~8_combout\ <= NOT \RAM|dado_out[0]~8_combout\;
\ROM|ALT_INV_memROM~21_combout\ <= NOT \ROM|memROM~21_combout\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\CPU|DECODER|ALT_INV_habAcumulador~0_combout\ <= NOT \CPU|DECODER|habAcumulador~0_combout\;
\CPU|DECODER|ALT_INV_Equal1~0_combout\ <= NOT \CPU|DECODER|Equal1~0_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\FFLED9|ALT_INV_DOUT~q\ <= NOT \FFLED9|DOUT~q\;
\FFLED8|ALT_INV_DOUT~q\ <= NOT \FFLED8|DOUT~q\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
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
\RAM|ALT_INV_ram~576_combout\ <= NOT \RAM|ram~576_combout\;
\RAM|ALT_INV_ram~572_combout\ <= NOT \RAM|ram~572_combout\;
\RAM|ALT_INV_ram~568_combout\ <= NOT \RAM|ram~568_combout\;
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

-- Location: IOOBUF_X19_Y0_N2
\valorDado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[0]~16_combout\,
	oe => \RAM|dado_out[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(0));

-- Location: IOOBUF_X25_Y0_N2
\valorDado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[1]~17_combout\,
	oe => \RAM|dado_out[1]~18_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(1));

-- Location: IOOBUF_X25_Y0_N36
\valorDado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[2]~19_combout\,
	oe => \RAM|dado_out[1]~18_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(2));

-- Location: IOOBUF_X25_Y0_N19
\valorDado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[3]~20_combout\,
	oe => \RAM|dado_out[1]~18_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(3));

-- Location: IOOBUF_X54_Y15_N22
\valorDado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[4]~21_combout\,
	oe => \RAM|dado_out[1]~18_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(4));

-- Location: IOOBUF_X25_Y0_N53
\valorDado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[5]~22_combout\,
	oe => \RAM|dado_out[1]~18_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(5));

-- Location: IOOBUF_X54_Y14_N62
\valorDado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[6]~23_combout\,
	oe => \RAM|dado_out[1]~18_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(6));

-- Location: IOOBUF_X19_Y0_N19
\valorDado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[7]~24_combout\,
	oe => \RAM|dado_out[1]~18_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(7));

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X12_Y0_N36
\endROM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_endROM(2));

-- Location: IOOBUF_X11_Y0_N19
\endROM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_endROM(3));

-- Location: IOOBUF_X14_Y0_N36
\endROM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_endROM(4));

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X12_Y45_N36
\endROM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_endROM(6));

-- Location: IOOBUF_X0_Y20_N5
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

-- Location: IOOBUF_X0_Y20_N22
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

-- Location: IOOBUF_X14_Y0_N53
\endRAM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(0));

-- Location: IOOBUF_X16_Y0_N76
\endRAM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(1));

-- Location: IOOBUF_X12_Y0_N53
\endRAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(2));

-- Location: IOOBUF_X18_Y0_N19
\endRAM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(3));

-- Location: IOOBUF_X12_Y0_N2
\endRAM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(4));

-- Location: IOOBUF_X12_Y0_N19
\endRAM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(5));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLEDconj|DOUT\(0),
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
	i => \RegLEDconj|DOUT\(1),
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
	i => \RegLEDconj|DOUT\(2),
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
	i => \RegLEDconj|DOUT\(3),
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
	i => \RegLEDconj|DOUT\(4),
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
	i => \RegLEDconj|DOUT\(5),
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
	i => \RegLEDconj|DOUT\(6),
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
	i => \RegLEDconj|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FFLED8|DOUT~q\,
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
	i => \FFLED9|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X23_Y0_N93
\teste_datain[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(0),
	devoe => ww_devoe,
	o => ww_teste_datain(0));

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X29_Y0_N53
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

-- Location: IOOBUF_X23_Y0_N59
\teste_datain[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(3),
	devoe => ww_devoe,
	o => ww_teste_datain(3));

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X54_Y17_N56
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

-- Location: IOOBUF_X16_Y0_N42
\teste_datain[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(6),
	devoe => ww_devoe,
	o => ww_teste_datain(6));

-- Location: IOOBUF_X16_Y0_N93
\teste_datain[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(7),
	devoe => ww_devoe,
	o => ww_teste_datain(7));

-- Location: IOOBUF_X54_Y18_N96
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: IOOBUF_X0_Y21_N5
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

-- Location: IOOBUF_X24_Y0_N53
\ula_ain[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(0),
	devoe => ww_devoe,
	o => ww_ula_ain(0));

-- Location: IOOBUF_X24_Y0_N2
\ula_ain[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(1),
	devoe => ww_devoe,
	o => ww_ula_ain(1));

-- Location: IOOBUF_X29_Y0_N36
\ula_ain[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(2),
	devoe => ww_devoe,
	o => ww_ula_ain(2));

-- Location: IOOBUF_X23_Y0_N42
\ula_ain[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(3),
	devoe => ww_devoe,
	o => ww_ula_ain(3));

-- Location: IOOBUF_X19_Y0_N53
\ula_ain[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(4),
	devoe => ww_devoe,
	o => ww_ula_ain(4));

-- Location: IOOBUF_X54_Y17_N39
\ula_ain[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(5),
	devoe => ww_devoe,
	o => ww_ula_ain(5));

-- Location: IOOBUF_X16_Y0_N59
\ula_ain[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(6),
	devoe => ww_devoe,
	o => ww_ula_ain(6));

-- Location: IOOBUF_X18_Y0_N53
\ula_ain[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_A|DOUT\(7),
	devoe => ww_devoe,
	o => ww_ula_ain(7));

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X54_Y14_N45
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

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X50_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N19
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

-- Location: IOOBUF_X16_Y45_N42
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

-- Location: IOOBUF_X54_Y14_N96
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

-- Location: IOOBUF_X0_Y21_N22
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

-- Location: IOOBUF_X54_Y15_N5
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

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X14_Y45_N36
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X54_Y16_N39
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

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: FF_X13_Y8_N2
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X13_Y8_N14
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X12_Y8_N30
\CPU|PC_INC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|PC_INC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|PC_INC|Add0~1_sumout\,
	cout => \CPU|PC_INC|Add0~2\);

-- Location: LABCELL_X12_Y8_N33
\CPU|PC_INC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~2\ ))
-- \CPU|PC_INC|Add0~6\ = CARRY(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|PC_INC|Add0~2\,
	sumout => \CPU|PC_INC|Add0~5_sumout\,
	cout => \CPU|PC_INC|Add0~6\);

-- Location: FF_X12_Y8_N28
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y8_N45
\CPU|PC_INC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~18\ ))
-- \CPU|PC_INC|Add0~22\ = CARRY(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|PC_INC|Add0~18\,
	sumout => \CPU|PC_INC|Add0~21_sumout\,
	cout => \CPU|PC_INC|Add0~22\);

-- Location: LABCELL_X12_Y8_N48
\CPU|PC_INC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~22\ ))
-- \CPU|PC_INC|Add0~26\ = CARRY(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU|PC_INC|Add0~22\,
	sumout => \CPU|PC_INC|Add0~25_sumout\,
	cout => \CPU|PC_INC|Add0~26\);

-- Location: LABCELL_X14_Y10_N57
\CPU|DECODER|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~5_combout\ = ( \ROM|memROM~17_combout\ & ( (\ROM|memROM~15_combout\ & (!\ROM|memROM~14_combout\ & !\ROM|memROM~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~19_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \CPU|DECODER|Equal1~5_combout\);

-- Location: FF_X12_Y8_N49
\CPU|END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~25_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(6));

-- Location: FF_X13_Y8_N17
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X12_Y8_N36
\CPU|PC_INC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|PC_INC|Add0~6\ ))
-- \CPU|PC_INC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|PC_INC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|PC_INC|Add0~6\,
	sumout => \CPU|PC_INC|Add0~9_sumout\,
	cout => \CPU|PC_INC|Add0~10\);

-- Location: LABCELL_X12_Y8_N39
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

-- Location: FF_X12_Y8_N40
\CPU|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~13_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(3));

-- Location: FF_X12_Y8_N22
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y8_N45
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[1]~DUPLICATE_q\)) # 
-- (\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010101101000000101010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~7_combout\);

-- Location: MLABCELL_X13_Y8_N30
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & \ROM|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~8_combout\);

-- Location: MLABCELL_X13_Y8_N3
\CPU|MUX_DESVIO|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\ = ( \ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|PC_INC|Add0~13_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|END_RETORNO|DOUT\(3))) # (\CPU|PC|DOUT[2]~1_combout\))) ) ) # ( 
-- !\ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|PC_INC|Add0~13_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & (!\CPU|PC|DOUT[2]~1_combout\ & ((\CPU|END_RETORNO|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datac => \CPU|PC_INC|ALT_INV_Add0~13_sumout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\);

-- Location: FF_X13_Y8_N5
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X12_Y9_N12
\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT\(1))) ) ) # ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT\(1))) # 
-- (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000101101000000000010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~20_combout\);

-- Location: LABCELL_X16_Y9_N0
\ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~22_combout\ = ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \ROM|memROM~22_combout\);

-- Location: LABCELL_X12_Y8_N24
\CPU|MUX_DESVIO|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\ = ( \ROM|memROM~22_combout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|PC_INC|Add0~25_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|END_RETORNO|DOUT\(6))) # (\CPU|PC|DOUT[2]~1_combout\))) ) ) # ( 
-- !\ROM|memROM~22_combout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|PC_INC|Add0~25_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & (!\CPU|PC|DOUT[2]~1_combout\ & ((\CPU|END_RETORNO|DOUT\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~1_combout\,
	datac => \CPU|PC_INC|ALT_INV_Add0~25_sumout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(6),
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\);

-- Location: FF_X12_Y8_N26
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y9_N0
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(0))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~9_combout\);

-- Location: MLABCELL_X13_Y9_N18
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \ROM|memROM~9_combout\ & ( (!\CPU|PC|DOUT\(4) & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~10_combout\);

-- Location: FF_X12_Y8_N20
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y8_N51
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

-- Location: FF_X12_Y8_N53
\CPU|END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~29_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(7));

-- Location: LABCELL_X12_Y8_N18
\CPU|MUX_DESVIO|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\ = ( \CPU|PC_INC|Add0~29_sumout\ & ( (!\CPU|PC|DOUT[2]~0_combout\) # ((!\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~10_combout\)) # (\CPU|DECODER|Equal1~3_combout\ & ((\CPU|END_RETORNO|DOUT\(7))))) ) ) # ( 
-- !\CPU|PC_INC|Add0~29_sumout\ & ( (\CPU|PC|DOUT[2]~0_combout\ & ((!\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~10_combout\)) # (\CPU|DECODER|Equal1~3_combout\ & ((\CPU|END_RETORNO|DOUT\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011111110010111101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(7),
	dataf => \CPU|PC_INC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\);

-- Location: FF_X12_Y8_N19
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X12_Y9_N48
\ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~21_combout\ = ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT\(4))) ) ) # ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(4)) # (\CPU|PC|DOUT\(1))))) # 
-- (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010011100100000001001110000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~21_combout\);

-- Location: LABCELL_X12_Y8_N54
\CPU|PC_INC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|PC_INC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|PC_INC|Add0~30\,
	sumout => \CPU|PC_INC|Add0~33_sumout\);

-- Location: FF_X12_Y8_N55
\CPU|END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~33_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(8));

-- Location: LABCELL_X12_Y8_N0
\CPU|MUX_DESVIO|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\ = ( \CPU|END_RETORNO|DOUT\(8) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|PC_INC|Add0~33_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & (((!\CPU|PC|DOUT[2]~1_combout\)) # 
-- (\ROM|memROM~21_combout\))) ) ) ) # ( !\CPU|END_RETORNO|DOUT\(8) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|PC_INC|Add0~33_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & (\ROM|memROM~21_combout\ & ((\CPU|PC|DOUT[2]~1_combout\)))) ) 
-- ) ) # ( \CPU|END_RETORNO|DOUT\(8) & ( !\ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (\CPU|PC_INC|Add0~33_sumout\)) # (\CPU|PC|DOUT[2]~0_combout\ & ((!\CPU|PC|DOUT[2]~1_combout\))) ) ) ) # ( !\CPU|END_RETORNO|DOUT\(8) & ( 
-- !\ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & \CPU|PC_INC|Add0~33_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110000101000001010000110110101111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \CPU|PC_INC|ALT_INV_Add0~33_sumout\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~1_combout\,
	datae => \CPU|END_RETORNO|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\);

-- Location: FF_X12_Y8_N2
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X12_Y8_N9
\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(3))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~18_combout\);

-- Location: LABCELL_X12_Y8_N15
\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = ( \ROM|memROM~18_combout\ & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(8) & !\CPU|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \ROM|memROM~19_combout\);

-- Location: LABCELL_X14_Y10_N54
\CPU|DECODER|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~3_combout\ = ( !\ROM|memROM~14_combout\ & ( (\ROM|memROM~19_combout\ & (!\ROM|memROM~15_combout\ & \ROM|memROM~17_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|DECODER|Equal1~3_combout\);

-- Location: LABCELL_X12_Y8_N42
\CPU|PC_INC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|PC_INC|Add0~14\ ))
-- \CPU|PC_INC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|PC_INC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|PC_INC|Add0~14\,
	sumout => \CPU|PC_INC|Add0~17_sumout\,
	cout => \CPU|PC_INC|Add0~18\);

-- Location: FF_X12_Y8_N44
\CPU|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~17_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(4));

-- Location: LABCELL_X12_Y8_N21
\CPU|MUX_DESVIO|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\ = ( \CPU|PC|DOUT[2]~0_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~10_combout\)) # (\CPU|DECODER|Equal1~3_combout\ & ((\CPU|END_RETORNO|DOUT\(4)))) ) ) # ( !\CPU|PC|DOUT[2]~0_combout\ & ( 
-- \CPU|PC_INC|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(4),
	datad => \CPU|PC_INC|ALT_INV_Add0~17_sumout\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\);

-- Location: FF_X12_Y8_N23
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: FF_X12_Y8_N46
\CPU|END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~21_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(5));

-- Location: MLABCELL_X13_Y8_N33
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(3))))) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & 
-- ((!\CPU|PC|DOUT\(4)) # (\CPU|PC|DOUT[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000110100000000000000000100010000000000010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~11_combout\);

-- Location: MLABCELL_X13_Y8_N21
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~12_combout\);

-- Location: LABCELL_X12_Y8_N27
\CPU|MUX_DESVIO|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\ = ( \ROM|memROM~12_combout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|PC_INC|Add0~21_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|END_RETORNO|DOUT\(5))) # (\CPU|PC|DOUT[2]~1_combout\))) ) ) # ( 
-- !\ROM|memROM~12_combout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|PC_INC|Add0~21_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & (!\CPU|PC|DOUT[2]~1_combout\ & (\CPU|END_RETORNO|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~1_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(5),
	datad => \CPU|PC_INC|ALT_INV_Add0~21_sumout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\);

-- Location: FF_X12_Y8_N29
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: FF_X12_Y8_N25
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X12_Y8_N6
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & !\CPU|PC|DOUT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~0_combout\);

-- Location: MLABCELL_X13_Y8_N18
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) $ (((\CPU|PC|DOUT[1]~DUPLICATE_q\) # (\CPU|PC|DOUT\(0)))))) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT\(3) $ (((\CPU|PC|DOUT[1]~DUPLICATE_q\) # (\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT[4]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000100101010100100010010101010000000001010101000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~3_combout\);

-- Location: LABCELL_X14_Y8_N9
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);

-- Location: FF_X12_Y8_N34
\CPU|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~5_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(1));

-- Location: MLABCELL_X13_Y8_N0
\CPU|MUX_DESVIO|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\ = ( \CPU|END_RETORNO|DOUT\(1) & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|PC_INC|Add0~5_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & ((!\CPU|PC|DOUT[2]~1_combout\) # ((\ROM|memROM~4_combout\)))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(1) & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|PC_INC|Add0~5_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & (\CPU|PC|DOUT[2]~1_combout\ & ((\ROM|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datac => \CPU|PC_INC|ALT_INV_Add0~5_sumout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \CPU|END_RETORNO|ALT_INV_DOUT\(1),
	combout => \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\);

-- Location: FF_X13_Y8_N1
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X12_Y9_N30
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \CPU|PC|DOUT\(3) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ $ (!\CPU|PC|DOUT[0]~DUPLICATE_q\))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # 
-- (\CPU|PC|DOUT[2]~DUPLICATE_q\))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(4) & (((!\CPU|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- ((\CPU|PC|DOUT[0]~DUPLICATE_q\) # (\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101010011000111100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~15_combout\);

-- Location: MLABCELL_X13_Y8_N54
\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( \CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3))) ) ) # ( !\CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~16_combout\);

-- Location: LABCELL_X12_Y9_N15
\CPU|DECODER|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~1_combout\ = ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~13_combout\ & ((!\ROM|memROM~16_combout\) # (\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|DECODER|Equal1~1_combout\);

-- Location: MLABCELL_X13_Y10_N15
\CPU|DECODER|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~2_combout\ = ( \CPU|DECODER|Equal1~1_combout\ & ( (!\ROM|memROM~19_combout\ & !\ROM|memROM~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	combout => \CPU|DECODER|Equal1~2_combout\);

-- Location: LABCELL_X14_Y10_N33
\CPU|DECODER|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~4_combout\ = ( !\ROM|memROM~14_combout\ & ( (!\ROM|memROM~17_combout\ & (!\ROM|memROM~15_combout\ & \ROM|memROM~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|DECODER|Equal1~4_combout\);

-- Location: MLABCELL_X13_Y9_N0
\CPU|DECODER|habAcumulador~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|habAcumulador~0_combout\ = ( !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~14_combout\ & ((\ROM|memROM~15_combout\) # (\ROM|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \CPU|DECODER|habAcumulador~0_combout\);

-- Location: MLABCELL_X13_Y10_N39
\CPU|DECODER|saida[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida\(5) = ( \CPU|DECODER|habAcumulador~0_combout\ ) # ( !\CPU|DECODER|habAcumulador~0_combout\ & ( \CPU|DECODER|Equal1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	dataf => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	combout => \CPU|DECODER|saida\(5));

-- Location: FF_X14_Y9_N44
\CPU|REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~13_sumout\,
	asdata => \ROM|memROM~8_combout\,
	sload => \CPU|DECODER|Equal1~2_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(3));

-- Location: MLABCELL_X13_Y8_N51
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1)))) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3)))) # 
-- (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & \CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100000110000000010000000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X12_Y8_N12
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~2_combout\);

-- Location: LABCELL_X12_Y9_N6
\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~20_combout\ & ( \ROM|memROM~0_combout\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(4)) ) ) ) # ( \ROM|memROM~21_combout\ 
-- & ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~0_combout\ ) ) ) # ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~20_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~9_combout\ & !\CPU|PC|DOUT\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000010101010101010101010101000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM|process_0~0_combout\);

-- Location: MLABCELL_X13_Y7_N54
\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( \CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(4)))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(3) & 
-- (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(4)))) ) ) ) # ( \CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & \CPU|PC|DOUT\(4)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & \CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000001000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \RAM|ram~561_combout\);

-- Location: MLABCELL_X13_Y7_N15
\RAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~562_combout\ = ( \RAM|ram~561_combout\ & ( !\ROM|memROM~19_combout\ & ( (!\RAM|process_0~0_combout\ & (\ROM|memROM~15_combout\ & \CPU|DECODER|Equal1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datae => \RAM|ALT_INV_ram~561_combout\,
	dataf => \ROM|ALT_INV_memROM~19_combout\,
	combout => \RAM|ram~562_combout\);

-- Location: FF_X14_Y8_N56
\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

-- Location: MLABCELL_X13_Y8_N24
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ $ (\CPU|PC|DOUT\(3)))) # 
-- (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & \CPU|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000111100110000000011110000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~5_combout\);

-- Location: MLABCELL_X13_Y8_N6
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

-- Location: MLABCELL_X13_Y7_N6
\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( \CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(4) & \ROM|memROM~0_combout\) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(4) & (\ROM|memROM~0_combout\ & ((!\CPU|PC|DOUT\(3)) # 
-- (\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( \CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(2) & ( (\ROM|memROM~0_combout\ & ((!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # (\CPU|PC|DOUT\(4)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(2) & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(4) & \CPU|PC|DOUT[0]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000110000011100000011000001000000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \RAM|ram~557_combout\);

-- Location: MLABCELL_X13_Y7_N48
\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = ( !\RAM|ram~557_combout\ & ( (!\ROM|memROM~19_combout\ & (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~15_combout\ & !\RAM|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~557_combout\,
	combout => \RAM|ram~558_combout\);

-- Location: FF_X14_Y8_N2
\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: LABCELL_X14_Y8_N0
\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \ROM|memROM~4_combout\ & ( (\RAM|ram~34_q\ & !\ROM|memROM~6_combout\) ) ) # ( !\ROM|memROM~4_combout\ & ( (!\ROM|memROM~6_combout\ & \RAM|ram~18_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~34_q\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~18_q\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~535_combout\);

-- Location: LABCELL_X14_Y8_N3
\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~8_combout\ & \RAM|ram~535_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~535_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~536_combout\);

-- Location: LABCELL_X16_Y8_N39
\RAM|ram~74feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~74feeder_combout\ = ( \CPU|REG_A|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	combout => \RAM|ram~74feeder_combout\);

-- Location: MLABCELL_X13_Y7_N36
\RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~563_combout\ = ( \ROM|memROM~0_combout\ & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \RAM|ram~563_combout\);

-- Location: MLABCELL_X13_Y7_N18
\RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~564_combout\ = ( !\RAM|process_0~0_combout\ & ( !\ROM|memROM~19_combout\ & ( (\RAM|ram~563_combout\ & (\ROM|memROM~15_combout\ & \CPU|DECODER|Equal1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~563_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~19_combout\,
	combout => \RAM|ram~564_combout\);

-- Location: FF_X16_Y8_N41
\RAM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~74feeder_combout\,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~74_q\);

-- Location: MLABCELL_X13_Y7_N42
\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = ( \ROM|memROM~0_combout\ & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( \ROM|memROM~0_combout\ & ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \RAM|ram~559_combout\);

-- Location: MLABCELL_X13_Y7_N51
\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( \RAM|ram~559_combout\ & ( (!\ROM|memROM~19_combout\ & (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~15_combout\ & !\RAM|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~559_combout\,
	combout => \RAM|ram~560_combout\);

-- Location: FF_X16_Y8_N29
\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

-- Location: LABCELL_X16_Y8_N27
\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \RAM|ram~26_q\ & ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~8_combout\ & ((!\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\))) # (\ROM|memROM~6_combout\ & (\RAM|ram~74_q\ & \ROM|memROM~4_combout\)))) ) ) ) # ( 
-- !\RAM|ram~26_q\ & ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~6_combout\ & (\RAM|ram~74_q\ & (\ROM|memROM~4_combout\ & !\ROM|memROM~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000101000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \RAM|ALT_INV_ram~74_q\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \RAM|ALT_INV_ram~26_q\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~537_combout\);

-- Location: LABCELL_X14_Y8_N39
\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \RAM|ram~537_combout\ & ( (!\ROM|memROM~12_combout\ & ((\RAM|ram~536_combout\) # (\ROM|memROM~2_combout\))) ) ) # ( !\RAM|ram~537_combout\ & ( (!\ROM|memROM~12_combout\ & (!\ROM|memROM~2_combout\ & \RAM|ram~536_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~536_combout\,
	dataf => \RAM|ALT_INV_ram~537_combout\,
	combout => \RAM|ram~538_combout\);

-- Location: LABCELL_X14_Y8_N30
\RAM|dado_out[3]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[3]~20_combout\ = ( \RAM|ram~538_combout\ ) # ( !\RAM|ram~538_combout\ & ( !\RAM|dado_out~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \RAM|ALT_INV_ram~538_combout\,
	combout => \RAM|dado_out[3]~20_combout\);

-- Location: FF_X14_Y7_N56
\RAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~73_q\);

-- Location: LABCELL_X14_Y7_N54
\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \RAM|ram~73_q\ & ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~8_combout\ & (\ROM|memROM~4_combout\ & \ROM|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~73_q\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~533_combout\);

-- Location: FF_X14_Y7_N53
\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

-- Location: LABCELL_X16_Y7_N6
\RAM|ram~17feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~17feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \RAM|ram~17feeder_combout\);

-- Location: FF_X16_Y7_N7
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~17feeder_combout\,
	ena => \RAM|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: FF_X14_Y7_N26
\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

-- Location: LABCELL_X14_Y7_N24
\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \RAM|ram~33_q\ & ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~4_combout\) # (\RAM|ram~17_q\) ) ) ) # ( !\RAM|ram~33_q\ & ( !\ROM|memROM~10_combout\ & ( (\RAM|ram~17_q\ & !\ROM|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~17_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_ram~33_q\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~532_combout\);

-- Location: LABCELL_X14_Y7_N51
\RAM|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~572_combout\ = ( \RAM|ram~25_q\ & ( \RAM|ram~532_combout\ & ( (!\ROM|memROM~8_combout\ & ((!\ROM|memROM~2_combout\) # ((!\ROM|memROM~10_combout\ & !\ROM|memROM~4_combout\)))) ) ) ) # ( !\RAM|ram~25_q\ & ( \RAM|ram~532_combout\ & ( 
-- (!\ROM|memROM~8_combout\ & !\ROM|memROM~2_combout\) ) ) ) # ( \RAM|ram~25_q\ & ( !\RAM|ram~532_combout\ & ( (!\ROM|memROM~8_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000010001000100010001010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_ram~25_q\,
	dataf => \RAM|ALT_INV_ram~532_combout\,
	combout => \RAM|ram~572_combout\);

-- Location: LABCELL_X14_Y7_N18
\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \RAM|ram~533_combout\ & ( \RAM|ram~572_combout\ & ( !\ROM|memROM~12_combout\ ) ) ) # ( !\RAM|ram~533_combout\ & ( \RAM|ram~572_combout\ & ( (!\ROM|memROM~6_combout\ & !\ROM|memROM~12_combout\) ) ) ) # ( \RAM|ram~533_combout\ & ( 
-- !\RAM|ram~572_combout\ & ( (\ROM|memROM~6_combout\ & !\ROM|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011110000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \RAM|ALT_INV_ram~533_combout\,
	dataf => \RAM|ALT_INV_ram~572_combout\,
	combout => \RAM|ram~534_combout\);

-- Location: LABCELL_X14_Y7_N3
\RAM|dado_out[2]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[2]~19_combout\ = ( \RAM|dado_out~9_combout\ & ( \RAM|ram~534_combout\ ) ) # ( !\RAM|dado_out~9_combout\ & ( \RAM|ram~534_combout\ ) ) # ( !\RAM|dado_out~9_combout\ & ( !\RAM|ram~534_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \RAM|ALT_INV_ram~534_combout\,
	combout => \RAM|dado_out[2]~19_combout\);

-- Location: FF_X13_Y9_N32
\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: FF_X13_Y8_N38
\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

-- Location: MLABCELL_X13_Y8_N36
\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \RAM|ram~24_q\ & ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~8_combout\ & ((\ROM|memROM~2_combout\) # (\RAM|ram~16_q\)))) ) ) ) # ( !\RAM|ram~24_q\ & ( !\ROM|memROM~10_combout\ & ( (\RAM|ram~16_q\ & 
-- (!\ROM|memROM~6_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \RAM|ALT_INV_ram~24_q\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~529_combout\);

-- Location: FF_X14_Y8_N26
\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

-- Location: LABCELL_X14_Y8_N24
\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~8_combout\ & \RAM|ram~32_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~32_q\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~530_combout\);

-- Location: FF_X14_Y8_N20
\RAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~72_q\);

-- Location: LABCELL_X14_Y8_N18
\RAM|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~576_combout\ = ( \RAM|ram~72_q\ & ( \ROM|memROM~10_combout\ & ( (!\ROM|memROM~6_combout\ & (\RAM|ram~530_combout\ & !\ROM|memROM~2_combout\)) ) ) ) # ( !\RAM|ram~72_q\ & ( \ROM|memROM~10_combout\ & ( (!\ROM|memROM~6_combout\ & 
-- (\RAM|ram~530_combout\ & !\ROM|memROM~2_combout\)) ) ) ) # ( \RAM|ram~72_q\ & ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~6_combout\ & (((\RAM|ram~530_combout\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~6_combout\ & (!\ROM|memROM~8_combout\ & 
-- ((\ROM|memROM~2_combout\)))) ) ) ) # ( !\RAM|ram~72_q\ & ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~6_combout\ & (\RAM|ram~530_combout\ & !\ROM|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000010001000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~530_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~72_q\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~576_combout\);

-- Location: LABCELL_X14_Y8_N27
\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \RAM|ram~576_combout\ & ( (!\ROM|memROM~12_combout\ & ((\RAM|ram~529_combout\) # (\ROM|memROM~4_combout\))) ) ) # ( !\RAM|ram~576_combout\ & ( (!\ROM|memROM~12_combout\ & (!\ROM|memROM~4_combout\ & \RAM|ram~529_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~529_combout\,
	dataf => \RAM|ALT_INV_ram~576_combout\,
	combout => \RAM|ram~531_combout\);

-- Location: LABCELL_X14_Y8_N48
\RAM|dado_out[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~17_combout\ = ( \RAM|dado_out~9_combout\ & ( \RAM|ram~531_combout\ ) ) # ( !\RAM|dado_out~9_combout\ & ( \RAM|ram~531_combout\ ) ) # ( !\RAM|dado_out~9_combout\ & ( !\RAM|ram~531_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \RAM|ALT_INV_ram~531_combout\,
	combout => \RAM|dado_out[1]~17_combout\);

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

-- Location: MLABCELL_X13_Y9_N3
\habHEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~0_combout\ = ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~3_combout\ & (!\ROM|memROM~1_combout\ & \ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \habHEX0~0_combout\);

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

-- Location: MLABCELL_X13_Y10_N0
\habLED8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLED8~0_combout\ = ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \habLED8~0_combout\);

-- Location: LABCELL_X12_Y9_N57
\RAM|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~8_combout\ = ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(4) & (\ROM|memROM~21_combout\ & !\ROM|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM|dado_out[0]~8_combout\);

-- Location: MLABCELL_X13_Y9_N42
\RAM|dado_out[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~10_combout\ = ( \ROM|memROM~15_combout\ & ( (!\ROM|memROM~14_combout\ & (!\ROM|memROM~17_combout\ & \RAM|dado_out[0]~8_combout\)) ) ) # ( !\ROM|memROM~15_combout\ & ( (!\ROM|memROM~14_combout\ & (\RAM|dado_out[0]~8_combout\ & 
-- (!\ROM|memROM~17_combout\ $ (!\ROM|memROM~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000010100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~8_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \RAM|dado_out[0]~10_combout\);

-- Location: MLABCELL_X13_Y9_N36
\RAM|dado_out[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~12_combout\ = ( \habLED8~0_combout\ & ( \RAM|dado_out[0]~10_combout\ & ( (!\ROM|memROM~6_combout\ & (((!\SW[8]~input_o\)))) # (\ROM|memROM~6_combout\ & (!\FPGA_RESET_N~input_o\ & (\habHEX0~0_combout\))) ) ) ) # ( !\habLED8~0_combout\ & ( 
-- \RAM|dado_out[0]~10_combout\ & ( (\ROM|memROM~6_combout\ & (!\FPGA_RESET_N~input_o\ & \habHEX0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001001010111000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ALT_INV_FPGA_RESET_N~input_o\,
	datac => \ALT_INV_habHEX0~0_combout\,
	datad => \ALT_INV_SW[8]~input_o\,
	datae => \ALT_INV_habLED8~0_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~10_combout\,
	combout => \RAM|dado_out[0]~12_combout\);

-- Location: MLABCELL_X13_Y9_N33
\RAM|dado_out[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~11_combout\ = ( \ROM|memROM~12_combout\ & ( \RAM|dado_out[0]~10_combout\ & ( (!\ROM|memROM~6_combout\) # (((!\ROM|memROM~2_combout\ & !\ROM|memROM~4_combout\)) # (\RAM|dado_out~9_combout\)) ) ) ) # ( !\ROM|memROM~12_combout\ & ( 
-- \RAM|dado_out[0]~10_combout\ & ( ((!\ROM|memROM~6_combout\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~4_combout\)))) # (\RAM|dado_out~9_combout\) ) ) ) # ( \ROM|memROM~12_combout\ & ( !\RAM|dado_out[0]~10_combout\ & ( \RAM|dado_out~9_combout\ ) ) ) # ( 
-- !\ROM|memROM~12_combout\ & ( !\RAM|dado_out[0]~10_combout\ & ( \RAM|dado_out~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110101000111111111110101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_dado_out~9_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~10_combout\,
	combout => \RAM|dado_out[0]~11_combout\);

-- Location: MLABCELL_X13_Y9_N12
\CPU|DECODER|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~0_combout\ = ( \ROM|memROM~17_combout\ & ( (!\ROM|memROM~19_combout\ & (!\ROM|memROM~15_combout\ & !\ROM|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \CPU|DECODER|Equal1~0_combout\);

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

-- Location: LABCELL_X12_Y10_N15
\habLED9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLED9~0_combout\ = ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~1_combout\ & ( (\ROM|memROM~0_combout\ & !\ROM|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \habLED9~0_combout\);

-- Location: MLABCELL_X13_Y9_N51
\bufferSW9|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW9|saida[0]~0_combout\ = ( !\SW[9]~input_o\ & ( \habLED9~0_combout\ & ( (!\ROM|memROM~6_combout\ & (\RAM|dado_out[0]~8_combout\ & ((\CPU|DECODER|habAcumulador~0_combout\) # (\CPU|DECODER|Equal1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datad => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_habLED9~0_combout\,
	combout => \bufferSW9|saida[0]~0_combout\);

-- Location: MLABCELL_X13_Y10_N36
\habLEDconj~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLEDconj~0_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~0_combout\ ) ) # ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~0_combout\ & ((\ROM|memROM~1_combout\) # (\ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \habLEDconj~0_combout\);

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

-- Location: MLABCELL_X13_Y10_N24
\bufferSWConj|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSWConj|saida[0]~0_combout\ = ( \CPU|DECODER|Equal1~0_combout\ & ( \CPU|DECODER|habAcumulador~0_combout\ & ( (!\habLEDconj~0_combout\ & (!\SW[0]~input_o\ & (!\ROM|memROM~6_combout\ & \RAM|dado_out[0]~8_combout\))) ) ) ) # ( 
-- !\CPU|DECODER|Equal1~0_combout\ & ( \CPU|DECODER|habAcumulador~0_combout\ & ( (!\habLEDconj~0_combout\ & (!\SW[0]~input_o\ & (!\ROM|memROM~6_combout\ & \RAM|dado_out[0]~8_combout\))) ) ) ) # ( \CPU|DECODER|Equal1~0_combout\ & ( 
-- !\CPU|DECODER|habAcumulador~0_combout\ & ( (!\habLEDconj~0_combout\ & (!\SW[0]~input_o\ & (!\ROM|memROM~6_combout\ & \RAM|dado_out[0]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habLEDconj~0_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datae => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	combout => \bufferSWConj|saida[0]~0_combout\);

-- Location: MLABCELL_X13_Y9_N9
\habSWconj~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habSWconj~0_combout\ = ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~19_combout\ & ( (!\ROM|memROM~17_combout\ & (\RAM|dado_out[0]~8_combout\ & !\ROM|memROM~14_combout\)) ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~19_combout\ & ( 
-- (\RAM|dado_out[0]~8_combout\ & (!\ROM|memROM~14_combout\ & (!\ROM|memROM~15_combout\ $ (!\ROM|memROM~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000000000000000000000000001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~19_combout\,
	combout => \habSWconj~0_combout\);

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

-- Location: MLABCELL_X9_Y6_N33
\detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \detectorSub0|saidaQ~0_combout\);

-- Location: FF_X9_Y6_N35
\detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub0|saidaQ~q\);

-- Location: MLABCELL_X9_Y6_N12
\detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saida~combout\ = LCELL(( !\KEY[0]~input_o\ & ( !\detectorSub0|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \detectorSub0|ALT_INV_saidaQ~q\,
	combout => \detectorSub0|saida~combout\);

-- Location: LABCELL_X12_Y9_N51
\FF_Debouncer|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_Debouncer|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \FF_Debouncer|DOUT~feeder_combout\);

-- Location: LABCELL_X12_Y9_N3
\ADDR_511~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_511~0_combout\ = ( \ROM|memROM~11_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ADDR_511~0_combout\);

-- Location: LABCELL_X12_Y9_N42
\ADDR_511~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_511~1_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~21_combout\ & ( (\ROM|memROM~7_combout\ & (!\CPU|PC|DOUT\(4) & (\ROM|memROM~0_combout\ & \ROM|memROM~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \ADDR_511~1_combout\);

-- Location: LABCELL_X12_Y9_N36
ADDR_511 : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_511~combout\ = ( \ADDR_511~1_combout\ & ( !\ROM|memROM~19_combout\ & ( (\ROM|memROM~6_combout\ & (\ROM|memROM~15_combout\ & (\ADDR_511~0_combout\ & \CPU|DECODER|Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ALT_INV_ADDR_511~0_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datae => \ALT_INV_ADDR_511~1_combout\,
	dataf => \ROM|ALT_INV_memROM~19_combout\,
	combout => \ADDR_511~combout\);

-- Location: FF_X12_Y9_N53
\FF_Debouncer|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \FF_Debouncer|DOUT~feeder_combout\,
	clrn => \ALT_INV_ADDR_511~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_Debouncer|DOUT~q\);

-- Location: LABCELL_X12_Y9_N18
\RAM|dado_out[0]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~26_combout\ = ( \ROM|memROM~11_combout\ & ( \FF_Debouncer|DOUT~q\ & ( (\ROM|memROM~0_combout\ & (!\KEY[3]~input_o\ & (\ROM|memROM~3_combout\ & \ROM|memROM~1_combout\))) ) ) ) # ( \ROM|memROM~11_combout\ & ( !\FF_Debouncer|DOUT~q\ & ( 
-- (\ROM|memROM~0_combout\ & ((!\ROM|memROM~3_combout\ & ((!\ROM|memROM~1_combout\))) # (\ROM|memROM~3_combout\ & (!\KEY[3]~input_o\ & \ROM|memROM~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \FF_Debouncer|ALT_INV_DOUT~q\,
	combout => \RAM|dado_out[0]~26_combout\);

-- Location: FF_X13_Y8_N44
\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

-- Location: MLABCELL_X13_Y8_N27
\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( \ROM|memROM~5_combout\ & ( (\CPU|PC|DOUT[4]~DUPLICATE_q\ & \RAM|ram~31_q\) ) ) # ( !\ROM|memROM~5_combout\ & ( (\RAM|ram~31_q\ & ((!\ROM|memROM~7_combout\) # (\CPU|PC|DOUT[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000011110000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \RAM|ALT_INV_ram~31_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~565_combout\);

-- Location: FF_X13_Y9_N41
\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: LABCELL_X12_Y9_N54
\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = ( \ROM|memROM~5_combout\ & ( (\RAM|ram~15_q\ & ((!\ROM|memROM~0_combout\) # (\CPU|PC|DOUT\(4)))) ) ) # ( !\ROM|memROM~5_combout\ & ( (\RAM|ram~15_q\ & ((!\ROM|memROM~0_combout\) # ((!\ROM|memROM~7_combout\) # (\CPU|PC|DOUT\(4))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001011000011110000101100001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \RAM|ALT_INV_ram~15_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~567_combout\);

-- Location: LABCELL_X16_Y9_N36
\RAM|ram~23feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~23feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~23feeder_combout\);

-- Location: FF_X16_Y9_N38
\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~23feeder_combout\,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

-- Location: FF_X16_Y9_N44
\RAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~71_q\);

-- Location: LABCELL_X16_Y9_N48
\RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~566_combout\ = ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( (\RAM|ram~71_q\ & (\ROM|memROM~5_combout\ & !\CPU|PC|DOUT\(4))) ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( (\RAM|ram~23_q\ & \CPU|PC|DOUT\(4)) ) ) ) # ( 
-- !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( (\RAM|ram~23_q\ & ((!\ROM|memROM~5_combout\) # (\CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101000000000101010100000011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datab => \RAM|ALT_INV_ram~71_q\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~566_combout\);

-- Location: LABCELL_X12_Y9_N24
\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \RAM|ram~567_combout\ & ( \RAM|ram~566_combout\ & ( (!\ROM|memROM~0_combout\) # (((!\ROM|memROM~3_combout\) # (\RAM|ram~565_combout\)) # (\ROM|memROM~1_combout\)) ) ) ) # ( !\RAM|ram~567_combout\ & ( \RAM|ram~566_combout\ & ( 
-- (\ROM|memROM~0_combout\ & (((\RAM|ram~565_combout\ & \ROM|memROM~3_combout\)) # (\ROM|memROM~1_combout\))) ) ) ) # ( \RAM|ram~567_combout\ & ( !\RAM|ram~566_combout\ & ( (!\ROM|memROM~0_combout\) # ((!\ROM|memROM~1_combout\ & ((!\ROM|memROM~3_combout\) # 
-- (\RAM|ram~565_combout\)))) ) ) ) # ( !\RAM|ram~567_combout\ & ( !\RAM|ram~566_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~1_combout\ & (\RAM|ram~565_combout\ & \ROM|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111011101010111000010001000101011111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \RAM|ALT_INV_ram~565_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \RAM|ALT_INV_ram~567_combout\,
	dataf => \RAM|ALT_INV_ram~566_combout\,
	combout => \RAM|ram~527_combout\);

-- Location: MLABCELL_X13_Y9_N45
\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \RAM|ram~527_combout\ & ( (!\ROM|memROM~10_combout\ & !\ROM|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \RAM|ALT_INV_ram~527_combout\,
	combout => \RAM|ram~528_combout\);

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

-- Location: MLABCELL_X13_Y8_N57
\habHEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX2~0_combout\ = ( !\ROM|memROM~1_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~3_combout\ & \ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \habHEX2~0_combout\);

-- Location: MLABCELL_X13_Y9_N48
\bufferKEY2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY2|saida[0]~0_combout\ = ( !\KEY[2]~input_o\ & ( \habHEX2~0_combout\ & ( (!\ROM|memROM~6_combout\ & (\RAM|dado_out[0]~8_combout\ & ((\CPU|DECODER|Equal1~0_combout\) # (\CPU|DECODER|habAcumulador~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datac => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_habHEX2~0_combout\,
	combout => \bufferKEY2|saida[0]~0_combout\);

-- Location: MLABCELL_X13_Y9_N21
\RAM|dado_out[0]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~27_combout\ = ( !\bufferKEY2|saida[0]~0_combout\ & ( (!\RAM|dado_out~9_combout\ & ((!\habSWconj~0_combout\) # ((!\RAM|dado_out[0]~26_combout\)))) # (\RAM|dado_out~9_combout\ & (\RAM|ram~528_combout\ & ((!\habSWconj~0_combout\) # 
-- (!\RAM|dado_out[0]~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100011111100101010001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~9_combout\,
	datab => \ALT_INV_habSWconj~0_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~26_combout\,
	datad => \RAM|ALT_INV_ram~528_combout\,
	dataf => \bufferKEY2|ALT_INV_saida[0]~0_combout\,
	combout => \RAM|dado_out[0]~27_combout\);

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

-- Location: MLABCELL_X13_Y10_N21
\habHEX5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX5~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~11_combout\ & ( (\ROM|memROM~0_combout\ & !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \habHEX5~0_combout\);

-- Location: MLABCELL_X13_Y10_N48
\bufferKEY1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY1|saida[0]~0_combout\ = ( \CPU|DECODER|Equal1~0_combout\ & ( \CPU|DECODER|habAcumulador~0_combout\ & ( (!\ROM|memROM~6_combout\ & (!\KEY[1]~input_o\ & (\habHEX5~0_combout\ & \RAM|dado_out[0]~8_combout\))) ) ) ) # ( 
-- !\CPU|DECODER|Equal1~0_combout\ & ( \CPU|DECODER|habAcumulador~0_combout\ & ( (!\ROM|memROM~6_combout\ & (!\KEY[1]~input_o\ & (\habHEX5~0_combout\ & \RAM|dado_out[0]~8_combout\))) ) ) ) # ( \CPU|DECODER|Equal1~0_combout\ & ( 
-- !\CPU|DECODER|habAcumulador~0_combout\ & ( (!\ROM|memROM~6_combout\ & (!\KEY[1]~input_o\ & (\habHEX5~0_combout\ & \RAM|dado_out[0]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_habHEX5~0_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datae => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	combout => \bufferKEY1|saida[0]~0_combout\);

-- Location: LABCELL_X14_Y9_N12
\RAM|dado_out[0]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~25_combout\ = ( \RAM|dado_out[0]~27_combout\ & ( \bufferKEY1|saida[0]~0_combout\ & ( !\RAM|dado_out[0]~11_combout\ ) ) ) # ( !\RAM|dado_out[0]~27_combout\ & ( \bufferKEY1|saida[0]~0_combout\ & ( !\RAM|dado_out[0]~11_combout\ ) ) ) # ( 
-- \RAM|dado_out[0]~27_combout\ & ( !\bufferKEY1|saida[0]~0_combout\ & ( (!\RAM|dado_out[0]~11_combout\) # ((!\RAM|dado_out[0]~12_combout\ & (!\bufferSW9|saida[0]~0_combout\ & !\bufferSWConj|saida[0]~0_combout\))) ) ) ) # ( !\RAM|dado_out[0]~27_combout\ & ( 
-- !\bufferKEY1|saida[0]~0_combout\ & ( !\RAM|dado_out[0]~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[0]~12_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~11_combout\,
	datac => \bufferSW9|ALT_INV_saida[0]~0_combout\,
	datad => \bufferSWConj|ALT_INV_saida[0]~0_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~27_combout\,
	dataf => \bufferKEY1|ALT_INV_saida[0]~0_combout\,
	combout => \RAM|dado_out[0]~25_combout\);

-- Location: LABCELL_X14_Y9_N30
\CPU|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~34_cout\ = CARRY(( !\CPU|DECODER|Equal1~4_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	cin => GND,
	cout => \CPU|ULA|Add0~34_cout\);

-- Location: LABCELL_X14_Y9_N33
\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( \CPU|REG_A|DOUT\(0) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[0]~25_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|ULA|Add0~34_cout\ 
-- ))
-- \CPU|ULA|Add0~2\ = CARRY(( \CPU|REG_A|DOUT\(0) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[0]~25_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(0),
	dataf => \RAM|ALT_INV_dado_out[0]~25_combout\,
	cin => \CPU|ULA|Add0~34_cout\,
	sumout => \CPU|ULA|Add0~1_sumout\,
	cout => \CPU|ULA|Add0~2\);

-- Location: FF_X14_Y9_N35
\CPU|REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~1_sumout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DECODER|Equal1~2_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(0));

-- Location: LABCELL_X14_Y9_N36
\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( \CPU|REG_A|DOUT\(1) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[1]~17_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|ULA|Add0~2\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( \CPU|REG_A|DOUT\(1) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[1]~17_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(1),
	dataf => \RAM|ALT_INV_dado_out[1]~17_combout\,
	cin => \CPU|ULA|Add0~2\,
	sumout => \CPU|ULA|Add0~5_sumout\,
	cout => \CPU|ULA|Add0~6\);

-- Location: FF_X14_Y9_N38
\CPU|REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~5_sumout\,
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|DECODER|Equal1~2_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(1));

-- Location: LABCELL_X14_Y9_N39
\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( \CPU|REG_A|DOUT\(2) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[2]~19_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~6_combout\)))) ) + ( \CPU|ULA|Add0~6\ ))
-- \CPU|ULA|Add0~10\ = CARRY(( \CPU|REG_A|DOUT\(2) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[2]~19_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~6_combout\)))) ) + ( \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(2),
	dataf => \RAM|ALT_INV_dado_out[2]~19_combout\,
	cin => \CPU|ULA|Add0~6\,
	sumout => \CPU|ULA|Add0~9_sumout\,
	cout => \CPU|ULA|Add0~10\);

-- Location: FF_X14_Y9_N41
\CPU|REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~9_sumout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DECODER|Equal1~2_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(2));

-- Location: LABCELL_X14_Y9_N42
\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( \CPU|REG_A|DOUT\(3) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[3]~20_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~8_combout\)))) ) + ( \CPU|ULA|Add0~10\ ))
-- \CPU|ULA|Add0~14\ = CARRY(( \CPU|REG_A|DOUT\(3) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[3]~20_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~8_combout\)))) ) + ( \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(3),
	dataf => \RAM|ALT_INV_dado_out[3]~20_combout\,
	cin => \CPU|ULA|Add0~10\,
	sumout => \CPU|ULA|Add0~13_sumout\,
	cout => \CPU|ULA|Add0~14\);

-- Location: LABCELL_X14_Y9_N0
\CPU|ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[3]~3_combout\ = ( \CPU|ULA|Add0~13_sumout\ & ( (!\CPU|DECODER|Equal1~2_combout\) # (\ROM|memROM~8_combout\) ) ) # ( !\CPU|ULA|Add0~13_sumout\ & ( (\CPU|DECODER|Equal1~2_combout\ & \ROM|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \CPU|ULA|ALT_INV_Add0~13_sumout\,
	combout => \CPU|ULA|saida[3]~3_combout\);

-- Location: LABCELL_X10_Y9_N3
\CPU|FLAGer|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~0_combout\ = ( \CPU|FLAGer|DOUT~q\ & ( !\CPU|DECODER|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|FLAGer|ALT_INV_DOUT~q\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	combout => \CPU|FLAGer|DOUT~0_combout\);

-- Location: LABCELL_X14_Y9_N3
\CPU|ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[2]~2_combout\ = ( \CPU|ULA|Add0~9_sumout\ & ( (!\CPU|DECODER|Equal1~2_combout\) # (\ROM|memROM~6_combout\) ) ) # ( !\CPU|ULA|Add0~9_sumout\ & ( (\CPU|DECODER|Equal1~2_combout\ & \ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \CPU|ULA|ALT_INV_Add0~9_sumout\,
	combout => \CPU|ULA|saida[2]~2_combout\);

-- Location: LABCELL_X14_Y9_N6
\CPU|FLAGer|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~2_combout\ = ( \CPU|ULA|Add0~5_sumout\ & ( \CPU|ULA|Add0~1_sumout\ & ( (\CPU|DECODER|Equal1~2_combout\ & (\CPU|DECODER|Equal1~0_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~2_combout\))) ) ) ) # ( !\CPU|ULA|Add0~5_sumout\ & ( 
-- \CPU|ULA|Add0~1_sumout\ & ( (\CPU|DECODER|Equal1~2_combout\ & (\CPU|DECODER|Equal1~0_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~2_combout\))) ) ) ) # ( \CPU|ULA|Add0~5_sumout\ & ( !\CPU|ULA|Add0~1_sumout\ & ( (\CPU|DECODER|Equal1~2_combout\ & 
-- (\CPU|DECODER|Equal1~0_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~2_combout\))) ) ) ) # ( !\CPU|ULA|Add0~5_sumout\ & ( !\CPU|ULA|Add0~1_sumout\ & ( (\CPU|DECODER|Equal1~0_combout\ & ((!\CPU|DECODER|Equal1~2_combout\) # ((!\ROM|memROM~4_combout\ & 
-- !\ROM|memROM~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000100010000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	dataf => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	combout => \CPU|FLAGer|DOUT~2_combout\);

-- Location: FF_X14_Y9_N53
\CPU|REG_A|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~25_sumout\,
	asdata => \ROM|memROM~22_combout\,
	sload => \CPU|DECODER|Equal1~2_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(6));

-- Location: FF_X16_Y9_N16
\RAM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~77_q\);

-- Location: FF_X16_Y9_N56
\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

-- Location: LABCELL_X16_Y9_N54
\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \RAM|ram~29_q\ & ( \ROM|memROM~4_combout\ & ( (\RAM|ram~77_q\ & (!\ROM|memROM~8_combout\ & (\ROM|memROM~6_combout\ & !\ROM|memROM~10_combout\))) ) ) ) # ( !\RAM|ram~29_q\ & ( \ROM|memROM~4_combout\ & ( (\RAM|ram~77_q\ & 
-- (!\ROM|memROM~8_combout\ & (\ROM|memROM~6_combout\ & !\ROM|memROM~10_combout\))) ) ) ) # ( \RAM|ram~29_q\ & ( !\ROM|memROM~4_combout\ & ( (!\ROM|memROM~8_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~77_q\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \RAM|ALT_INV_ram~29_q\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~550_combout\);

-- Location: FF_X14_Y9_N22
\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

-- Location: FF_X16_Y9_N35
\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

-- Location: LABCELL_X16_Y9_N33
\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( \RAM|ram~21_q\ & ( \ROM|memROM~4_combout\ & ( (\RAM|ram~37_q\ & !\ROM|memROM~6_combout\) ) ) ) # ( !\RAM|ram~21_q\ & ( \ROM|memROM~4_combout\ & ( (\RAM|ram~37_q\ & !\ROM|memROM~6_combout\) ) ) ) # ( \RAM|ram~21_q\ & ( 
-- !\ROM|memROM~4_combout\ & ( !\ROM|memROM~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~37_q\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \RAM|ALT_INV_ram~21_q\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~548_combout\);

-- Location: LABCELL_X16_Y9_N18
\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( !\ROM|memROM~8_combout\ & ( \RAM|ram~548_combout\ & ( !\ROM|memROM~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~548_combout\,
	combout => \RAM|ram~549_combout\);

-- Location: LABCELL_X16_Y9_N9
\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \RAM|ram~550_combout\ & ( \RAM|ram~549_combout\ & ( !\ROM|memROM~12_combout\ ) ) ) # ( !\RAM|ram~550_combout\ & ( \RAM|ram~549_combout\ & ( (!\ROM|memROM~12_combout\ & !\ROM|memROM~2_combout\) ) ) ) # ( \RAM|ram~550_combout\ & ( 
-- !\RAM|ram~549_combout\ & ( (!\ROM|memROM~12_combout\ & \ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000011110000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~550_combout\,
	dataf => \RAM|ALT_INV_ram~549_combout\,
	combout => \RAM|ram~551_combout\);

-- Location: LABCELL_X16_Y9_N12
\RAM|dado_out[6]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[6]~23_combout\ = ( \RAM|dado_out~9_combout\ & ( \RAM|ram~551_combout\ ) ) # ( !\RAM|dado_out~9_combout\ & ( \RAM|ram~551_combout\ ) ) # ( !\RAM|dado_out~9_combout\ & ( !\RAM|ram~551_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \RAM|ALT_INV_ram~551_combout\,
	combout => \RAM|dado_out[6]~23_combout\);

-- Location: FF_X14_Y8_N8
\RAM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~76_q\);

-- Location: LABCELL_X14_Y8_N6
\RAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~568_combout\ = ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~8_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~12_combout\ & \RAM|ram~76_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~76_q\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~568_combout\);

-- Location: FF_X14_Y8_N59
\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

-- Location: LABCELL_X14_Y8_N57
\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~8_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~12_combout\ & \RAM|ram~36_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~36_q\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~546_combout\);

-- Location: FF_X14_Y10_N38
\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

-- Location: FF_X14_Y10_N44
\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

-- Location: LABCELL_X14_Y10_N42
\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~12_combout\ & \RAM|ram~20_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~20_q\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~544_combout\);

-- Location: LABCELL_X14_Y10_N36
\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( \RAM|ram~28_q\ & ( \RAM|ram~544_combout\ & ( (!\ROM|memROM~8_combout\ & ((!\ROM|memROM~2_combout\) # ((!\ROM|memROM~12_combout\ & !\ROM|memROM~10_combout\)))) ) ) ) # ( !\RAM|ram~28_q\ & ( \RAM|ram~544_combout\ & ( 
-- (!\ROM|memROM~2_combout\ & !\ROM|memROM~8_combout\) ) ) ) # ( \RAM|ram~28_q\ & ( !\RAM|ram~544_combout\ & ( (!\ROM|memROM~12_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~8_combout\ & !\ROM|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000011000000110000001110000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \RAM|ALT_INV_ram~28_q\,
	dataf => \RAM|ALT_INV_ram~544_combout\,
	combout => \RAM|ram~545_combout\);

-- Location: LABCELL_X14_Y8_N12
\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( \RAM|ram~545_combout\ & ( (!\ROM|memROM~6_combout\ & (((!\ROM|memROM~4_combout\) # (\RAM|ram~546_combout\)))) # (\ROM|memROM~6_combout\ & (\RAM|ram~568_combout\ & (\ROM|memROM~4_combout\))) ) ) # ( !\RAM|ram~545_combout\ & ( 
-- (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((\RAM|ram~546_combout\))) # (\ROM|memROM~6_combout\ & (\RAM|ram~568_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011000000010000101110100001101010111010000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \RAM|ALT_INV_ram~568_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~546_combout\,
	dataf => \RAM|ALT_INV_ram~545_combout\,
	combout => \RAM|ram~547_combout\);

-- Location: LABCELL_X14_Y8_N45
\RAM|dado_out[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[5]~22_combout\ = ( \RAM|ram~547_combout\ ) # ( !\RAM|ram~547_combout\ & ( !\RAM|dado_out~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \RAM|ALT_INV_ram~547_combout\,
	combout => \RAM|dado_out[5]~22_combout\);

-- Location: FF_X14_Y10_N1
\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

-- Location: LABCELL_X14_Y10_N12
\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~8_combout\ & \RAM|ram~35_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~35_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~540_combout\);

-- Location: FF_X13_Y10_N31
\RAM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~75_q\);

-- Location: LABCELL_X14_Y10_N0
\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \ROM|memROM~2_combout\ & ( (\RAM|ram~75_q\ & !\ROM|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~75_q\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~541_combout\);

-- Location: FF_X14_Y10_N26
\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

-- Location: FF_X14_Y10_N8
\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

-- Location: LABCELL_X14_Y10_N6
\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~8_combout\ & \RAM|ram~27_q\) ) ) # ( !\ROM|memROM~2_combout\ & ( (\RAM|ram~19_q\ & !\ROM|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~27_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~539_combout\);

-- Location: LABCELL_X14_Y10_N21
\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \RAM|ram~539_combout\ & ( (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\) # ((\RAM|ram~540_combout\)))) # (\ROM|memROM~6_combout\ & (\ROM|memROM~4_combout\ & ((\RAM|ram~541_combout\)))) ) ) # ( !\RAM|ram~539_combout\ & ( 
-- (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & (\RAM|ram~540_combout\)) # (\ROM|memROM~6_combout\ & ((\RAM|ram~541_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001110001010100110111000101010011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \RAM|ALT_INV_ram~540_combout\,
	datad => \RAM|ALT_INV_ram~541_combout\,
	dataf => \RAM|ALT_INV_ram~539_combout\,
	combout => \RAM|ram~542_combout\);

-- Location: LABCELL_X14_Y10_N48
\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( \RAM|ram~542_combout\ & ( (!\ROM|memROM~12_combout\ & !\ROM|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \RAM|ALT_INV_ram~542_combout\,
	combout => \RAM|ram~543_combout\);

-- Location: LABCELL_X14_Y10_N24
\RAM|dado_out[4]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[4]~21_combout\ = ( \RAM|ram~543_combout\ ) # ( !\RAM|ram~543_combout\ & ( !\RAM|dado_out~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \RAM|ALT_INV_ram~543_combout\,
	combout => \RAM|dado_out[4]~21_combout\);

-- Location: LABCELL_X14_Y9_N45
\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( \CPU|REG_A|DOUT\(4) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[4]~21_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~10_combout\)))) ) + ( \CPU|ULA|Add0~14\ ))
-- \CPU|ULA|Add0~18\ = CARRY(( \CPU|REG_A|DOUT\(4) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[4]~21_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~10_combout\)))) ) + ( \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(4),
	dataf => \RAM|ALT_INV_dado_out[4]~21_combout\,
	cin => \CPU|ULA|Add0~14\,
	sumout => \CPU|ULA|Add0~17_sumout\,
	cout => \CPU|ULA|Add0~18\);

-- Location: FF_X14_Y9_N47
\CPU|REG_A|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~17_sumout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DECODER|Equal1~2_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(4));

-- Location: LABCELL_X14_Y9_N48
\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( \CPU|REG_A|DOUT\(5) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[5]~22_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~12_combout\)))) ) + ( \CPU|ULA|Add0~18\ ))
-- \CPU|ULA|Add0~22\ = CARRY(( \CPU|REG_A|DOUT\(5) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[5]~22_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~12_combout\)))) ) + ( \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(5),
	dataf => \RAM|ALT_INV_dado_out[5]~22_combout\,
	cin => \CPU|ULA|Add0~18\,
	sumout => \CPU|ULA|Add0~21_sumout\,
	cout => \CPU|ULA|Add0~22\);

-- Location: FF_X14_Y9_N50
\CPU|REG_A|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~21_sumout\,
	asdata => \ROM|memROM~12_combout\,
	sload => \CPU|DECODER|Equal1~2_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(5));

-- Location: LABCELL_X14_Y9_N51
\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( \CPU|REG_A|DOUT\(6) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[6]~23_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~22_combout\)))) ) + ( \CPU|ULA|Add0~22\ ))
-- \CPU|ULA|Add0~26\ = CARRY(( \CPU|REG_A|DOUT\(6) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[6]~23_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~22_combout\)))) ) + ( \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(6),
	dataf => \RAM|ALT_INV_dado_out[6]~23_combout\,
	cin => \CPU|ULA|Add0~22\,
	sumout => \CPU|ULA|Add0~25_sumout\,
	cout => \CPU|ULA|Add0~26\);

-- Location: MLABCELL_X13_Y9_N27
\CPU|ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[6]~6_combout\ = ( \CPU|ULA|Add0~25_sumout\ & ( (!\CPU|DECODER|Equal1~2_combout\) # (\ROM|memROM~22_combout\) ) ) # ( !\CPU|ULA|Add0~25_sumout\ & ( (\ROM|memROM~22_combout\ & \CPU|DECODER|Equal1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	dataf => \CPU|ULA|ALT_INV_Add0~25_sumout\,
	combout => \CPU|ULA|saida[6]~6_combout\);

-- Location: FF_X14_Y9_N56
\CPU|REG_A|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~29_sumout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DECODER|Equal1~2_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(7));

-- Location: FF_X13_Y8_N50
\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

-- Location: MLABCELL_X13_Y8_N48
\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~12_combout\ & \RAM|ram~38_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~38_q\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~553_combout\);

-- Location: FF_X14_Y8_N17
\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

-- Location: LABCELL_X14_Y8_N15
\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~12_combout\ & \RAM|ram~22_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~22_q\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~552_combout\);

-- Location: LABCELL_X14_Y8_N42
\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( \RAM|ram~552_combout\ & ( (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\) # (\RAM|ram~553_combout\))) ) ) # ( !\RAM|ram~552_combout\ & ( (\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \RAM|ram~553_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~553_combout\,
	dataf => \RAM|ALT_INV_ram~552_combout\,
	combout => \RAM|ram~554_combout\);

-- Location: FF_X16_Y8_N53
\RAM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~78_q\);

-- Location: FF_X16_Y8_N8
\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

-- Location: LABCELL_X16_Y8_N6
\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( \RAM|ram~30_q\ & ( \ROM|memROM~4_combout\ & ( (\RAM|ram~78_q\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~8_combout\ & \ROM|memROM~6_combout\))) ) ) ) # ( !\RAM|ram~30_q\ & ( \ROM|memROM~4_combout\ & ( (\RAM|ram~78_q\ & 
-- (!\ROM|memROM~12_combout\ & (!\ROM|memROM~8_combout\ & \ROM|memROM~6_combout\))) ) ) ) # ( \RAM|ram~30_q\ & ( !\ROM|memROM~4_combout\ & ( (!\ROM|memROM~12_combout\ & (!\ROM|memROM~8_combout\ & !\ROM|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~78_q\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \RAM|ALT_INV_ram~30_q\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~555_combout\);

-- Location: LABCELL_X14_Y8_N33
\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( \RAM|ram~555_combout\ & ( (!\ROM|memROM~10_combout\ & ((\RAM|ram~554_combout\) # (\ROM|memROM~2_combout\))) ) ) # ( !\RAM|ram~555_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~554_combout\ & !\ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~554_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \RAM|ALT_INV_ram~555_combout\,
	combout => \RAM|ram~556_combout\);

-- Location: LABCELL_X14_Y8_N54
\RAM|dado_out[7]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[7]~24_combout\ = ( \RAM|dado_out~9_combout\ & ( \RAM|ram~556_combout\ ) ) # ( !\RAM|dado_out~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~556_combout\,
	dataf => \RAM|ALT_INV_dado_out~9_combout\,
	combout => \RAM|dado_out[7]~24_combout\);

-- Location: LABCELL_X14_Y9_N54
\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( \CPU|REG_A|DOUT\(7) ) + ( !\CPU|DECODER|Equal1~4_combout\ $ (((!\CPU|DECODER|Equal1~2_combout\ & ((\RAM|dado_out[7]~24_combout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~10_combout\)))) ) + ( \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(7),
	dataf => \RAM|ALT_INV_dado_out[7]~24_combout\,
	cin => \CPU|ULA|Add0~26\,
	sumout => \CPU|ULA|Add0~29_sumout\);

-- Location: LABCELL_X14_Y9_N18
\CPU|FLAGer|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~1_combout\ = ( \CPU|ULA|Add0~29_sumout\ & ( \CPU|ULA|Add0~21_sumout\ & ( (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ & \CPU|DECODER|Equal1~2_combout\)) ) ) ) # ( !\CPU|ULA|Add0~29_sumout\ & ( \CPU|ULA|Add0~21_sumout\ & ( 
-- (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ & \CPU|DECODER|Equal1~2_combout\)) ) ) ) # ( \CPU|ULA|Add0~29_sumout\ & ( !\CPU|ULA|Add0~21_sumout\ & ( (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ & \CPU|DECODER|Equal1~2_combout\)) ) ) ) # 
-- ( !\CPU|ULA|Add0~29_sumout\ & ( !\CPU|ULA|Add0~21_sumout\ & ( (!\CPU|DECODER|Equal1~2_combout\ & (((!\CPU|ULA|Add0~17_sumout\)))) # (\CPU|DECODER|Equal1~2_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datad => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	datae => \CPU|ULA|ALT_INV_Add0~29_sumout\,
	dataf => \CPU|ULA|ALT_INV_Add0~21_sumout\,
	combout => \CPU|FLAGer|DOUT~1_combout\);

-- Location: LABCELL_X14_Y9_N24
\CPU|FLAGer|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~3_combout\ = ( \CPU|ULA|saida[6]~6_combout\ & ( \CPU|FLAGer|DOUT~1_combout\ & ( \CPU|FLAGer|DOUT~0_combout\ ) ) ) # ( !\CPU|ULA|saida[6]~6_combout\ & ( \CPU|FLAGer|DOUT~1_combout\ & ( ((!\CPU|ULA|saida[3]~3_combout\ & 
-- (!\CPU|ULA|saida[2]~2_combout\ & \CPU|FLAGer|DOUT~2_combout\))) # (\CPU|FLAGer|DOUT~0_combout\) ) ) ) # ( \CPU|ULA|saida[6]~6_combout\ & ( !\CPU|FLAGer|DOUT~1_combout\ & ( \CPU|FLAGer|DOUT~0_combout\ ) ) ) # ( !\CPU|ULA|saida[6]~6_combout\ & ( 
-- !\CPU|FLAGer|DOUT~1_combout\ & ( \CPU|FLAGer|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011101100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_saida[3]~3_combout\,
	datab => \CPU|FLAGer|ALT_INV_DOUT~0_combout\,
	datac => \CPU|ULA|ALT_INV_saida[2]~2_combout\,
	datad => \CPU|FLAGer|ALT_INV_DOUT~2_combout\,
	datae => \CPU|ULA|ALT_INV_saida[6]~6_combout\,
	dataf => \CPU|FLAGer|ALT_INV_DOUT~1_combout\,
	combout => \CPU|FLAGer|DOUT~3_combout\);

-- Location: FF_X14_Y9_N26
\CPU|FLAGer|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FLAGer|DOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAGer|DOUT~q\);

-- Location: LABCELL_X14_Y10_N45
\CPU|PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[2]~0_combout\ = ( \CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~17_combout\ & (\ROM|memROM~14_combout\ & ((\ROM|memROM~19_combout\)))) # (\ROM|memROM~17_combout\ & (!\ROM|memROM~14_combout\ & (!\ROM|memROM~15_combout\ $ (!\ROM|memROM~19_combout\)))) 
-- ) ) # ( !\CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~17_combout\ & (\ROM|memROM~14_combout\ & (!\ROM|memROM~15_combout\ & \ROM|memROM~19_combout\))) # (\ROM|memROM~17_combout\ & (!\ROM|memROM~14_combout\ & (!\ROM|memROM~15_combout\ $ 
-- (!\ROM|memROM~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001100000000001000110000000000100011000100000010001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~19_combout\,
	dataf => \CPU|FLAGer|ALT_INV_DOUT~q\,
	combout => \CPU|PC|DOUT[2]~0_combout\);

-- Location: FF_X12_Y8_N31
\CPU|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~1_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(0));

-- Location: MLABCELL_X13_Y8_N12
\CPU|MUX_DESVIO|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\ = ( \CPU|END_RETORNO|DOUT\(0) & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|PC_INC|Add0~1_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & ((!\CPU|PC|DOUT[2]~1_combout\) # ((\ROM|memROM~2_combout\)))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(0) & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|PC_INC|Add0~1_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & (\CPU|PC|DOUT[2]~1_combout\ & (\ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \CPU|PC_INC|ALT_INV_Add0~1_sumout\,
	dataf => \CPU|END_RETORNO|ALT_INV_DOUT\(0),
	combout => \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\);

-- Location: FF_X13_Y8_N13
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y9_N15
\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & \ROM|memROM~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~17_combout\);

-- Location: LABCELL_X14_Y10_N15
\CPU|PC|DOUT[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[2]~1_combout\ = ( \CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~17_combout\ & (((\ROM|memROM~14_combout\ & \ROM|memROM~19_combout\)))) # (\ROM|memROM~17_combout\ & (\ROM|memROM~15_combout\ & (!\ROM|memROM~14_combout\ & !\ROM|memROM~19_combout\))) ) ) 
-- # ( !\CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~17_combout\ & (!\ROM|memROM~15_combout\ & (\ROM|memROM~14_combout\ & \ROM|memROM~19_combout\))) # (\ROM|memROM~17_combout\ & (\ROM|memROM~15_combout\ & (!\ROM|memROM~14_combout\ & !\ROM|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000001000000100000000100000010000000010100001000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~19_combout\,
	dataf => \CPU|FLAGer|ALT_INV_DOUT~q\,
	combout => \CPU|PC|DOUT[2]~1_combout\);

-- Location: FF_X12_Y8_N37
\CPU|END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~9_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(2));

-- Location: MLABCELL_X13_Y8_N15
\CPU|MUX_DESVIO|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\ = ( \CPU|END_RETORNO|DOUT\(2) & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|PC_INC|Add0~9_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & ((!\CPU|PC|DOUT[2]~1_combout\) # ((\ROM|memROM~6_combout\)))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(2) & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|PC_INC|Add0~9_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & (\CPU|PC|DOUT[2]~1_combout\ & ((\ROM|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datac => \CPU|PC_INC|ALT_INV_Add0~9_sumout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \CPU|END_RETORNO|ALT_INV_DOUT\(2),
	combout => \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\);

-- Location: FF_X13_Y8_N16
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y9_N57
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) ) # ( !\CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- (((!\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT[0]~DUPLICATE_q\))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # ((!\CPU|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111001110110111111100111011000101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~13_combout\);

-- Location: MLABCELL_X13_Y9_N54
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \ROM|memROM~0_combout\ & ( \ROM|memROM~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~14_combout\);

-- Location: MLABCELL_X13_Y9_N24
\RAM|dado_out~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~9_combout\ = ( \ROM|memROM~19_combout\ & ( (!\ROM|memROM~14_combout\ & (!\ROM|memROM~17_combout\ & !\RAM|process_0~0_combout\)) ) ) # ( !\ROM|memROM~19_combout\ & ( (!\ROM|memROM~14_combout\ & (!\RAM|process_0~0_combout\ & 
-- (!\ROM|memROM~17_combout\ $ (!\ROM|memROM~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000001010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~19_combout\,
	combout => \RAM|dado_out~9_combout\);

-- Location: MLABCELL_X13_Y10_N12
\RAM|dado_out[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~13_combout\ = ( \FF_Debouncer|DOUT~q\ & ( (\ADDR_511~0_combout\ & (\habSWconj~0_combout\ & !\KEY[3]~input_o\)) ) ) # ( !\FF_Debouncer|DOUT~q\ & ( (\habSWconj~0_combout\ & (((\ADDR_511~0_combout\ & !\KEY[3]~input_o\)) # 
-- (\habHEX0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000101000001110000010100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habHEX0~0_combout\,
	datab => \ALT_INV_ADDR_511~0_combout\,
	datac => \ALT_INV_habSWconj~0_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \FF_Debouncer|ALT_INV_DOUT~q\,
	combout => \RAM|dado_out[0]~13_combout\);

-- Location: MLABCELL_X13_Y10_N3
\RAM|dado_out[0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~15_combout\ = ( !\bufferSWConj|saida[0]~0_combout\ & ( (!\bufferSW9|saida[0]~0_combout\ & !\bufferKEY2|saida[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bufferSW9|ALT_INV_saida[0]~0_combout\,
	datac => \bufferKEY2|ALT_INV_saida[0]~0_combout\,
	dataf => \bufferSWConj|ALT_INV_saida[0]~0_combout\,
	combout => \RAM|dado_out[0]~15_combout\);

-- Location: MLABCELL_X13_Y10_N6
\RAM|dado_out[0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~16_combout\ = ( \RAM|dado_out[0]~15_combout\ & ( !\bufferKEY1|saida[0]~0_combout\ & ( (!\RAM|dado_out[0]~12_combout\ & (!\RAM|dado_out[0]~13_combout\ & ((!\RAM|dado_out~9_combout\) # (\RAM|ram~528_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~9_combout\,
	datab => \RAM|ALT_INV_ram~528_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~12_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~13_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~15_combout\,
	dataf => \bufferKEY1|ALT_INV_saida[0]~0_combout\,
	combout => \RAM|dado_out[0]~16_combout\);

-- Location: MLABCELL_X13_Y10_N30
\RAM|dado_out[1]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~18_combout\ = ( \RAM|dado_out[0]~8_combout\ & ( \habLEDconj~0_combout\ & ( (!\RAM|process_0~0_combout\ & ((\CPU|DECODER|Equal1~0_combout\) # (\CPU|DECODER|habAcumulador~0_combout\))) ) ) ) # ( !\RAM|dado_out[0]~8_combout\ & ( 
-- \habLEDconj~0_combout\ & ( (!\RAM|process_0~0_combout\ & ((\CPU|DECODER|Equal1~0_combout\) # (\CPU|DECODER|habAcumulador~0_combout\))) ) ) ) # ( \RAM|dado_out[0]~8_combout\ & ( !\habLEDconj~0_combout\ & ( (!\RAM|process_0~0_combout\ & 
-- (((\CPU|DECODER|Equal1~0_combout\)) # (\CPU|DECODER|habAcumulador~0_combout\))) # (\RAM|process_0~0_combout\ & (!\ROM|memROM~6_combout\ & ((\CPU|DECODER|Equal1~0_combout\) # (\CPU|DECODER|habAcumulador~0_combout\)))) ) ) ) # ( !\RAM|dado_out[0]~8_combout\ 
-- & ( !\habLEDconj~0_combout\ & ( (!\RAM|process_0~0_combout\ & ((\CPU|DECODER|Equal1~0_combout\) # (\CPU|DECODER|habAcumulador~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001100101111101000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~8_combout\,
	dataf => \ALT_INV_habLEDconj~0_combout\,
	combout => \RAM|dado_out[1]~18_combout\);

-- Location: LABCELL_X16_Y9_N24
\habHEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~1_combout\ = ( \ROM|memROM~21_combout\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~0_combout\ & \CPU|PC|DOUT\(4)) ) ) ) # ( \ROM|memROM~21_combout\ & ( !\ROM|memROM~20_combout\ & ( (\ROM|memROM~0_combout\ & (((!\ROM|memROM~9_combout\ & 
-- !\ROM|memROM~5_combout\)) # (\CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000101010100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \habHEX0~1_combout\);

-- Location: MLABCELL_X13_Y10_N42
\habLEDconj~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLEDconj~1_combout\ = ( \habHEX0~1_combout\ & ( (!\ROM|memROM~19_combout\ & (\CPU|DECODER|Equal1~1_combout\ & (!\habLEDconj~0_combout\ & \ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_habLEDconj~0_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ALT_INV_habHEX0~1_combout\,
	combout => \habLEDconj~1_combout\);

-- Location: FF_X13_Y10_N43
\RegLEDconj|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(0));

-- Location: FF_X13_Y9_N7
\RegLEDconj|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(1));

-- Location: FF_X13_Y10_N28
\RegLEDconj|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(2));

-- Location: FF_X13_Y10_N19
\RegLEDconj|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(3));

-- Location: FF_X13_Y10_N26
\RegLEDconj|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(4));

-- Location: FF_X13_Y10_N40
\RegLEDconj|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(5));

-- Location: FF_X13_Y7_N13
\RegLEDconj|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(6));

-- Location: FF_X13_Y7_N46
\RegLEDconj|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(7));

-- Location: MLABCELL_X13_Y10_N45
\habHEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~2_combout\ = (!\ROM|memROM~19_combout\ & (\CPU|DECODER|Equal1~1_combout\ & (\habHEX0~1_combout\ & \ROM|memROM~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_habHEX0~1_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	combout => \habHEX0~2_combout\);

-- Location: LABCELL_X12_Y10_N36
\FFLED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED8|DOUT~0_combout\ = ( \FFLED8|DOUT~q\ & ( \habHEX0~2_combout\ & ( (!\habLED8~0_combout\) # (\CPU|REG_A|DOUT\(0)) ) ) ) # ( !\FFLED8|DOUT~q\ & ( \habHEX0~2_combout\ & ( (\habLED8~0_combout\ & \CPU|REG_A|DOUT\(0)) ) ) ) # ( \FFLED8|DOUT~q\ & ( 
-- !\habHEX0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habLED8~0_combout\,
	datac => \CPU|REG_A|ALT_INV_DOUT\(0),
	datae => \FFLED8|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_habHEX0~2_combout\,
	combout => \FFLED8|DOUT~0_combout\);

-- Location: FF_X12_Y10_N37
\FFLED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FFLED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLED8|DOUT~q\);

-- Location: LABCELL_X12_Y10_N9
\FFLED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED9|DOUT~0_combout\ = ( \FFLED9|DOUT~q\ & ( \habHEX0~2_combout\ & ( (!\habLED9~0_combout\) # (\CPU|REG_A|DOUT\(0)) ) ) ) # ( !\FFLED9|DOUT~q\ & ( \habHEX0~2_combout\ & ( (\CPU|REG_A|DOUT\(0) & \habLED9~0_combout\) ) ) ) # ( \FFLED9|DOUT~q\ & ( 
-- !\habHEX0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG_A|ALT_INV_DOUT\(0),
	datac => \ALT_INV_habLED9~0_combout\,
	datae => \FFLED9|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_habHEX0~2_combout\,
	combout => \FFLED9|DOUT~0_combout\);

-- Location: FF_X12_Y10_N11
\FFLED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FFLED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLED9|DOUT~q\);

-- Location: MLABCELL_X13_Y7_N24
\habHEX0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~3_combout\ = ( \CPU|DECODER|Equal1~1_combout\ & ( \habHEX0~1_combout\ & ( (!\ROM|memROM~19_combout\ & (\ROM|memROM~15_combout\ & \habHEX0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ALT_INV_habHEX0~0_combout\,
	datae => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_habHEX0~1_combout\,
	combout => \habHEX0~3_combout\);

-- Location: FF_X20_Y4_N2
\HEX0_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \habHEX0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(0));

-- Location: LABCELL_X16_Y7_N24
\HEX0_decoder|REG_4bits|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|REG_4bits|DOUT[2]~feeder_combout\ = ( \CPU|REG_A|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	combout => \HEX0_decoder|REG_4bits|DOUT[2]~feeder_combout\);

-- Location: FF_X16_Y7_N25
\HEX0_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \HEX0_decoder|REG_4bits|DOUT[2]~feeder_combout\,
	ena => \habHEX0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(2));

-- Location: LABCELL_X20_Y4_N36
\HEX0_decoder|REG_4bits|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|REG_4bits|DOUT[1]~feeder_combout\ = ( \CPU|REG_A|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	combout => \HEX0_decoder|REG_4bits|DOUT[1]~feeder_combout\);

-- Location: FF_X20_Y4_N38
\HEX0_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \HEX0_decoder|REG_4bits|DOUT[1]~feeder_combout\,
	ena => \habHEX0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(1));

-- Location: LABCELL_X20_Y4_N18
\HEX0_decoder|REG_4bits|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|REG_4bits|DOUT[3]~feeder_combout\ = ( \CPU|REG_A|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	combout => \HEX0_decoder|REG_4bits|DOUT[3]~feeder_combout\);

-- Location: FF_X20_Y4_N20
\HEX0_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \HEX0_decoder|REG_4bits|DOUT[3]~feeder_combout\,
	ena => \habHEX0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(3));

-- Location: LABCELL_X20_Y4_N33
\HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(3) & ( (\HEX0_decoder|REG_4bits|DOUT\(0) & (!\HEX0_decoder|REG_4bits|DOUT\(2) $ (!\HEX0_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX0_decoder|REG_4bits|DOUT\(1) & (!\HEX0_decoder|REG_4bits|DOUT\(0) $ (!\HEX0_decoder|REG_4bits|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X20_Y4_N48
\HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( (!\HEX0_decoder|REG_4bits|DOUT\(0) & (\HEX0_decoder|REG_4bits|DOUT\(2))) # (\HEX0_decoder|REG_4bits|DOUT\(0) & ((\HEX0_decoder|REG_4bits|DOUT\(3)))) ) ) # ( 
-- !\HEX0_decoder|REG_4bits|DOUT\(1) & ( (\HEX0_decoder|REG_4bits|DOUT\(2) & (!\HEX0_decoder|REG_4bits|DOUT\(0) $ (!\HEX0_decoder|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010001001110010011100010010000100100010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X20_Y4_N57
\HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(0) & ( (\HEX0_decoder|REG_4bits|DOUT\(3) & (\HEX0_decoder|REG_4bits|DOUT\(2) & \HEX0_decoder|REG_4bits|DOUT\(1))) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(0) & ( 
-- (!\HEX0_decoder|REG_4bits|DOUT\(3) & (!\HEX0_decoder|REG_4bits|DOUT\(2) & \HEX0_decoder|REG_4bits|DOUT\(1))) # (\HEX0_decoder|REG_4bits|DOUT\(3) & (\HEX0_decoder|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100101000000000000010100000101101001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X20_Y4_N15
\HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(0) & ( (!\HEX0_decoder|REG_4bits|DOUT\(2) & (!\HEX0_decoder|REG_4bits|DOUT\(3) & !\HEX0_decoder|REG_4bits|DOUT\(1))) # (\HEX0_decoder|REG_4bits|DOUT\(2) & 
-- ((\HEX0_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(0) & ( (!\HEX0_decoder|REG_4bits|DOUT\(3) & (\HEX0_decoder|REG_4bits|DOUT\(2) & !\HEX0_decoder|REG_4bits|DOUT\(1))) # (\HEX0_decoder|REG_4bits|DOUT\(3) & 
-- (!\HEX0_decoder|REG_4bits|DOUT\(2) & \HEX0_decoder|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000101000000000111100001010010100001010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X20_Y4_N45
\HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(0) & ( (!\HEX0_decoder|REG_4bits|DOUT\(3)) # ((!\HEX0_decoder|REG_4bits|DOUT\(2) & !\HEX0_decoder|REG_4bits|DOUT\(1))) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(0) & ( 
-- (!\HEX0_decoder|REG_4bits|DOUT\(3) & (\HEX0_decoder|REG_4bits|DOUT\(2) & !\HEX0_decoder|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000111110101010101000001010000000001111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X20_Y4_N24
\HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( (!\HEX0_decoder|REG_4bits|DOUT\(3) & ((!\HEX0_decoder|REG_4bits|DOUT\(2)) # (\HEX0_decoder|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( 
-- (\HEX0_decoder|REG_4bits|DOUT\(0) & (!\HEX0_decoder|REG_4bits|DOUT\(2) $ (\HEX0_decoder|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001110100001101000001000001010000011101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X20_Y4_N30
\HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(3) & ( (!\HEX0_decoder|REG_4bits|DOUT\(0) & (\HEX0_decoder|REG_4bits|DOUT\(2) & !\HEX0_decoder|REG_4bits|DOUT\(1))) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX0_decoder|REG_4bits|DOUT\(2) & ((!\HEX0_decoder|REG_4bits|DOUT\(1)))) # (\HEX0_decoder|REG_4bits|DOUT\(2) & (\HEX0_decoder|REG_4bits|DOUT\(0) & \HEX0_decoder|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111000001110000011100000100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X13_Y10_N57
\RAM|dado_out[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~14_combout\ = ( !\bufferSW9|saida[0]~0_combout\ & ( !\RAM|dado_out[0]~12_combout\ & ( (!\bufferSWConj|saida[0]~0_combout\ & (!\bufferKEY2|saida[0]~0_combout\ & (!\RAM|dado_out[0]~13_combout\ & !\bufferKEY1|saida[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bufferSWConj|ALT_INV_saida[0]~0_combout\,
	datab => \bufferKEY2|ALT_INV_saida[0]~0_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~13_combout\,
	datad => \bufferKEY1|ALT_INV_saida[0]~0_combout\,
	datae => \bufferSW9|ALT_INV_saida[0]~0_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~12_combout\,
	combout => \RAM|dado_out[0]~14_combout\);

-- Location: LABCELL_X16_Y9_N42
\CPU|MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[0]~0_combout\ = ( \RAM|dado_out[0]~14_combout\ & ( \RAM|dado_out[0]~11_combout\ & ( (!\CPU|DECODER|Equal1~2_combout\ & (((!\RAM|dado_out~9_combout\) # (\RAM|ram~528_combout\)))) # (\CPU|DECODER|Equal1~2_combout\ & 
-- (\ROM|memROM~2_combout\)) ) ) ) # ( !\RAM|dado_out[0]~14_combout\ & ( \RAM|dado_out[0]~11_combout\ & ( (\ROM|memROM~2_combout\ & \CPU|DECODER|Equal1~2_combout\) ) ) ) # ( \RAM|dado_out[0]~14_combout\ & ( !\RAM|dado_out[0]~11_combout\ & ( 
-- (!\CPU|DECODER|Equal1~2_combout\) # (\ROM|memROM~2_combout\) ) ) ) # ( !\RAM|dado_out[0]~14_combout\ & ( !\RAM|dado_out[0]~11_combout\ & ( (!\CPU|DECODER|Equal1~2_combout\) # (\ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110100010001000100011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datac => \RAM|ALT_INV_dado_out~9_combout\,
	datad => \RAM|ALT_INV_ram~528_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~14_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~11_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[0]~0_combout\);

-- Location: MLABCELL_X13_Y7_N0
\CPU|MUX_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[1]~1_combout\ = ( \RAM|ram~531_combout\ & ( \ROM|memROM~4_combout\ ) ) # ( !\RAM|ram~531_combout\ & ( \ROM|memROM~4_combout\ & ( (!\RAM|dado_out~9_combout\) # (\CPU|DECODER|Equal1~2_combout\) ) ) ) # ( \RAM|ram~531_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( !\CPU|DECODER|Equal1~2_combout\ ) ) ) # ( !\RAM|ram~531_combout\ & ( !\ROM|memROM~4_combout\ & ( (!\RAM|dado_out~9_combout\ & !\CPU|DECODER|Equal1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000111100001111000011001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~9_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datae => \RAM|ALT_INV_ram~531_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[1]~1_combout\);

-- Location: MLABCELL_X13_Y7_N30
\CPU|MUX_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[2]~2_combout\ = ( \ROM|memROM~6_combout\ & ( ((!\RAM|dado_out~9_combout\) # (\CPU|DECODER|Equal1~2_combout\)) # (\RAM|ram~534_combout\) ) ) # ( !\ROM|memROM~6_combout\ & ( (!\CPU|DECODER|Equal1~2_combout\ & 
-- ((!\RAM|dado_out~9_combout\) # (\RAM|ram~534_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000111111110011111111110000001100001111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~534_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datad => \RAM|ALT_INV_dado_out~9_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[2]~2_combout\);

-- Location: MLABCELL_X13_Y8_N9
\CPU|MUX_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[3]~3_combout\ = ( \RAM|ram~538_combout\ & ( (!\CPU|DECODER|Equal1~2_combout\) # (\ROM|memROM~8_combout\) ) ) # ( !\RAM|ram~538_combout\ & ( (!\CPU|DECODER|Equal1~2_combout\ & (!\RAM|dado_out~9_combout\)) # 
-- (\CPU|DECODER|Equal1~2_combout\ & ((\ROM|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001111110011000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~9_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	dataf => \RAM|ALT_INV_ram~538_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[3]~3_combout\);

-- Location: LABCELL_X14_Y10_N51
\CPU|MUX_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[4]~4_combout\ = ( \RAM|ram~543_combout\ & ( (!\CPU|DECODER|Equal1~2_combout\) # (\ROM|memROM~10_combout\) ) ) # ( !\RAM|ram~543_combout\ & ( (!\CPU|DECODER|Equal1~2_combout\ & ((!\RAM|dado_out~9_combout\))) # 
-- (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110011111100000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_dado_out~9_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	dataf => \RAM|ALT_INV_ram~543_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[4]~4_combout\);

-- Location: LABCELL_X14_Y8_N36
\CPU|MUX_ULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[5]~5_combout\ = ( \RAM|ram~547_combout\ & ( (!\CPU|DECODER|Equal1~2_combout\) # (\ROM|memROM~12_combout\) ) ) # ( !\RAM|ram~547_combout\ & ( (!\CPU|DECODER|Equal1~2_combout\ & ((!\RAM|dado_out~9_combout\))) # 
-- (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010101111100000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datac => \RAM|ALT_INV_dado_out~9_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	dataf => \RAM|ALT_INV_ram~547_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[5]~5_combout\);

-- Location: LABCELL_X16_Y9_N3
\CPU|MUX_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[6]~6_combout\ = (!\CPU|DECODER|Equal1~2_combout\ & (((!\RAM|dado_out~9_combout\) # (\RAM|ram~551_combout\)))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~22_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100011101110111010001110111011101000111011101110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datac => \RAM|ALT_INV_ram~551_combout\,
	datad => \RAM|ALT_INV_dado_out~9_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[6]~6_combout\);

-- Location: LABCELL_X14_Y10_N3
\CPU|MUX_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[7]~7_combout\ = ( \RAM|ram~556_combout\ & ( (!\CPU|DECODER|Equal1~2_combout\) # (\ROM|memROM~10_combout\) ) ) # ( !\RAM|ram~556_combout\ & ( (!\CPU|DECODER|Equal1~2_combout\ & ((!\RAM|dado_out~9_combout\))) # 
-- (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110011111100000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_dado_out~9_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	dataf => \RAM|ALT_INV_ram~556_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[7]~7_combout\);

-- Location: LABCELL_X14_Y10_N27
\CPU|ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[0]~0_combout\ = (!\CPU|DECODER|Equal1~2_combout\ & (\CPU|ULA|Add0~1_sumout\)) # (\CPU|DECODER|Equal1~2_combout\ & ((\ROM|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	combout => \CPU|ULA|saida[0]~0_combout\);

-- Location: LABCELL_X14_Y10_N18
\CPU|ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[1]~1_combout\ = ( \CPU|ULA|Add0~5_sumout\ & ( (!\CPU|DECODER|Equal1~2_combout\) # (\ROM|memROM~4_combout\) ) ) # ( !\CPU|ULA|Add0~5_sumout\ & ( (\ROM|memROM~4_combout\ & \CPU|DECODER|Equal1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	dataf => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	combout => \CPU|ULA|saida[1]~1_combout\);

-- Location: LABCELL_X14_Y10_N30
\CPU|ULA|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[4]~4_combout\ = ( \CPU|ULA|Add0~17_sumout\ & ( (!\CPU|DECODER|Equal1~2_combout\) # (\ROM|memROM~10_combout\) ) ) # ( !\CPU|ULA|Add0~17_sumout\ & ( (\CPU|DECODER|Equal1~2_combout\ & \ROM|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	combout => \CPU|ULA|saida[4]~4_combout\);

-- Location: MLABCELL_X13_Y8_N42
\CPU|ULA|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[5]~5_combout\ = ( \CPU|ULA|Add0~21_sumout\ & ( (!\CPU|DECODER|Equal1~2_combout\) # (\ROM|memROM~12_combout\) ) ) # ( !\CPU|ULA|Add0~21_sumout\ & ( (\CPU|DECODER|Equal1~2_combout\ & \ROM|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \CPU|ULA|ALT_INV_Add0~21_sumout\,
	combout => \CPU|ULA|saida[5]~5_combout\);

-- Location: LABCELL_X14_Y10_N9
\CPU|ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[7]~7_combout\ = (!\CPU|DECODER|Equal1~2_combout\ & ((\CPU|ULA|Add0~29_sumout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~29_sumout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	combout => \CPU|ULA|saida[7]~7_combout\);

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

-- Location: LABCELL_X17_Y8_N0
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


