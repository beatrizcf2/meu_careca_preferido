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

-- DATE "05/07/2022 18:53:43"

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
	endROM : BUFFER std_logic_vector(8 DOWNTO 0);
	endRAM : BUFFER std_logic_vector(5 DOWNTO 0);
	valorDado : BUFFER std_logic_vector(7 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END contador;

-- Design Ports Information
-- endROM[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[6]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[3]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[4]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[4]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~18\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~2\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~4_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|DECODER|operacao~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|operacao~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~3_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~22\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~26\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~2_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[7]~9_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~30\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[8]~10_combout\ : std_logic;
SIGNAL \ROM|memROM~22_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|habAcumulador~0_combout\ : std_logic;
SIGNAL \RAM|dado_out~1_combout\ : std_logic;
SIGNAL \habRESET~0_combout\ : std_logic;
SIGNAL \habRESET~1_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~5_combout\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \CPU|ULA|Equal1~0_combout\ : std_logic;
SIGNAL \bufferSW8|saida[1]~8_combout\ : std_logic;
SIGNAL \bufferSW8|saida[2]~10_combout\ : std_logic;
SIGNAL \ROM|memROM~21_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~20feeder_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \ADDR_511~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~2_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \habLEDconj~0_combout\ : std_logic;
SIGNAL \bufferSWConj|saida[0]~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \habKEY2~0_combout\ : std_logic;
SIGNAL \bufferKEY2|saida[0]~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \habSW8~0_combout\ : std_logic;
SIGNAL \bufferSW8|saida[0]~7_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \habSW9~0_combout\ : std_logic;
SIGNAL \bufferSW9|saida[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \FF_Debouncer|DOUT~feeder_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ADDR_511~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~1_combout\ : std_logic;
SIGNAL \ADDR_511~combout\ : std_logic;
SIGNAL \FF_Debouncer|DOUT~q\ : std_logic;
SIGNAL \bufferKEY0|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~6_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[0]~9_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~36_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~20_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~28_combout\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~7_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~21feeder_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~21_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~29_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \bufferSW8|saida[1]~9_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~22feeder_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~22_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~30_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \bufferSW8|saida[2]~18_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \bufferSW8|saida[6]~14_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~23feeder_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \bufferSW8|saida[3]~17_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[3]~7_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~23_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~31_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \bufferSW8|saida[3]~11_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~30\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~24feeder_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~24_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~32_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~563_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \bufferSW8|saida[4]~12_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~25feeder_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[5]~1_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~25_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~33_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \bufferSW8|saida[5]~13_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~26feeder_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~26_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~34_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \bufferSW8|saida[6]~16_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[0]~5_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~0_combout\ : std_logic;
SIGNAL \bufferSW8|saida[7]~15_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~27feeder_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~27_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~35_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~5_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~4_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~1_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~6\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~10\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~14\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \habKEY0~0_combout\ : std_logic;
SIGNAL \habKEY0~1_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~3_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~4_combout\ : std_logic;
SIGNAL \decoderBlock|Equal2~0_combout\ : std_logic;
SIGNAL \habHEX0~0_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~q\ : std_logic;
SIGNAL \FFLED9|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED9|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DECODER|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \CPU|END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|MUX_DESVIO|ALT_INV_saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~2_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~1_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~q\ : std_logic;
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
SIGNAL \RAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~5_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~7_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_511~combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_511~1_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[2]~18_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[3]~7_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[3]~17_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[6]~16_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[0]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~6_combout\ : std_logic;
SIGNAL \bufferKEY0|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[5]~1_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_operacao~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_operacao~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX0~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~35_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~34_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~33_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~32_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~31_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~30_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~29_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \decoderBlock|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~28_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[7]~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[6]~14_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[5]~13_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[4]~12_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[3]~11_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[2]~10_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[1]~9_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[1]~8_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~3_combout\ : std_logic;
SIGNAL \bufferKEY2|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_habKEY2~0_combout\ : std_logic;
SIGNAL \ALT_INV_habKEY0~1_combout\ : std_logic;
SIGNAL \FF_Debouncer|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \bufferSW9|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_habSW9~0_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[0]~7_combout\ : std_logic;
SIGNAL \ALT_INV_habSW8~0_combout\ : std_logic;
SIGNAL \bufferSWConj|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_habLEDconj~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_511~0_combout\ : std_logic;
SIGNAL \ALT_INV_habKEY0~0_combout\ : std_logic;
SIGNAL \ALT_INV_habRESET~1_combout\ : std_logic;
SIGNAL \ALT_INV_habRESET~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_habAcumulador~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;

BEGIN

endROM <= ww_endROM;
endRAM <= ww_endRAM;
valorDado <= ww_valorDado;
LEDR <= ww_LEDR;
ww_SW <= SW;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|DECODER|ALT_INV_Equal1~0_combout\ <= NOT \CPU|DECODER|Equal1~0_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|END_RETORNO|DOUT\(8);
\CPU|MUX_DESVIO|ALT_INV_saida_MUX[7]~8_combout\ <= NOT \CPU|MUX_DESVIO|saida_MUX[7]~8_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|END_RETORNO|DOUT\(7);
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|END_RETORNO|DOUT\(6);
\CPU|END_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|END_RETORNO|DOUT\(5);
\CPU|MUX_DESVIO|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|END_RETORNO|DOUT\(4);
\CPU|PC|ALT_INV_DOUT[7]~2_combout\ <= NOT \CPU|PC|DOUT[7]~2_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|END_RETORNO|DOUT\(3);
\CPU|END_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|END_RETORNO|DOUT\(2);
\CPU|END_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|END_RETORNO|DOUT\(1);
\CPU|END_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|END_RETORNO|DOUT\(0);
\CPU|PC|ALT_INV_DOUT[2]~1_combout\ <= NOT \CPU|PC|DOUT[2]~1_combout\;
\CPU|PC|ALT_INV_DOUT[2]~0_combout\ <= NOT \CPU|PC|DOUT[2]~0_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\CPU|FLAGer|ALT_INV_DOUT~q\ <= NOT \CPU|FLAGer|DOUT~q\;
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
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\RAM|ALT_INV_ram~567_combout\ <= NOT \RAM|ram~567_combout\;
\RAM|ALT_INV_ram~563_combout\ <= NOT \RAM|ram~563_combout\;
\RAM|ALT_INV_ram~559_combout\ <= NOT \RAM|ram~559_combout\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\CPU|ULA|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA|Add0~29_sumout\;
\CPU|ULA|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA|Add0~25_sumout\;
\CPU|ULA|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA|Add0~21_sumout\;
\CPU|ULA|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA|Add0~17_sumout\;
\CPU|ULA|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA|Add0~13_sumout\;
\CPU|ULA|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA|Add0~9_sumout\;
\CPU|ULA|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA|Add0~5_sumout\;
\CPU|ULA|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA|Add0~1_sumout\;
\CPU|BANCO_REG|ALT_INV_registrador~27_q\ <= NOT \CPU|BANCO_REG|registrador~27_q\;
\CPU|BANCO_REG|ALT_INV_registrador~26_q\ <= NOT \CPU|BANCO_REG|registrador~26_q\;
\CPU|BANCO_REG|ALT_INV_registrador~25_q\ <= NOT \CPU|BANCO_REG|registrador~25_q\;
\CPU|BANCO_REG|ALT_INV_registrador~24_q\ <= NOT \CPU|BANCO_REG|registrador~24_q\;
\CPU|BANCO_REG|ALT_INV_registrador~23_q\ <= NOT \CPU|BANCO_REG|registrador~23_q\;
\CPU|BANCO_REG|ALT_INV_registrador~22_q\ <= NOT \CPU|BANCO_REG|registrador~22_q\;
\CPU|BANCO_REG|ALT_INV_registrador~21_q\ <= NOT \CPU|BANCO_REG|registrador~21_q\;
\CPU|BANCO_REG|ALT_INV_registrador~20_q\ <= NOT \CPU|BANCO_REG|registrador~20_q\;
\CPU|PC_INC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|PC_INC|Add0~33_sumout\;
\CPU|PC_INC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|PC_INC|Add0~29_sumout\;
\CPU|PC_INC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|PC_INC|Add0~25_sumout\;
\CPU|PC_INC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|PC_INC|Add0~21_sumout\;
\CPU|PC_INC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|PC_INC|Add0~17_sumout\;
\CPU|PC_INC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|PC_INC|Add0~13_sumout\;
\CPU|PC_INC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|PC_INC|Add0~9_sumout\;
\CPU|PC_INC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|PC_INC|Add0~5_sumout\;
\CPU|PC_INC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|PC_INC|Add0~1_sumout\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\CPU|FLAGer|ALT_INV_DOUT~5_combout\ <= NOT \CPU|FLAGer|DOUT~5_combout\;
\CPU|FLAGer|ALT_INV_DOUT~4_combout\ <= NOT \CPU|FLAGer|DOUT~4_combout\;
\ROM|ALT_INV_memROM~22_combout\ <= NOT \ROM|memROM~22_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\RAM|ALT_INV_dado_out[0]~7_combout\ <= NOT \RAM|dado_out[0]~7_combout\;
\CPU|ULA|ALT_INV_Equal1~0_combout\ <= NOT \CPU|ULA|Equal1~0_combout\;
\ALT_INV_ADDR_511~combout\ <= NOT \ADDR_511~combout\;
\ALT_INV_ADDR_511~1_combout\ <= NOT \ADDR_511~1_combout\;
\CPU|FLAGer|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAGer|DOUT~2_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[2]~8_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[2]~8_combout\;
\bufferSW8|ALT_INV_saida[2]~18_combout\ <= NOT \bufferSW8|saida[2]~18_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[3]~7_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[3]~7_combout\;
\bufferSW8|ALT_INV_saida[3]~17_combout\ <= NOT \bufferSW8|saida[3]~17_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[6]~6_combout\;
\bufferSW8|ALT_INV_saida[6]~16_combout\ <= NOT \bufferSW8|saida[6]~16_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[0]~5_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[0]~5_combout\;
\RAM|ALT_INV_dado_out[0]~6_combout\ <= NOT \RAM|dado_out[0]~6_combout\;
\bufferKEY0|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY0|saida[0]~0_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[0]~4_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[0]~4_combout\;
\CPU|FLAGer|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAGer|DOUT~1_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[1]~3_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[1]~3_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[4]~2_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[4]~2_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[5]~1_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[5]~1_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[7]~0_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[7]~0_combout\;
\CPU|DECODER|ALT_INV_Equal1~3_combout\ <= NOT \CPU|DECODER|Equal1~3_combout\;
\CPU|FLAGer|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FLAGer|DOUT~0_combout\;
\CPU|DECODER|ALT_INV_operacao~1_combout\ <= NOT \CPU|DECODER|operacao~1_combout\;
\CPU|DECODER|ALT_INV_operacao~0_combout\ <= NOT \CPU|DECODER|operacao~0_combout\;
\CPU|DECODER|ALT_INV_Equal1~2_combout\ <= NOT \CPU|DECODER|Equal1~2_combout\;
\ALT_INV_habHEX0~0_combout\ <= NOT \habHEX0~0_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~35_combout\ <= NOT \CPU|BANCO_REG|registrador~35_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~34_combout\ <= NOT \CPU|BANCO_REG|registrador~34_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~33_combout\ <= NOT \CPU|BANCO_REG|registrador~33_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~32_combout\ <= NOT \CPU|BANCO_REG|registrador~32_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~31_combout\ <= NOT \CPU|BANCO_REG|registrador~31_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~30_combout\ <= NOT \CPU|BANCO_REG|registrador~30_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~29_combout\ <= NOT \CPU|BANCO_REG|registrador~29_combout\;
\CPU|DECODER|ALT_INV_Equal1~1_combout\ <= NOT \CPU|DECODER|Equal1~1_combout\;
\decoderBlock|ALT_INV_Equal2~0_combout\ <= NOT \decoderBlock|Equal2~0_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~28_combout\ <= NOT \CPU|BANCO_REG|registrador~28_combout\;
\ROM|ALT_INV_memROM~21_combout\ <= NOT \ROM|memROM~21_combout\;
\bufferSW8|ALT_INV_saida[7]~15_combout\ <= NOT \bufferSW8|saida[7]~15_combout\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\bufferSW8|ALT_INV_saida[6]~14_combout\ <= NOT \bufferSW8|saida[6]~14_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\bufferSW8|ALT_INV_saida[5]~13_combout\ <= NOT \bufferSW8|saida[5]~13_combout\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\bufferSW8|ALT_INV_saida[4]~12_combout\ <= NOT \bufferSW8|saida[4]~12_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\bufferSW8|ALT_INV_saida[3]~11_combout\ <= NOT \bufferSW8|saida[3]~11_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\bufferSW8|ALT_INV_saida[2]~10_combout\ <= NOT \bufferSW8|saida[2]~10_combout\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\bufferSW8|ALT_INV_saida[1]~9_combout\ <= NOT \bufferSW8|saida[1]~9_combout\;
\bufferSW8|ALT_INV_saida[1]~8_combout\ <= NOT \bufferSW8|saida[1]~8_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_dado_out[0]~5_combout\ <= NOT \RAM|dado_out[0]~5_combout\;
\RAM|ALT_INV_dado_out[0]~3_combout\ <= NOT \RAM|dado_out[0]~3_combout\;
\bufferKEY2|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY2|saida[0]~0_combout\;
\ALT_INV_habKEY2~0_combout\ <= NOT \habKEY2~0_combout\;
\ALT_INV_habKEY0~1_combout\ <= NOT \habKEY0~1_combout\;
\FF_Debouncer|ALT_INV_DOUT~q\ <= NOT \FF_Debouncer|DOUT~q\;
\bufferSW9|ALT_INV_saida[0]~0_combout\ <= NOT \bufferSW9|saida[0]~0_combout\;
\ALT_INV_habSW9~0_combout\ <= NOT \habSW9~0_combout\;
\bufferSW8|ALT_INV_saida[0]~7_combout\ <= NOT \bufferSW8|saida[0]~7_combout\;
\ALT_INV_habSW8~0_combout\ <= NOT \habSW8~0_combout\;
\bufferSWConj|ALT_INV_saida[0]~0_combout\ <= NOT \bufferSWConj|saida[0]~0_combout\;
\ALT_INV_habLEDconj~0_combout\ <= NOT \habLEDconj~0_combout\;
\RAM|ALT_INV_dado_out[0]~2_combout\ <= NOT \RAM|dado_out[0]~2_combout\;
\ALT_INV_ADDR_511~0_combout\ <= NOT \ADDR_511~0_combout\;
\ALT_INV_habKEY0~0_combout\ <= NOT \habKEY0~0_combout\;
\ALT_INV_habRESET~1_combout\ <= NOT \habRESET~1_combout\;
\ALT_INV_habRESET~0_combout\ <= NOT \habRESET~0_combout\;
\RAM|ALT_INV_dado_out~1_combout\ <= NOT \RAM|dado_out~1_combout\;
\CPU|DECODER|ALT_INV_habAcumulador~0_combout\ <= NOT \CPU|DECODER|habAcumulador~0_combout\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;

-- Location: IOOBUF_X25_Y0_N36
\valorDado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[0]~4_combout\,
	oe => \RAM|dado_out[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(0));

-- Location: IOOBUF_X24_Y0_N2
\valorDado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bufferSW8|saida[1]~9_combout\,
	oe => \RAM|dado_out[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(1));

-- Location: IOOBUF_X24_Y0_N53
\valorDado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bufferSW8|saida[2]~10_combout\,
	oe => \RAM|dado_out[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(2));

-- Location: IOOBUF_X25_Y0_N2
\valorDado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bufferSW8|saida[3]~11_combout\,
	oe => \RAM|dado_out[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(3));

-- Location: IOOBUF_X23_Y0_N42
\valorDado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bufferSW8|saida[4]~12_combout\,
	oe => \RAM|dado_out[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(4));

-- Location: IOOBUF_X25_Y0_N19
\valorDado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bufferSW8|saida[5]~13_combout\,
	oe => \RAM|dado_out[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(5));

-- Location: IOOBUF_X24_Y0_N36
\valorDado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bufferSW8|saida[6]~14_combout\,
	oe => \RAM|dado_out[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(6));

-- Location: IOOBUF_X25_Y0_N53
\valorDado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bufferSW8|saida[7]~15_combout\,
	oe => \RAM|dado_out[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(7));

-- Location: IOOBUF_X19_Y0_N53
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

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X22_Y0_N19
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

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOOBUF_X16_Y0_N93
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

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X14_Y0_N53
\endROM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_endROM(8));

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X18_Y0_N19
\endRAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(2));

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X54_Y20_N56
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X46_Y0_N53
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X54_Y17_N5
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X34_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X40_Y0_N59
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X40_Y0_N42
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X14_Y45_N19
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X10_Y0_N42
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X23_Y0_N93
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X8_Y45_N93
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X18_Y45_N19
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X54_Y14_N79
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X48_Y0_N42
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X52_Y45_N53
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X38_Y0_N19
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X52_Y45_N36
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

-- Location: IOOBUF_X54_Y17_N22
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

-- Location: IOOBUF_X10_Y0_N93
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

-- Location: IOOBUF_X48_Y45_N36
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

-- Location: IOOBUF_X54_Y15_N56
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

-- Location: IOOBUF_X54_Y17_N56
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

-- Location: IOOBUF_X20_Y45_N19
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

-- Location: IOOBUF_X50_Y45_N36
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

-- Location: IOOBUF_X51_Y0_N53
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

-- Location: IOOBUF_X50_Y45_N53
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

-- Location: IOOBUF_X48_Y45_N53
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

-- Location: IOOBUF_X40_Y45_N59
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

-- Location: IOOBUF_X34_Y45_N53
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X34_Y0_N19
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X0_Y20_N56
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X34_Y0_N53
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

-- Location: IOOBUF_X44_Y45_N53
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

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X34_Y45_N36
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

-- Location: IOOBUF_X12_Y45_N53
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

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X43_Y0_N19
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

-- Location: IOOBUF_X40_Y45_N93
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

-- Location: IOOBUF_X54_Y15_N5
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

-- Location: IOOBUF_X32_Y45_N42
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

-- Location: IOOBUF_X42_Y45_N36
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

-- Location: IOOBUF_X22_Y45_N53
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

-- Location: IOOBUF_X51_Y0_N36
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X54_Y19_N5
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

-- Location: IOOBUF_X10_Y45_N36
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

-- Location: IOOBUF_X48_Y45_N2
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

-- Location: IOIBUF_X54_Y18_N61
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: FF_X20_Y2_N8
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

-- Location: LABCELL_X17_Y2_N30
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

-- Location: FF_X20_Y2_N11
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y2_N42
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

-- Location: LABCELL_X17_Y2_N45
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

-- Location: FF_X17_Y2_N47
\CPU|END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~21_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(5));

