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

-- DATE "04/19/2022 18:14:55"

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
	CLOCK_50 : IN std_logic;
	clovis : IN std_logic
	);
END contador;

-- Design Ports Information
-- endROM[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[7]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[8]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[2]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[3]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[5]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[0]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[6]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[7]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- teste_datain[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_datain[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teste_hab	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- clovis	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_clovis : std_logic;
SIGNAL \clovis~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~1_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~2\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~6\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~10\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~14\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~18\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~22\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~26\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~30\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \bufferSW9|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~4_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~0_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~8_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \bufferKEY2|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~12_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \bufferSW8|saida[0]~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \bufferKEY3|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~11_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \bufferKEY1|saida[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \bufferKEY0|saida[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \RAM|dado_out~9_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~10_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \habLEDconj~0_combout\ : std_logic;
SIGNAL \bufferSWConj|saida[0]~0_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \habHEX0~0_combout\ : std_logic;
SIGNAL \bufferRESET|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~13_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~26_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~14_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~15_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[1]~16_combout\ : std_logic;
SIGNAL \RAM|dado_out[1]~17_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[2]~18_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[3]~19_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[4]~20_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[5]~21_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[6]~22_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[7]~23_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~1_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~25_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \habSWconj~1_combout\ : std_logic;
SIGNAL \habHEX2~0_combout\ : std_logic;
SIGNAL \bufferKEY3|saida[0]~1_combout\ : std_logic;
SIGNAL \bufferSW8|saida[0]~1_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~24_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~3_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[0]~1_combout\ : std_logic;
SIGNAL \habLEDconj~1_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~2\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RegLEDconj|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RegLEDconj|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RegLEDconj|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \habHEX0~1_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~q\ : std_logic;
SIGNAL \FFLED9|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED9|DOUT~q\ : std_logic;
SIGNAL \habSWconj~0_combout\ : std_logic;
SIGNAL \habHEX0~2_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habHEX5~0_combout\ : std_logic;
SIGNAL \habHEX1~0_combout\ : std_logic;
SIGNAL \HEX1_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX1_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX1_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX1_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX1_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX1_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX1_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habHEX2~1_combout\ : std_logic;
SIGNAL \HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habHEX3~0_combout\ : std_logic;
SIGNAL \HEX3_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX3_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX3_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX3_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX3_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX3_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX3_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habHEX4~0_combout\ : std_logic;
SIGNAL \HEX4_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX4_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX4_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX4_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX4_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX4_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX4_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habHEX5~combout\ : std_logic;
SIGNAL \HEX5_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX5_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX5_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX5_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX5_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX5_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX5_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \HEX5_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegLEDconj|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \HEX0_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX1_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX3_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX4_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2_decoder|REG_4bits|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~26_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~25_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX5~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~24_combout\ : std_logic;
SIGNAL \bufferKEY3|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX2~0_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_habSWconj~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX0~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[7]~23_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[6]~22_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[5]~21_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[4]~20_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[3]~19_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[2]~18_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[1]~16_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~14_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~12_combout\ : std_logic;
SIGNAL \bufferKEY2|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \bufferSW9|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~11_combout\ : std_logic;
SIGNAL \bufferKEY3|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~10_combout\ : std_logic;
SIGNAL \bufferKEY1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \bufferKEY0|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out~9_combout\ : std_logic;
SIGNAL \bufferRESET|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX0~0_combout\ : std_logic;
SIGNAL \bufferSWConj|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \HEX5_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX4_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX3_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX1_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ALT_INV_habLEDconj~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \FFLED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FFLED8|ALT_INV_DOUT~q\ : std_logic;
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
ww_CLOCK_50 <= CLOCK_50;
ww_clovis <= clovis;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\HEX2_decoder|REG_4bits|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\RAM|ALT_INV_dado_out[0]~26_combout\ <= NOT \RAM|dado_out[0]~26_combout\;
\CPU|DECODER|ALT_INV_saida~4_combout\ <= NOT \CPU|DECODER|saida~4_combout\;
\RAM|ALT_INV_dado_out[0]~25_combout\ <= NOT \RAM|dado_out[0]~25_combout\;
\CPU|DECODER|ALT_INV_Equal1~2_combout\ <= NOT \CPU|DECODER|Equal1~2_combout\;
\ALT_INV_habHEX5~0_combout\ <= NOT \habHEX5~0_combout\;
\RAM|ALT_INV_dado_out[0]~24_combout\ <= NOT \RAM|dado_out[0]~24_combout\;
\bufferKEY3|ALT_INV_saida[0]~1_combout\ <= NOT \bufferKEY3|saida[0]~1_combout\;
\ALT_INV_habHEX2~0_combout\ <= NOT \habHEX2~0_combout\;
\bufferSW8|ALT_INV_saida[0]~1_combout\ <= NOT \bufferSW8|saida[0]~1_combout\;
\ALT_INV_habSWconj~1_combout\ <= NOT \habSWconj~1_combout\;
\CPU|DECODER|ALT_INV_Equal1~1_combout\ <= NOT \CPU|DECODER|Equal1~1_combout\;
\ALT_INV_habHEX0~1_combout\ <= NOT \habHEX0~1_combout\;
\CPU|DECODER|ALT_INV_saida[0]~1_combout\ <= NOT \CPU|DECODER|saida[0]~1_combout\;
\RAM|ALT_INV_dado_out[7]~23_combout\ <= NOT \RAM|dado_out[7]~23_combout\;
\RAM|ALT_INV_dado_out[6]~22_combout\ <= NOT \RAM|dado_out[6]~22_combout\;
\RAM|ALT_INV_dado_out[5]~21_combout\ <= NOT \RAM|dado_out[5]~21_combout\;
\RAM|ALT_INV_dado_out[4]~20_combout\ <= NOT \RAM|dado_out[4]~20_combout\;
\RAM|ALT_INV_dado_out[3]~19_combout\ <= NOT \RAM|dado_out[3]~19_combout\;
\RAM|ALT_INV_dado_out[2]~18_combout\ <= NOT \RAM|dado_out[2]~18_combout\;
\RAM|ALT_INV_dado_out[1]~16_combout\ <= NOT \RAM|dado_out[1]~16_combout\;
\RAM|ALT_INV_dado_out[0]~15_combout\ <= NOT \RAM|dado_out[0]~15_combout\;
\RAM|ALT_INV_dado_out[0]~14_combout\ <= NOT \RAM|dado_out[0]~14_combout\;
\RAM|ALT_INV_dado_out[0]~12_combout\ <= NOT \RAM|dado_out[0]~12_combout\;
\bufferKEY2|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY2|saida[0]~0_combout\;
\bufferSW9|ALT_INV_saida[0]~0_combout\ <= NOT \bufferSW9|saida[0]~0_combout\;
\RAM|ALT_INV_dado_out[0]~11_combout\ <= NOT \RAM|dado_out[0]~11_combout\;
\bufferKEY3|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY3|saida[0]~0_combout\;
\bufferSW8|ALT_INV_saida[0]~0_combout\ <= NOT \bufferSW8|saida[0]~0_combout\;
\RAM|ALT_INV_dado_out[0]~10_combout\ <= NOT \RAM|dado_out[0]~10_combout\;
\bufferKEY1|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY1|saida[0]~0_combout\;
\bufferKEY0|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY0|saida[0]~0_combout\;
\RAM|ALT_INV_dado_out~9_combout\ <= NOT \RAM|dado_out~9_combout\;
\bufferRESET|ALT_INV_saida[0]~0_combout\ <= NOT \bufferRESET|saida[0]~0_combout\;
\ALT_INV_habHEX0~0_combout\ <= NOT \habHEX0~0_combout\;
\bufferSWConj|ALT_INV_saida[0]~0_combout\ <= NOT \bufferSWConj|saida[0]~0_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX5_decoder|REG_4bits|DOUT\(2);
\HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX5_decoder|REG_4bits|DOUT\(1);
\HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX5_decoder|REG_4bits|DOUT\(3);
\HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX5_decoder|REG_4bits|DOUT\(0);
\HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX4_decoder|REG_4bits|DOUT\(2);
\HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX4_decoder|REG_4bits|DOUT\(1);
\HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX4_decoder|REG_4bits|DOUT\(3);
\HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX4_decoder|REG_4bits|DOUT\(0);
\HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX3_decoder|REG_4bits|DOUT\(2);
\HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX3_decoder|REG_4bits|DOUT\(1);
\HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX3_decoder|REG_4bits|DOUT\(3);
\HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX3_decoder|REG_4bits|DOUT\(0);
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
\RAM|ALT_INV_dado_out[0]~8_combout\ <= NOT \RAM|dado_out[0]~8_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\CPU|DECODER|ALT_INV_saida~0_combout\ <= NOT \CPU|DECODER|saida~0_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ALT_INV_habLEDconj~0_combout\ <= NOT \habLEDconj~0_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\FFLED9|ALT_INV_DOUT~q\ <= NOT \FFLED9|DOUT~q\;
\FFLED8|ALT_INV_DOUT~q\ <= NOT \FFLED8|DOUT~q\;
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
\CPU|REG_A|ALT_INV_DOUT\(7) <= NOT \CPU|REG_A|DOUT\(7);
\CPU|REG_A|ALT_INV_DOUT\(6) <= NOT \CPU|REG_A|DOUT\(6);
\CPU|REG_A|ALT_INV_DOUT\(5) <= NOT \CPU|REG_A|DOUT\(5);
\CPU|REG_A|ALT_INV_DOUT\(4) <= NOT \CPU|REG_A|DOUT\(4);
\CPU|REG_A|ALT_INV_DOUT\(3) <= NOT \CPU|REG_A|DOUT\(3);
\CPU|REG_A|ALT_INV_DOUT\(2) <= NOT \CPU|REG_A|DOUT\(2);
\CPU|REG_A|ALT_INV_DOUT\(1) <= NOT \CPU|REG_A|DOUT\(1);
\CPU|REG_A|ALT_INV_DOUT\(0) <= NOT \CPU|REG_A|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);

-- Location: IOOBUF_X38_Y0_N2
\valorDado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[0]~13_combout\,
	oe => \RAM|dado_out[0]~15_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(0));

-- Location: IOOBUF_X23_Y0_N42
\valorDado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[1]~16_combout\,
	oe => \RAM|dado_out[1]~17_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(1));

-- Location: IOOBUF_X54_Y15_N5
\valorDado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[2]~18_combout\,
	oe => \RAM|dado_out[1]~17_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(2));

-- Location: IOOBUF_X50_Y0_N2
\valorDado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[3]~19_combout\,
	oe => \RAM|dado_out[1]~17_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(3));