-- Location: FF_X20_Y2_N59
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

-- Location: LABCELL_X17_Y2_N33
\CPU|PC_INC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~2\ ))
-- \CPU|PC_INC|Add0~6\ = CARRY(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|PC_INC|Add0~2\,
	sumout => \CPU|PC_INC|Add0~5_sumout\,
	cout => \CPU|PC_INC|Add0~6\);

-- Location: FF_X17_Y2_N35
\CPU|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~5_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(1));

-- Location: MLABCELL_X18_Y2_N6
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT\(1))) ) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( 
-- (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT\(5))))) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001101100101100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~2_combout\);

-- Location: LABCELL_X20_Y2_N57
\CPU|MUX_DESVIO|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\ = ( \CPU|PC_INC|Add0~5_sumout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (((!\CPU|PC|DOUT[2]~1_combout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & ((!\CPU|PC|DOUT[2]~1_combout\ & (\CPU|END_RETORNO|DOUT\(1))) # 
-- (\CPU|PC|DOUT[2]~1_combout\ & ((\ROM|memROM~2_combout\))))) ) ) # ( !\CPU|PC_INC|Add0~5_sumout\ & ( (\CPU|PC|DOUT[2]~0_combout\ & ((!\CPU|PC|DOUT[2]~1_combout\ & (\CPU|END_RETORNO|DOUT\(1))) # (\CPU|PC|DOUT[2]~1_combout\ & ((\ROM|memROM~2_combout\))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010110111011000001011011101100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datab => \CPU|END_RETORNO|ALT_INV_DOUT\(1),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~1_combout\,
	dataf => \CPU|PC_INC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\);

-- Location: FF_X20_Y2_N58
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

-- Location: FF_X20_Y2_N37
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

-- Location: FF_X20_Y2_N40
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

-- Location: LABCELL_X19_Y3_N0
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \CPU|PC|DOUT\(3) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(5)))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \ROM|memROM~0_combout\ & ( (\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100010000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~8_combout\);

-- Location: LABCELL_X20_Y2_N9
\CPU|MUX_DESVIO|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[5]~6_combout\ = ( \CPU|PC_INC|Add0~21_sumout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (!\CPU|PC|DOUT[2]~1_combout\)) # (\CPU|PC|DOUT[2]~0_combout\ & ((!\CPU|PC|DOUT[2]~1_combout\ & (\CPU|END_RETORNO|DOUT\(5))) # 
-- (\CPU|PC|DOUT[2]~1_combout\ & ((\ROM|memROM~8_combout\))))) ) ) # ( !\CPU|PC_INC|Add0~21_sumout\ & ( (\CPU|PC|DOUT[2]~0_combout\ & ((!\CPU|PC|DOUT[2]~1_combout\ & (\CPU|END_RETORNO|DOUT\(5))) # (\CPU|PC|DOUT[2]~1_combout\ & ((\ROM|memROM~8_combout\))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110001100100111011000110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~1_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(5),
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \CPU|PC_INC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[5]~6_combout\);

-- Location: FF_X20_Y2_N10
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X20_Y2_N42
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(5) $ (\CPU|PC|DOUT[2]~DUPLICATE_q\)))) # (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(5) & 
-- ((!\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(5))) # (\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\))))) # 
-- (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(5) $ (\CPU|PC|DOUT[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100011000100101010001100010010000100101000001000010010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~11_combout\);

-- Location: LABCELL_X20_Y2_N3
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~15_combout\);

-- Location: LABCELL_X20_Y2_N27
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT[5]~DUPLICATE_q\)) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- \CPU|PC|DOUT[5]~DUPLICATE_q\)))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT[5]~DUPLICATE_q\)) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT[5]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000000000001001000000000000000000001001000000000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X20_Y2_N21
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(0) $ 
-- (((!\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\))))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ $ (((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110110011100001011011001110010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~9_combout\);

-- Location: LABCELL_X17_Y2_N24
\CPU|DECODER|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~4_combout\ = ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~0_combout\ & (\CPU|PC|DOUT\(0) & \ROM|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|DECODER|Equal1~4_combout\);

-- Location: FF_X17_Y2_N31
\CPU|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~1_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(0));

-- Location: LABCELL_X19_Y2_N6
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( 
-- (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((\CPU|PC|DOUT[2]~DUPLICATE_q\))) # (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010100010000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X20_Y2_N6
\CPU|MUX_DESVIO|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\ = ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (!\CPU|PC|DOUT[2]~1_combout\ & ((\CPU|PC_INC|Add0~1_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|END_RETORNO|DOUT\(0))) # 
-- (\CPU|PC|DOUT[2]~1_combout\))) ) ) # ( !\ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT[2]~1_combout\ & ((!\CPU|PC|DOUT[2]~0_combout\ & ((\CPU|PC_INC|Add0~1_sumout\))) # (\CPU|PC|DOUT[2]~0_combout\ & (\CPU|END_RETORNO|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000010101100111010001010110011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~1_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(0),
	datad => \CPU|PC_INC|ALT_INV_Add0~1_sumout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\);

-- Location: FF_X20_Y2_N7
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

-- Location: LABCELL_X20_Y1_N51
\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( \ROM|memROM~15_combout\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~16_combout\);

-- Location: LABCELL_X20_Y1_N36
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \ROM|memROM~0_combout\ & ( \ROM|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~10_combout\);

-- Location: LABCELL_X20_Y1_N3
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \ROM|memROM~0_combout\ & ( \ROM|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~12_combout\);

-- Location: LABCELL_X20_Y1_N15
\CPU|DECODER|operacao~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|operacao~0_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( (\ROM|memROM~10_combout\ & !\ROM|memROM~16_combout\) ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~14_combout\ & ( (!\ROM|memROM~10_combout\ & 
-- \ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000001010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|DECODER|operacao~0_combout\);

-- Location: LABCELL_X20_Y1_N57
\CPU|DECODER|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~2_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~14_combout\ & ( (!\ROM|memROM~16_combout\ & !\ROM|memROM~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|DECODER|Equal1~2_combout\);

-- Location: LABCELL_X20_Y1_N42
\CPU|DECODER|operacao~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|operacao~1_combout\ = ( \ROM|memROM~10_combout\ & ( !\CPU|DECODER|Equal1~2_combout\ & ( (!\ROM|memROM~16_combout\ & (!\CPU|DECODER|operacao~0_combout\ & (!\ROM|memROM~12_combout\ & !\ROM|memROM~14_combout\))) ) ) ) # ( 
-- !\ROM|memROM~10_combout\ & ( !\CPU|DECODER|Equal1~2_combout\ & ( (!\ROM|memROM~16_combout\ & (!\CPU|DECODER|operacao~0_combout\ & (\ROM|memROM~12_combout\ & !\ROM|memROM~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \CPU|DECODER|ALT_INV_operacao~0_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	combout => \CPU|DECODER|operacao~1_combout\);

-- Location: LABCELL_X21_Y3_N15
\CPU|DECODER|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~3_combout\ = ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~12_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER|Equal1~3_combout\);

-- Location: MLABCELL_X18_Y3_N51
\CPU|MUX_ULA|saida_MUX[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[0]~4_combout\ = (\CPU|DECODER|Equal1~3_combout\ & \ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[0]~4_combout\);

-- Location: FF_X18_Y2_N22
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X21_Y2_N9
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( !\CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X21_Y2_N12
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(2) & \ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~7_combout\);

-- Location: FF_X19_Y2_N46
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX_DESVIO|saida_MUX[7]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y2_N48
\CPU|PC_INC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~22\ ))
-- \CPU|PC_INC|Add0~26\ = CARRY(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU|PC_INC|Add0~22\,
	sumout => \CPU|PC_INC|Add0~25_sumout\,
	cout => \CPU|PC_INC|Add0~26\);

-- Location: FF_X17_Y2_N50
\CPU|END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~25_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(6));

-- Location: LABCELL_X20_Y2_N33
\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = ( \CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & 
-- \CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~17_combout\);

-- Location: LABCELL_X20_Y2_N45
\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = ( \ROM|memROM~17_combout\ & ( (!\CPU|PC|DOUT\(3) & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \ROM|memROM~18_combout\);

-- Location: MLABCELL_X18_Y2_N54
\CPU|MUX_DESVIO|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[6]~7_combout\ = ( \CPU|PC_INC|Add0~25_sumout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (!\CPU|PC|DOUT[2]~1_combout\)) # (\CPU|PC|DOUT[2]~0_combout\ & ((!\CPU|PC|DOUT[2]~1_combout\ & (\CPU|END_RETORNO|DOUT\(6))) # 
-- (\CPU|PC|DOUT[2]~1_combout\ & ((\ROM|memROM~18_combout\))))) ) ) # ( !\CPU|PC_INC|Add0~25_sumout\ & ( (\CPU|PC|DOUT[2]~0_combout\ & ((!\CPU|PC|DOUT[2]~1_combout\ & (\CPU|END_RETORNO|DOUT\(6))) # (\CPU|PC|DOUT[2]~1_combout\ & ((\ROM|memROM~18_combout\))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110001100100111011000110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~1_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \CPU|PC_INC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[6]~7_combout\);

-- Location: FF_X18_Y2_N56
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y2_N51
\CPU|PC_INC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~26\ ))
-- \CPU|PC_INC|Add0~30\ = CARRY(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|PC_INC|Add0~26\,
	sumout => \CPU|PC_INC|Add0~29_sumout\,
	cout => \CPU|PC_INC|Add0~30\);

-- Location: FF_X17_Y2_N52
\CPU|END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~29_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(7));

-- Location: MLABCELL_X18_Y2_N45
\CPU|MUX_DESVIO|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[7]~8_combout\ = ( \ROM|memROM~16_combout\ & ( \CPU|END_RETORNO|DOUT\(7) & ( ((\ROM|memROM~14_combout\ & (!\ROM|memROM~12_combout\ & !\ROM|memROM~10_combout\))) # (\ROM|memROM~7_combout\) ) ) ) # ( !\ROM|memROM~16_combout\ & ( 
-- \CPU|END_RETORNO|DOUT\(7) & ( \ROM|memROM~7_combout\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\CPU|END_RETORNO|DOUT\(7) & ( (\ROM|memROM~7_combout\ & ((!\ROM|memROM~14_combout\) # ((\ROM|memROM~10_combout\) # (\ROM|memROM~12_combout\)))) ) ) ) # ( 
-- !\ROM|memROM~16_combout\ & ( !\CPU|END_RETORNO|DOUT\(7) & ( \ROM|memROM~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001011111100000000111111110100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \CPU|END_RETORNO|ALT_INV_DOUT\(7),
	combout => \CPU|MUX_DESVIO|saida_MUX[7]~8_combout\);

-- Location: LABCELL_X20_Y1_N48
\CPU|PC|DOUT[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[7]~2_combout\ = ( \ROM|memROM~16_combout\ & ( (!\ROM|memROM~12_combout\ & (!\ROM|memROM~14_combout\ $ (!\ROM|memROM~10_combout\))) ) ) # ( !\ROM|memROM~16_combout\ & ( (\ROM|memROM~12_combout\ & (\ROM|memROM~14_combout\ & 
-- ((!\ROM|memROM~10_combout\) # (\CPU|FLAGer|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000001000100010000000100100010100010000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \CPU|FLAGer|ALT_INV_DOUT~q\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|PC|DOUT[7]~2_combout\);

-- Location: LABCELL_X19_Y2_N57
\CPU|MUX_DESVIO|saida_MUX[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[7]~9_combout\ = ( \CPU|PC_INC|Add0~29_sumout\ & ( (!\CPU|PC|DOUT[7]~2_combout\) # (\CPU|MUX_DESVIO|saida_MUX[7]~8_combout\) ) ) # ( !\CPU|PC_INC|Add0~29_sumout\ & ( (\CPU|MUX_DESVIO|saida_MUX[7]~8_combout\ & 
-- \CPU|PC|DOUT[7]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_DESVIO|ALT_INV_saida_MUX[7]~8_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~2_combout\,
	dataf => \CPU|PC_INC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[7]~9_combout\);

-- Location: FF_X19_Y2_N47
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX_DESVIO|saida_MUX[7]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: FF_X18_Y2_N59
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y2_N54
\CPU|PC_INC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \CPU|PC_INC|Add0~30\,
	sumout => \CPU|PC_INC|Add0~33_sumout\);

-- Location: FF_X17_Y2_N56
\CPU|END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~33_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(8));

-- Location: LABCELL_X20_Y2_N0
\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = ( !\CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT[5]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~19_combout\);

-- Location: LABCELL_X20_Y2_N54
\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~19_combout\ & !\CPU|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~20_combout\);

-- Location: MLABCELL_X18_Y2_N57
\CPU|MUX_DESVIO|saida_MUX[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[8]~10_combout\ = ( \CPU|PC_INC|Add0~33_sumout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (!\CPU|PC|DOUT[2]~1_combout\)) # (\CPU|PC|DOUT[2]~0_combout\ & ((!\CPU|PC|DOUT[2]~1_combout\ & (\CPU|END_RETORNO|DOUT\(8))) # 
-- (\CPU|PC|DOUT[2]~1_combout\ & ((\ROM|memROM~20_combout\))))) ) ) # ( !\CPU|PC_INC|Add0~33_sumout\ & ( (\CPU|PC|DOUT[2]~0_combout\ & ((!\CPU|PC|DOUT[2]~1_combout\ & (\CPU|END_RETORNO|DOUT\(8))) # (\CPU|PC|DOUT[2]~1_combout\ & ((\ROM|memROM~20_combout\))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110001100100111011000110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~1_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \CPU|PC_INC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[8]~10_combout\);

-- Location: FF_X18_Y2_N58
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: FF_X18_Y2_N55
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X19_Y2_N48
\ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~22_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & \CPU|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010010100000000101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~22_combout\);

-- Location: LABCELL_X19_Y2_N42
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( !\CPU|PC|DOUT\(6) & ( \ROM|memROM~22_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \ROM|memROM~3_combout\);

-- Location: LABCELL_X19_Y2_N0
\CPU|DECODER|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~0_combout\ = ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~15_combout\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & (!\ROM|memROM~13_combout\ & !\ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DECODER|Equal1~0_combout\);

-- Location: LABCELL_X19_Y3_N6
\CPU|DECODER|habAcumulador~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|habAcumulador~0_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~0_combout\ & ((!\ROM|memROM~15_combout\) # (!\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- (\ROM|memROM~13_combout\ & (\ROM|memROM~0_combout\ & ((!\ROM|memROM~15_combout\) # (!\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000001111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|habAcumulador~0_combout\);

-- Location: LABCELL_X19_Y2_N12
\RAM|dado_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~1_combout\ = ( \CPU|DECODER|habAcumulador~0_combout\ & ( (!\ROM|memROM~18_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~20_combout\)) ) ) # ( !\CPU|DECODER|habAcumulador~0_combout\ & ( (!\ROM|memROM~18_combout\ & 
-- (!\ROM|memROM~7_combout\ & (\CPU|DECODER|Equal1~0_combout\ & !\ROM|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	combout => \RAM|dado_out~1_combout\);

-- Location: LABCELL_X19_Y2_N36
\habRESET~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habRESET~0_combout\ = ( \ROM|memROM~19_combout\ & ( \ROM|memROM~6_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\ROM|memROM~17_combout\ & \ROM|memROM~0_combout\))) ) ) ) # ( \ROM|memROM~19_combout\ & ( 
-- !\ROM|memROM~6_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~17_combout\ & \ROM|memROM~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~19_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \habRESET~0_combout\);

-- Location: LABCELL_X19_Y2_N18
\habRESET~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habRESET~1_combout\ = ( \CPU|DECODER|habAcumulador~0_combout\ & ( \habRESET~0_combout\ ) ) # ( !\CPU|DECODER|habAcumulador~0_combout\ & ( (\habRESET~0_combout\ & \CPU|DECODER|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_habRESET~0_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	combout => \habRESET~1_combout\);

-- Location: LABCELL_X19_Y3_N12
\RAM|dado_out[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~5_combout\ = ( \ROM|memROM~1_combout\ & ( \habRESET~1_combout\ & ( ((!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # (\ROM|memROM~8_combout\)))) # (\RAM|dado_out~1_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \habRESET~1_combout\ & ( (!\ROM|memROM~3_combout\) # (((\ROM|memROM~8_combout\ & !\ROM|memROM~2_combout\)) # (\RAM|dado_out~1_combout\)) ) ) ) # ( \ROM|memROM~1_combout\ & ( !\habRESET~1_combout\ & ( \RAM|dado_out~1_combout\ ) ) ) # ( 
-- !\ROM|memROM~1_combout\ & ( !\habRESET~1_combout\ & ( \RAM|dado_out~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111011100111111111100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_dado_out~1_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ALT_INV_habRESET~1_combout\,
	combout => \RAM|dado_out[0]~5_combout\);

-- Location: LABCELL_X21_Y2_N51
\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = (!\ROM|memROM~1_combout\ & (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~3_combout\)))) # (\ROM|memROM~1_combout\ & (((!\ROM|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100001010000110110000101000011011000010100001101100001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~551_combout\);

-- Location: LABCELL_X20_Y1_N27
\CPU|ULA|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Equal1~0_combout\ = ( !\CPU|DECODER|operacao~0_combout\ & ( \CPU|DECODER|Equal1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	dataf => \CPU|DECODER|ALT_INV_operacao~0_combout\,
	combout => \CPU|ULA|Equal1~0_combout\);

-- Location: LABCELL_X19_Y2_N21
\bufferSW8|saida[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[1]~8_combout\ = ( \habRESET~1_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~1_combout\ & ((\ROM|memROM~8_combout\))) # (\ROM|memROM~1_combout\ & (!\ROM|memROM~3_combout\)))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & 
-- ((!\ROM|memROM~1_combout\) # (\ROM|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100000111110000110000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ALT_INV_habRESET~1_combout\,
	combout => \bufferSW8|saida[1]~8_combout\);

-- Location: LABCELL_X20_Y3_N45
\bufferSW8|saida[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[2]~10_combout\ = ( \RAM|ram~531_combout\ & ( !\bufferSW8|saida[1]~8_combout\ ) ) # ( !\RAM|ram~531_combout\ & ( (!\RAM|dado_out~1_combout\ & !\bufferSW8|saida[1]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~1_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	dataf => \RAM|ALT_INV_ram~531_combout\,
	combout => \bufferSW8|saida[2]~10_combout\);

-- Location: LABCELL_X19_Y1_N27
\ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~21_combout\ = ( \CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT\(2))) ) ) # ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(1) & 
-- (\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000001011010101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~21_combout\);

-- Location: LABCELL_X21_Y2_N27
\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~7_combout\ & !\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~547_combout\);

-- Location: LABCELL_X20_Y3_N0
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

-- Location: LABCELL_X20_Y3_N3
\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\RAM|dado_out[0]~7_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~1_combout\)))) ) + ( \CPU|BANCO_REG|registrador~28_combout\ ) + ( 
-- \CPU|ULA|Add0~34_cout\ ))
-- \CPU|ULA|Add0~10\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\RAM|dado_out[0]~7_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~1_combout\)))) ) + ( \CPU|BANCO_REG|registrador~28_combout\ ) + ( 
-- \CPU|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~7_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~28_combout\,
	cin => \CPU|ULA|Add0~34_cout\,
	sumout => \CPU|ULA|Add0~9_sumout\,
	cout => \CPU|ULA|Add0~10\);