-- Location: IOOBUF_X54_Y15_N56
\valorDado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[4]~20_combout\,
	oe => \RAM|dado_out[1]~17_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(4));

-- Location: IOOBUF_X23_Y0_N59
\valorDado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[5]~21_combout\,
	oe => \RAM|dado_out[1]~17_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(5));

-- Location: IOOBUF_X54_Y15_N22
\valorDado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[6]~22_combout\,
	oe => \RAM|dado_out[1]~17_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(6));

-- Location: IOOBUF_X23_Y0_N76
\valorDado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[7]~23_combout\,
	oe => \RAM|dado_out[1]~17_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(7));

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X25_Y0_N53
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

-- Location: IOOBUF_X24_Y0_N53
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X23_Y0_N93
\endROM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_endROM(5));

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X54_Y14_N96
\endROM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_endROM(7));

-- Location: IOOBUF_X19_Y0_N53
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

-- Location: IOOBUF_X34_Y45_N36
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

-- Location: IOOBUF_X25_Y0_N36
\endRAM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(1));

-- Location: IOOBUF_X29_Y0_N53
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

-- Location: IOOBUF_X10_Y0_N76
\endRAM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endRAM(3));

-- Location: IOOBUF_X54_Y18_N79
\endRAM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endRAM(4));

-- Location: IOOBUF_X54_Y14_N45
\endRAM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
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

-- Location: IOOBUF_X29_Y0_N36
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

-- Location: IOOBUF_X24_Y0_N19
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

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X25_Y0_N19
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

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X40_Y45_N93
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

-- Location: IOOBUF_X40_Y45_N42
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

-- Location: IOOBUF_X40_Y45_N59
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

-- Location: IOOBUF_X38_Y45_N53
\teste_hab~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \habSWconj~0_combout\,
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
	i => \HEX3_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\,
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
	i => \HEX3_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\,
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
	i => \HEX3_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\,
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
	i => \HEX3_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\,
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
	i => \HEX3_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\,
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
	i => \HEX3_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\,
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
	i => \HEX3_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\,
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
	i => \HEX4_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\,
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
	i => \HEX4_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\,
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
	i => \HEX4_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\,
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
	i => \HEX4_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\,
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
	i => \HEX4_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\,
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
	i => \HEX4_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\,
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
	i => \HEX4_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\,
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
	i => \HEX5_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\,
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
	i => \HEX5_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\,
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
	i => \HEX5_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\,
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
	i => \HEX5_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\,
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
	i => \HEX5_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\,
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
	i => \HEX5_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\,
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
	i => \HEX5_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

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

-- Location: LABCELL_X35_Y9_N30
\CPU|PC_INC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|PC_INC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|PC_INC|Add0~1_sumout\,
	cout => \CPU|PC_INC|Add0~2\);

-- Location: MLABCELL_X37_Y9_N24
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X35_Y9_N44
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X35_Y9_N41
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X35_Y9_N32
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~1_sumout\,
	asdata => \ROM|memROM~1_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X35_Y9_N38
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~9_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y9_N21
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) 
-- ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000110000000011000011000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~2_combout\);

-- Location: LABCELL_X35_Y9_N24
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~2_combout\ & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & !\CPU|PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~3_combout\);

-- Location: FF_X35_Y9_N35
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~5_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y9_N36
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT[0]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~13_combout\);

-- Location: FF_X35_Y9_N56
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y9_N51
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ $ (((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~12_combout\);

-- Location: MLABCELL_X34_Y9_N12
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( \ROM|memROM~12_combout\ & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & !\CPU|PC|DOUT[6]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \ROM|memROM~15_combout\);

-- Location: LABCELL_X35_Y9_N3
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & !\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~4_combout\);

-- Location: MLABCELL_X34_Y9_N54
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\) # (!\CPU|PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[4]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~11_combout\);

-- Location: MLABCELL_X34_Y9_N33
\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~16_combout\);

-- Location: MLABCELL_X34_Y9_N57
\CPU|DECODER|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~0_combout\ = ( !\ROM|memROM~16_combout\ & ( (\ROM|memROM~13_combout\ & (\ROM|memROM~15_combout\ & \ROM|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODER|Equal1~0_combout\);

-- Location: FF_X35_Y9_N53
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y9_N18
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ $ (((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- (\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110000001111000011000000001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X35_Y9_N0
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & !\CPU|PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

-- Location: FF_X35_Y9_N31
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~1_sumout\,
	asdata => \ROM|memROM~1_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X35_Y9_N33
\CPU|PC_INC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|PC_INC|Add0~2\ ))
-- \CPU|PC_INC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|PC_INC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|PC_INC|Add0~2\,
	sumout => \CPU|PC_INC|Add0~5_sumout\,
	cout => \CPU|PC_INC|Add0~6\);

-- Location: FF_X35_Y9_N34
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~5_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X35_Y9_N36
\CPU|PC_INC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|PC_INC|Add0~6\ ))
-- \CPU|PC_INC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|PC_INC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|PC_INC|Add0~6\,
	sumout => \CPU|PC_INC|Add0~9_sumout\,
	cout => \CPU|PC_INC|Add0~10\);

-- Location: FF_X35_Y9_N37
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~9_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X35_Y9_N39
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

-- Location: FF_X35_Y9_N40
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X35_Y9_N42
\CPU|PC_INC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|PC_INC|Add0~14\ ))
-- \CPU|PC_INC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|PC_INC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|PC_INC|Add0~14\,
	sumout => \CPU|PC_INC|Add0~17_sumout\,
	cout => \CPU|PC_INC|Add0~18\);

-- Location: FF_X35_Y9_N43
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X35_Y9_N45
\CPU|PC_INC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|PC_INC|Add0~18\ ))
-- \CPU|PC_INC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|PC_INC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|PC_INC|Add0~18\,
	sumout => \CPU|PC_INC|Add0~21_sumout\,
	cout => \CPU|PC_INC|Add0~22\);

-- Location: LABCELL_X35_Y9_N48
\CPU|PC_INC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|PC_INC|Add0~22\ ))
-- \CPU|PC_INC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|PC_INC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|PC_INC|Add0~22\,
	sumout => \CPU|PC_INC|Add0~25_sumout\,
	cout => \CPU|PC_INC|Add0~26\);

-- Location: LABCELL_X35_Y9_N51
\CPU|PC_INC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|PC_INC|Add0~26\ ))
-- \CPU|PC_INC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|PC_INC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|PC_INC|Add0~26\,
	sumout => \CPU|PC_INC|Add0~29_sumout\,
	cout => \CPU|PC_INC|Add0~30\);

-- Location: FF_X35_Y9_N52
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X35_Y9_N54
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