-- Location: LABCELL_X21_Y3_N51
\CPU|BANCO_REG|registrador~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~20feeder_combout\ = ( \CPU|ULA|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~9_sumout\,
	combout => \CPU|BANCO_REG|registrador~20feeder_combout\);

-- Location: IOIBUF_X23_Y0_N58
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: IOIBUF_X18_Y0_N52
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X19_Y2_N30
\ADDR_511~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_511~0_combout\ = ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & \ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ADDR_511~0_combout\);

-- Location: MLABCELL_X18_Y2_N30
\RAM|dado_out[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~2_combout\ = ( \ADDR_511~0_combout\ & ( \habRESET~1_combout\ & ( (!\ROM|memROM~3_combout\ & (((!\KEY[3]~input_o\)))) # (\ROM|memROM~3_combout\ & ((!\FPGA_RESET_N~input_o\) # ((!\habKEY0~0_combout\)))) ) ) ) # ( !\ADDR_511~0_combout\ & ( 
-- \habRESET~1_combout\ & ( (!\FPGA_RESET_N~input_o\) # ((!\habKEY0~0_combout\) # (!\ROM|memROM~3_combout\)) ) ) ) # ( \ADDR_511~0_combout\ & ( !\habRESET~1_combout\ ) ) # ( !\ADDR_511~0_combout\ & ( !\habRESET~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110101100110011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FPGA_RESET_N~input_o\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \ALT_INV_habKEY0~0_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ALT_INV_ADDR_511~0_combout\,
	dataf => \ALT_INV_habRESET~1_combout\,
	combout => \RAM|dado_out[0]~2_combout\);

-- Location: IOIBUF_X22_Y0_N1
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: MLABCELL_X18_Y2_N48
\habLEDconj~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLEDconj~0_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[5]~DUPLICATE_q\))))) # 
-- (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & \CPU|PC|DOUT[3]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\))))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (((!\CPU|PC|DOUT[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111100000000010011010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \habLEDconj~0_combout\);

-- Location: LABCELL_X19_Y3_N30
\bufferSWConj|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSWConj|saida[0]~0_combout\ = ( \habRESET~0_combout\ & ( \CPU|DECODER|Equal1~0_combout\ & ( (!\SW[0]~input_o\ & (!\habLEDconj~0_combout\ & !\ROM|memROM~3_combout\)) ) ) ) # ( \habRESET~0_combout\ & ( !\CPU|DECODER|Equal1~0_combout\ & ( 
-- (!\SW[0]~input_o\ & (\CPU|DECODER|habAcumulador~0_combout\ & (!\habLEDconj~0_combout\ & !\ROM|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	datac => \ALT_INV_habLEDconj~0_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ALT_INV_habRESET~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	combout => \bufferSWConj|saida[0]~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: MLABCELL_X18_Y2_N12
\habKEY2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habKEY2~0_combout\ = ( !\CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \habKEY2~0_combout\);

-- Location: LABCELL_X19_Y3_N36
\bufferKEY2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY2|saida[0]~0_combout\ = ( \habRESET~0_combout\ & ( \CPU|DECODER|Equal1~0_combout\ & ( (\KEY[2]~input_o\ & (!\ROM|memROM~3_combout\ & \habKEY2~0_combout\)) ) ) ) # ( \habRESET~0_combout\ & ( !\CPU|DECODER|Equal1~0_combout\ & ( (\KEY[2]~input_o\ & 
-- (!\ROM|memROM~3_combout\ & (\habKEY2~0_combout\ & \CPU|DECODER|habAcumulador~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ALT_INV_habKEY2~0_combout\,
	datad => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	datae => \ALT_INV_habRESET~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	combout => \bufferKEY2|saida[0]~0_combout\);

-- Location: IOIBUF_X16_Y0_N75
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: MLABCELL_X18_Y2_N0
\habSW8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habSW8~0_combout\ = ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(1)))) ) ) ) # ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & \CPU|PC|DOUT\(1))) ) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(1)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000101000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \habSW8~0_combout\);

-- Location: LABCELL_X19_Y3_N18
\bufferSW8|saida[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[0]~7_combout\ = ( !\SW[8]~input_o\ & ( \habSW8~0_combout\ & ( (\habRESET~0_combout\ & (!\ROM|memROM~3_combout\ & ((\CPU|DECODER|habAcumulador~0_combout\) # (\CPU|DECODER|Equal1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habRESET~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datac => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_habSW8~0_combout\,
	combout => \bufferSW8|saida[0]~7_combout\);

-- Location: IOIBUF_X24_Y0_N18
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: MLABCELL_X18_Y2_N24
\habSW9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habSW9~0_combout\ = ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(3) & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT\(5)))) ) ) ) # ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(3) & ( 
-- (\ROM|memROM~0_combout\ & (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(3) & ( (\ROM|memROM~0_combout\ & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ $ 
-- (\CPU|PC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000001000000000001010001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \habSW9~0_combout\);

-- Location: LABCELL_X19_Y3_N21
\bufferSW9|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW9|saida[0]~0_combout\ = ( !\SW[9]~input_o\ & ( \habSW9~0_combout\ & ( (\habRESET~0_combout\ & (!\ROM|memROM~3_combout\ & ((\CPU|DECODER|habAcumulador~0_combout\) # (\CPU|DECODER|Equal1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habRESET~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_habSW9~0_combout\,
	combout => \bufferSW9|saida[0]~0_combout\);

-- Location: IOIBUF_X16_Y0_N58
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X17_Y2_N18
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

-- Location: FF_X17_Y2_N20
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

-- Location: LABCELL_X17_Y2_N15
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

-- Location: LABCELL_X20_Y2_N18
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

-- Location: LABCELL_X20_Y2_N30
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~4_combout\);

-- Location: LABCELL_X20_Y2_N24
\ADDR_511~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_511~1_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\ROM|memROM~4_combout\ & \ROM|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ADDR_511~1_combout\);

-- Location: LABCELL_X20_Y2_N48
\CPU|DECODER|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~1_combout\ = ( \ROM|memROM~15_combout\ & ( \ROM|memROM~0_combout\ & ( (!\ROM|memROM~13_combout\ & (!\CPU|PC|DOUT\(0) & (\ROM|memROM~9_combout\ & \ROM|memROM~11_combout\))) ) ) ) # ( !\ROM|memROM~15_combout\ & ( \ROM|memROM~0_combout\ & 
-- ( (!\ROM|memROM~13_combout\ & (\ROM|memROM~9_combout\ & \ROM|memROM~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|DECODER|Equal1~1_combout\);

-- Location: LABCELL_X20_Y2_N12
ADDR_511 : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_511~combout\ = ( \ROM|memROM~20_combout\ & ( \CPU|DECODER|Equal1~1_combout\ & ( (\ADDR_511~0_combout\ & (\ROM|memROM~3_combout\ & (\ADDR_511~1_combout\ & \ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDR_511~0_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ALT_INV_ADDR_511~1_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	combout => \ADDR_511~combout\);

-- Location: FF_X20_Y2_N19
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

-- Location: MLABCELL_X18_Y2_N39
\bufferKEY0|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY0|saida[0]~0_combout\ = ( !\FF_Debouncer|DOUT~q\ & ( \CPU|DECODER|habAcumulador~0_combout\ & ( (\habRESET~0_combout\ & (!\ROM|memROM~3_combout\ & \habKEY0~0_combout\)) ) ) ) # ( !\FF_Debouncer|DOUT~q\ & ( !\CPU|DECODER|habAcumulador~0_combout\ & 
-- ( (\CPU|DECODER|Equal1~0_combout\ & (\habRESET~0_combout\ & (!\ROM|memROM~3_combout\ & \habKEY0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_habRESET~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ALT_INV_habKEY0~0_combout\,
	datae => \FF_Debouncer|ALT_INV_DOUT~q\,
	dataf => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	combout => \bufferKEY0|saida[0]~0_combout\);

-- Location: MLABCELL_X18_Y3_N48
\RAM|dado_out[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~6_combout\ = ( !\bufferKEY0|saida[0]~0_combout\ & ( (!\bufferSWConj|saida[0]~0_combout\ & (!\bufferKEY2|saida[0]~0_combout\ & (!\bufferSW8|saida[0]~7_combout\ & !\bufferSW9|saida[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bufferSWConj|ALT_INV_saida[0]~0_combout\,
	datab => \bufferKEY2|ALT_INV_saida[0]~0_combout\,
	datac => \bufferSW8|ALT_INV_saida[0]~7_combout\,
	datad => \bufferSW9|ALT_INV_saida[0]~0_combout\,
	dataf => \bufferKEY0|ALT_INV_saida[0]~0_combout\,
	combout => \RAM|dado_out[0]~6_combout\);

-- Location: MLABCELL_X18_Y3_N6
\CPU|MUX_ULA|saida_MUX[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[0]~9_combout\ = ( !\CPU|DECODER|Equal1~3_combout\ & ( (!\RAM|dado_out[0]~5_combout\) # ((\RAM|dado_out[0]~2_combout\ & (\RAM|dado_out[0]~6_combout\ & ((!\RAM|dado_out~1_combout\) # (\RAM|ram~527_combout\))))) ) ) # ( 
-- \CPU|DECODER|Equal1~3_combout\ & ( (((\ROM|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100110011001100000011110000111111011100110111010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[0]~2_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~5_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \RAM|ALT_INV_ram~527_combout\,
	datae => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~6_combout\,
	datag => \RAM|ALT_INV_dado_out~1_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[0]~9_combout\);

-- Location: LABCELL_X21_Y3_N45
\CPU|BANCO_REG|registrador~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~36_combout\ = ( \CPU|DECODER|Equal1~3_combout\ & ( (!\CPU|PC|DOUT\(3) & (!\ROM|memROM~21_combout\ & \ROM|memROM~0_combout\)) ) ) # ( !\CPU|DECODER|Equal1~3_combout\ & ( (!\CPU|PC|DOUT\(3) & (!\ROM|memROM~21_combout\ & 
-- (\ROM|memROM~0_combout\ & \CPU|DECODER|habAcumulador~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	combout => \CPU|BANCO_REG|registrador~36_combout\);

-- Location: FF_X21_Y3_N52
\CPU|BANCO_REG|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~20feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[0]~9_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~20_q\);

-- Location: LABCELL_X19_Y1_N57
\CPU|BANCO_REG|registrador~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~28_combout\ = ( \CPU|BANCO_REG|registrador~20_q\ & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\ROM|memROM~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~20_q\,
	combout => \CPU|BANCO_REG|registrador~28_combout\);

-- Location: LABCELL_X19_Y1_N18
\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & 
-- ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \RAM|ram~554_combout\);

-- Location: FF_X21_Y3_N44
\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~28_combout\,
	sload => VCC,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

-- Location: LABCELL_X19_Y2_N15
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \ROM|memROM~4_combout\ & ( (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X21_Y3_N3
\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( !\ROM|memROM~5_combout\ & ( (\RAM|ram~31_q\ & !\ROM|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~31_q\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~545_combout\);

-- Location: LABCELL_X19_Y1_N3
\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \RAM|ram~553_combout\);

-- Location: FF_X19_Y3_N47
\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~28_combout\,
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: LABCELL_X19_Y1_N0
\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & \ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \RAM|ram~552_combout\);

-- Location: FF_X19_Y3_N5
\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~28_combout\,
	sload => VCC,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

-- Location: LABCELL_X19_Y3_N27
\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \ROM|memROM~1_combout\ & ( (!\ROM|memROM~3_combout\ & \RAM|ram~23_q\) ) ) # ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~3_combout\ & \RAM|ram~15_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \RAM|ALT_INV_ram~15_q\,
	datad => \RAM|ALT_INV_ram~23_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~546_combout\);

-- Location: LABCELL_X19_Y3_N51
\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~5_combout\ & \RAM|ram~546_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~546_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~548_combout\);

-- Location: LABCELL_X19_Y3_N54
\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \RAM|ram~545_combout\ & ( \RAM|ram~548_combout\ & ( (!\ROM|memROM~8_combout\ & ((!\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~547_combout\))))) # (\ROM|memROM~8_combout\ & 
-- (((\RAM|ram~547_combout\)))) ) ) ) # ( !\RAM|ram~545_combout\ & ( \RAM|ram~548_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~8_combout\ & (!\ROM|memROM~7_combout\)) # (\ROM|memROM~8_combout\ & ((\RAM|ram~547_combout\))))) # 
-- (\ROM|memROM~2_combout\ & (((\ROM|memROM~7_combout\ & \RAM|ram~547_combout\)))) ) ) ) # ( \RAM|ram~545_combout\ & ( !\RAM|ram~548_combout\ & ( (\RAM|ram~547_combout\ & \ROM|memROM~2_combout\) ) ) ) # ( !\RAM|ram~545_combout\ & ( !\RAM|ram~548_combout\ & ( 
-- (\ROM|memROM~7_combout\ & (\RAM|ram~547_combout\ & \ROM|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000111110001101000000111000110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~547_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~545_combout\,
	dataf => \RAM|ALT_INV_ram~548_combout\,
	combout => \RAM|ram~527_combout\);

-- Location: LABCELL_X19_Y3_N48
\RAM|dado_out[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~7_combout\ = ( \RAM|dado_out[0]~5_combout\ & ( (\RAM|dado_out[0]~3_combout\ & (\RAM|dado_out[0]~2_combout\ & ((!\RAM|dado_out~1_combout\) # (\RAM|ram~527_combout\)))) ) ) # ( !\RAM|dado_out[0]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000001000110000000000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~1_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~3_combout\,
	datac => \RAM|ALT_INV_ram~527_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~2_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~5_combout\,
	combout => \RAM|dado_out[0]~7_combout\);

-- Location: LABCELL_X20_Y3_N6
\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[1]~9_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|BANCO_REG|registrador~29_combout\ ) + ( 
-- \CPU|ULA|Add0~10\ ))
-- \CPU|ULA|Add0~18\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[1]~9_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|BANCO_REG|registrador~29_combout\ ) + ( 
-- \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~9_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~29_combout\,
	cin => \CPU|ULA|Add0~10\,
	sumout => \CPU|ULA|Add0~17_sumout\,
	cout => \CPU|ULA|Add0~18\);

-- Location: MLABCELL_X18_Y3_N15
\CPU|BANCO_REG|registrador~21feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~21feeder_combout\ = ( \CPU|ULA|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	combout => \CPU|BANCO_REG|registrador~21feeder_combout\);

-- Location: LABCELL_X21_Y3_N18
\CPU|MUX_ULA|saida_MUX[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[1]~3_combout\ = ( !\bufferSW8|saida[1]~8_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & ((!\RAM|dado_out~1_combout\) # (\RAM|ram~530_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~1_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datad => \RAM|ALT_INV_ram~530_combout\,
	dataf => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[1]~3_combout\);

-- Location: FF_X18_Y3_N16
\CPU|BANCO_REG|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~21feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[1]~3_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~21_q\);

-- Location: LABCELL_X19_Y1_N24
\CPU|BANCO_REG|registrador~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~29_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\ROM|memROM~21_combout\ & \CPU|BANCO_REG|registrador~21_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~21_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|BANCO_REG|registrador~29_combout\);

-- Location: FF_X20_Y2_N53
\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~29_combout\,
	sload => VCC,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

-- Location: FF_X19_Y2_N59
\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~29_combout\,
	sload => VCC,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

-- Location: FF_X19_Y2_N11
\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~29_combout\,
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: LABCELL_X19_Y2_N27
\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \ROM|memROM~1_combout\ & ( (\RAM|ram~24_q\ & !\ROM|memROM~2_combout\) ) ) # ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~2_combout\ & ((\RAM|ram~16_q\))) # (\ROM|memROM~2_combout\ & (\RAM|ram~32_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~32_q\,
	datab => \RAM|ALT_INV_ram~24_q\,
	datac => \RAM|ALT_INV_ram~16_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~528_combout\);

-- Location: LABCELL_X19_Y2_N24
\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( !\ROM|memROM~7_combout\ & ( (\RAM|ram~528_combout\ & !\ROM|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~528_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~529_combout\);

-- Location: LABCELL_X19_Y2_N51
\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( \RAM|ram~529_combout\ & ( (!\ROM|memROM~3_combout\ & !\ROM|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \RAM|ALT_INV_ram~529_combout\,
	combout => \RAM|ram~530_combout\);

-- Location: LABCELL_X19_Y2_N54
\bufferSW8|saida[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[1]~9_combout\ = ( !\bufferSW8|saida[1]~8_combout\ & ( (!\RAM|dado_out~1_combout\) # (\RAM|ram~530_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~1_combout\,
	datac => \RAM|ALT_INV_ram~530_combout\,
	dataf => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	combout => \bufferSW8|saida[1]~9_combout\);

-- Location: LABCELL_X20_Y3_N9
\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[2]~10_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~3_combout\)))) ) + ( \CPU|BANCO_REG|registrador~30_combout\ ) + ( 
-- \CPU|ULA|Add0~18\ ))
-- \CPU|ULA|Add0~14\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[2]~10_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~3_combout\)))) ) + ( \CPU|BANCO_REG|registrador~30_combout\ ) + ( 
-- \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \bufferSW8|ALT_INV_saida[2]~10_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~30_combout\,
	cin => \CPU|ULA|Add0~18\,
	sumout => \CPU|ULA|Add0~13_sumout\,
	cout => \CPU|ULA|Add0~14\);

-- Location: MLABCELL_X18_Y3_N12
\CPU|BANCO_REG|registrador~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~22feeder_combout\ = ( \CPU|ULA|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~13_sumout\,
	combout => \CPU|BANCO_REG|registrador~22feeder_combout\);

-- Location: FF_X18_Y3_N14
\CPU|BANCO_REG|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~22feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[2]~8_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~22_q\);

-- Location: LABCELL_X21_Y3_N48
\CPU|BANCO_REG|registrador~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~30_combout\ = ( !\ROM|memROM~21_combout\ & ( (\CPU|BANCO_REG|registrador~22_q\ & (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|BANCO_REG|ALT_INV_registrador~22_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \CPU|BANCO_REG|registrador~30_combout\);

-- Location: FF_X21_Y2_N31
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~30_combout\,
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: FF_X21_Y2_N44
\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~30_combout\,
	sload => VCC,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

-- Location: LABCELL_X21_Y2_N45
\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~17_q\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~33_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datab => \RAM|ALT_INV_ram~33_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~549_combout\);

-- Location: FF_X21_Y2_N17
\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~30_combout\,
	sload => VCC,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

-- Location: LABCELL_X21_Y2_N15
\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \ROM|memROM~8_combout\ & ( (!\ROM|memROM~5_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~3_combout\)) # (\ROM|memROM~5_combout\ & (\ROM|memROM~7_combout\ & \ROM|memROM~3_combout\)) ) ) # ( !\ROM|memROM~8_combout\ & ( 
-- (!\ROM|memROM~5_combout\ & (!\ROM|memROM~7_combout\ & (!\ROM|memROM~3_combout\ & \RAM|ram~25_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000010000001100000011000000110000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \RAM|ALT_INV_ram~25_q\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~550_combout\);

-- Location: LABCELL_X21_Y2_N54
\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \RAM|ram~550_combout\ & ( (!\ROM|memROM~8_combout\ & (\RAM|ram~551_combout\ & ((\RAM|ram~549_combout\) # (\ROM|memROM~1_combout\)))) ) ) # ( !\RAM|ram~550_combout\ & ( (!\ROM|memROM~1_combout\ & (!\ROM|memROM~8_combout\ & 
-- (\RAM|ram~551_combout\ & \RAM|ram~549_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000100000011000000010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \RAM|ALT_INV_ram~551_combout\,
	datad => \RAM|ALT_INV_ram~549_combout\,
	dataf => \RAM|ALT_INV_ram~550_combout\,
	combout => \RAM|ram~531_combout\);

-- Location: IOIBUF_X14_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: MLABCELL_X18_Y3_N39
\bufferSW8|saida[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[2]~18_combout\ = ( \habRESET~1_combout\ & ( \SW[2]~input_o\ & ( (!\ROM|memROM~1_combout\ & ((!\ROM|memROM~2_combout\ & ((\ROM|memROM~8_combout\))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # (\ROM|memROM~8_combout\)))) ) ) ) # ( \habRESET~1_combout\ & ( !\SW[2]~input_o\ & ( (!\ROM|memROM~1_combout\ & ((!\ROM|memROM~3_combout\) # ((!\ROM|memROM~2_combout\ & \ROM|memROM~8_combout\)))) # 
-- (\ROM|memROM~1_combout\ & (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # (\ROM|memROM~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010001110110000000000000000000100100011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ALT_INV_habRESET~1_combout\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \bufferSW8|saida[2]~18_combout\);

-- Location: MLABCELL_X18_Y3_N0
\CPU|MUX_ULA|saida_MUX[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[2]~8_combout\ = ( \RAM|dado_out~1_combout\ & ( \bufferSW8|saida[2]~18_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & (!\RAM|dado_out[0]~5_combout\)) # (\CPU|DECODER|Equal1~3_combout\ & ((\ROM|memROM~3_combout\))) ) ) ) # ( 
-- !\RAM|dado_out~1_combout\ & ( \bufferSW8|saida[2]~18_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & (!\RAM|dado_out[0]~5_combout\)) # (\CPU|DECODER|Equal1~3_combout\ & ((\ROM|memROM~3_combout\))) ) ) ) # ( \RAM|dado_out~1_combout\ & ( 
-- !\bufferSW8|saida[2]~18_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & ((!\RAM|dado_out[0]~5_combout\) # ((\RAM|ram~531_combout\)))) # (\CPU|DECODER|Equal1~3_combout\ & (((\ROM|memROM~3_combout\)))) ) ) ) # ( !\RAM|dado_out~1_combout\ & ( 
-- !\bufferSW8|saida[2]~18_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\) # (\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111100010101101111110001000110111011000100011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~5_combout\,
	datac => \RAM|ALT_INV_ram~531_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \RAM|ALT_INV_dado_out~1_combout\,
	dataf => \bufferSW8|ALT_INV_saida[2]~18_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[2]~8_combout\);

-- Location: LABCELL_X20_Y3_N42
\bufferSW8|saida[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[6]~14_combout\ = ( \RAM|ram~541_combout\ & ( !\bufferSW8|saida[1]~8_combout\ ) ) # ( !\RAM|ram~541_combout\ & ( (!\RAM|dado_out~1_combout\ & !\bufferSW8|saida[1]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_dado_out~1_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	dataf => \RAM|ALT_INV_ram~541_combout\,
	combout => \bufferSW8|saida[6]~14_combout\);

-- Location: LABCELL_X20_Y3_N12
\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[3]~11_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~5_combout\)))) ) + ( \CPU|BANCO_REG|registrador~31_combout\ ) + ( 
-- \CPU|ULA|Add0~14\ ))
-- \CPU|ULA|Add0~30\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[3]~11_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~5_combout\)))) ) + ( \CPU|BANCO_REG|registrador~31_combout\ ) + ( 
-- \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \bufferSW8|ALT_INV_saida[3]~11_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~31_combout\,
	cin => \CPU|ULA|Add0~14\,
	sumout => \CPU|ULA|Add0~29_sumout\,
	cout => \CPU|ULA|Add0~30\);

-- Location: LABCELL_X21_Y3_N57
\CPU|BANCO_REG|registrador~23feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~23feeder_combout\ = ( \CPU|ULA|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~29_sumout\,
	combout => \CPU|BANCO_REG|registrador~23feeder_combout\);

-- Location: IOIBUF_X16_Y0_N41
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: MLABCELL_X18_Y3_N36
\bufferSW8|saida[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[3]~17_combout\ = ( \habRESET~1_combout\ & ( \SW[3]~input_o\ & ( (!\ROM|memROM~1_combout\ & ((!\ROM|memROM~2_combout\ & ((\ROM|memROM~8_combout\))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\)))) # (\ROM|memROM~1_combout\ & 
-- (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # (\ROM|memROM~8_combout\)))) ) ) ) # ( \habRESET~1_combout\ & ( !\SW[3]~input_o\ & ( (!\ROM|memROM~1_combout\ & ((!\ROM|memROM~3_combout\) # ((\ROM|memROM~8_combout\ & !\ROM|memROM~2_combout\)))) # 
-- (\ROM|memROM~1_combout\ & (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~2_combout\) # (\ROM|memROM~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011101000110000000000000000000100111010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ALT_INV_habRESET~1_combout\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \bufferSW8|saida[3]~17_combout\);

-- Location: MLABCELL_X18_Y3_N18
\CPU|MUX_ULA|saida_MUX[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[3]~7_combout\ = ( \bufferSW8|saida[3]~17_combout\ & ( \RAM|dado_out[0]~5_combout\ & ( (\CPU|DECODER|Equal1~3_combout\ & \ROM|memROM~5_combout\) ) ) ) # ( !\bufferSW8|saida[3]~17_combout\ & ( \RAM|dado_out[0]~5_combout\ & ( 
-- (!\CPU|DECODER|Equal1~3_combout\ & ((!\RAM|dado_out~1_combout\) # ((\RAM|ram~533_combout\)))) # (\CPU|DECODER|Equal1~3_combout\ & (((\ROM|memROM~5_combout\)))) ) ) ) # ( \bufferSW8|saida[3]~17_combout\ & ( !\RAM|dado_out[0]~5_combout\ & ( 
-- (!\CPU|DECODER|Equal1~3_combout\) # (\ROM|memROM~5_combout\) ) ) ) # ( !\bufferSW8|saida[3]~17_combout\ & ( !\RAM|dado_out[0]~5_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\) # (\ROM|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111110001011110011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~1_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~533_combout\,
	datae => \bufferSW8|ALT_INV_saida[3]~17_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~5_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[3]~7_combout\);

-- Location: FF_X21_Y3_N58
\CPU|BANCO_REG|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~23feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[3]~7_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~23_q\);

-- Location: LABCELL_X19_Y1_N54
\CPU|BANCO_REG|registrador~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~31_combout\ = ( \CPU|BANCO_REG|registrador~23_q\ & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\ROM|memROM~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~23_q\,
	combout => \CPU|BANCO_REG|registrador~31_combout\);

-- Location: FF_X19_Y1_N41
\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~31_combout\,
	sload => VCC,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

-- Location: FF_X19_Y1_N47
\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~31_combout\,
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: FF_X19_Y1_N8
\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~31_combout\,
	sload => VCC,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

-- Location: LABCELL_X19_Y1_N6
\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \RAM|ram~34_q\ & ( \ROM|memROM~1_combout\ & ( (\RAM|ram~26_q\ & !\ROM|memROM~2_combout\) ) ) ) # ( !\RAM|ram~34_q\ & ( \ROM|memROM~1_combout\ & ( (\RAM|ram~26_q\ & !\ROM|memROM~2_combout\) ) ) ) # ( \RAM|ram~34_q\ & ( 
-- !\ROM|memROM~1_combout\ & ( (\ROM|memROM~2_combout\) # (\RAM|ram~18_q\) ) ) ) # ( !\RAM|ram~34_q\ & ( !\ROM|memROM~1_combout\ & ( (\RAM|ram~18_q\ & !\ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~26_q\,
	datac => \RAM|ALT_INV_ram~18_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~34_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~532_combout\);

-- Location: LABCELL_X19_Y1_N42
\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = ( !\ROM|memROM~3_combout\ & ( \RAM|ram~532_combout\ & ( !\ROM|memROM~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \RAM|ALT_INV_ram~532_combout\,
	combout => \RAM|ram~567_combout\);

-- Location: LABCELL_X19_Y1_N39
\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \RAM|ram~567_combout\ & ( (!\ROM|memROM~8_combout\ & !\ROM|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \RAM|ALT_INV_ram~567_combout\,
	combout => \RAM|ram~533_combout\);

-- Location: LABCELL_X20_Y3_N57
\bufferSW8|saida[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[3]~11_combout\ = ( \RAM|ram~533_combout\ & ( !\bufferSW8|saida[1]~8_combout\ ) ) # ( !\RAM|ram~533_combout\ & ( (!\RAM|dado_out~1_combout\ & !\bufferSW8|saida[1]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~1_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	dataf => \RAM|ALT_INV_ram~533_combout\,
	combout => \bufferSW8|saida[3]~11_combout\);

-- Location: LABCELL_X20_Y3_N15
\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[4]~12_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~7_combout\)))) ) + ( \CPU|BANCO_REG|registrador~32_combout\ ) + ( 
-- \CPU|ULA|Add0~30\ ))
-- \CPU|ULA|Add0~26\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[4]~12_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~7_combout\)))) ) + ( \CPU|BANCO_REG|registrador~32_combout\ ) + ( 
-- \CPU|ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \bufferSW8|ALT_INV_saida[4]~12_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~32_combout\,
	cin => \CPU|ULA|Add0~30\,
	sumout => \CPU|ULA|Add0~25_sumout\,
	cout => \CPU|ULA|Add0~26\);

-- Location: LABCELL_X21_Y3_N24
\CPU|BANCO_REG|registrador~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~24feeder_combout\ = ( \CPU|ULA|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~25_sumout\,
	combout => \CPU|BANCO_REG|registrador~24feeder_combout\);

-- Location: LABCELL_X21_Y3_N54
\CPU|MUX_ULA|saida_MUX[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[4]~2_combout\ = ( !\bufferSW8|saida[1]~8_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & ((!\RAM|dado_out~1_combout\) # (\RAM|ram~535_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000111100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~535_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datad => \RAM|ALT_INV_dado_out~1_combout\,
	dataf => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[4]~2_combout\);

-- Location: FF_X21_Y3_N26
\CPU|BANCO_REG|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~24feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[4]~2_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~24_q\);

-- Location: LABCELL_X21_Y3_N0
\CPU|BANCO_REG|registrador~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~32_combout\ = ( !\ROM|memROM~21_combout\ & ( (\CPU|BANCO_REG|registrador~24_q\ & (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_registrador~24_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \CPU|BANCO_REG|registrador~32_combout\);

-- Location: FF_X21_Y2_N35
\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~32_combout\,
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

-- Location: FF_X21_Y2_N19
\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~32_combout\,
	sload => VCC,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

-- Location: LABCELL_X21_Y2_N30
\RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~563_combout\ = ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~1_combout\ & (\RAM|ram~19_q\)) # (\ROM|memROM~1_combout\ & ((\RAM|ram~27_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \RAM|ALT_INV_ram~27_q\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~563_combout\);

-- Location: FF_X21_Y2_N46
\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~32_combout\,
	sload => VCC,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

-- Location: LABCELL_X21_Y2_N48
\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~1_combout\ & (!\ROM|memROM~7_combout\ & (\RAM|ram~35_q\ & !\ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~35_q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~534_combout\);

-- Location: LABCELL_X21_Y2_N21
\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \RAM|ram~534_combout\ & ( (!\ROM|memROM~8_combout\ & ((\ROM|memROM~2_combout\) # (\RAM|ram~563_combout\))) ) ) # ( !\RAM|ram~534_combout\ & ( (!\ROM|memROM~8_combout\ & (\RAM|ram~563_combout\ & !\ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datac => \RAM|ALT_INV_ram~563_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~534_combout\,
	combout => \RAM|ram~535_combout\);

-- Location: LABCELL_X20_Y3_N36
\bufferSW8|saida[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[4]~12_combout\ = ( \RAM|ram~535_combout\ & ( !\bufferSW8|saida[1]~8_combout\ ) ) # ( !\RAM|ram~535_combout\ & ( (!\RAM|dado_out~1_combout\ & !\bufferSW8|saida[1]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_dado_out~1_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	dataf => \RAM|ALT_INV_ram~535_combout\,
	combout => \bufferSW8|saida[4]~12_combout\);

-- Location: LABCELL_X20_Y3_N18
\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[5]~13_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~8_combout\)))) ) + ( \CPU|BANCO_REG|registrador~33_combout\ ) + ( 
-- \CPU|ULA|Add0~26\ ))
-- \CPU|ULA|Add0~22\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[5]~13_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~8_combout\)))) ) + ( \CPU|BANCO_REG|registrador~33_combout\ ) + ( 
-- \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \bufferSW8|ALT_INV_saida[5]~13_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~33_combout\,
	cin => \CPU|ULA|Add0~26\,
	sumout => \CPU|ULA|Add0~21_sumout\,
	cout => \CPU|ULA|Add0~22\);

-- Location: LABCELL_X21_Y3_N21
\CPU|BANCO_REG|registrador~25feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~25feeder_combout\ = ( \CPU|ULA|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~21_sumout\,
	combout => \CPU|BANCO_REG|registrador~25feeder_combout\);

-- Location: LABCELL_X21_Y3_N27
\CPU|MUX_ULA|saida_MUX[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[5]~1_combout\ = ( \RAM|ram~539_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & !\bufferSW8|saida[1]~8_combout\) ) ) # ( !\RAM|ram~539_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & (!\bufferSW8|saida[1]~8_combout\ & 
-- !\RAM|dado_out~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datac => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	datad => \RAM|ALT_INV_dado_out~1_combout\,
	dataf => \RAM|ALT_INV_ram~539_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[5]~1_combout\);

-- Location: FF_X21_Y3_N22
\CPU|BANCO_REG|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~25feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[5]~1_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~25_q\);

-- Location: LABCELL_X19_Y1_N36
\CPU|BANCO_REG|registrador~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~33_combout\ = ( \ROM|memROM~0_combout\ & ( (\CPU|BANCO_REG|registrador~25_q\ & (!\ROM|memROM~21_combout\ & !\CPU|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_registrador~25_q\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|BANCO_REG|registrador~33_combout\);

-- Location: FF_X21_Y2_N41
\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~33_combout\,
	sload => VCC,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

-- Location: LABCELL_X21_Y2_N39
\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~5_combout\ & (!\ROM|memROM~7_combout\ & (!\ROM|memROM~2_combout\ & \RAM|ram~28_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~28_q\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~538_combout\);

-- Location: FF_X21_Y2_N49
\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~33_combout\,
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

-- Location: FF_X21_Y2_N8
\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~33_combout\,
	sload => VCC,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

-- Location: LABCELL_X21_Y2_N6
\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\ROM|memROM~8_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~20_q\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~36_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~20_q\,
	datad => \RAM|ALT_INV_ram~36_q\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~536_combout\);

-- Location: LABCELL_X21_Y2_N18
\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \RAM|ram~536_combout\ & ( (!\ROM|memROM~7_combout\ & !\ROM|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \RAM|ALT_INV_ram~536_combout\,
	combout => \RAM|ram~537_combout\);

-- Location: LABCELL_X21_Y2_N3
\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \RAM|ram~537_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~1_combout\) # (\RAM|ram~538_combout\))) ) ) # ( !\RAM|ram~537_combout\ & ( (!\ROM|memROM~3_combout\ & (\RAM|ram~538_combout\ & \ROM|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datac => \RAM|ALT_INV_ram~538_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \RAM|ALT_INV_ram~537_combout\,
	combout => \RAM|ram~539_combout\);

-- Location: LABCELL_X20_Y3_N39
\bufferSW8|saida[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[5]~13_combout\ = ( \RAM|ram~539_combout\ & ( !\bufferSW8|saida[1]~8_combout\ ) ) # ( !\RAM|ram~539_combout\ & ( (!\RAM|dado_out~1_combout\ & !\bufferSW8|saida[1]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~1_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	dataf => \RAM|ALT_INV_ram~539_combout\,
	combout => \bufferSW8|saida[5]~13_combout\);

-- Location: LABCELL_X20_Y3_N21
\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[6]~14_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~18_combout\)))) ) + ( \CPU|BANCO_REG|registrador~34_combout\ ) + ( 
-- \CPU|ULA|Add0~22\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[6]~14_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~18_combout\)))) ) + ( \CPU|BANCO_REG|registrador~34_combout\ ) + ( 
-- \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \bufferSW8|ALT_INV_saida[6]~14_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~34_combout\,
	cin => \CPU|ULA|Add0~22\,
	sumout => \CPU|ULA|Add0~5_sumout\,
	cout => \CPU|ULA|Add0~6\);

-- Location: LABCELL_X21_Y3_N12
\CPU|BANCO_REG|registrador~26feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~26feeder_combout\ = ( \CPU|ULA|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	combout => \CPU|BANCO_REG|registrador~26feeder_combout\);

-- Location: FF_X21_Y3_N13
\CPU|BANCO_REG|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~26feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~26_q\);

-- Location: LABCELL_X19_Y1_N15
\CPU|BANCO_REG|registrador~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~34_combout\ = ( \ROM|memROM~0_combout\ & ( (\CPU|BANCO_REG|registrador~26_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\ROM|memROM~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_registrador~26_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|BANCO_REG|registrador~34_combout\);

-- Location: FF_X19_Y1_N50
\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~34_combout\,
	sload => VCC,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

-- Location: FF_X19_Y1_N32
\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~34_combout\,
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

-- Location: FF_X19_Y1_N14
\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~34_combout\,
	sload => VCC,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

-- Location: LABCELL_X19_Y1_N12
\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \ROM|memROM~1_combout\ & ( (!\ROM|memROM~3_combout\ & \RAM|ram~29_q\) ) ) # ( !\ROM|memROM~1_combout\ & ( (\RAM|ram~21_q\ & !\ROM|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~21_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \RAM|ALT_INV_ram~29_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~540_combout\);

-- Location: LABCELL_X19_Y1_N48
\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = ( \RAM|ram~37_q\ & ( \RAM|ram~540_combout\ & ( (!\ROM|memROM~5_combout\ & ((!\ROM|memROM~2_combout\) # ((!\ROM|memROM~1_combout\ & !\ROM|memROM~3_combout\)))) ) ) ) # ( !\RAM|ram~37_q\ & ( \RAM|ram~540_combout\ & ( 
-- (!\ROM|memROM~2_combout\ & !\ROM|memROM~5_combout\) ) ) ) # ( \RAM|ram~37_q\ & ( !\RAM|ram~540_combout\ & ( (!\ROM|memROM~1_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000011001100000000001110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \RAM|ALT_INV_ram~37_q\,
	dataf => \RAM|ALT_INV_ram~540_combout\,
	combout => \RAM|ram~559_combout\);

-- Location: LABCELL_X19_Y1_N33
\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( !\ROM|memROM~7_combout\ & ( \RAM|ram~559_combout\ & ( !\ROM|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \RAM|ALT_INV_ram~559_combout\,
	combout => \RAM|ram~541_combout\);

-- Location: IOIBUF_X14_Y0_N18
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: MLABCELL_X18_Y3_N24
\bufferSW8|saida[6]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[6]~16_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~2_combout\ & ( (\habRESET~1_combout\ & !\ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & (\habRESET~1_combout\ & 
-- !\ROM|memROM~3_combout\)) ) ) ) # ( \ROM|memROM~8_combout\ & ( !\ROM|memROM~2_combout\ & ( (\habRESET~1_combout\ & ((!\ROM|memROM~1_combout\) # (!\ROM|memROM~3_combout\))) ) ) ) # ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- (\habRESET~1_combout\ & (!\ROM|memROM~3_combout\ & ((!\SW[6]~input_o\) # (\ROM|memROM~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000000000011110000101000001010000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_habRESET~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bufferSW8|saida[6]~16_combout\);

-- Location: MLABCELL_X18_Y3_N42
\CPU|MUX_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[6]~6_combout\ = ( \RAM|dado_out~1_combout\ & ( \bufferSW8|saida[6]~16_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & ((!\RAM|dado_out[0]~5_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~18_combout\)) ) ) ) # ( 
-- !\RAM|dado_out~1_combout\ & ( \bufferSW8|saida[6]~16_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & ((!\RAM|dado_out[0]~5_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~18_combout\)) ) ) ) # ( \RAM|dado_out~1_combout\ & ( 
-- !\bufferSW8|saida[6]~16_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & (((!\RAM|dado_out[0]~5_combout\) # (\RAM|ram~541_combout\)))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~18_combout\)) ) ) ) # ( !\RAM|dado_out~1_combout\ & ( 
-- !\bufferSW8|saida[6]~16_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\) # (\ROM|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110110001101110111011000100011011101100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \RAM|ALT_INV_ram~541_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~5_combout\,
	datae => \RAM|ALT_INV_dado_out~1_combout\,
	dataf => \bufferSW8|ALT_INV_saida[6]~16_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[6]~6_combout\);

-- Location: MLABCELL_X18_Y3_N54
\CPU|MUX_ULA|saida_MUX[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[0]~5_combout\ = ( \RAM|dado_out~1_combout\ & ( \RAM|dado_out[0]~6_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & ((!\RAM|dado_out[0]~5_combout\) # ((\RAM|dado_out[0]~2_combout\ & \RAM|ram~527_combout\)))) ) ) ) # ( 
-- !\RAM|dado_out~1_combout\ & ( \RAM|dado_out[0]~6_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & ((!\RAM|dado_out[0]~5_combout\) # (\RAM|dado_out[0]~2_combout\))) ) ) ) # ( \RAM|dado_out~1_combout\ & ( !\RAM|dado_out[0]~6_combout\ & ( 
-- (!\RAM|dado_out[0]~5_combout\ & !\CPU|DECODER|Equal1~3_combout\) ) ) ) # ( !\RAM|dado_out~1_combout\ & ( !\RAM|dado_out[0]~6_combout\ & ( (!\RAM|dado_out[0]~5_combout\ & !\CPU|DECODER|Equal1~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011010000110100001100000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[0]~2_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~5_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datad => \RAM|ALT_INV_ram~527_combout\,
	datae => \RAM|ALT_INV_dado_out~1_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~6_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[0]~5_combout\);

-- Location: MLABCELL_X18_Y3_N30
\CPU|FLAGer|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~2_combout\ = ( \CPU|MUX_ULA|saida_MUX[0]~5_combout\ & ( \CPU|MUX_ULA|saida_MUX[3]~7_combout\ & ( \CPU|DECODER|operacao~1_combout\ ) ) ) # ( !\CPU|MUX_ULA|saida_MUX[0]~5_combout\ & ( \CPU|MUX_ULA|saida_MUX[3]~7_combout\ & ( 
-- \CPU|DECODER|operacao~1_combout\ ) ) ) # ( \CPU|MUX_ULA|saida_MUX[0]~5_combout\ & ( !\CPU|MUX_ULA|saida_MUX[3]~7_combout\ & ( \CPU|DECODER|operacao~1_combout\ ) ) ) # ( !\CPU|MUX_ULA|saida_MUX[0]~5_combout\ & ( !\CPU|MUX_ULA|saida_MUX[3]~7_combout\ & ( 
-- (\CPU|DECODER|operacao~1_combout\ & (((\CPU|MUX_ULA|saida_MUX[6]~6_combout\) # (\CPU|MUX_ULA|saida_MUX[2]~8_combout\)) # (\CPU|MUX_ULA|saida_MUX[0]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ULA|ALT_INV_saida_MUX[0]~4_combout\,
	datab => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datac => \CPU|MUX_ULA|ALT_INV_saida_MUX[2]~8_combout\,
	datad => \CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\,
	datae => \CPU|MUX_ULA|ALT_INV_saida_MUX[0]~5_combout\,
	dataf => \CPU|MUX_ULA|ALT_INV_saida_MUX[3]~7_combout\,
	combout => \CPU|FLAGer|DOUT~2_combout\);

-- Location: LABCELL_X21_Y2_N42
\CPU|FLAGer|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~0_combout\ = ( !\CPU|DECODER|Equal1~0_combout\ & ( \CPU|FLAGer|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FLAGer|ALT_INV_DOUT~q\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	combout => \CPU|FLAGer|DOUT~0_combout\);

-- Location: LABCELL_X21_Y2_N57
\bufferSW8|saida[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[7]~15_combout\ = ( \RAM|ram~544_combout\ & ( !\bufferSW8|saida[1]~8_combout\ ) ) # ( !\RAM|ram~544_combout\ & ( (!\bufferSW8|saida[1]~8_combout\ & !\RAM|dado_out~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	datad => \RAM|ALT_INV_dado_out~1_combout\,
	dataf => \RAM|ALT_INV_ram~544_combout\,
	combout => \bufferSW8|saida[7]~15_combout\);

-- Location: LABCELL_X20_Y3_N24
\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[7]~15_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~7_combout\)))) ) + ( \CPU|BANCO_REG|registrador~35_combout\ ) + ( 
-- \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datad => \bufferSW8|ALT_INV_saida[7]~15_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~35_combout\,
	cin => \CPU|ULA|Add0~6\,
	sumout => \CPU|ULA|Add0~1_sumout\);