-- Location: FF_X35_Y9_N55
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X35_Y9_N6
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (((\CPU|PC|DOUT[1]~DUPLICATE_q\ & 
-- \CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000011110011001100001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~7_combout\);

-- Location: LABCELL_X36_Y9_N24
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( !\ROM|memROM~7_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~8_combout\);

-- Location: FF_X35_Y9_N46
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~21_sumout\,
	asdata => \ROM|memROM~8_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: FF_X35_Y9_N47
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~21_sumout\,
	asdata => \ROM|memROM~8_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y9_N42
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\) # ((!\CPU|PC|DOUT[1]~DUPLICATE_q\) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111100111111111111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~14_combout\);

-- Location: MLABCELL_X34_Y9_N15
\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( \ROM|memROM~14_combout\ & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \ROM|memROM~17_combout\);

-- Location: FF_X35_Y9_N49
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~25_sumout\,
	asdata => \ROM|memROM~17_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: FF_X35_Y9_N50
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~25_sumout\,
	asdata => \ROM|memROM~17_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y9_N12
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( !\CPU|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & !\CPU|PC|DOUT[5]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM|memROM~9_combout\);

-- Location: LABCELL_X39_Y9_N6
\bufferSW9|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW9|saida[0]~0_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( (!\SW[9]~input_o\ & \ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bufferSW9|saida[0]~0_combout\);

-- Location: LABCELL_X35_Y9_N9
\CPU|DECODER|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~4_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \CPU|DECODER|saida~4_combout\);

-- Location: LABCELL_X35_Y9_N27
\CPU|DECODER|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~0_combout\ = ( !\CPU|PC|DOUT\(8) & ( \CPU|DECODER|saida~4_combout\ & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & !\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \CPU|DECODER|ALT_INV_saida~4_combout\,
	combout => \CPU|DECODER|saida~0_combout\);

-- Location: LABCELL_X36_Y9_N18
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X36_Y9_N15
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~6_combout\);

-- Location: MLABCELL_X34_Y9_N39
\RAM|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~8_combout\ = ( \ROM|memROM~14_combout\ & ( (\ROM|memROM~9_combout\ & \ROM|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|dado_out[0]~8_combout\);

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

-- Location: LABCELL_X36_Y9_N36
\bufferKEY2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY2|saida[0]~0_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~7_combout\ & ( (!\KEY[2]~input_o\ & \ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \bufferKEY2|saida[0]~0_combout\);

-- Location: LABCELL_X40_Y9_N24
\RAM|dado_out[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~12_combout\ = ( \RAM|dado_out[0]~8_combout\ & ( \bufferKEY2|saida[0]~0_combout\ & ( (!\ROM|memROM~1_combout\ & (\CPU|DECODER|saida~0_combout\ & !\ROM|memROM~6_combout\)) ) ) ) # ( \RAM|dado_out[0]~8_combout\ & ( 
-- !\bufferKEY2|saida[0]~0_combout\ & ( (\bufferSW9|saida[0]~0_combout\ & (!\ROM|memROM~1_combout\ & (\CPU|DECODER|saida~0_combout\ & !\ROM|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bufferSW9|ALT_INV_saida[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~8_combout\,
	dataf => \bufferKEY2|ALT_INV_saida[0]~0_combout\,
	combout => \RAM|dado_out[0]~12_combout\);

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

-- Location: LABCELL_X39_Y9_N36
\bufferSW8|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[0]~0_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( (!\SW[8]~input_o\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( (!\SW[8]~input_o\ & !\ROM|memROM~9_combout\) ) ) ) # ( 
-- \ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( !\SW[8]~input_o\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\SW[8]~input_o\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011001100110011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[8]~input_o\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bufferSW8|saida[0]~0_combout\);

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

-- Location: LABCELL_X39_Y9_N48
\bufferKEY3|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY3|saida[0]~0_combout\ = ( \ROM|memROM~2_combout\ & ( (!\KEY[3]~input_o\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bufferKEY3|saida[0]~0_combout\);

-- Location: LABCELL_X40_Y9_N0
\RAM|dado_out[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~11_combout\ = ( \RAM|dado_out[0]~8_combout\ & ( !\ROM|memROM~6_combout\ & ( (\ROM|memROM~1_combout\ & (\CPU|DECODER|saida~0_combout\ & ((\bufferKEY3|saida[0]~0_combout\) # (\bufferSW8|saida[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bufferSW8|ALT_INV_saida[0]~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datad => \bufferKEY3|ALT_INV_saida[0]~0_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~8_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|dado_out[0]~11_combout\);

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

-- Location: LABCELL_X39_Y9_N18
\bufferKEY1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY1|saida[0]~0_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\KEY[1]~input_o\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bufferKEY1|saida[0]~0_combout\);

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

-- Location: LABCELL_X39_Y9_N57
\bufferKEY0|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY0|saida[0]~0_combout\ = ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~9_combout\ & ( (!\KEY[0]~input_o\ & (!\ROM|memROM~0_combout\ & !\ROM|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \bufferKEY0|saida[0]~0_combout\);

-- Location: MLABCELL_X34_Y9_N30
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~10_combout\);

-- Location: MLABCELL_X34_Y9_N27
\RAM|dado_out~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~9_combout\ = ( \ROM|memROM~10_combout\ & ( ((\ROM|memROM~14_combout\ & !\CPU|PC|DOUT[4]~DUPLICATE_q\)) # (\ROM|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000111111110011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|dado_out~9_combout\);

-- Location: LABCELL_X40_Y9_N12
\RAM|dado_out[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~10_combout\ = ( !\ROM|memROM~6_combout\ & ( \RAM|dado_out~9_combout\ & ( (\CPU|DECODER|saida~0_combout\ & (\RAM|dado_out[0]~8_combout\ & ((\bufferKEY0|saida[0]~0_combout\) # (\bufferKEY1|saida[0]~0_combout\)))) ) ) ) # ( 
-- \ROM|memROM~6_combout\ & ( !\RAM|dado_out~9_combout\ & ( \CPU|DECODER|saida~0_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\RAM|dado_out~9_combout\ & ( \CPU|DECODER|saida~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \bufferKEY1|ALT_INV_saida[0]~0_combout\,
	datac => \bufferKEY0|ALT_INV_saida[0]~0_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_dado_out~9_combout\,
	combout => \RAM|dado_out[0]~10_combout\);

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

-- Location: LABCELL_X36_Y9_N57
\habLEDconj~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLEDconj~0_combout\ = ( \ROM|memROM~7_combout\ & ( (\ROM|memROM~2_combout\ & \ROM|memROM~9_combout\) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \habLEDconj~0_combout\);

-- Location: LABCELL_X36_Y9_N6
\bufferSWConj|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSWConj|saida[0]~0_combout\ = ( !\habLEDconj~0_combout\ & ( \RAM|dado_out[0]~8_combout\ & ( (!\SW[0]~input_o\ & (!\ROM|memROM~1_combout\ & (\CPU|DECODER|saida~0_combout\ & !\ROM|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ALT_INV_habLEDconj~0_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~8_combout\,
	combout => \bufferSWConj|saida[0]~0_combout\);

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

-- Location: LABCELL_X36_Y9_N3
\habHEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~0_combout\ = ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \habHEX0~0_combout\);

-- Location: LABCELL_X36_Y9_N30
\bufferRESET|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferRESET|saida[0]~0_combout\ = ( \habHEX0~0_combout\ & ( \RAM|dado_out[0]~8_combout\ & ( (!\FPGA_RESET_N~input_o\ & (\CPU|DECODER|saida~0_combout\ & \ROM|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FPGA_RESET_N~input_o\,
	datac => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ALT_INV_habHEX0~0_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~8_combout\,
	combout => \bufferRESET|saida[0]~0_combout\);

-- Location: MLABCELL_X37_Y9_N54
\RAM|dado_out[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~13_combout\ = ( !\bufferRESET|saida[0]~0_combout\ & ( (!\RAM|dado_out[0]~12_combout\ & (!\RAM|dado_out[0]~11_combout\ & (!\RAM|dado_out[0]~10_combout\ & !\bufferSWConj|saida[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[0]~12_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~11_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~10_combout\,
	datad => \bufferSWConj|ALT_INV_saida[0]~0_combout\,
	dataf => \bufferRESET|ALT_INV_saida[0]~0_combout\,
	combout => \RAM|dado_out[0]~13_combout\);

-- Location: LABCELL_X36_Y9_N12
\RAM|dado_out[0]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~26_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(3)) # ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \RAM|dado_out[0]~26_combout\);

-- Location: LABCELL_X36_Y9_N48
\RAM|dado_out[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~14_combout\ = ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( \RAM|dado_out[0]~26_combout\ & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \RAM|ALT_INV_dado_out[0]~26_combout\,
	combout => \RAM|dado_out[0]~14_combout\);

-- Location: LABCELL_X36_Y9_N42
\RAM|dado_out[0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~15_combout\ = ( \ROM|memROM~3_combout\ & ( (\RAM|dado_out[0]~14_combout\ & (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~1_combout\) # (\ROM|memROM~8_combout\)))) ) ) # ( !\ROM|memROM~3_combout\ & ( (\RAM|dado_out[0]~14_combout\ & 
-- ((!\ROM|memROM~6_combout\) # ((\ROM|memROM~8_combout\ & !\ROM|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000100010001010100010001000100000001000100010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[0]~14_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|dado_out[0]~15_combout\);

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

-- Location: LABCELL_X36_Y9_N45
\RAM|dado_out[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~16_combout\ = ( \habLEDconj~0_combout\ ) # ( !\habLEDconj~0_combout\ & ( (!\RAM|dado_out[0]~14_combout\) # (((\SW[1]~input_o\) # (\ROM|memROM~1_combout\)) # (\ROM|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[0]~14_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_habLEDconj~0_combout\,
	combout => \RAM|dado_out[1]~16_combout\);

-- Location: MLABCELL_X37_Y9_N48
\RAM|dado_out[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~17_combout\ = ( \habLEDconj~0_combout\ & ( \RAM|dado_out[0]~8_combout\ & ( (\CPU|DECODER|saida~0_combout\ & !\RAM|dado_out~9_combout\) ) ) ) # ( !\habLEDconj~0_combout\ & ( \RAM|dado_out[0]~8_combout\ & ( (\CPU|DECODER|saida~0_combout\ & 
-- ((!\RAM|dado_out~9_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~1_combout\)))) ) ) ) # ( \habLEDconj~0_combout\ & ( !\RAM|dado_out[0]~8_combout\ & ( (\CPU|DECODER|saida~0_combout\ & !\RAM|dado_out~9_combout\) ) ) ) # ( !\habLEDconj~0_combout\ & ( 
-- !\RAM|dado_out[0]~8_combout\ & ( (\CPU|DECODER|saida~0_combout\ & !\RAM|dado_out~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101010000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \RAM|ALT_INV_dado_out~9_combout\,
	datae => \ALT_INV_habLEDconj~0_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~8_combout\,
	combout => \RAM|dado_out[1]~17_combout\);

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

-- Location: LABCELL_X39_Y9_N15
\RAM|dado_out[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[2]~18_combout\ = ( \ROM|memROM~1_combout\ ) # ( !\ROM|memROM~1_combout\ & ( (((!\RAM|dado_out[0]~14_combout\) # (\habLEDconj~0_combout\)) # (\ROM|memROM~6_combout\)) # (\SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~14_combout\,
	datad => \ALT_INV_habLEDconj~0_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|dado_out[2]~18_combout\);

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

-- Location: LABCELL_X39_Y9_N30
\RAM|dado_out[3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[3]~19_combout\ = ( \ROM|memROM~1_combout\ ) # ( !\ROM|memROM~1_combout\ & ( (((!\RAM|dado_out[0]~14_combout\) # (\habLEDconj~0_combout\)) # (\ROM|memROM~6_combout\)) # (\SW[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~14_combout\,
	datad => \ALT_INV_habLEDconj~0_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|dado_out[3]~19_combout\);

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

-- Location: LABCELL_X39_Y9_N24
\RAM|dado_out[4]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[4]~20_combout\ = ( \ROM|memROM~1_combout\ ) # ( !\ROM|memROM~1_combout\ & ( (((!\RAM|dado_out[0]~14_combout\) # (\habLEDconj~0_combout\)) # (\ROM|memROM~6_combout\)) # (\SW[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~14_combout\,
	datad => \ALT_INV_habLEDconj~0_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|dado_out[4]~20_combout\);

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

-- Location: MLABCELL_X37_Y9_N30
\RAM|dado_out[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[5]~21_combout\ = ( \ROM|memROM~1_combout\ & ( \habLEDconj~0_combout\ ) ) # ( !\ROM|memROM~1_combout\ & ( \habLEDconj~0_combout\ ) ) # ( \ROM|memROM~1_combout\ & ( !\habLEDconj~0_combout\ ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- !\habLEDconj~0_combout\ & ( ((!\RAM|dado_out[0]~14_combout\) # (\ROM|memROM~6_combout\)) # (\SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \RAM|ALT_INV_dado_out[0]~14_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ALT_INV_habLEDconj~0_combout\,
	combout => \RAM|dado_out[5]~21_combout\);

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

-- Location: LABCELL_X39_Y9_N3
\RAM|dado_out[6]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[6]~22_combout\ = ( \ROM|memROM~1_combout\ ) # ( !\ROM|memROM~1_combout\ & ( (((!\RAM|dado_out[0]~14_combout\) # (\habLEDconj~0_combout\)) # (\ROM|memROM~6_combout\)) # (\SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~14_combout\,
	datad => \ALT_INV_habLEDconj~0_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|dado_out[6]~22_combout\);

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

-- Location: LABCELL_X36_Y9_N21
\RAM|dado_out[7]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[7]~23_combout\ = ( \habLEDconj~0_combout\ ) # ( !\habLEDconj~0_combout\ & ( (((!\RAM|dado_out[0]~14_combout\) # (\ROM|memROM~1_combout\)) # (\ROM|memROM~6_combout\)) # (\SW[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~14_combout\,
	dataf => \ALT_INV_habLEDconj~0_combout\,
	combout => \RAM|dado_out[7]~23_combout\);

-- Location: MLABCELL_X34_Y9_N9
\CPU|DECODER|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~2_combout\ = ( !\ROM|memROM~15_combout\ & ( (!\ROM|memROM~16_combout\ & (\ROM|memROM~4_combout\ & \ROM|memROM~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DECODER|Equal1~2_combout\);

-- Location: MLABCELL_X34_Y9_N45
\CPU|DECODER|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~1_combout\ = ( \ROM|memROM~15_combout\ & ( (!\ROM|memROM~16_combout\ & ((!\ROM|memROM~4_combout\) # (!\ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DECODER|Equal1~1_combout\);

-- Location: LABCELL_X40_Y9_N6
\RAM|dado_out[0]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~25_combout\ = ( \RAM|dado_out[0]~11_combout\ & ( \RAM|dado_out[0]~12_combout\ & ( !\RAM|dado_out[0]~15_combout\ ) ) ) # ( !\RAM|dado_out[0]~11_combout\ & ( \RAM|dado_out[0]~12_combout\ & ( !\RAM|dado_out[0]~15_combout\ ) ) ) # ( 
-- \RAM|dado_out[0]~11_combout\ & ( !\RAM|dado_out[0]~12_combout\ & ( !\RAM|dado_out[0]~15_combout\ ) ) ) # ( !\RAM|dado_out[0]~11_combout\ & ( !\RAM|dado_out[0]~12_combout\ & ( (!\RAM|dado_out[0]~15_combout\) # ((!\bufferRESET|saida[0]~0_combout\ & 
-- (!\bufferSWConj|saida[0]~0_combout\ & !\RAM|dado_out[0]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bufferRESET|ALT_INV_saida[0]~0_combout\,
	datab => \bufferSWConj|ALT_INV_saida[0]~0_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~15_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~10_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~11_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~12_combout\,
	combout => \RAM|dado_out[0]~25_combout\);

-- Location: LABCELL_X40_Y9_N30
\CPU|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~34_cout\ = CARRY(( !\CPU|DECODER|Equal1~2_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	cin => GND,
	cout => \CPU|ULA|Add0~34_cout\);

-- Location: LABCELL_X40_Y9_N33
\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( \CPU|REG_A|DOUT\(0) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[0]~25_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~1_combout\)))) ) + ( \CPU|ULA|Add0~34_cout\ 
-- ))
-- \CPU|ULA|Add0~2\ = CARRY(( \CPU|REG_A|DOUT\(0) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[0]~25_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~1_combout\)))) ) + ( \CPU|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101010011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(0),
	dataf => \RAM|ALT_INV_dado_out[0]~25_combout\,
	cin => \CPU|ULA|Add0~34_cout\,
	sumout => \CPU|ULA|Add0~1_sumout\,
	cout => \CPU|ULA|Add0~2\);

-- Location: MLABCELL_X37_Y9_N15
\habSWconj~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habSWconj~1_combout\ = ( !\ROM|memROM~1_combout\ & ( \RAM|dado_out[0]~8_combout\ & ( (!\ROM|memROM~6_combout\ & \CPU|DECODER|saida~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datad => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~8_combout\,
	combout => \habSWconj~1_combout\);

-- Location: LABCELL_X35_Y9_N15
\habHEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX2~0_combout\ = ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~9_combout\ & !\ROM|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \habHEX2~0_combout\);

-- Location: MLABCELL_X37_Y9_N0
\bufferKEY3|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY3|saida[0]~1_combout\ = ( \ROM|memROM~1_combout\ & ( \RAM|dado_out[0]~8_combout\ & ( (!\KEY[3]~input_o\ & (!\ROM|memROM~6_combout\ & (\CPU|DECODER|saida~0_combout\ & \habHEX2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datad => \ALT_INV_habHEX2~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~8_combout\,
	combout => \bufferKEY3|saida[0]~1_combout\);

-- Location: MLABCELL_X37_Y9_N18
\bufferSW8|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[0]~1_combout\ = ( \ROM|memROM~1_combout\ & ( \RAM|dado_out[0]~8_combout\ & ( (!\SW[8]~input_o\ & (!\ROM|memROM~6_combout\ & (\CPU|DECODER|saida~0_combout\ & !\habLEDconj~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datad => \ALT_INV_habLEDconj~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~8_combout\,
	combout => \bufferSW8|saida[0]~1_combout\);

-- Location: MLABCELL_X37_Y9_N6
\RAM|dado_out[0]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~24_combout\ = ( !\bufferKEY3|saida[0]~1_combout\ & ( !\bufferSW8|saida[0]~1_combout\ & ( (!\bufferSWConj|saida[0]~0_combout\ & ((!\habSWconj~1_combout\) # ((!\bufferKEY2|saida[0]~0_combout\ & !\bufferSW9|saida[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bufferKEY2|ALT_INV_saida[0]~0_combout\,
	datab => \ALT_INV_habSWconj~1_combout\,
	datac => \bufferSWConj|ALT_INV_saida[0]~0_combout\,
	datad => \bufferSW9|ALT_INV_saida[0]~0_combout\,
	datae => \bufferKEY3|ALT_INV_saida[0]~1_combout\,
	dataf => \bufferSW8|ALT_INV_saida[0]~1_combout\,
	combout => \RAM|dado_out[0]~24_combout\);

-- Location: LABCELL_X40_Y9_N18
\CPU|MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[0]~0_combout\ = ( \CPU|DECODER|Equal1~1_combout\ & ( \RAM|dado_out[0]~24_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\CPU|DECODER|Equal1~1_combout\ & ( \RAM|dado_out[0]~24_combout\ & ( (!\RAM|dado_out[0]~15_combout\) # 
-- ((!\RAM|dado_out[0]~10_combout\ & !\bufferRESET|saida[0]~0_combout\)) ) ) ) # ( \CPU|DECODER|Equal1~1_combout\ & ( !\RAM|dado_out[0]~24_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\CPU|DECODER|Equal1~1_combout\ & ( !\RAM|dado_out[0]~24_combout\ & ( 
-- !\RAM|dado_out[0]~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000001111111111101010111010100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[0]~15_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~10_combout\,
	datac => \bufferRESET|ALT_INV_saida[0]~0_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~24_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[0]~0_combout\);

-- Location: MLABCELL_X34_Y9_N6
\CPU|DECODER|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~2_combout\ = ( \ROM|memROM~15_combout\ & ( (!\ROM|memROM~16_combout\ & ((!\ROM|memROM~13_combout\) # (!\ROM|memROM~4_combout\))) ) ) # ( !\ROM|memROM~15_combout\ & ( (\ROM|memROM~16_combout\ & ((!\ROM|memROM~13_combout\) # 
-- (!\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DECODER|saida~2_combout\);

-- Location: MLABCELL_X34_Y9_N24
\CPU|DECODER|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~3_combout\ = ( \ROM|memROM~15_combout\ & ( (!\ROM|memROM~16_combout\ & ((!\ROM|memROM~4_combout\) # (!\ROM|memROM~13_combout\))) ) ) # ( !\ROM|memROM~15_combout\ & ( ((\ROM|memROM~4_combout\ & \ROM|memROM~13_combout\)) # 
-- (\ROM|memROM~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111111110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DECODER|saida~3_combout\);

-- Location: FF_X40_Y9_N35
\CPU|REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~1_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(0));

-- Location: MLABCELL_X34_Y9_N48
\CPU|DECODER|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[0]~1_combout\ = ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~9_combout\ & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (!\ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODER|saida[0]~1_combout\);

-- Location: LABCELL_X35_Y8_N30
\habLEDconj~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLEDconj~1_combout\ = ( !\ROM|memROM~17_combout\ & ( \CPU|DECODER|saida[0]~1_combout\ & ( (!\habLEDconj~0_combout\ & (!\ROM|memROM~1_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habLEDconj~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	combout => \habLEDconj~1_combout\);

-- Location: FF_X35_Y8_N13
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

-- Location: LABCELL_X40_Y9_N36
\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( \CPU|REG_A|DOUT\(1) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[1]~16_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~3_combout\)))) ) + ( \CPU|ULA|Add0~2\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( \CPU|REG_A|DOUT\(1) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[1]~16_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~3_combout\)))) ) + ( \CPU|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(1),
	dataf => \RAM|ALT_INV_dado_out[1]~16_combout\,
	cin => \CPU|ULA|Add0~2\,
	sumout => \CPU|ULA|Add0~5_sumout\,
	cout => \CPU|ULA|Add0~6\);

-- Location: LABCELL_X39_Y9_N51
\CPU|MUX_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[1]~1_combout\ = ( \CPU|DECODER|Equal1~1_combout\ & ( \ROM|memROM~3_combout\ ) ) # ( !\CPU|DECODER|Equal1~1_combout\ & ( \RAM|dado_out[1]~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \RAM|ALT_INV_dado_out[1]~16_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[1]~1_combout\);

-- Location: FF_X40_Y9_N38
\CPU|REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~5_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(1));

-- Location: FF_X35_Y8_N32
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

-- Location: LABCELL_X40_Y9_N39
\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( \CPU|REG_A|DOUT\(2) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[2]~18_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~6_combout\)))) ) + ( \CPU|ULA|Add0~6\ ))
-- \CPU|ULA|Add0~10\ = CARRY(( \CPU|REG_A|DOUT\(2) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[2]~18_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~6_combout\)))) ) + ( \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(2),
	dataf => \RAM|ALT_INV_dado_out[2]~18_combout\,
	cin => \CPU|ULA|Add0~6\,
	sumout => \CPU|ULA|Add0~9_sumout\,
	cout => \CPU|ULA|Add0~10\);

-- Location: LABCELL_X39_Y9_N0
\CPU|MUX_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[2]~2_combout\ = ( \RAM|dado_out[2]~18_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\) # (\ROM|memROM~6_combout\) ) ) # ( !\RAM|dado_out[2]~18_combout\ & ( (\ROM|memROM~6_combout\ & \CPU|DECODER|Equal1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	dataf => \RAM|ALT_INV_dado_out[2]~18_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[2]~2_combout\);

-- Location: FF_X40_Y9_N41
\CPU|REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~9_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(2));

-- Location: FF_X35_Y8_N40
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

-- Location: LABCELL_X40_Y9_N42
\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( \CPU|REG_A|DOUT\(3) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & \RAM|dado_out[3]~19_combout\))) ) + ( \CPU|ULA|Add0~10\ ))
-- \CPU|ULA|Add0~14\ = CARRY(( \CPU|REG_A|DOUT\(3) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & \RAM|dado_out[3]~19_combout\))) ) + ( \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110010101100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \RAM|ALT_INV_dado_out[3]~19_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA|Add0~10\,
	sumout => \CPU|ULA|Add0~13_sumout\,
	cout => \CPU|ULA|Add0~14\);

-- Location: LABCELL_X39_Y9_N33
\CPU|MUX_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[3]~3_combout\ = ( !\CPU|DECODER|Equal1~1_combout\ & ( \RAM|dado_out[3]~19_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_dado_out[3]~19_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[3]~3_combout\);

-- Location: FF_X40_Y9_N44
\CPU|REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~13_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(3));

-- Location: FF_X35_Y8_N44
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

-- Location: LABCELL_X40_Y9_N45
\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( \CPU|REG_A|DOUT\(4) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & \RAM|dado_out[4]~20_combout\))) ) + ( \CPU|ULA|Add0~14\ ))
-- \CPU|ULA|Add0~18\ = CARRY(( \CPU|REG_A|DOUT\(4) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & \RAM|dado_out[4]~20_combout\))) ) + ( \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110010101100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \RAM|ALT_INV_dado_out[4]~20_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA|Add0~14\,
	sumout => \CPU|ULA|Add0~17_sumout\,
	cout => \CPU|ULA|Add0~18\);

-- Location: LABCELL_X39_Y9_N27
\CPU|MUX_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[4]~4_combout\ = ( \RAM|dado_out[4]~20_combout\ & ( !\CPU|DECODER|Equal1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	dataf => \RAM|ALT_INV_dado_out[4]~20_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[4]~4_combout\);

-- Location: FF_X40_Y9_N47
\CPU|REG_A|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~17_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(4));

-- Location: LABCELL_X36_Y8_N15
\RegLEDconj|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegLEDconj|DOUT[4]~feeder_combout\ = ( \CPU|REG_A|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	combout => \RegLEDconj|DOUT[4]~feeder_combout\);

-- Location: FF_X36_Y8_N16
\RegLEDconj|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RegLEDconj|DOUT[4]~feeder_combout\,
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(4));

-- Location: LABCELL_X40_Y9_N48
\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( \CPU|REG_A|DOUT\(5) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[5]~21_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~8_combout\)))) ) + ( \CPU|ULA|Add0~18\ ))
-- \CPU|ULA|Add0~22\ = CARRY(( \CPU|REG_A|DOUT\(5) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[5]~21_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~8_combout\)))) ) + ( \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(5),
	dataf => \RAM|ALT_INV_dado_out[5]~21_combout\,
	cin => \CPU|ULA|Add0~18\,
	sumout => \CPU|ULA|Add0~21_sumout\,
	cout => \CPU|ULA|Add0~22\);

-- Location: MLABCELL_X37_Y9_N57
\CPU|MUX_ULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[5]~5_combout\ = ( \CPU|DECODER|Equal1~1_combout\ & ( \ROM|memROM~8_combout\ ) ) # ( !\CPU|DECODER|Equal1~1_combout\ & ( \RAM|dado_out[5]~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_dado_out[5]~21_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[5]~5_combout\);

-- Location: FF_X40_Y9_N50
\CPU|REG_A|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~21_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(5));

-- Location: LABCELL_X35_Y8_N15
\RegLEDconj|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegLEDconj|DOUT[5]~feeder_combout\ = ( \CPU|REG_A|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	combout => \RegLEDconj|DOUT[5]~feeder_combout\);

-- Location: FF_X35_Y8_N16
\RegLEDconj|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RegLEDconj|DOUT[5]~feeder_combout\,
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(5));

-- Location: LABCELL_X40_Y9_N51
\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( \CPU|REG_A|DOUT\(6) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[6]~22_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~17_combout\)))) ) + ( \CPU|ULA|Add0~22\ ))
-- \CPU|ULA|Add0~26\ = CARRY(( \CPU|REG_A|DOUT\(6) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[6]~22_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~17_combout\)))) ) + ( \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(6),
	dataf => \RAM|ALT_INV_dado_out[6]~22_combout\,
	cin => \CPU|ULA|Add0~22\,
	sumout => \CPU|ULA|Add0~25_sumout\,
	cout => \CPU|ULA|Add0~26\);

-- Location: LABCELL_X39_Y9_N12
\CPU|MUX_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[6]~6_combout\ = ( \CPU|DECODER|Equal1~1_combout\ & ( \ROM|memROM~17_combout\ ) ) # ( !\CPU|DECODER|Equal1~1_combout\ & ( \RAM|dado_out[6]~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_dado_out[6]~22_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[6]~6_combout\);

-- Location: FF_X40_Y9_N53
\CPU|REG_A|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~25_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(6));

-- Location: LABCELL_X35_Y8_N45
\RegLEDconj|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegLEDconj|DOUT[6]~feeder_combout\ = ( \CPU|REG_A|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	combout => \RegLEDconj|DOUT[6]~feeder_combout\);

-- Location: FF_X35_Y8_N46
\RegLEDconj|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RegLEDconj|DOUT[6]~feeder_combout\,
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(6));

-- Location: LABCELL_X40_Y9_N54
\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( \CPU|REG_A|DOUT\(7) ) + ( !\CPU|DECODER|Equal1~2_combout\ $ (((\RAM|dado_out[7]~23_combout\ & !\CPU|DECODER|Equal1~1_combout\))) ) + ( \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001010110010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \RAM|ALT_INV_dado_out[7]~23_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(7),
	cin => \CPU|ULA|Add0~26\,
	sumout => \CPU|ULA|Add0~29_sumout\);

-- Location: LABCELL_X39_Y9_N45
\CPU|MUX_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[7]~7_combout\ = ( \RAM|dado_out[7]~23_combout\ & ( !\CPU|DECODER|Equal1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_dado_out[7]~23_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[7]~7_combout\);

-- Location: FF_X40_Y9_N56
\CPU|REG_A|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~29_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(7));

-- Location: FF_X35_Y8_N34
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

-- Location: MLABCELL_X34_Y9_N3
\habHEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~1_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~15_combout\ & ( (\ROM|memROM~16_combout\ & (!\ROM|memROM~17_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~13_combout\))) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~15_combout\ & ( 
-- (\ROM|memROM~16_combout\ & !\ROM|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \habHEX0~1_combout\);

-- Location: MLABCELL_X34_Y8_N12
\FFLED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED8|DOUT~0_combout\ = ( \FFLED8|DOUT~q\ & ( \ROM|memROM~1_combout\ & ( ((!\habHEX0~1_combout\) # (\habLEDconj~0_combout\)) # (\CPU|REG_A|DOUT\(0)) ) ) ) # ( !\FFLED8|DOUT~q\ & ( \ROM|memROM~1_combout\ & ( (\CPU|REG_A|DOUT\(0) & 
-- (!\habLEDconj~0_combout\ & \habHEX0~1_combout\)) ) ) ) # ( \FFLED8|DOUT~q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000100000001001111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG_A|ALT_INV_DOUT\(0),
	datab => \ALT_INV_habLEDconj~0_combout\,
	datac => \ALT_INV_habHEX0~1_combout\,
	datae => \FFLED8|ALT_INV_DOUT~q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \FFLED8|DOUT~0_combout\);

-- Location: FF_X34_Y8_N13
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

-- Location: MLABCELL_X34_Y8_N30
\FFLED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED9|DOUT~0_combout\ = ( \FFLED9|DOUT~q\ & ( \habHEX0~1_combout\ & ( (((!\ROM|memROM~3_combout\) # (\ROM|memROM~1_combout\)) # (\CPU|REG_A|DOUT\(0))) # (\ROM|memROM~8_combout\) ) ) ) # ( !\FFLED9|DOUT~q\ & ( \habHEX0~1_combout\ & ( 
-- (!\ROM|memROM~8_combout\ & (\CPU|REG_A|DOUT\(0) & (\ROM|memROM~3_combout\ & !\ROM|memROM~1_combout\))) ) ) ) # ( \FFLED9|DOUT~q\ & ( !\habHEX0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|REG_A|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \FFLED9|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_habHEX0~1_combout\,
	combout => \FFLED9|DOUT~0_combout\);

-- Location: FF_X34_Y8_N32
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

-- Location: MLABCELL_X37_Y9_N39
\habSWconj~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habSWconj~0_combout\ = ( !\ROM|memROM~1_combout\ & ( !\habLEDconj~0_combout\ & ( (\CPU|DECODER|saida~0_combout\ & (!\ROM|memROM~6_combout\ & \RAM|dado_out[0]~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ALT_INV_habLEDconj~0_combout\,
	combout => \habSWconj~0_combout\);

-- Location: MLABCELL_X34_Y9_N21
\habHEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~2_combout\ = ( \CPU|DECODER|saida[0]~1_combout\ & ( (\ROM|memROM~16_combout\ & (!\ROM|memROM~17_combout\ & (!\ROM|memROM~6_combout\ & \habHEX0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ALT_INV_habHEX0~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	combout => \habHEX0~2_combout\);

-- Location: FF_X34_Y9_N32
\HEX0_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \habHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(3));

-- Location: FF_X34_Y9_N38
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
	ena => \habHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(0));

-- Location: FF_X34_Y9_N1
\HEX0_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \habHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(2));

-- Location: FF_X34_Y9_N41
\HEX0_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \habHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(1));

-- Location: MLABCELL_X34_Y7_N51
\HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( !\HEX0_decoder|REG_4bits|DOUT\(2) & ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( (\HEX0_decoder|REG_4bits|DOUT\(3) & \HEX0_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( 
-- !\HEX0_decoder|REG_4bits|DOUT\(1) & ( !\HEX0_decoder|REG_4bits|DOUT\(3) $ (\HEX0_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(2) & ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( (!\HEX0_decoder|REG_4bits|DOUT\(3) & 
-- \HEX0_decoder|REG_4bits|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010101010100101010100000000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X34_Y7_N18
\HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( (!\HEX0_decoder|REG_4bits|DOUT\(0)) # (\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(2) & ( 
-- \HEX0_decoder|REG_4bits|DOUT\(1) & ( (\HEX0_decoder|REG_4bits|DOUT\(0) & \HEX0_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( !\HEX0_decoder|REG_4bits|DOUT\(0) $ 
-- (!\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X34_Y7_N24
\HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( \HEX0_decoder|REG_4bits|DOUT\(3) ) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(2) & ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( 
-- (!\HEX0_decoder|REG_4bits|DOUT\(0) & !\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( (!\HEX0_decoder|REG_4bits|DOUT\(0) & \HEX0_decoder|REG_4bits|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101010100000101000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X34_Y7_N54
\HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( \HEX0_decoder|REG_4bits|DOUT\(0) ) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(2) & ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( 
-- (!\HEX0_decoder|REG_4bits|DOUT\(0) & \HEX0_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( (!\HEX0_decoder|REG_4bits|DOUT\(0) & !\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( 
-- !\HEX0_decoder|REG_4bits|DOUT\(2) & ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( (\HEX0_decoder|REG_4bits|DOUT\(0) & !\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101000001010000000001010000010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X34_Y7_N36
\HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( (\HEX0_decoder|REG_4bits|DOUT\(0) & !\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(2) & ( 
-- \HEX0_decoder|REG_4bits|DOUT\(1) & ( (\HEX0_decoder|REG_4bits|DOUT\(0) & !\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( !\HEX0_decoder|REG_4bits|DOUT\(3) ) ) ) # ( 
-- !\HEX0_decoder|REG_4bits|DOUT\(2) & ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( \HEX0_decoder|REG_4bits|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111100001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X34_Y7_N30
\HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( (\HEX0_decoder|REG_4bits|DOUT\(0) & !\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(2) & ( 
-- \HEX0_decoder|REG_4bits|DOUT\(1) & ( !\HEX0_decoder|REG_4bits|DOUT\(3) ) ) ) # ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( (\HEX0_decoder|REG_4bits|DOUT\(0) & \HEX0_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( 
-- !\HEX0_decoder|REG_4bits|DOUT\(2) & ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( (\HEX0_decoder|REG_4bits|DOUT\(0) & !\HEX0_decoder|REG_4bits|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000001010000010111110000111100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X34_Y7_N15
\HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( (!\HEX0_decoder|REG_4bits|DOUT\(3) & \HEX0_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( \HEX0_decoder|REG_4bits|DOUT\(2) & ( 
-- !\HEX0_decoder|REG_4bits|DOUT\(1) & ( (\HEX0_decoder|REG_4bits|DOUT\(3) & !\HEX0_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(2) & ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( !\HEX0_decoder|REG_4bits|DOUT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010101010000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X36_Y9_N54
\habHEX5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX5~0_combout\ = ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \habHEX5~0_combout\);

-- Location: LABCELL_X35_Y8_N36
\habHEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX1~0_combout\ = ( !\ROM|memROM~17_combout\ & ( \CPU|DECODER|saida[0]~1_combout\ & ( (\ROM|memROM~16_combout\ & (\habHEX5~0_combout\ & !\ROM|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ALT_INV_habHEX5~0_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	combout => \habHEX1~0_combout\);

-- Location: FF_X35_Y7_N47
\HEX1_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \habHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_decoder|REG_4bits|DOUT\(1));

-- Location: FF_X35_Y7_N44
\HEX1_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \habHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_decoder|REG_4bits|DOUT\(2));

-- Location: FF_X35_Y7_N38
\HEX1_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \habHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_decoder|REG_4bits|DOUT\(0));

-- Location: FF_X35_Y7_N41
\HEX1_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \habHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_decoder|REG_4bits|DOUT\(3));

-- Location: LABCELL_X35_Y7_N3
\HEX1_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX1_decoder|REG_4bits|DOUT\(3) & ( (\HEX1_decoder|REG_4bits|DOUT\(0) & (!\HEX1_decoder|REG_4bits|DOUT\(1) $ (!\HEX1_decoder|REG_4bits|DOUT\(2)))) ) ) # ( !\HEX1_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX1_decoder|REG_4bits|DOUT\(1) & (!\HEX1_decoder|REG_4bits|DOUT\(2) $ (!\HEX1_decoder|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X34_Y7_N6
\HEX1_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX1_decoder|REG_4bits|DOUT\(2) & ( \HEX1_decoder|REG_4bits|DOUT\(1) & ( (!\HEX1_decoder|REG_4bits|DOUT\(0)) # (\HEX1_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( !\HEX1_decoder|REG_4bits|DOUT\(2) & ( 
-- \HEX1_decoder|REG_4bits|DOUT\(1) & ( (\HEX1_decoder|REG_4bits|DOUT\(0) & \HEX1_decoder|REG_4bits|DOUT\(3)) ) ) ) # ( \HEX1_decoder|REG_4bits|DOUT\(2) & ( !\HEX1_decoder|REG_4bits|DOUT\(1) & ( !\HEX1_decoder|REG_4bits|DOUT\(0) $ 
-- (!\HEX1_decoder|REG_4bits|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X35_Y7_N54
\HEX1_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX1_decoder|REG_4bits|DOUT\(3) & ( (\HEX1_decoder|REG_4bits|DOUT\(2) & ((!\HEX1_decoder|REG_4bits|DOUT\(0)) # (\HEX1_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX1_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX1_decoder|REG_4bits|DOUT\(2) & (!\HEX1_decoder|REG_4bits|DOUT\(0) & \HEX1_decoder|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X35_Y7_N36
\HEX1_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX1_decoder|REG_4bits|DOUT\(3) & ( (\HEX1_decoder|REG_4bits|DOUT\(1) & (!\HEX1_decoder|REG_4bits|DOUT\(2) $ (\HEX1_decoder|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX1_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX1_decoder|REG_4bits|DOUT\(2) & (!\HEX1_decoder|REG_4bits|DOUT\(1) & \HEX1_decoder|REG_4bits|DOUT\(0))) # (\HEX1_decoder|REG_4bits|DOUT\(2) & (!\HEX1_decoder|REG_4bits|DOUT\(1) $ (\HEX1_decoder|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000011001100001100001100001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X35_Y7_N39
\HEX1_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX1_decoder|REG_4bits|DOUT\(1) & ((!\HEX1_decoder|REG_4bits|DOUT\(2) & (\HEX1_decoder|REG_4bits|DOUT\(0))) # (\HEX1_decoder|REG_4bits|DOUT\(2) & ((!\HEX1_decoder|REG_4bits|DOUT\(3)))))) # 
-- (\HEX1_decoder|REG_4bits|DOUT\(1) & (((\HEX1_decoder|REG_4bits|DOUT\(0) & !\HEX1_decoder|REG_4bits|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001000001011110000100000101111000010000010111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X35_Y7_N45
\HEX1_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX1_decoder|REG_4bits|DOUT\(2) & ( (\HEX1_decoder|REG_4bits|DOUT\(0) & (!\HEX1_decoder|REG_4bits|DOUT\(3) $ (!\HEX1_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX1_decoder|REG_4bits|DOUT\(2) & ( 
-- (!\HEX1_decoder|REG_4bits|DOUT\(3) & ((\HEX1_decoder|REG_4bits|DOUT\(1)) # (\HEX1_decoder|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001001100110000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X35_Y7_N42
\HEX1_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = (!\HEX1_decoder|REG_4bits|DOUT\(0) & (!\HEX1_decoder|REG_4bits|DOUT\(1) & (!\HEX1_decoder|REG_4bits|DOUT\(3) $ (\HEX1_decoder|REG_4bits|DOUT\(2))))) # (\HEX1_decoder|REG_4bits|DOUT\(0) & 
-- (!\HEX1_decoder|REG_4bits|DOUT\(3) & (!\HEX1_decoder|REG_4bits|DOUT\(1) $ (\HEX1_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y8_N51
\habHEX2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX2~1_combout\ = ( \habHEX2~0_combout\ & ( \CPU|DECODER|saida[0]~1_combout\ & ( (\ROM|memROM~16_combout\ & (!\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ALT_INV_habHEX2~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	combout => \habHEX2~1_combout\);

-- Location: FF_X35_Y8_N53
\HEX2_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \habHEX2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(0));

-- Location: FF_X35_Y8_N22
\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \habHEX2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X35_Y8_N49
\HEX2_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \habHEX2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(1));

-- Location: FF_X35_Y8_N19
\HEX2_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \habHEX2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(2));

-- Location: LABCELL_X36_Y8_N18
\HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( !\HEX2_decoder|REG_4bits|DOUT\(1) & ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( !\HEX2_decoder|REG_4bits|DOUT\(0) $ (\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\) ) ) ) # ( 
-- \HEX2_decoder|REG_4bits|DOUT\(1) & ( !\HEX2_decoder|REG_4bits|DOUT\(2) & ( (\HEX2_decoder|REG_4bits|DOUT\(0) & \HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\) ) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(1) & ( !\HEX2_decoder|REG_4bits|DOUT\(2) & ( 
-- (\HEX2_decoder|REG_4bits|DOUT\(0) & !\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000110000001111000011110000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X36_Y8_N24
\HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( (!\HEX2_decoder|REG_4bits|DOUT\(0)) # (\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\) ) ) ) # ( 
-- !\HEX2_decoder|REG_4bits|DOUT\(1) & ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( !\HEX2_decoder|REG_4bits|DOUT\(0) $ (!\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\) ) ) ) # ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( !\HEX2_decoder|REG_4bits|DOUT\(2) & ( 
-- (\HEX2_decoder|REG_4bits|DOUT\(0) & \HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100111100001111001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: FF_X35_Y8_N23
\HEX2_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \habHEX2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(3));

-- Location: LABCELL_X35_Y8_N3
\HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( \HEX2_decoder|REG_4bits|DOUT\(3) ) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(1) & ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( 
-- (\HEX2_decoder|REG_4bits|DOUT\(3) & !\HEX2_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( !\HEX2_decoder|REG_4bits|DOUT\(2) & ( (!\HEX2_decoder|REG_4bits|DOUT\(3) & !\HEX2_decoder|REG_4bits|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000001010101000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datae => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X36_Y8_N57
\HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(0) & ( (!\HEX2_decoder|REG_4bits|DOUT\(2) & (!\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\ & !\HEX2_decoder|REG_4bits|DOUT\(1))) # (\HEX2_decoder|REG_4bits|DOUT\(2) & 
-- ((\HEX2_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(0) & ( (!\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\ & (\HEX2_decoder|REG_4bits|DOUT\(2) & !\HEX2_decoder|REG_4bits|DOUT\(1))) # (\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\ & 
-- (!\HEX2_decoder|REG_4bits|DOUT\(2) & \HEX2_decoder|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100100000111000001100100100001001001000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datae => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X36_Y8_N48
\HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( (\HEX2_decoder|REG_4bits|DOUT\(0) & !\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\) ) ) ) # ( 
-- !\HEX2_decoder|REG_4bits|DOUT\(1) & ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( !\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\ ) ) ) # ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( !\HEX2_decoder|REG_4bits|DOUT\(2) & ( (\HEX2_decoder|REG_4bits|DOUT\(0) & 
-- !\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\) ) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(1) & ( !\HEX2_decoder|REG_4bits|DOUT\(2) & ( \HEX2_decoder|REG_4bits|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100000011000011110000111100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X36_Y8_N9
\HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(0) & ( !\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\ $ (((\HEX2_decoder|REG_4bits|DOUT\(2) & !\HEX2_decoder|REG_4bits|DOUT\(1)))) ) ) # ( 
-- !\HEX2_decoder|REG_4bits|DOUT\(0) & ( (!\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\ & (!\HEX2_decoder|REG_4bits|DOUT\(2) & \HEX2_decoder|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000100110101001101000001000000010001001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datae => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X36_Y8_N0
\HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( (\HEX2_decoder|REG_4bits|DOUT\(0) & !\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\) ) ) ) # ( 
-- !\HEX2_decoder|REG_4bits|DOUT\(1) & ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( (!\HEX2_decoder|REG_4bits|DOUT\(0) & \HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\) ) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(1) & ( !\HEX2_decoder|REG_4bits|DOUT\(2) & ( 
-- !\HEX2_decoder|REG_4bits|DOUT[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000001100000011000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y8_N9
\habHEX3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX3~0_combout\ = ( !\ROM|memROM~17_combout\ & ( \CPU|DECODER|saida[0]~1_combout\ & ( (\ROM|memROM~16_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & \habHEX2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ALT_INV_habHEX2~0_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	combout => \habHEX3~0_combout\);

-- Location: FF_X35_Y7_N50
\HEX3_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \habHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_decoder|REG_4bits|DOUT\(2));

-- Location: FF_X35_Y7_N20
\HEX3_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \habHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_decoder|REG_4bits|DOUT\(3));

-- Location: FF_X35_Y7_N14
\HEX3_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \habHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_decoder|REG_4bits|DOUT\(0));

-- Location: FF_X35_Y7_N23
\HEX3_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \habHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_decoder|REG_4bits|DOUT\(1));

-- Location: LABCELL_X35_Y7_N15
\HEX3_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = (!\HEX3_decoder|REG_4bits|DOUT\(2) & (\HEX3_decoder|REG_4bits|DOUT\(0) & (!\HEX3_decoder|REG_4bits|DOUT\(3) $ (\HEX3_decoder|REG_4bits|DOUT\(1))))) # (\HEX3_decoder|REG_4bits|DOUT\(2) & 
-- (!\HEX3_decoder|REG_4bits|DOUT\(1) & (!\HEX3_decoder|REG_4bits|DOUT\(3) $ (\HEX3_decoder|REG_4bits|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100000010010010010000001001001001000000100100100100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X35_Y7_N0
\HEX3_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX3_decoder|REG_4bits|DOUT\(0) & ( (!\HEX3_decoder|REG_4bits|DOUT\(3) & (\HEX3_decoder|REG_4bits|DOUT\(2) & !\HEX3_decoder|REG_4bits|DOUT\(1))) # (\HEX3_decoder|REG_4bits|DOUT\(3) & 
-- ((\HEX3_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX3_decoder|REG_4bits|DOUT\(0) & ( (\HEX3_decoder|REG_4bits|DOUT\(2) & ((\HEX3_decoder|REG_4bits|DOUT\(1)) # (\HEX3_decoder|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X35_Y7_N57
\HEX3_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX3_decoder|REG_4bits|DOUT\(2) & ( (\HEX3_decoder|REG_4bits|DOUT\(3) & ((!\HEX3_decoder|REG_4bits|DOUT\(0)) # (\HEX3_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX3_decoder|REG_4bits|DOUT\(2) & ( 
-- (!\HEX3_decoder|REG_4bits|DOUT\(3) & (!\HEX3_decoder|REG_4bits|DOUT\(0) & \HEX3_decoder|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X35_Y7_N12
\HEX3_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX3_decoder|REG_4bits|DOUT\(2) & ( (!\HEX3_decoder|REG_4bits|DOUT\(1) & (!\HEX3_decoder|REG_4bits|DOUT\(3) & !\HEX3_decoder|REG_4bits|DOUT\(0))) # (\HEX3_decoder|REG_4bits|DOUT\(1) & 
-- ((\HEX3_decoder|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX3_decoder|REG_4bits|DOUT\(2) & ( (!\HEX3_decoder|REG_4bits|DOUT\(3) & (!\HEX3_decoder|REG_4bits|DOUT\(1) & \HEX3_decoder|REG_4bits|DOUT\(0))) # (\HEX3_decoder|REG_4bits|DOUT\(3) & 
-- (\HEX3_decoder|REG_4bits|DOUT\(1) & !\HEX3_decoder|REG_4bits|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X35_Y7_N18
\HEX3_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX3_decoder|REG_4bits|DOUT\(1) & ((!\HEX3_decoder|REG_4bits|DOUT\(2) & (\HEX3_decoder|REG_4bits|DOUT\(0))) # (\HEX3_decoder|REG_4bits|DOUT\(2) & ((!\HEX3_decoder|REG_4bits|DOUT\(3)))))) # 
-- (\HEX3_decoder|REG_4bits|DOUT\(1) & (((\HEX3_decoder|REG_4bits|DOUT\(0) & !\HEX3_decoder|REG_4bits|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100100000011100110010000001110011001000000111001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X35_Y7_N21
\HEX3_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX3_decoder|REG_4bits|DOUT\(3) & ( (\HEX3_decoder|REG_4bits|DOUT\(2) & (\HEX3_decoder|REG_4bits|DOUT\(0) & !\HEX3_decoder|REG_4bits|DOUT\(1))) ) ) # ( !\HEX3_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX3_decoder|REG_4bits|DOUT\(2) & ((\HEX3_decoder|REG_4bits|DOUT\(1)) # (\HEX3_decoder|REG_4bits|DOUT\(0)))) # (\HEX3_decoder|REG_4bits|DOUT\(2) & (\HEX3_decoder|REG_4bits|DOUT\(0) & \HEX3_decoder|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010111011001000101011101100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X35_Y7_N48
\HEX3_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX3_decoder|REG_4bits|DOUT\(3) & ( (!\HEX3_decoder|REG_4bits|DOUT\(0) & (!\HEX3_decoder|REG_4bits|DOUT\(1) & \HEX3_decoder|REG_4bits|DOUT\(2))) ) ) # ( !\HEX3_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX3_decoder|REG_4bits|DOUT\(1) & ((!\HEX3_decoder|REG_4bits|DOUT\(2)))) # (\HEX3_decoder|REG_4bits|DOUT\(1) & (\HEX3_decoder|REG_4bits|DOUT\(0) & \HEX3_decoder|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000011111100000000001100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X34_Y9_N18
\habHEX4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX4~0_combout\ = ( \ROM|memROM~6_combout\ & ( (\ROM|memROM~16_combout\ & (!\ROM|memROM~17_combout\ & (\CPU|DECODER|saida[0]~1_combout\ & \habHEX0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	datad => \ALT_INV_habHEX0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \habHEX4~0_combout\);

-- Location: FF_X34_Y9_N53
\HEX4_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \habHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_decoder|REG_4bits|DOUT\(1));

-- Location: FF_X35_Y7_N8
\HEX4_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \habHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_decoder|REG_4bits|DOUT\(0));

-- Location: FF_X35_Y7_N29
\HEX4_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \habHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_decoder|REG_4bits|DOUT\(2));

-- Location: FF_X35_Y7_N11
\HEX4_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \habHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_decoder|REG_4bits|DOUT\(3));

-- Location: LABCELL_X35_Y7_N51
\HEX4_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX4_decoder|REG_4bits|DOUT\(3) & ( (\HEX4_decoder|REG_4bits|DOUT\(0) & (!\HEX4_decoder|REG_4bits|DOUT\(1) $ (!\HEX4_decoder|REG_4bits|DOUT\(2)))) ) ) # ( !\HEX4_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX4_decoder|REG_4bits|DOUT\(1) & (!\HEX4_decoder|REG_4bits|DOUT\(0) $ (!\HEX4_decoder|REG_4bits|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X35_Y7_N30
\HEX4_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX4_decoder|REG_4bits|DOUT\(3) & ( (!\HEX4_decoder|REG_4bits|DOUT\(0) & ((\HEX4_decoder|REG_4bits|DOUT\(2)))) # (\HEX4_decoder|REG_4bits|DOUT\(0) & (\HEX4_decoder|REG_4bits|DOUT\(1))) ) ) # ( 
-- !\HEX4_decoder|REG_4bits|DOUT\(3) & ( (\HEX4_decoder|REG_4bits|DOUT\(2) & (!\HEX4_decoder|REG_4bits|DOUT\(0) $ (!\HEX4_decoder|REG_4bits|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X35_Y7_N33
\HEX4_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX4_decoder|REG_4bits|DOUT\(3) & ( (\HEX4_decoder|REG_4bits|DOUT\(2) & ((!\HEX4_decoder|REG_4bits|DOUT\(0)) # (\HEX4_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX4_decoder|REG_4bits|DOUT\(3) & ( 
-- (\HEX4_decoder|REG_4bits|DOUT\(1) & (!\HEX4_decoder|REG_4bits|DOUT\(0) & !\HEX4_decoder|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X35_Y7_N6
\HEX4_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX4_decoder|REG_4bits|DOUT\(3) & ( (\HEX4_decoder|REG_4bits|DOUT\(1) & (!\HEX4_decoder|REG_4bits|DOUT\(2) $ (\HEX4_decoder|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX4_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX4_decoder|REG_4bits|DOUT\(2) & (!\HEX4_decoder|REG_4bits|DOUT\(1) & \HEX4_decoder|REG_4bits|DOUT\(0))) # (\HEX4_decoder|REG_4bits|DOUT\(2) & (!\HEX4_decoder|REG_4bits|DOUT\(1) $ (\HEX4_decoder|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100100010000100010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X35_Y7_N9
\HEX4_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX4_decoder|REG_4bits|DOUT\(1) & ((!\HEX4_decoder|REG_4bits|DOUT\(2) & (\HEX4_decoder|REG_4bits|DOUT\(0))) # (\HEX4_decoder|REG_4bits|DOUT\(2) & ((!\HEX4_decoder|REG_4bits|DOUT\(3)))))) # 
-- (\HEX4_decoder|REG_4bits|DOUT\(1) & (((\HEX4_decoder|REG_4bits|DOUT\(0) & !\HEX4_decoder|REG_4bits|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100001000010011110000100001001111000010000100111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X35_Y7_N24
\HEX4_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX4_decoder|REG_4bits|DOUT\(3) & ( (!\HEX4_decoder|REG_4bits|DOUT\(1) & (\HEX4_decoder|REG_4bits|DOUT\(0) & \HEX4_decoder|REG_4bits|DOUT\(2))) ) ) # ( !\HEX4_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX4_decoder|REG_4bits|DOUT\(1) & (\HEX4_decoder|REG_4bits|DOUT\(0) & !\HEX4_decoder|REG_4bits|DOUT\(2))) # (\HEX4_decoder|REG_4bits|DOUT\(1) & ((!\HEX4_decoder|REG_4bits|DOUT\(2)) # (\HEX4_decoder|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X35_Y7_N27
\HEX4_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX4_decoder|REG_4bits|DOUT\(3) & ( (!\HEX4_decoder|REG_4bits|DOUT\(1) & (!\HEX4_decoder|REG_4bits|DOUT\(0) & \HEX4_decoder|REG_4bits|DOUT\(2))) ) ) # ( !\HEX4_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX4_decoder|REG_4bits|DOUT\(1) & ((!\HEX4_decoder|REG_4bits|DOUT\(2)))) # (\HEX4_decoder|REG_4bits|DOUT\(1) & (\HEX4_decoder|REG_4bits|DOUT\(0) & \HEX4_decoder|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000101101010100000010100000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y8_N27
habHEX5 : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX5~combout\ = ( !\ROM|memROM~17_combout\ & ( \habHEX5~0_combout\ & ( (\ROM|memROM~16_combout\ & (\ROM|memROM~6_combout\ & \CPU|DECODER|saida[0]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ALT_INV_habHEX5~0_combout\,
	combout => \habHEX5~combout\);

-- Location: FF_X35_Y8_N56
\HEX5_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \habHEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_decoder|REG_4bits|DOUT\(0));

-- Location: FF_X35_Y8_N29
\HEX5_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \habHEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_decoder|REG_4bits|DOUT\(1));

-- Location: FF_X35_Y8_N59
\HEX5_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \habHEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_decoder|REG_4bits|DOUT\(2));

-- Location: FF_X35_Y8_N26
\HEX5_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \habHEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_decoder|REG_4bits|DOUT\(3));

-- Location: MLABCELL_X34_Y8_N24
\HEX5_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX5_decoder|REG_4bits|DOUT\(2) & ( \HEX5_decoder|REG_4bits|DOUT\(3) & ( (\HEX5_decoder|REG_4bits|DOUT\(0) & !\HEX5_decoder|REG_4bits|DOUT\(1)) ) ) ) # ( !\HEX5_decoder|REG_4bits|DOUT\(2) & ( 
-- \HEX5_decoder|REG_4bits|DOUT\(3) & ( (\HEX5_decoder|REG_4bits|DOUT\(0) & \HEX5_decoder|REG_4bits|DOUT\(1)) ) ) ) # ( \HEX5_decoder|REG_4bits|DOUT\(2) & ( !\HEX5_decoder|REG_4bits|DOUT\(3) & ( (!\HEX5_decoder|REG_4bits|DOUT\(0) & 
-- !\HEX5_decoder|REG_4bits|DOUT\(1)) ) ) ) # ( !\HEX5_decoder|REG_4bits|DOUT\(2) & ( !\HEX5_decoder|REG_4bits|DOUT\(3) & ( (\HEX5_decoder|REG_4bits|DOUT\(0) & !\HEX5_decoder|REG_4bits|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000001100000000000011000000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datae => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX5_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X34_Y8_N57
\HEX5_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX5_decoder|REG_4bits|DOUT\(1) & ( \HEX5_decoder|REG_4bits|DOUT\(3) & ( (\HEX5_decoder|REG_4bits|DOUT\(0)) # (\HEX5_decoder|REG_4bits|DOUT\(2)) ) ) ) # ( !\HEX5_decoder|REG_4bits|DOUT\(1) & ( 
-- \HEX5_decoder|REG_4bits|DOUT\(3) & ( (\HEX5_decoder|REG_4bits|DOUT\(2) & !\HEX5_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( \HEX5_decoder|REG_4bits|DOUT\(1) & ( !\HEX5_decoder|REG_4bits|DOUT\(3) & ( (\HEX5_decoder|REG_4bits|DOUT\(2) & 
-- !\HEX5_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( !\HEX5_decoder|REG_4bits|DOUT\(1) & ( !\HEX5_decoder|REG_4bits|DOUT\(3) & ( (\HEX5_decoder|REG_4bits|DOUT\(2) & \HEX5_decoder|REG_4bits|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000000110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datae => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX5_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X34_Y8_N48
\HEX5_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX5_decoder|REG_4bits|DOUT\(2) & ( \HEX5_decoder|REG_4bits|DOUT\(3) & ( (!\HEX5_decoder|REG_4bits|DOUT\(0)) # (\HEX5_decoder|REG_4bits|DOUT\(1)) ) ) ) # ( !\HEX5_decoder|REG_4bits|DOUT\(2) & ( 
-- !\HEX5_decoder|REG_4bits|DOUT\(3) & ( (!\HEX5_decoder|REG_4bits|DOUT\(0) & \HEX5_decoder|REG_4bits|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datae => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX5_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X34_Y8_N21
\HEX5_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX5_decoder|REG_4bits|DOUT\(1) & ( \HEX5_decoder|REG_4bits|DOUT\(3) & ( !\HEX5_decoder|REG_4bits|DOUT\(2) $ (\HEX5_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( \HEX5_decoder|REG_4bits|DOUT\(1) & ( 
-- !\HEX5_decoder|REG_4bits|DOUT\(3) & ( (\HEX5_decoder|REG_4bits|DOUT\(2) & \HEX5_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( !\HEX5_decoder|REG_4bits|DOUT\(1) & ( !\HEX5_decoder|REG_4bits|DOUT\(3) & ( !\HEX5_decoder|REG_4bits|DOUT\(2) $ 
-- (!\HEX5_decoder|REG_4bits|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000110000001100000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datae => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX5_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X34_Y8_N39
\HEX5_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( !\HEX5_decoder|REG_4bits|DOUT\(1) & ( \HEX5_decoder|REG_4bits|DOUT\(3) & ( (!\HEX5_decoder|REG_4bits|DOUT\(2) & \HEX5_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( \HEX5_decoder|REG_4bits|DOUT\(1) & ( 
-- !\HEX5_decoder|REG_4bits|DOUT\(3) & ( \HEX5_decoder|REG_4bits|DOUT\(0) ) ) ) # ( !\HEX5_decoder|REG_4bits|DOUT\(1) & ( !\HEX5_decoder|REG_4bits|DOUT\(3) & ( (\HEX5_decoder|REG_4bits|DOUT\(0)) # (\HEX5_decoder|REG_4bits|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011110000111100001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datae => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX5_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X34_Y8_N45
\HEX5_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( !\HEX5_decoder|REG_4bits|DOUT\(1) & ( \HEX5_decoder|REG_4bits|DOUT\(3) & ( (\HEX5_decoder|REG_4bits|DOUT\(2) & \HEX5_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( \HEX5_decoder|REG_4bits|DOUT\(1) & ( 
-- !\HEX5_decoder|REG_4bits|DOUT\(3) & ( (!\HEX5_decoder|REG_4bits|DOUT\(2)) # (\HEX5_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( !\HEX5_decoder|REG_4bits|DOUT\(1) & ( !\HEX5_decoder|REG_4bits|DOUT\(3) & ( (!\HEX5_decoder|REG_4bits|DOUT\(2) & 
-- \HEX5_decoder|REG_4bits|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110011111100111100000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datae => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX5_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X34_Y8_N0
\HEX5_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX5_decoder|REG_4bits|DOUT\(2) & ( \HEX5_decoder|REG_4bits|DOUT\(3) & ( (!\HEX5_decoder|REG_4bits|DOUT\(0) & !\HEX5_decoder|REG_4bits|DOUT\(1)) ) ) ) # ( \HEX5_decoder|REG_4bits|DOUT\(2) & ( 
-- !\HEX5_decoder|REG_4bits|DOUT\(3) & ( (\HEX5_decoder|REG_4bits|DOUT\(0) & \HEX5_decoder|REG_4bits|DOUT\(1)) ) ) ) # ( !\HEX5_decoder|REG_4bits|DOUT\(2) & ( !\HEX5_decoder|REG_4bits|DOUT\(3) & ( !\HEX5_decoder|REG_4bits|DOUT\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000110000001100000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datae => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX5_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X18_Y0_N18
\clovis~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clovis,
	o => \clovis~input_o\);
END structure;