-- Location: LABCELL_X21_Y3_N6
\CPU|BANCO_REG|registrador~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~27feeder_combout\ = ( \CPU|ULA|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	combout => \CPU|BANCO_REG|registrador~27feeder_combout\);

-- Location: FF_X21_Y3_N8
\CPU|BANCO_REG|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~27feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[7]~0_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~27_q\);

-- Location: LABCELL_X21_Y3_N42
\CPU|BANCO_REG|registrador~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~35_combout\ = ( \CPU|BANCO_REG|registrador~27_q\ & ( (!\CPU|PC|DOUT\(3) & (!\ROM|memROM~21_combout\ & \ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~21_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~27_q\,
	combout => \CPU|BANCO_REG|registrador~35_combout\);

-- Location: FF_X20_Y2_N17
\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~35_combout\,
	sload => VCC,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

-- Location: LABCELL_X21_Y2_N36
\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~5_combout\ & (!\ROM|memROM~7_combout\ & (\RAM|ram~38_q\ & !\ROM|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~38_q\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~555_combout\);

-- Location: FF_X21_Y2_N2
\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~35_combout\,
	sload => VCC,
	ena => \RAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

-- Location: LABCELL_X21_Y2_N0
\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~3_combout\ & (!\ROM|memROM~5_combout\ & (!\ROM|memROM~8_combout\ & \RAM|ram~30_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~30_q\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~543_combout\);

-- Location: FF_X20_Y1_N23
\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~35_combout\,
	sload => VCC,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

-- Location: LABCELL_X20_Y1_N21
\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \RAM|ram~22_q\ & ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~3_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \RAM|ALT_INV_ram~22_q\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~542_combout\);

-- Location: LABCELL_X21_Y2_N24
\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( \RAM|ram~542_combout\ & ( (!\ROM|memROM~1_combout\ & ((!\ROM|memROM~2_combout\) # ((\RAM|ram~555_combout\)))) # (\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & ((\RAM|ram~543_combout\)))) ) ) # ( !\RAM|ram~542_combout\ & ( 
-- (!\ROM|memROM~1_combout\ & (\ROM|memROM~2_combout\ & (\RAM|ram~555_combout\))) # (\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & ((\RAM|ram~543_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~555_combout\,
	datad => \RAM|ALT_INV_ram~543_combout\,
	dataf => \RAM|ALT_INV_ram~542_combout\,
	combout => \RAM|ram~544_combout\);

-- Location: LABCELL_X21_Y3_N9
\CPU|MUX_ULA|saida_MUX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[7]~0_combout\ = ( \RAM|ram~544_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & !\bufferSW8|saida[1]~8_combout\) ) ) # ( !\RAM|ram~544_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & (!\bufferSW8|saida[1]~8_combout\ & 
-- !\RAM|dado_out~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datac => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	datad => \RAM|ALT_INV_dado_out~1_combout\,
	dataf => \RAM|ALT_INV_ram~544_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[7]~0_combout\);

-- Location: LABCELL_X21_Y3_N30
\CPU|FLAGer|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~1_combout\ = ( \CPU|MUX_ULA|saida_MUX[5]~1_combout\ & ( \CPU|MUX_ULA|saida_MUX[7]~0_combout\ & ( (\CPU|DECODER|Equal1~0_combout\ & !\CPU|DECODER|operacao~1_combout\) ) ) ) # ( !\CPU|MUX_ULA|saida_MUX[5]~1_combout\ & ( 
-- \CPU|MUX_ULA|saida_MUX[7]~0_combout\ & ( (\CPU|DECODER|Equal1~0_combout\ & !\CPU|DECODER|operacao~1_combout\) ) ) ) # ( \CPU|MUX_ULA|saida_MUX[5]~1_combout\ & ( !\CPU|MUX_ULA|saida_MUX[7]~0_combout\ & ( (\CPU|DECODER|Equal1~0_combout\ & 
-- !\CPU|DECODER|operacao~1_combout\) ) ) ) # ( !\CPU|MUX_ULA|saida_MUX[5]~1_combout\ & ( !\CPU|MUX_ULA|saida_MUX[7]~0_combout\ & ( (\CPU|DECODER|Equal1~0_combout\ & ((!\CPU|DECODER|operacao~1_combout\) # ((!\CPU|MUX_ULA|saida_MUX[4]~2_combout\ & 
-- !\CPU|MUX_ULA|saida_MUX[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ULA|ALT_INV_saida_MUX[4]~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datac => \CPU|MUX_ULA|ALT_INV_saida_MUX[1]~3_combout\,
	datad => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datae => \CPU|MUX_ULA|ALT_INV_saida_MUX[5]~1_combout\,
	dataf => \CPU|MUX_ULA|ALT_INV_saida_MUX[7]~0_combout\,
	combout => \CPU|FLAGer|DOUT~1_combout\);

-- Location: LABCELL_X20_Y3_N54
\CPU|FLAGer|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~5_combout\ = ( \CPU|FLAGer|DOUT~1_combout\ & ( (!\CPU|ULA|Add0~9_sumout\) # (\CPU|DECODER|operacao~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datad => \CPU|ULA|ALT_INV_Add0~9_sumout\,
	dataf => \CPU|FLAGer|ALT_INV_DOUT~1_combout\,
	combout => \CPU|FLAGer|DOUT~5_combout\);

-- Location: LABCELL_X20_Y3_N48
\CPU|FLAGer|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~4_combout\ = ( !\CPU|ULA|Add0~5_sumout\ & ( !\CPU|ULA|Add0~1_sumout\ & ( (!\CPU|ULA|Add0~21_sumout\ & (!\CPU|ULA|Add0~29_sumout\ & (!\CPU|ULA|Add0~17_sumout\ & !\CPU|ULA|Add0~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Add0~21_sumout\,
	datab => \CPU|ULA|ALT_INV_Add0~29_sumout\,
	datac => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	datad => \CPU|ULA|ALT_INV_Add0~25_sumout\,
	datae => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	dataf => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	combout => \CPU|FLAGer|DOUT~4_combout\);

-- Location: LABCELL_X20_Y3_N30
\CPU|FLAGer|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~3_combout\ = ( \CPU|FLAGer|DOUT~5_combout\ & ( \CPU|FLAGer|DOUT~4_combout\ & ( ((!\CPU|FLAGer|DOUT~2_combout\ & ((!\CPU|ULA|Add0~13_sumout\) # (\CPU|DECODER|operacao~1_combout\)))) # (\CPU|FLAGer|DOUT~0_combout\) ) ) ) # ( 
-- !\CPU|FLAGer|DOUT~5_combout\ & ( \CPU|FLAGer|DOUT~4_combout\ & ( \CPU|FLAGer|DOUT~0_combout\ ) ) ) # ( \CPU|FLAGer|DOUT~5_combout\ & ( !\CPU|FLAGer|DOUT~4_combout\ & ( ((\CPU|DECODER|operacao~1_combout\ & !\CPU|FLAGer|DOUT~2_combout\)) # 
-- (\CPU|FLAGer|DOUT~0_combout\) ) ) ) # ( !\CPU|FLAGer|DOUT~5_combout\ & ( !\CPU|FLAGer|DOUT~4_combout\ & ( \CPU|FLAGer|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010011110100111100001111000011111100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datab => \CPU|FLAGer|ALT_INV_DOUT~2_combout\,
	datac => \CPU|FLAGer|ALT_INV_DOUT~0_combout\,
	datad => \CPU|ULA|ALT_INV_Add0~13_sumout\,
	datae => \CPU|FLAGer|ALT_INV_DOUT~5_combout\,
	dataf => \CPU|FLAGer|ALT_INV_DOUT~4_combout\,
	combout => \CPU|FLAGer|DOUT~3_combout\);

-- Location: FF_X20_Y3_N32
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

-- Location: LABCELL_X21_Y3_N39
\CPU|PC|DOUT[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[2]~1_combout\ = ( \ROM|memROM~10_combout\ & ( (!\ROM|memROM~14_combout\ & (((\ROM|memROM~16_combout\ & !\ROM|memROM~12_combout\)))) # (\ROM|memROM~14_combout\ & (\CPU|FLAGer|DOUT~q\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~12_combout\))) ) ) 
-- # ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~14_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000001010000100000000101000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|FLAGer|ALT_INV_DOUT~q\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|PC|DOUT[2]~1_combout\);

-- Location: LABCELL_X17_Y2_N36
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

-- Location: FF_X17_Y2_N38
\CPU|END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~9_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(2));

-- Location: LABCELL_X20_Y2_N36
\CPU|MUX_DESVIO|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\ = ( \ROM|memROM~3_combout\ & ( (!\CPU|PC|DOUT[2]~0_combout\ & (!\CPU|PC|DOUT[2]~1_combout\ & (\CPU|PC_INC|Add0~9_sumout\))) # (\CPU|PC|DOUT[2]~0_combout\ & (((\CPU|END_RETORNO|DOUT\(2))) # 
-- (\CPU|PC|DOUT[2]~1_combout\))) ) ) # ( !\ROM|memROM~3_combout\ & ( (!\CPU|PC|DOUT[2]~1_combout\ & ((!\CPU|PC|DOUT[2]~0_combout\ & (\CPU|PC_INC|Add0~9_sumout\)) # (\CPU|PC|DOUT[2]~0_combout\ & ((\CPU|END_RETORNO|DOUT\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000011001010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~1_combout\,
	datac => \CPU|PC_INC|ALT_INV_Add0~9_sumout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\);

-- Location: FF_X20_Y2_N38
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

-- Location: LABCELL_X17_Y2_N39
\CPU|PC_INC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~10\ ))
-- \CPU|PC_INC|Add0~14\ = CARRY(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|PC_INC|Add0~10\,
	sumout => \CPU|PC_INC|Add0~13_sumout\,
	cout => \CPU|PC_INC|Add0~14\);

-- Location: FF_X17_Y2_N43
\CPU|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~17_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(4));

-- Location: MLABCELL_X18_Y2_N42
\CPU|MUX_DESVIO|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\ = ( \ROM|memROM~16_combout\ & ( \CPU|END_RETORNO|DOUT\(4) & ( ((\ROM|memROM~14_combout\ & (!\ROM|memROM~12_combout\ & !\ROM|memROM~10_combout\))) # (\ROM|memROM~7_combout\) ) ) ) # ( !\ROM|memROM~16_combout\ & ( 
-- \CPU|END_RETORNO|DOUT\(4) & ( \ROM|memROM~7_combout\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\CPU|END_RETORNO|DOUT\(4) & ( (\ROM|memROM~7_combout\ & ((!\ROM|memROM~14_combout\) # ((\ROM|memROM~10_combout\) # (\ROM|memROM~12_combout\)))) ) ) ) # ( 
-- !\ROM|memROM~16_combout\ & ( !\CPU|END_RETORNO|DOUT\(4) & ( \ROM|memROM~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010110000111100001111000011110100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \CPU|END_RETORNO|ALT_INV_DOUT\(4),
	combout => \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\);

-- Location: MLABCELL_X18_Y2_N21
\CPU|MUX_DESVIO|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[4]~5_combout\ = ( \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\ & ( (\CPU|PC|DOUT[7]~2_combout\) # (\CPU|PC_INC|Add0~17_sumout\) ) ) # ( !\CPU|MUX_DESVIO|saida_MUX[4]~4_combout\ & ( (\CPU|PC_INC|Add0~17_sumout\ & 
-- !\CPU|PC|DOUT[7]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC_INC|ALT_INV_Add0~17_sumout\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~2_combout\,
	dataf => \CPU|MUX_DESVIO|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[4]~5_combout\);

-- Location: FF_X18_Y2_N23
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_DESVIO|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y2_N18
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X20_Y1_N9
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~14_combout\);

-- Location: LABCELL_X21_Y3_N36
\CPU|PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[2]~0_combout\ = ( \ROM|memROM~10_combout\ & ( (!\ROM|memROM~14_combout\ & (((!\ROM|memROM~12_combout\ & \ROM|memROM~16_combout\)))) # (\ROM|memROM~14_combout\ & (\CPU|FLAGer|DOUT~q\ & (\ROM|memROM~12_combout\ & !\ROM|memROM~16_combout\))) ) ) 
-- # ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~14_combout\ & (!\ROM|memROM~12_combout\ $ (!\ROM|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000000001101000000000000110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|FLAGer|ALT_INV_DOUT~q\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|PC|DOUT[2]~0_combout\);

-- Location: FF_X17_Y2_N40
\CPU|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~13_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(3));

-- Location: LABCELL_X20_Y2_N39
\CPU|MUX_DESVIO|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\ = ( \CPU|END_RETORNO|DOUT\(3) & ( (!\CPU|PC|DOUT[2]~0_combout\ & (!\CPU|PC|DOUT[2]~1_combout\ & ((\CPU|PC_INC|Add0~13_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & ((!\CPU|PC|DOUT[2]~1_combout\) # 
-- ((\ROM|memROM~5_combout\)))) ) ) # ( !\CPU|END_RETORNO|DOUT\(3) & ( (!\CPU|PC|DOUT[2]~0_combout\ & (!\CPU|PC|DOUT[2]~1_combout\ & ((\CPU|PC_INC|Add0~13_sumout\)))) # (\CPU|PC|DOUT[2]~0_combout\ & (\CPU|PC|DOUT[2]~1_combout\ & (\ROM|memROM~5_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001000000011000100101000101110011010100010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~1_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \CPU|PC_INC|ALT_INV_Add0~13_sumout\,
	dataf => \CPU|END_RETORNO|ALT_INV_DOUT\(3),
	combout => \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\);

-- Location: FF_X20_Y2_N41
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
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
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y2_N33
\habKEY0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habKEY0~0_combout\ = ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \habKEY0~0_combout\);

-- Location: LABCELL_X19_Y3_N24
\habKEY0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habKEY0~1_combout\ = ( \CPU|DECODER|Equal1~0_combout\ & ( (\habKEY0~0_combout\ & (!\ROM|memROM~3_combout\ & \habRESET~0_combout\)) ) ) # ( !\CPU|DECODER|Equal1~0_combout\ & ( (\habKEY0~0_combout\ & (!\ROM|memROM~3_combout\ & (\habRESET~0_combout\ & 
-- \CPU|DECODER|habAcumulador~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habKEY0~0_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ALT_INV_habRESET~0_combout\,
	datad => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	combout => \habKEY0~1_combout\);

-- Location: LABCELL_X19_Y3_N42
\RAM|dado_out[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~3_combout\ = ( !\bufferKEY2|saida[0]~0_combout\ & ( \FF_Debouncer|DOUT~q\ & ( (!\bufferSWConj|saida[0]~0_combout\ & (!\bufferSW9|saida[0]~0_combout\ & !\bufferSW8|saida[0]~7_combout\)) ) ) ) # ( !\bufferKEY2|saida[0]~0_combout\ & ( 
-- !\FF_Debouncer|DOUT~q\ & ( (!\habKEY0~1_combout\ & (!\bufferSWConj|saida[0]~0_combout\ & (!\bufferSW9|saida[0]~0_combout\ & !\bufferSW8|saida[0]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habKEY0~1_combout\,
	datab => \bufferSWConj|ALT_INV_saida[0]~0_combout\,
	datac => \bufferSW9|ALT_INV_saida[0]~0_combout\,
	datad => \bufferSW8|ALT_INV_saida[0]~7_combout\,
	datae => \bufferKEY2|ALT_INV_saida[0]~0_combout\,
	dataf => \FF_Debouncer|ALT_INV_DOUT~q\,
	combout => \RAM|dado_out[0]~3_combout\);

-- Location: LABCELL_X21_Y1_N36
\RAM|dado_out[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~4_combout\ = ( \RAM|ram~527_combout\ & ( (\RAM|dado_out[0]~3_combout\ & \RAM|dado_out[0]~2_combout\) ) ) # ( !\RAM|ram~527_combout\ & ( (\RAM|dado_out[0]~3_combout\ & (\RAM|dado_out[0]~2_combout\ & !\RAM|dado_out~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[0]~3_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~2_combout\,
	datac => \RAM|ALT_INV_dado_out~1_combout\,
	dataf => \RAM|ALT_INV_ram~527_combout\,
	combout => \RAM|dado_out[0]~4_combout\);

-- Location: LABCELL_X20_Y1_N24
\decoderBlock|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderBlock|Equal2~0_combout\ = ( \ROM|memROM~19_combout\ & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\ROM|memROM~6_combout\) # (\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010001000100000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~19_combout\,
	combout => \decoderBlock|Equal2~0_combout\);

-- Location: LABCELL_X20_Y1_N6
\habHEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~0_combout\ = ( !\ROM|memROM~18_combout\ & ( (\decoderBlock|Equal2~0_combout\ & (\CPU|DECODER|Equal1~1_combout\ & !\ROM|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderBlock|ALT_INV_Equal2~0_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \habHEX0~0_combout\);

-- Location: LABCELL_X20_Y1_N39
\FFLED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED8|DOUT~0_combout\ = ( \habHEX0~0_combout\ & ( (!\habSW8~0_combout\ & ((\FFLED8|DOUT~q\))) # (\habSW8~0_combout\ & (\CPU|BANCO_REG|registrador~28_combout\)) ) ) # ( !\habHEX0~0_combout\ & ( \FFLED8|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habSW8~0_combout\,
	datac => \CPU|BANCO_REG|ALT_INV_registrador~28_combout\,
	datad => \FFLED8|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_habHEX0~0_combout\,
	combout => \FFLED8|DOUT~0_combout\);

-- Location: FF_X20_Y1_N40
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

-- Location: LABCELL_X20_Y1_N30
\FFLED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED9|DOUT~0_combout\ = ( \FFLED9|DOUT~q\ & ( \habHEX0~0_combout\ & ( (!\habSW9~0_combout\) # (\CPU|BANCO_REG|registrador~28_combout\) ) ) ) # ( !\FFLED9|DOUT~q\ & ( \habHEX0~0_combout\ & ( (\CPU|BANCO_REG|registrador~28_combout\ & \habSW9~0_combout\) ) 
-- ) ) # ( \FFLED9|DOUT~q\ & ( !\habHEX0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|BANCO_REG|ALT_INV_registrador~28_combout\,
	datac => \ALT_INV_habSW9~0_combout\,
	datae => \FFLED9|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_habHEX0~0_combout\,
	combout => \FFLED9|DOUT~0_combout\);

-- Location: FF_X20_Y1_N31
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

-- Location: IOIBUF_X40_Y0_N92
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X54_Y19_N55
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X51_Y0_N1
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X48_Y45_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X54_Y21_N21
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X6_Y5_N0
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


