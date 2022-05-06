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

-- DATE "05/06/2022 16:54:31"

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
	habFlaguinha : OUT std_logic;
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
SIGNAL ww_habFlaguinha : std_logic;
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
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \valorDado[0]~output_o\ : std_logic;
SIGNAL \valorDado[1]~output_o\ : std_logic;
SIGNAL \valorDado[2]~output_o\ : std_logic;
SIGNAL \valorDado[3]~output_o\ : std_logic;
SIGNAL \valorDado[4]~output_o\ : std_logic;
SIGNAL \valorDado[5]~output_o\ : std_logic;
SIGNAL \valorDado[6]~output_o\ : std_logic;
SIGNAL \valorDado[7]~output_o\ : std_logic;
SIGNAL \endROM[0]~output_o\ : std_logic;
SIGNAL \endROM[1]~output_o\ : std_logic;
SIGNAL \endROM[2]~output_o\ : std_logic;
SIGNAL \endROM[3]~output_o\ : std_logic;
SIGNAL \endROM[4]~output_o\ : std_logic;
SIGNAL \endROM[5]~output_o\ : std_logic;
SIGNAL \endROM[6]~output_o\ : std_logic;
SIGNAL \endROM[7]~output_o\ : std_logic;
SIGNAL \endROM[8]~output_o\ : std_logic;
SIGNAL \endRAM[0]~output_o\ : std_logic;
SIGNAL \endRAM[1]~output_o\ : std_logic;
SIGNAL \endRAM[2]~output_o\ : std_logic;
SIGNAL \endRAM[3]~output_o\ : std_logic;
SIGNAL \endRAM[4]~output_o\ : std_logic;
SIGNAL \endRAM[5]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \teste_datain[0]~output_o\ : std_logic;
SIGNAL \teste_datain[1]~output_o\ : std_logic;
SIGNAL \teste_datain[2]~output_o\ : std_logic;
SIGNAL \teste_datain[3]~output_o\ : std_logic;
SIGNAL \teste_datain[4]~output_o\ : std_logic;
SIGNAL \teste_datain[5]~output_o\ : std_logic;
SIGNAL \teste_datain[6]~output_o\ : std_logic;
SIGNAL \teste_datain[7]~output_o\ : std_logic;
SIGNAL \teste_hab~output_o\ : std_logic;
SIGNAL \habFlaguinha~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \flaginha~output_o\ : std_logic;
SIGNAL \ula_ain[0]~output_o\ : std_logic;
SIGNAL \ula_ain[1]~output_o\ : std_logic;
SIGNAL \ula_ain[2]~output_o\ : std_logic;
SIGNAL \ula_ain[3]~output_o\ : std_logic;
SIGNAL \ula_ain[4]~output_o\ : std_logic;
SIGNAL \ula_ain[5]~output_o\ : std_logic;
SIGNAL \ula_ain[6]~output_o\ : std_logic;
SIGNAL \ula_ain[7]~output_o\ : std_logic;
SIGNAL \ula_bin[0]~output_o\ : std_logic;
SIGNAL \ula_bin[1]~output_o\ : std_logic;
SIGNAL \ula_bin[2]~output_o\ : std_logic;
SIGNAL \ula_bin[3]~output_o\ : std_logic;
SIGNAL \ula_bin[4]~output_o\ : std_logic;
SIGNAL \ula_bin[5]~output_o\ : std_logic;
SIGNAL \ula_bin[6]~output_o\ : std_logic;
SIGNAL \ula_bin[7]~output_o\ : std_logic;
SIGNAL \ula_out[0]~output_o\ : std_logic;
SIGNAL \ula_out[1]~output_o\ : std_logic;
SIGNAL \ula_out[2]~output_o\ : std_logic;
SIGNAL \ula_out[3]~output_o\ : std_logic;
SIGNAL \ula_out[4]~output_o\ : std_logic;
SIGNAL \ula_out[5]~output_o\ : std_logic;
SIGNAL \ula_out[6]~output_o\ : std_logic;
SIGNAL \ula_out[7]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~0_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~2\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~6\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~10\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~5_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~3_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~1_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~14\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \RAM|dado_out~23_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|operacao~0_combout\ : std_logic;
SIGNAL \CPU|ULA|Equal1~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[6]~20_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|habAcumulador~0_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~8_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~9_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~10_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \ADDR_511~1_combout\ : std_logic;
SIGNAL \FF_Debouncer|DOUT~q\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \habHEX0~0_combout\ : std_logic;
SIGNAL \bufferKEY0|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~22_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add0~2\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|operacao~1_combout\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|dado_out[1]~15_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~572_combout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|dado_out[2]~16_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~568_combout\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|dado_out[3]~17_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~564_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|dado_out[4]~18_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|dado_out[5]~19_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM|dado_out[7]~21_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~11_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~4_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~2_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~18\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~22\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~26\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~30\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~1_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~580_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~576_combout\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \habLED8~0_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \RAM|dado_out[0]~12_combout\ : std_logic;
SIGNAL \habSWconj~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~13_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~14_combout\ : std_logic;
SIGNAL \decoderBlock|Equal3~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~4_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~q\ : std_logic;
SIGNAL \habLEDconj~0_combout\ : std_logic;
SIGNAL \FFLED9|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED9|DOUT~q\ : std_logic;
SIGNAL \habHEX0~1_combout\ : std_logic;
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
SIGNAL \habHEX2~0_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ADDR_511~0_combout\ : std_logic;
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
SIGNAL \CPU|ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[5]~5_combout\ : std_logic;
SIGNAL \HEX1_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \HEX3_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \HEX5_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|DECODER|saida\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \HEX2_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX4_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
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
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~11_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ALT_INV_habHEX5~0_combout\ : std_logic;
SIGNAL \bufferKEY0|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \FF_Debouncer|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_habHEX0~0_combout\ : std_logic;
SIGNAL \ALT_INV_habLED8~0_combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_511~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~9_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \HEX5_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX4_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX3_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX1_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_habAcumulador~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \FFLED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FFLED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out~23_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_operacao~1_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_511~1_combout\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~22_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ALT_INV_habLEDconj~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \decoderBlock|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[7]~21_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[6]~20_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[5]~19_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[4]~18_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[3]~17_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[2]~16_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[1]~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~13_combout\ : std_logic;
SIGNAL \ALT_INV_habSWconj~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~12_combout\ : std_logic;
SIGNAL \CPU|END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~0_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_operacao~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;

BEGIN

endROM <= ww_endROM;
endRAM <= ww_endRAM;
valorDado <= ww_valorDado;
LEDR <= ww_LEDR;
ww_SW <= SW;
teste_datain <= ww_teste_datain;
teste_hab <= ww_teste_hab;
ww_KEY <= KEY;
habFlaguinha <= ww_habFlaguinha;
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
\RAM|ALT_INV_ram~580_combout\ <= NOT \RAM|ram~580_combout\;
\RAM|ALT_INV_ram~576_combout\ <= NOT \RAM|ram~576_combout\;
\RAM|ALT_INV_ram~572_combout\ <= NOT \RAM|ram~572_combout\;
\RAM|ALT_INV_ram~568_combout\ <= NOT \RAM|ram~568_combout\;
\RAM|ALT_INV_ram~564_combout\ <= NOT \RAM|ram~564_combout\;
\RAM|ALT_INV_ram~560_combout\ <= NOT \RAM|ram~560_combout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
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
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[3]~3_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[2]~2_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[1]~1_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[0]~0_combout\;
\RAM|ALT_INV_dado_out[0]~11_combout\ <= NOT \RAM|dado_out[0]~11_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\ALT_INV_habHEX5~0_combout\ <= NOT \habHEX5~0_combout\;
\bufferKEY0|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY0|saida[0]~0_combout\;
\FF_Debouncer|ALT_INV_DOUT~q\ <= NOT \FF_Debouncer|DOUT~q\;
\ALT_INV_habHEX0~0_combout\ <= NOT \habHEX0~0_combout\;
\ALT_INV_habLED8~0_combout\ <= NOT \habLED8~0_combout\;
\ALT_INV_ADDR_511~0_combout\ <= NOT \ADDR_511~0_combout\;
\RAM|ALT_INV_dado_out[0]~10_combout\ <= NOT \RAM|dado_out[0]~10_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\RAM|ALT_INV_dado_out[0]~9_combout\ <= NOT \RAM|dado_out[0]~9_combout\;
\CPU|DECODER|ALT_INV_Equal1~1_combout\ <= NOT \CPU|DECODER|Equal1~1_combout\;
\CPU|FLAGer|ALT_INV_DOUT~q\ <= NOT \CPU|FLAGer|DOUT~q\;
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
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\CPU|DECODER|ALT_INV_habAcumulador~0_combout\ <= NOT \CPU|DECODER|habAcumulador~0_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\CPU|DECODER|ALT_INV_Equal1~0_combout\ <= NOT \CPU|DECODER|Equal1~0_combout\;
\FFLED9|ALT_INV_DOUT~q\ <= NOT \FFLED9|DOUT~q\;
\FFLED8|ALT_INV_DOUT~q\ <= NOT \FFLED8|DOUT~q\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\RAM|ALT_INV_dado_out~23_combout\ <= NOT \RAM|dado_out~23_combout\;
\CPU|DECODER|ALT_INV_operacao~1_combout\ <= NOT \CPU|DECODER|operacao~1_combout\;
\CPU|PC|ALT_INV_DOUT[1]~2_combout\ <= NOT \CPU|PC|DOUT[1]~2_combout\;
\ALT_INV_ADDR_511~1_combout\ <= NOT \ADDR_511~1_combout\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\RAM|ALT_INV_dado_out[0]~22_combout\ <= NOT \RAM|dado_out[0]~22_combout\;
\CPU|ULA|ALT_INV_Equal1~0_combout\ <= NOT \CPU|ULA|Equal1~0_combout\;
\CPU|FLAGer|ALT_INV_DOUT~3_combout\ <= NOT \CPU|FLAGer|DOUT~3_combout\;
\CPU|FLAGer|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAGer|DOUT~2_combout\;
\CPU|FLAGer|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAGer|DOUT~1_combout\;
\CPU|FLAGer|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FLAGer|DOUT~0_combout\;
\ALT_INV_habLEDconj~0_combout\ <= NOT \habLEDconj~0_combout\;
\CPU|DECODER|ALT_INV_Equal1~4_combout\ <= NOT \CPU|DECODER|Equal1~4_combout\;
\decoderBlock|ALT_INV_Equal3~0_combout\ <= NOT \decoderBlock|Equal3~0_combout\;
\RAM|ALT_INV_dado_out[7]~21_combout\ <= NOT \RAM|dado_out[7]~21_combout\;
\RAM|ALT_INV_dado_out[6]~20_combout\ <= NOT \RAM|dado_out[6]~20_combout\;
\RAM|ALT_INV_dado_out[5]~19_combout\ <= NOT \RAM|dado_out[5]~19_combout\;
\RAM|ALT_INV_dado_out[4]~18_combout\ <= NOT \RAM|dado_out[4]~18_combout\;
\RAM|ALT_INV_dado_out[3]~17_combout\ <= NOT \RAM|dado_out[3]~17_combout\;
\RAM|ALT_INV_dado_out[2]~16_combout\ <= NOT \RAM|dado_out[2]~16_combout\;
\RAM|ALT_INV_dado_out[1]~15_combout\ <= NOT \RAM|dado_out[1]~15_combout\;
\RAM|ALT_INV_dado_out[0]~13_combout\ <= NOT \RAM|dado_out[0]~13_combout\;
\ALT_INV_habSWconj~0_combout\ <= NOT \habSWconj~0_combout\;
\RAM|ALT_INV_dado_out[0]~12_combout\ <= NOT \RAM|dado_out[0]~12_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|END_RETORNO|DOUT\(8);
\CPU|END_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|END_RETORNO|DOUT\(7);
\CPU|END_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|END_RETORNO|DOUT\(6);
\CPU|END_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|END_RETORNO|DOUT\(5);
\CPU|END_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|END_RETORNO|DOUT\(4);
\CPU|PC|ALT_INV_DOUT[7]~1_combout\ <= NOT \CPU|PC|DOUT[7]~1_combout\;
\CPU|DECODER|ALT_INV_Equal1~3_combout\ <= NOT \CPU|DECODER|Equal1~3_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|END_RETORNO|DOUT\(3);
\CPU|END_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|END_RETORNO|DOUT\(2);
\CPU|END_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|END_RETORNO|DOUT\(1);
\CPU|END_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|END_RETORNO|DOUT\(0);
\CPU|PC|ALT_INV_DOUT[1]~0_combout\ <= NOT \CPU|PC|DOUT[1]~0_combout\;
\CPU|ULA|ALT_INV_saida[7]~7_combout\ <= NOT \CPU|ULA|saida[7]~7_combout\;
\CPU|ULA|ALT_INV_saida[6]~6_combout\ <= NOT \CPU|ULA|saida[6]~6_combout\;
\CPU|DECODER|ALT_INV_operacao~0_combout\ <= NOT \CPU|DECODER|operacao~0_combout\;
\CPU|DECODER|ALT_INV_Equal1~2_combout\ <= NOT \CPU|DECODER|Equal1~2_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[7]~7_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[6]~6_combout\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[5]~5_combout\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[4]~4_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;

\valorDado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[0]~14_combout\,
	oe => \RAM|dado_out[0]~10_combout\,
	devoe => ww_devoe,
	o => \valorDado[0]~output_o\);

\valorDado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[1]~15_combout\,
	oe => \RAM|dado_out~23_combout\,
	devoe => ww_devoe,
	o => \valorDado[1]~output_o\);

\valorDado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[2]~16_combout\,
	oe => \RAM|dado_out~23_combout\,
	devoe => ww_devoe,
	o => \valorDado[2]~output_o\);

\valorDado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[3]~17_combout\,
	oe => \RAM|dado_out~23_combout\,
	devoe => ww_devoe,
	o => \valorDado[3]~output_o\);

\valorDado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[4]~18_combout\,
	oe => \RAM|dado_out~23_combout\,
	devoe => ww_devoe,
	o => \valorDado[4]~output_o\);

\valorDado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[5]~19_combout\,
	oe => \RAM|dado_out~23_combout\,
	devoe => ww_devoe,
	o => \valorDado[5]~output_o\);

\valorDado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[6]~20_combout\,
	oe => \RAM|dado_out~23_combout\,
	devoe => ww_devoe,
	o => \valorDado[6]~output_o\);

\valorDado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[7]~21_combout\,
	oe => \RAM|dado_out~23_combout\,
	devoe => ww_devoe,
	o => \valorDado[7]~output_o\);

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
	o => \endROM[0]~output_o\);

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
	o => \endROM[1]~output_o\);

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
	o => \endROM[2]~output_o\);

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
	o => \endROM[3]~output_o\);

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
	o => \endROM[4]~output_o\);

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
	o => \endROM[5]~output_o\);

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
	o => \endROM[6]~output_o\);

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
	o => \endROM[7]~output_o\);

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
	o => \endROM[8]~output_o\);

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
	o => \endRAM[0]~output_o\);

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
	o => \endRAM[1]~output_o\);

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
	o => \endRAM[2]~output_o\);

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
	o => \endRAM[3]~output_o\);

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
	o => \endRAM[4]~output_o\);

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
	o => \endRAM[5]~output_o\);

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
	o => \LEDR[0]~output_o\);

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
	o => \LEDR[1]~output_o\);

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
	o => \LEDR[2]~output_o\);

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
	o => \LEDR[3]~output_o\);

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
	o => \LEDR[4]~output_o\);

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
	o => \LEDR[5]~output_o\);

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
	o => \LEDR[6]~output_o\);

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
	o => \LEDR[7]~output_o\);

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
	o => \LEDR[8]~output_o\);

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
	o => \LEDR[9]~output_o\);

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
	o => \teste_datain[0]~output_o\);

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
	o => \teste_datain[1]~output_o\);

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
	o => \teste_datain[2]~output_o\);

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
	o => \teste_datain[3]~output_o\);

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
	o => \teste_datain[4]~output_o\);

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
	o => \teste_datain[5]~output_o\);

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
	o => \teste_datain[6]~output_o\);

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
	o => \teste_datain[7]~output_o\);

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
	o => \teste_hab~output_o\);

\habFlaguinha~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|DECODER|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \habFlaguinha~output_o\);

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
	o => \HEX0[0]~output_o\);

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
	o => \HEX0[1]~output_o\);

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
	o => \HEX0[2]~output_o\);

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
	o => \HEX0[3]~output_o\);

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
	o => \HEX0[4]~output_o\);

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
	o => \HEX0[5]~output_o\);

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
	o => \HEX0[6]~output_o\);

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
	o => \HEX1[0]~output_o\);

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
	o => \HEX1[1]~output_o\);

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
	o => \HEX1[2]~output_o\);

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
	o => \HEX1[3]~output_o\);

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
	o => \HEX1[4]~output_o\);

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
	o => \HEX1[5]~output_o\);

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
	o => \HEX1[6]~output_o\);

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
	o => \HEX2[0]~output_o\);

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
	o => \HEX2[1]~output_o\);

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
	o => \HEX2[2]~output_o\);

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
	o => \HEX2[3]~output_o\);

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
	o => \HEX2[4]~output_o\);

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
	o => \HEX2[5]~output_o\);

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
	o => \HEX2[6]~output_o\);

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
	o => \HEX3[0]~output_o\);

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
	o => \HEX3[1]~output_o\);

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
	o => \HEX3[2]~output_o\);

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
	o => \HEX3[3]~output_o\);

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
	o => \HEX3[4]~output_o\);

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
	o => \HEX3[5]~output_o\);

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
	o => \HEX3[6]~output_o\);

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
	o => \HEX4[0]~output_o\);

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
	o => \HEX4[1]~output_o\);

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
	o => \HEX4[2]~output_o\);

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
	o => \HEX4[3]~output_o\);

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
	o => \HEX4[4]~output_o\);

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
	o => \HEX4[5]~output_o\);

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
	o => \HEX4[6]~output_o\);

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
	o => \HEX5[0]~output_o\);

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
	o => \HEX5[1]~output_o\);

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
	o => \HEX5[2]~output_o\);

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
	o => \HEX5[3]~output_o\);

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
	o => \HEX5[4]~output_o\);

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
	o => \HEX5[5]~output_o\);

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
	o => \HEX5[6]~output_o\);

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
	o => \flaginha~output_o\);

\ula_ain[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_ain[0]~output_o\);

\ula_ain[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_ain[1]~output_o\);

\ula_ain[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_ain[2]~output_o\);

\ula_ain[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_ain[3]~output_o\);

\ula_ain[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_ain[4]~output_o\);

\ula_ain[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_ain[5]~output_o\);

\ula_ain[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_ain[6]~output_o\);

\ula_ain[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_ain[7]~output_o\);

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
	o => \ula_bin[0]~output_o\);

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
	o => \ula_bin[1]~output_o\);

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
	o => \ula_bin[2]~output_o\);

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
	o => \ula_bin[3]~output_o\);

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
	o => \ula_bin[4]~output_o\);

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
	o => \ula_bin[5]~output_o\);

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
	o => \ula_bin[6]~output_o\);

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
	o => \ula_bin[7]~output_o\);

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
	o => \ula_out[0]~output_o\);

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
	o => \ula_out[1]~output_o\);

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
	o => \ula_out[2]~output_o\);

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
	o => \ula_out[3]~output_o\);

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
	o => \ula_out[4]~output_o\);

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
	o => \ula_out[5]~output_o\);

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
	o => \ula_out[6]~output_o\);

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
	o => \ula_out[7]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000011011100000000001101110000000000110111000000000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|PC|DOUT\(4) & (\ROM|memROM~1_combout\ & \ROM|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \CPU|PC|DOUT\(4) & ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111100100110011100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~14_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \CPU|PC|DOUT\(4) & ( \ROM|memROM~1_combout\ & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \ROM|memROM~1_combout\ & ( (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) 
-- $ (!\CPU|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100100100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~15_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \CPU|PC|DOUT\(4) & ( \ROM|memROM~1_combout\ & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) 
-- & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~13_combout\);

\CPU|PC|DOUT[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[1]~0_combout\ = ( \CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~14_combout\ & (\ROM|memROM~16_combout\ & (!\ROM|memROM~15_combout\ & \ROM|memROM~13_combout\))) # (\ROM|memROM~14_combout\ & (((\ROM|memROM~15_combout\ & !\ROM|memROM~13_combout\)))) ) ) 
-- # ( !\CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~16_combout\ & (\ROM|memROM~14_combout\ & (\ROM|memROM~15_combout\ & !\ROM|memROM~13_combout\))) # (\ROM|memROM~16_combout\ & (!\ROM|memROM~14_combout\ & (!\ROM|memROM~15_combout\ & \ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000110100000000000010010000000000001101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \CPU|FLAGer|ALT_INV_DOUT~q\,
	combout => \CPU|PC|DOUT[1]~0_combout\);

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

\CPU|DECODER|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~5_combout\ = ( !\CPU|PC|DOUT\(4) & ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \CPU|DECODER|Equal1~5_combout\);

\CPU|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~13_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(3));

\CPU|MUX_DESVIO|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\ = ( \CPU|END_RETORNO|DOUT\(3) & ( (!\CPU|PC|DOUT[1]~2_combout\ & (((!\CPU|PC|DOUT[1]~0_combout\ & \CPU|PC_INC|Add0~13_sumout\)))) # (\CPU|PC|DOUT[1]~2_combout\ & (((!\CPU|PC|DOUT[1]~0_combout\)) # 
-- (\ROM|memROM~8_combout\))) ) ) # ( !\CPU|END_RETORNO|DOUT\(3) & ( (!\CPU|PC|DOUT[1]~2_combout\ & (((!\CPU|PC|DOUT[1]~0_combout\ & \CPU|PC_INC|Add0~13_sumout\)))) # (\CPU|PC|DOUT[1]~2_combout\ & (\ROM|memROM~8_combout\ & (\CPU|PC|DOUT[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100000001110000010011000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~2_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~0_combout\,
	datad => \CPU|PC_INC|ALT_INV_Add0~13_sumout\,
	datae => \CPU|END_RETORNO|ALT_INV_DOUT\(3),
	combout => \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001001100000000000100110000000000010011000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\CPU|PC|DOUT\(4) & (\ROM|memROM~1_combout\ & \ROM|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

\CPU|END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~9_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(2));

\CPU|MUX_DESVIO|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\ = ( \CPU|END_RETORNO|DOUT\(2) & ( (!\CPU|PC|DOUT[1]~2_combout\ & (((!\CPU|PC|DOUT[1]~0_combout\ & \CPU|PC_INC|Add0~9_sumout\)))) # (\CPU|PC|DOUT[1]~2_combout\ & (((!\CPU|PC|DOUT[1]~0_combout\)) # 
-- (\ROM|memROM~6_combout\))) ) ) # ( !\CPU|END_RETORNO|DOUT\(2) & ( (!\CPU|PC|DOUT[1]~2_combout\ & (((!\CPU|PC|DOUT[1]~0_combout\ & \CPU|PC_INC|Add0~9_sumout\)))) # (\CPU|PC|DOUT[1]~2_combout\ & (\ROM|memROM~6_combout\ & (\CPU|PC|DOUT[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100000001110000010011000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~2_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~0_combout\,
	datad => \CPU|PC_INC|ALT_INV_Add0~9_sumout\,
	datae => \CPU|END_RETORNO|ALT_INV_DOUT\(2),
	combout => \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000001100000000000000110000000000000011000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (!\CPU|PC|DOUT\(4) & (\ROM|memROM~1_combout\ & \ROM|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~10_combout\);

\CPU|DECODER|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~3_combout\ = (!\ROM|memROM~16_combout\ & (!\ROM|memROM~14_combout\ & (\ROM|memROM~15_combout\ & \ROM|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER|Equal1~3_combout\);

\CPU|PC|DOUT[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[7]~1_combout\ = ( \CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~14_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~16_combout\ $ (!\ROM|memROM~15_combout\)))) # (\ROM|memROM~14_combout\ & (((\ROM|memROM~15_combout\ & !\ROM|memROM~13_combout\)))) 
-- ) ) # ( !\CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~16_combout\ & (\ROM|memROM~15_combout\ & (!\ROM|memROM~14_combout\ $ (!\ROM|memROM~13_combout\)))) # (\ROM|memROM~16_combout\ & (!\ROM|memROM~14_combout\ & (!\ROM|memROM~15_combout\ & 
-- \ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001001000000000110100100000000010010010000000001101001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \CPU|FLAGer|ALT_INV_DOUT~q\,
	combout => \CPU|PC|DOUT[7]~1_combout\);

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

\CPU|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~17_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(4));

\CPU|MUX_DESVIO|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\ = ( \CPU|END_RETORNO|DOUT\(4) & ( (!\CPU|PC|DOUT[7]~1_combout\ & (((\CPU|PC_INC|Add0~17_sumout\)))) # (\CPU|PC|DOUT[7]~1_combout\ & (((\CPU|DECODER|Equal1~3_combout\)) # (\ROM|memROM~10_combout\))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(4) & ( (!\CPU|PC|DOUT[7]~1_combout\ & (((\CPU|PC_INC|Add0~17_sumout\)))) # (\CPU|PC|DOUT[7]~1_combout\ & (\ROM|memROM~10_combout\ & (!\CPU|DECODER|Equal1~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011110100000001111111011100000100111101000000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~1_combout\,
	datad => \CPU|PC_INC|ALT_INV_Add0~17_sumout\,
	datae => \CPU|END_RETORNO|ALT_INV_DOUT\(4),
	combout => \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000001100000000100000110000000010000011000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~17_combout\);

\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = (!\CPU|PC|DOUT\(4) & (\ROM|memROM~1_combout\ & \ROM|memROM~17_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	combout => \ROM|memROM~19_combout\);

\RAM|dado_out~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~23_combout\ = ( \ROM|memROM~1_combout\ & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(1))) ) ) ) # ( \ROM|memROM~1_combout\ & ( !\CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & 
-- (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \RAM|dado_out~23_combout\);

\CPU|DECODER|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~2_combout\ = (!\ROM|memROM~16_combout\ & (!\ROM|memROM~14_combout\ & (\ROM|memROM~15_combout\ & !\ROM|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER|Equal1~2_combout\);

\CPU|DECODER|operacao~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|operacao~0_combout\ = (!\ROM|memROM~14_combout\ & ((!\ROM|memROM~13_combout\ & (\ROM|memROM~15_combout\ & \ROM|memROM~16_combout\)) # (\ROM|memROM~13_combout\ & (!\ROM|memROM~15_combout\ & !\ROM|memROM~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000001000010000000000100001000000000010000100000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODER|operacao~0_combout\);

\CPU|ULA|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Equal1~0_combout\ = (\CPU|DECODER|Equal1~2_combout\ & !\CPU|DECODER|operacao~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DECODER|ALT_INV_operacao~0_combout\,
	combout => \CPU|ULA|Equal1~0_combout\);

\RAM|dado_out[6]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[6]~20_combout\ = (!\RAM|dado_out~23_combout\) # (\RAM|ram~543_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~23_combout\,
	datac => \RAM|ALT_INV_ram~543_combout\,
	combout => \RAM|dado_out[6]~20_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) # ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1) & 
-- ((!\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100001000001000100000000000010111000010000010001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~12_combout\);

\CPU|DECODER|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~0_combout\ = ( !\CPU|PC|DOUT\(4) & ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \CPU|DECODER|Equal1~0_combout\);

\CPU|DECODER|habAcumulador~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|habAcumulador~0_combout\ = (!\ROM|memROM~13_combout\ & (!\ROM|memROM~14_combout\ & ((\ROM|memROM~16_combout\) # (\ROM|memROM~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000000010001000100000001000100010000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODER|habAcumulador~0_combout\);

\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))))) ) ) # ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & 
-- ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100001000001000110000000000010111000010000010001100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~18_combout\);

\RAM|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~8_combout\ = ( \ROM|memROM~18_combout\ & ( (!\CPU|PC|DOUT\(4) & (\ROM|memROM~1_combout\ & (!\ROM|memROM~9_combout\ & \ROM|memROM~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|dado_out[0]~8_combout\);

\RAM|dado_out[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~9_combout\ = (\RAM|dado_out[0]~8_combout\ & ((\CPU|DECODER|habAcumulador~0_combout\) # (\CPU|DECODER|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	combout => \RAM|dado_out[0]~9_combout\);

\RAM|dado_out[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~10_combout\ = ( \RAM|dado_out[0]~9_combout\ & ( \RAM|dado_out~23_combout\ ) ) # ( !\RAM|dado_out[0]~9_combout\ & ( \RAM|dado_out~23_combout\ ) ) # ( \RAM|dado_out[0]~9_combout\ & ( !\RAM|dado_out~23_combout\ & ( (!\ROM|memROM~2_combout\ & 
-- ((!\ROM|memROM~6_combout\) # ((!\ROM|memROM~4_combout\ & \ROM|memROM~12_combout\)))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\) # (\ROM|memROM~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000001111100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~9_combout\,
	dataf => \RAM|ALT_INV_dado_out~23_combout\,
	combout => \RAM|dado_out[0]~10_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \detectorSub0|saidaQ~0_combout\);

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

\detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saida~combout\ = LCELL((!\KEY[0]~input_o\ & !\detectorSub0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \detectorSub0|ALT_INV_saidaQ~q\,
	combout => \detectorSub0|saida~combout\);

\ADDR_511~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_511~1_combout\ = ( \ROM|memROM~1_combout\ & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ADDR_511~1_combout\);

\FF_Debouncer|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => VCC,
	clrn => \ALT_INV_ADDR_511~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_Debouncer|DOUT~q\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2))))) ) ) # ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))) # 
-- (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000001001101010000000000010001010000010011010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~3_combout\);

\habHEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~0_combout\ = (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \habHEX0~0_combout\);

\bufferKEY0|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY0|saida[0]~0_combout\ = ( !\FF_Debouncer|DOUT~q\ & ( \habHEX0~0_combout\ & ( (!\ROM|memROM~6_combout\ & (\RAM|dado_out[0]~8_combout\ & ((\CPU|DECODER|habAcumulador~0_combout\) # (\CPU|DECODER|Equal1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datac => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datae => \FF_Debouncer|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_habHEX0~0_combout\,
	combout => \bufferKEY0|saida[0]~0_combout\);

\RAM|dado_out[0]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~22_combout\ = ( \bufferKEY0|saida[0]~0_combout\ & ( !\RAM|dado_out[0]~10_combout\ ) ) # ( !\bufferKEY0|saida[0]~0_combout\ & ( ((!\RAM|dado_out~23_combout\) # (!\RAM|dado_out[0]~10_combout\)) # (\RAM|ram~527_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111100001111000011111101111111011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datab => \RAM|ALT_INV_dado_out~23_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~10_combout\,
	datae => \bufferKEY0|ALT_INV_saida[0]~0_combout\,
	combout => \RAM|dado_out[0]~22_combout\);

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

\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[0]~22_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA|Add0~34_cout\ ))
-- \CPU|ULA|Add0~2\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[0]~22_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~22_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => \CPU|ULA|Add0~34_cout\,
	sumout => \CPU|ULA|Add0~1_sumout\,
	cout => \CPU|ULA|Add0~2\);

\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[1]~15_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA|Add0~2\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[1]~15_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_dado_out[1]~15_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	cin => \CPU|ULA|Add0~2\,
	sumout => \CPU|ULA|Add0~5_sumout\,
	cout => \CPU|ULA|Add0~6\);

\CPU|MUX_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[1]~1_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & ((!\RAM|dado_out~23_combout\) # (\RAM|ram~530_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \RAM|ALT_INV_dado_out~23_combout\,
	datad => \RAM|ALT_INV_ram~530_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[1]~1_combout\);

\CPU|DECODER|operacao~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|operacao~1_combout\ = ( \CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(0) & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(2)))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(0) & ( (\ROM|memROM~1_combout\ & 
-- (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(2))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(0) & ( (\ROM|memROM~1_combout\ & (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000001000100000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \CPU|DECODER|operacao~1_combout\);

\CPU|DECODER|saida[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida\(5) = (\CPU|DECODER|Equal1~1_combout\) # (\CPU|DECODER|habAcumulador~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	combout => \CPU|DECODER|saida\(5));

\CPU|REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~5_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(1));

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \ROM|memROM~1_combout\ & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \RAM|ram~551_combout\);

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( \ROM|memROM~1_combout\ & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( \ROM|memROM~1_combout\ & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) 
-- & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \RAM|ram~549_combout\);

\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \ROM|memROM~1_combout\ & ( !\CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \RAM|ram~550_combout\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~24_q\ ) ) ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~32_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datab => \RAM|ALT_INV_ram~32_q\,
	datac => \RAM|ALT_INV_ram~24_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~528_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~528_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~529_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~529_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~530_combout\);

\RAM|dado_out[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~15_combout\ = (!\RAM|dado_out~23_combout\) # (\RAM|ram~530_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~23_combout\,
	datac => \RAM|ALT_INV_ram~530_combout\,
	combout => \RAM|dado_out[1]~15_combout\);

\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[2]~16_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~6_combout\)))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA|Add0~6\ ))
-- \CPU|ULA|Add0~10\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[2]~16_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~6_combout\)))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_dado_out[2]~16_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA|Add0~6\,
	sumout => \CPU|ULA|Add0~9_sumout\,
	cout => \CPU|ULA|Add0~10\);

\CPU|MUX_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[2]~2_combout\ = ( \RAM|ram~533_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\) # (\ROM|memROM~6_combout\) ) ) # ( !\RAM|ram~533_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\ & ((!\RAM|dado_out~23_combout\))) # 
-- (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000101111101011111010111110101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \RAM|ALT_INV_dado_out~23_combout\,
	datae => \RAM|ALT_INV_ram~533_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[2]~2_combout\);

\CPU|REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~9_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(2));

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~33_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datab => \RAM|ALT_INV_ram~33_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~531_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~531_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~532_combout\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~572_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~10_combout\ & ( (!\ROM|memROM~4_combout\ & (\RAM|ram~25_q\ & !\ROM|memROM~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \RAM|ALT_INV_ram~25_q\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~572_combout\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~572_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~532_combout\,
	datac => \RAM|ALT_INV_ram~572_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|dado_out[2]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[2]~16_combout\ = (!\RAM|dado_out~23_combout\) # (\RAM|ram~533_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~23_combout\,
	datac => \RAM|ALT_INV_ram~533_combout\,
	combout => \RAM|dado_out[2]~16_combout\);

\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[3]~17_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~8_combout\)))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA|Add0~10\ ))
-- \CPU|ULA|Add0~14\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[3]~17_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~8_combout\)))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_dado_out[3]~17_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA|Add0~10\,
	sumout => \CPU|ULA|Add0~13_sumout\,
	cout => \CPU|ULA|Add0~14\);

\CPU|MUX_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[3]~3_combout\ = ( \RAM|ram~535_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\) # (\ROM|memROM~8_combout\) ) ) # ( !\RAM|ram~535_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\ & ((!\RAM|dado_out~23_combout\))) # 
-- (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000101111101011111010111110101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \RAM|ALT_INV_dado_out~23_combout\,
	datae => \RAM|ALT_INV_ram~535_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[3]~3_combout\);

\CPU|REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~13_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(3));

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~34_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~26_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( 
-- \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datab => \RAM|ALT_INV_ram~26_q\,
	datac => \RAM|ALT_INV_ram~34_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~568_combout\ = ( \RAM|ram~534_combout\ & ( (!\ROM|memROM~8_combout\ & !\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_ram~534_combout\,
	combout => \RAM|ram~568_combout\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~568_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~568_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|dado_out[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[3]~17_combout\ = (!\RAM|dado_out~23_combout\) # (\RAM|ram~535_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~23_combout\,
	datac => \RAM|ALT_INV_ram~535_combout\,
	combout => \RAM|dado_out[3]~17_combout\);

\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[4]~18_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~10_combout\)))) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA|Add0~14\ ))
-- \CPU|ULA|Add0~18\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[4]~18_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~10_combout\)))) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_dado_out[4]~18_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA|Add0~14\,
	sumout => \CPU|ULA|Add0~17_sumout\,
	cout => \CPU|ULA|Add0~18\);

\CPU|MUX_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[4]~4_combout\ = ( \RAM|ram~536_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\) # (\ROM|memROM~10_combout\) ) ) # ( !\RAM|ram~536_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\ & ((!\RAM|dado_out~23_combout\))) # 
-- (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000101111101011111010111110101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \RAM|ALT_INV_dado_out~23_combout\,
	datae => \RAM|ALT_INV_ram~536_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[4]~4_combout\);

\CPU|REG_A|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~17_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(4));

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~564_combout\ = ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~10_combout\ & (\RAM|ram~27_q\ & !\ROM|memROM~6_combout\)) ) ) ) # ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~10_combout\ & 
-- (\RAM|ram~19_q\ & !\ROM|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000000000000000000000001010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \RAM|ALT_INV_ram~19_q\,
	datac => \RAM|ALT_INV_ram~27_q\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~564_combout\);

\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( (\RAM|ram~35_q\ & (!\ROM|memROM~10_combout\ & ((!\ROM|memROM~1_combout\) # (!\ROM|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_ram~35_q\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~560_combout\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~560_combout\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~564_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~564_combout\,
	datac => \RAM|ALT_INV_ram~560_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|dado_out[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[4]~18_combout\ = (!\RAM|dado_out~23_combout\) # (\RAM|ram~536_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~23_combout\,
	datac => \RAM|ALT_INV_ram~536_combout\,
	combout => \RAM|dado_out[4]~18_combout\);

\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[5]~19_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~12_combout\)))) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA|Add0~18\ ))
-- \CPU|ULA|Add0~22\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[5]~19_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~12_combout\)))) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_dado_out[5]~19_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	cin => \CPU|ULA|Add0~18\,
	sumout => \CPU|ULA|Add0~21_sumout\,
	cout => \CPU|ULA|Add0~22\);

\CPU|MUX_ULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[5]~5_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & ((!\RAM|dado_out~23_combout\) # (\RAM|ram~539_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \RAM|ALT_INV_dado_out~23_combout\,
	datad => \RAM|ALT_INV_ram~539_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[5]~5_combout\);

\CPU|REG_A|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~21_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(5));

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~36_q\ ) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datac => \RAM|ALT_INV_ram~36_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~537_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~537_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~538_combout\);

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~4_combout\ & ( (!\ROM|memROM~10_combout\ & (\RAM|ram~28_q\ & !\ROM|memROM~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~28_q\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~556_combout\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~556_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~538_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~538_combout\,
	datac => \RAM|ALT_INV_ram~556_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|dado_out[5]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[5]~19_combout\ = (!\RAM|dado_out~23_combout\) # (\RAM|ram~539_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~23_combout\,
	datac => \RAM|ALT_INV_ram~539_combout\,
	combout => \RAM|dado_out[5]~19_combout\);

\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[6]~20_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~19_combout\)))) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA|Add0~22\ ))
-- \CPU|ULA|Add0~26\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[6]~20_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~19_combout\)))) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \RAM|ALT_INV_dado_out[6]~20_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	cin => \CPU|ULA|Add0~22\,
	sumout => \CPU|ULA|Add0~25_sumout\,
	cout => \CPU|ULA|Add0~26\);

\CPU|REG_A|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~25_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(6));

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~29_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datab => \RAM|ALT_INV_ram~29_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~540_combout\);

\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~37_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~541_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~540_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~540_combout\,
	datab => \RAM|ALT_INV_ram~541_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~542_combout\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~542_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~543_combout\);

\CPU|MUX_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[6]~6_combout\ = ( \RAM|ram~543_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\) # (\ROM|memROM~19_combout\) ) ) # ( !\RAM|ram~543_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\ & ((!\RAM|dado_out~23_combout\))) # 
-- (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000101111101011111010111110101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \RAM|ALT_INV_dado_out~23_combout\,
	datae => \RAM|ALT_INV_ram~543_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[6]~6_combout\);

\CPU|ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[6]~6_combout\ = (!\CPU|DECODER|operacao~1_combout\ & ((\CPU|ULA|Add0~25_sumout\))) # (\CPU|DECODER|operacao~1_combout\ & (\CPU|MUX_ULA|saida_MUX[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\,
	datab => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~25_sumout\,
	combout => \CPU|ULA|saida[6]~6_combout\);

\RAM|dado_out[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[7]~21_combout\ = (!\RAM|dado_out~23_combout\) # (\RAM|ram~548_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~23_combout\,
	datac => \RAM|ALT_INV_ram~548_combout\,
	combout => \RAM|dado_out[7]~21_combout\);

\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[7]~21_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~10_combout\)))) ) + ( \CPU|REG_A|DOUT\(7) ) + ( \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datad => \RAM|ALT_INV_dado_out[7]~21_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	cin => \CPU|ULA|Add0~26\,
	sumout => \CPU|ULA|Add0~29_sumout\);

\CPU|REG_A|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~29_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(7));

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~544_combout\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~544_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~544_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~545_combout\);

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~10_combout\ & (\RAM|ram~30_q\ & !\ROM|memROM~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~30_q\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~552_combout\);

\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~38_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~546_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~546_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~547_combout\);

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~547_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~552_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( 
-- \RAM|ram~545_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~545_combout\,
	datab => \RAM|ALT_INV_ram~552_combout\,
	datac => \RAM|ALT_INV_ram~547_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~548_combout\);

\CPU|MUX_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[7]~7_combout\ = ( \RAM|ram~548_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\) # (\ROM|memROM~10_combout\) ) ) # ( !\RAM|ram~548_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\ & ((!\RAM|dado_out~23_combout\))) # 
-- (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000101111101011111010111110101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \RAM|ALT_INV_dado_out~23_combout\,
	datae => \RAM|ALT_INV_ram~548_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[7]~7_combout\);

\CPU|ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[7]~7_combout\ = (!\CPU|DECODER|operacao~1_combout\ & ((\CPU|ULA|Add0~29_sumout\))) # (\CPU|DECODER|operacao~1_combout\ & (\CPU|MUX_ULA|saida_MUX[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ULA|ALT_INV_saida_MUX[7]~7_combout\,
	datab => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~29_sumout\,
	combout => \CPU|ULA|saida[7]~7_combout\);

\CPU|FLAGer|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~0_combout\ = (!\CPU|DECODER|Equal1~0_combout\ & \CPU|FLAGer|DOUT~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datab => \CPU|FLAGer|ALT_INV_DOUT~q\,
	combout => \CPU|FLAGer|DOUT~0_combout\);

\RAM|dado_out[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~11_combout\ = (!\RAM|ram~527_combout\ & \RAM|dado_out~23_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~527_combout\,
	datac => \RAM|ALT_INV_dado_out~23_combout\,
	combout => \RAM|dado_out[0]~11_combout\);

\CPU|MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[0]~0_combout\ = ( \bufferKEY0|saida[0]~0_combout\ & ( \RAM|dado_out[0]~11_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\ & ((!\RAM|dado_out[0]~10_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~2_combout\)) ) ) ) # ( 
-- !\bufferKEY0|saida[0]~0_combout\ & ( \RAM|dado_out[0]~11_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\ & ((!\RAM|dado_out[0]~10_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~2_combout\)) ) ) ) # ( \bufferKEY0|saida[0]~0_combout\ & ( 
-- !\RAM|dado_out[0]~11_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\ & ((!\RAM|dado_out[0]~10_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~2_combout\)) ) ) ) # ( !\bufferKEY0|saida[0]~0_combout\ & ( !\RAM|dado_out[0]~11_combout\ & ( 
-- (!\CPU|DECODER|Equal1~1_combout\) # (\ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~10_combout\,
	datae => \bufferKEY0|ALT_INV_saida[0]~0_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~11_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[0]~0_combout\);

\CPU|FLAGer|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~1_combout\ = ( \CPU|ULA|Add0~1_sumout\ & ( \CPU|ULA|Add0~5_sumout\ & ( (\CPU|DECODER|Equal1~0_combout\ & (!\CPU|MUX_ULA|saida_MUX[0]~0_combout\ & (!\CPU|MUX_ULA|saida_MUX[1]~1_combout\ & \CPU|DECODER|operacao~1_combout\))) ) ) ) # ( 
-- !\CPU|ULA|Add0~1_sumout\ & ( \CPU|ULA|Add0~5_sumout\ & ( (\CPU|DECODER|Equal1~0_combout\ & (!\CPU|MUX_ULA|saida_MUX[0]~0_combout\ & (!\CPU|MUX_ULA|saida_MUX[1]~1_combout\ & \CPU|DECODER|operacao~1_combout\))) ) ) ) # ( \CPU|ULA|Add0~1_sumout\ & ( 
-- !\CPU|ULA|Add0~5_sumout\ & ( (\CPU|DECODER|Equal1~0_combout\ & (!\CPU|MUX_ULA|saida_MUX[0]~0_combout\ & (!\CPU|MUX_ULA|saida_MUX[1]~1_combout\ & \CPU|DECODER|operacao~1_combout\))) ) ) ) # ( !\CPU|ULA|Add0~1_sumout\ & ( !\CPU|ULA|Add0~5_sumout\ & ( 
-- (\CPU|DECODER|Equal1~0_combout\ & ((!\CPU|DECODER|operacao~1_combout\) # ((!\CPU|MUX_ULA|saida_MUX[0]~0_combout\ & !\CPU|MUX_ULA|saida_MUX[1]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datab => \CPU|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \CPU|MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datae => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	dataf => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	combout => \CPU|FLAGer|DOUT~1_combout\);

\CPU|FLAGer|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~2_combout\ = ( \CPU|ULA|Add0~21_sumout\ & ( (!\CPU|MUX_ULA|saida_MUX[4]~4_combout\ & (!\CPU|MUX_ULA|saida_MUX[5]~5_combout\ & \CPU|DECODER|operacao~1_combout\)) ) ) # ( !\CPU|ULA|Add0~21_sumout\ & ( (!\CPU|DECODER|operacao~1_combout\ & 
-- (((!\CPU|ULA|Add0~17_sumout\)))) # (\CPU|DECODER|operacao~1_combout\ & (!\CPU|MUX_ULA|saida_MUX[4]~4_combout\ & (!\CPU|MUX_ULA|saida_MUX[5]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000001000000010000000100011111000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \CPU|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\,
	datac => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datad => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	datae => \CPU|ULA|ALT_INV_Add0~21_sumout\,
	combout => \CPU|FLAGer|DOUT~2_combout\);

\CPU|FLAGer|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~3_combout\ = ( \CPU|ULA|Add0~13_sumout\ & ( (!\CPU|MUX_ULA|saida_MUX[2]~2_combout\ & (!\CPU|MUX_ULA|saida_MUX[3]~3_combout\ & \CPU|DECODER|operacao~1_combout\)) ) ) # ( !\CPU|ULA|Add0~13_sumout\ & ( (!\CPU|DECODER|operacao~1_combout\ & 
-- (((!\CPU|ULA|Add0~9_sumout\)))) # (\CPU|DECODER|operacao~1_combout\ & (!\CPU|MUX_ULA|saida_MUX[2]~2_combout\ & (!\CPU|MUX_ULA|saida_MUX[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000001000000010000000100011111000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \CPU|MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	datac => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datad => \CPU|ULA|ALT_INV_Add0~9_sumout\,
	datae => \CPU|ULA|ALT_INV_Add0~13_sumout\,
	combout => \CPU|FLAGer|DOUT~3_combout\);

\CPU|FLAGer|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~4_combout\ = ( \CPU|FLAGer|DOUT~2_combout\ & ( \CPU|FLAGer|DOUT~3_combout\ & ( ((!\CPU|ULA|saida[6]~6_combout\ & (!\CPU|ULA|saida[7]~7_combout\ & \CPU|FLAGer|DOUT~1_combout\))) # (\CPU|FLAGer|DOUT~0_combout\) ) ) ) # ( 
-- !\CPU|FLAGer|DOUT~2_combout\ & ( \CPU|FLAGer|DOUT~3_combout\ & ( \CPU|FLAGer|DOUT~0_combout\ ) ) ) # ( \CPU|FLAGer|DOUT~2_combout\ & ( !\CPU|FLAGer|DOUT~3_combout\ & ( \CPU|FLAGer|DOUT~0_combout\ ) ) ) # ( !\CPU|FLAGer|DOUT~2_combout\ & ( 
-- !\CPU|FLAGer|DOUT~3_combout\ & ( \CPU|FLAGer|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_saida[6]~6_combout\,
	datab => \CPU|ULA|ALT_INV_saida[7]~7_combout\,
	datac => \CPU|FLAGer|ALT_INV_DOUT~0_combout\,
	datad => \CPU|FLAGer|ALT_INV_DOUT~1_combout\,
	datae => \CPU|FLAGer|ALT_INV_DOUT~2_combout\,
	dataf => \CPU|FLAGer|ALT_INV_DOUT~3_combout\,
	combout => \CPU|FLAGer|DOUT~4_combout\);

\CPU|FLAGer|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|FLAGer|DOUT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAGer|DOUT~q\);

\CPU|PC|DOUT[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[1]~2_combout\ = ( \ROM|memROM~16_combout\ & ( (!\ROM|memROM~13_combout\ & (\CPU|FLAGer|DOUT~q\ & (\ROM|memROM~15_combout\ & \ROM|memROM~14_combout\))) # (\ROM|memROM~13_combout\ & (((!\ROM|memROM~15_combout\ & !\ROM|memROM~14_combout\)))) ) ) 
-- # ( !\ROM|memROM~16_combout\ & ( (\ROM|memROM~15_combout\ & (!\ROM|memROM~13_combout\ $ (!\ROM|memROM~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100001100000000010000000011000011000011000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FLAGer|ALT_INV_DOUT~q\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|PC|DOUT[1]~2_combout\);

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

\CPU|END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~21_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(5));

\CPU|MUX_DESVIO|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\ = (!\CPU|PC|DOUT[1]~0_combout\ & ((!\CPU|PC|DOUT[1]~2_combout\ & (\CPU|PC_INC|Add0~21_sumout\)) # (\CPU|PC|DOUT[1]~2_combout\ & ((\CPU|END_RETORNO|DOUT\(5))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~0_combout\,
	datac => \CPU|PC_INC|ALT_INV_Add0~21_sumout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(5),
	combout => \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

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

\CPU|END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~25_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(6));

\CPU|MUX_DESVIO|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\ = ( \CPU|END_RETORNO|DOUT\(6) & ( (!\CPU|PC|DOUT[1]~2_combout\ & (((!\CPU|PC|DOUT[1]~0_combout\ & \CPU|PC_INC|Add0~25_sumout\)))) # (\CPU|PC|DOUT[1]~2_combout\ & (((!\CPU|PC|DOUT[1]~0_combout\)) # 
-- (\ROM|memROM~19_combout\))) ) ) # ( !\CPU|END_RETORNO|DOUT\(6) & ( (!\CPU|PC|DOUT[1]~2_combout\ & (((!\CPU|PC|DOUT[1]~0_combout\ & \CPU|PC_INC|Add0~25_sumout\)))) # (\CPU|PC|DOUT[1]~2_combout\ & (\ROM|memROM~19_combout\ & (\CPU|PC|DOUT[1]~0_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100000001110000010011000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~2_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~0_combout\,
	datad => \CPU|PC_INC|ALT_INV_Add0~25_sumout\,
	datae => \CPU|END_RETORNO|ALT_INV_DOUT\(6),
	combout => \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

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

\CPU|END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~29_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(7));

\CPU|MUX_DESVIO|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\ = ( \CPU|END_RETORNO|DOUT\(7) & ( (!\CPU|PC|DOUT[7]~1_combout\ & (((\CPU|PC_INC|Add0~29_sumout\)))) # (\CPU|PC|DOUT[7]~1_combout\ & (((\CPU|DECODER|Equal1~3_combout\)) # (\ROM|memROM~10_combout\))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(7) & ( (!\CPU|PC|DOUT[7]~1_combout\ & (((\CPU|PC_INC|Add0~29_sumout\)))) # (\CPU|PC|DOUT[7]~1_combout\ & (\ROM|memROM~10_combout\ & (!\CPU|DECODER|Equal1~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011110100000001111111011100000100111101000000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~1_combout\,
	datad => \CPU|PC_INC|ALT_INV_Add0~29_sumout\,
	datae => \CPU|END_RETORNO|ALT_INV_DOUT\(7),
	combout => \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

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

\CPU|END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~33_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(8));

\CPU|MUX_DESVIO|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\ = (!\CPU|PC|DOUT[1]~0_combout\ & ((!\CPU|PC|DOUT[1]~2_combout\ & (\CPU|PC_INC|Add0~33_sumout\)) # (\CPU|PC|DOUT[1]~2_combout\ & ((\CPU|END_RETORNO|DOUT\(8))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~0_combout\,
	datac => \CPU|PC_INC|ALT_INV_Add0~33_sumout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(8),
	combout => \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);

\CPU|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~5_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(1));

\CPU|MUX_DESVIO|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\ = ( \CPU|END_RETORNO|DOUT\(1) & ( (!\CPU|PC|DOUT[1]~2_combout\ & (((!\CPU|PC|DOUT[1]~0_combout\ & \CPU|PC_INC|Add0~5_sumout\)))) # (\CPU|PC|DOUT[1]~2_combout\ & (((!\CPU|PC|DOUT[1]~0_combout\)) # 
-- (\ROM|memROM~4_combout\))) ) ) # ( !\CPU|END_RETORNO|DOUT\(1) & ( (!\CPU|PC|DOUT[1]~2_combout\ & (((!\CPU|PC|DOUT[1]~0_combout\ & \CPU|PC_INC|Add0~5_sumout\)))) # (\CPU|PC|DOUT[1]~2_combout\ & (\ROM|memROM~4_combout\ & (\CPU|PC|DOUT[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100000001110000010011000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~2_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~0_combout\,
	datad => \CPU|PC_INC|ALT_INV_Add0~5_sumout\,
	datae => \CPU|END_RETORNO|ALT_INV_DOUT\(1),
	combout => \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( \CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) # ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2) & 
-- ((\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000110011011010000000000000010010001100110110100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~2_combout\);

\CPU|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~1_sumout\,
	ena => \CPU|DECODER|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(0));

\CPU|MUX_DESVIO|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\ = ( \CPU|END_RETORNO|DOUT\(0) & ( (!\CPU|PC|DOUT[1]~2_combout\ & (((\CPU|PC_INC|Add0~1_sumout\ & !\CPU|PC|DOUT[1]~0_combout\)))) # (\CPU|PC|DOUT[1]~2_combout\ & (((!\CPU|PC|DOUT[1]~0_combout\)) # 
-- (\ROM|memROM~2_combout\))) ) ) # ( !\CPU|END_RETORNO|DOUT\(0) & ( (!\CPU|PC|DOUT[1]~2_combout\ & (((\CPU|PC_INC|Add0~1_sumout\ & !\CPU|PC|DOUT[1]~0_combout\)))) # (\CPU|PC|DOUT[1]~2_combout\ & (\ROM|memROM~2_combout\ & ((\CPU|PC|DOUT[1]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000000001010011111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|PC_INC|ALT_INV_Add0~1_sumout\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~2_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~0_combout\,
	datae => \CPU|END_RETORNO|ALT_INV_DOUT\(0),
	combout => \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( \CPU|PC|DOUT\(4) & ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \ROM|memROM~1_combout\ & ( 
-- (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111110110110011011100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~16_combout\);

\CPU|DECODER|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~1_combout\ = (!\ROM|memROM~16_combout\ & (\ROM|memROM~14_combout\ & (!\ROM|memROM~15_combout\ & !\ROM|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER|Equal1~1_combout\);

\CPU|REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA|Add0~1_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|DECODER|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(0));

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~580_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( (\RAM|ram~23_q\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~8_combout\)) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~10_combout\ & 
-- (\RAM|ram~15_q\ & !\ROM|memROM~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~15_q\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~580_combout\);

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~576_combout\ = ( !\ROM|memROM~8_combout\ & ( !\ROM|memROM~10_combout\ & ( (\RAM|ram~31_q\ & (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~1_combout\) # (!\ROM|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_ram~31_q\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~576_combout\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~12_combout\ & ( \RAM|ram~576_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~12_combout\ & ( \RAM|ram~580_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~580_combout\,
	datab => \RAM|ALT_INV_ram~576_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~527_combout\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\habLED8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLED8~0_combout\ = (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \habLED8~0_combout\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\RAM|dado_out[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~12_combout\ = ( \FPGA_RESET_N~input_o\ & ( \habHEX0~0_combout\ & ( (!\ROM|memROM~6_combout\ & (\RAM|dado_out[0]~9_combout\ & (!\SW[8]~input_o\ & \habLED8~0_combout\))) ) ) ) # ( !\FPGA_RESET_N~input_o\ & ( \habHEX0~0_combout\ & ( 
-- (\RAM|dado_out[0]~9_combout\ & (((!\SW[8]~input_o\ & \habLED8~0_combout\)) # (\ROM|memROM~6_combout\))) ) ) ) # ( \FPGA_RESET_N~input_o\ & ( !\habHEX0~0_combout\ & ( (!\ROM|memROM~6_combout\ & (\RAM|dado_out[0]~9_combout\ & (!\SW[8]~input_o\ & 
-- \habLED8~0_combout\))) ) ) ) # ( !\FPGA_RESET_N~input_o\ & ( !\habHEX0~0_combout\ & ( (!\ROM|memROM~6_combout\ & (\RAM|dado_out[0]~9_combout\ & (!\SW[8]~input_o\ & \habLED8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000010001001100010000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~9_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_habLED8~0_combout\,
	datae => \ALT_INV_FPGA_RESET_N~input_o\,
	dataf => \ALT_INV_habHEX0~0_combout\,
	combout => \RAM|dado_out[0]~12_combout\);

\habSWconj~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habSWconj~0_combout\ = (!\ROM|memROM~6_combout\ & (\RAM|dado_out[0]~8_combout\ & ((\CPU|DECODER|habAcumulador~0_combout\) # (\CPU|DECODER|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datac => \CPU|DECODER|ALT_INV_habAcumulador~0_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~8_combout\,
	combout => \habSWconj~0_combout\);

\RAM|dado_out[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~13_combout\ = ( \habHEX0~0_combout\ & ( (\habSWconj~0_combout\ & !\FF_Debouncer|DOUT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habSWconj~0_combout\,
	datad => \FF_Debouncer|ALT_INV_DOUT~q\,
	datae => \ALT_INV_habHEX0~0_combout\,
	combout => \RAM|dado_out[0]~13_combout\);

\RAM|dado_out[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~14_combout\ = ( !\RAM|dado_out[0]~13_combout\ & ( (!\RAM|dado_out[0]~12_combout\ & ((!\RAM|dado_out~23_combout\) # (\RAM|ram~527_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100000000000000000000000011011101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datab => \RAM|ALT_INV_dado_out~23_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~12_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~13_combout\,
	combout => \RAM|dado_out[0]~14_combout\);

\decoderBlock|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderBlock|Equal3~0_combout\ = ( \ROM|memROM~18_combout\ & ( (\ROM|memROM~1_combout\ & (((!\ROM|memROM~9_combout\ & !\ROM|memROM~17_combout\)) # (\CPU|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100010001000100000000000000000011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	combout => \decoderBlock|Equal3~0_combout\);

\CPU|DECODER|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~4_combout\ = ( \CPU|PC|DOUT\(4) & ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) $ (((\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111110100000010011100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \CPU|DECODER|Equal1~4_combout\);

\FFLED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED8|DOUT~0_combout\ = ( \decoderBlock|Equal3~0_combout\ & ( \CPU|DECODER|Equal1~4_combout\ & ( (!\ROM|memROM~6_combout\ & ((!\habLED8~0_combout\ & (\FFLED8|DOUT~q\)) # (\habLED8~0_combout\ & ((\CPU|REG_A|DOUT\(0)))))) # (\ROM|memROM~6_combout\ & 
-- (\FFLED8|DOUT~q\)) ) ) ) # ( !\decoderBlock|Equal3~0_combout\ & ( \CPU|DECODER|Equal1~4_combout\ & ( \FFLED8|DOUT~q\ ) ) ) # ( \decoderBlock|Equal3~0_combout\ & ( !\CPU|DECODER|Equal1~4_combout\ & ( \FFLED8|DOUT~q\ ) ) ) # ( 
-- !\decoderBlock|Equal3~0_combout\ & ( !\CPU|DECODER|Equal1~4_combout\ & ( \FFLED8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \FFLED8|ALT_INV_DOUT~q\,
	datac => \CPU|REG_A|ALT_INV_DOUT\(0),
	datad => \ALT_INV_habLED8~0_combout\,
	datae => \decoderBlock|ALT_INV_Equal3~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	combout => \FFLED8|DOUT~0_combout\);

\FFLED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FFLED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLED8|DOUT~q\);

\habLEDconj~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLEDconj~0_combout\ = (!\ROM|memROM~2_combout\ & (!\ROM|memROM~6_combout\ & (\decoderBlock|Equal3~0_combout\ & \CPU|DECODER|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \decoderBlock|ALT_INV_Equal3~0_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	combout => \habLEDconj~0_combout\);

\FFLED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED9|DOUT~0_combout\ = ( \habLEDconj~0_combout\ & ( (!\ROM|memROM~4_combout\ & (((\FFLED9|DOUT~q\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~12_combout\ & ((\CPU|REG_A|DOUT\(0)))) # (\ROM|memROM~12_combout\ & (\FFLED9|DOUT~q\)))) ) ) # ( 
-- !\habLEDconj~0_combout\ & ( \FFLED9|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010110100111100001111000011110000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \FFLED9|ALT_INV_DOUT~q\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(0),
	datae => \ALT_INV_habLEDconj~0_combout\,
	combout => \FFLED9|DOUT~0_combout\);

\FFLED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FFLED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLED9|DOUT~q\);

\habHEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~1_combout\ = (!\ROM|memROM~6_combout\ & (\habHEX0~0_combout\ & (\decoderBlock|Equal3~0_combout\ & \CPU|DECODER|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ALT_INV_habHEX0~0_combout\,
	datac => \decoderBlock|ALT_INV_Equal3~0_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	combout => \habHEX0~1_combout\);

\HEX0_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \habHEX0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(0));

\HEX0_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \habHEX0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(3));

\HEX0_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \habHEX0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(1));

\HEX0_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \habHEX0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(2));

\HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = (!\HEX0_decoder|REG_4bits|DOUT\(3) & (!\HEX0_decoder|REG_4bits|DOUT\(1) & (!\HEX0_decoder|REG_4bits|DOUT\(0) $ (!\HEX0_decoder|REG_4bits|DOUT\(2))))) # (\HEX0_decoder|REG_4bits|DOUT\(3) & 
-- (\HEX0_decoder|REG_4bits|DOUT\(0) & (!\HEX0_decoder|REG_4bits|DOUT\(1) $ (!\HEX0_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

\HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = (!\HEX0_decoder|REG_4bits|DOUT\(3) & (\HEX0_decoder|REG_4bits|DOUT\(2) & (!\HEX0_decoder|REG_4bits|DOUT\(0) $ (!\HEX0_decoder|REG_4bits|DOUT\(1))))) # (\HEX0_decoder|REG_4bits|DOUT\(3) & 
-- ((!\HEX0_decoder|REG_4bits|DOUT\(0) & ((\HEX0_decoder|REG_4bits|DOUT\(2)))) # (\HEX0_decoder|REG_4bits|DOUT\(0) & (\HEX0_decoder|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

\HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = (!\HEX0_decoder|REG_4bits|DOUT\(3) & (!\HEX0_decoder|REG_4bits|DOUT\(0) & (\HEX0_decoder|REG_4bits|DOUT\(1) & !\HEX0_decoder|REG_4bits|DOUT\(2)))) # (\HEX0_decoder|REG_4bits|DOUT\(3) & 
-- (\HEX0_decoder|REG_4bits|DOUT\(2) & ((!\HEX0_decoder|REG_4bits|DOUT\(0)) # (\HEX0_decoder|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

\HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = (!\HEX0_decoder|REG_4bits|DOUT\(1) & (!\HEX0_decoder|REG_4bits|DOUT\(3) & (!\HEX0_decoder|REG_4bits|DOUT\(0) $ (!\HEX0_decoder|REG_4bits|DOUT\(2))))) # (\HEX0_decoder|REG_4bits|DOUT\(1) & 
-- ((!\HEX0_decoder|REG_4bits|DOUT\(0) & (!\HEX0_decoder|REG_4bits|DOUT\(2) & \HEX0_decoder|REG_4bits|DOUT\(3))) # (\HEX0_decoder|REG_4bits|DOUT\(0) & (\HEX0_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

\HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX0_decoder|REG_4bits|DOUT\(1) & ((!\HEX0_decoder|REG_4bits|DOUT\(2) & ((\HEX0_decoder|REG_4bits|DOUT\(0)))) # (\HEX0_decoder|REG_4bits|DOUT\(2) & (!\HEX0_decoder|REG_4bits|DOUT\(3))))) # 
-- (\HEX0_decoder|REG_4bits|DOUT\(1) & (!\HEX0_decoder|REG_4bits|DOUT\(3) & ((\HEX0_decoder|REG_4bits|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

\HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = (!\HEX0_decoder|REG_4bits|DOUT\(0) & (\HEX0_decoder|REG_4bits|DOUT\(1) & (!\HEX0_decoder|REG_4bits|DOUT\(2) & !\HEX0_decoder|REG_4bits|DOUT\(3)))) # (\HEX0_decoder|REG_4bits|DOUT\(0) & 
-- (!\HEX0_decoder|REG_4bits|DOUT\(3) $ (((!\HEX0_decoder|REG_4bits|DOUT\(1) & \HEX0_decoder|REG_4bits|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

\HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = (!\HEX0_decoder|REG_4bits|DOUT\(0) & (!\HEX0_decoder|REG_4bits|DOUT\(1) & (!\HEX0_decoder|REG_4bits|DOUT\(3) $ (\HEX0_decoder|REG_4bits|DOUT\(2))))) # (\HEX0_decoder|REG_4bits|DOUT\(0) & 
-- (!\HEX0_decoder|REG_4bits|DOUT\(3) & (!\HEX0_decoder|REG_4bits|DOUT\(1) $ (\HEX0_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

\habHEX5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX5~0_combout\ = (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \habHEX5~0_combout\);

\habHEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX1~0_combout\ = (!\ROM|memROM~6_combout\ & (\habHEX5~0_combout\ & (\decoderBlock|Equal3~0_combout\ & \CPU|DECODER|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ALT_INV_habHEX5~0_combout\,
	datac => \decoderBlock|ALT_INV_Equal3~0_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	combout => \habHEX1~0_combout\);

\HEX1_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \habHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_decoder|REG_4bits|DOUT\(0));

\HEX1_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \habHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_decoder|REG_4bits|DOUT\(3));

\HEX1_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \habHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_decoder|REG_4bits|DOUT\(1));

\HEX1_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \habHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1_decoder|REG_4bits|DOUT\(2));

\HEX1_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = (!\HEX1_decoder|REG_4bits|DOUT\(3) & (!\HEX1_decoder|REG_4bits|DOUT\(1) & (!\HEX1_decoder|REG_4bits|DOUT\(0) $ (!\HEX1_decoder|REG_4bits|DOUT\(2))))) # (\HEX1_decoder|REG_4bits|DOUT\(3) & 
-- (\HEX1_decoder|REG_4bits|DOUT\(0) & (!\HEX1_decoder|REG_4bits|DOUT\(1) $ (!\HEX1_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

\HEX1_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = (!\HEX1_decoder|REG_4bits|DOUT\(3) & (\HEX1_decoder|REG_4bits|DOUT\(2) & (!\HEX1_decoder|REG_4bits|DOUT\(0) $ (!\HEX1_decoder|REG_4bits|DOUT\(1))))) # (\HEX1_decoder|REG_4bits|DOUT\(3) & 
-- ((!\HEX1_decoder|REG_4bits|DOUT\(0) & ((\HEX1_decoder|REG_4bits|DOUT\(2)))) # (\HEX1_decoder|REG_4bits|DOUT\(0) & (\HEX1_decoder|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

\HEX1_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = (!\HEX1_decoder|REG_4bits|DOUT\(3) & (!\HEX1_decoder|REG_4bits|DOUT\(0) & (\HEX1_decoder|REG_4bits|DOUT\(1) & !\HEX1_decoder|REG_4bits|DOUT\(2)))) # (\HEX1_decoder|REG_4bits|DOUT\(3) & 
-- (\HEX1_decoder|REG_4bits|DOUT\(2) & ((!\HEX1_decoder|REG_4bits|DOUT\(0)) # (\HEX1_decoder|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

\HEX1_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = (!\HEX1_decoder|REG_4bits|DOUT\(1) & (!\HEX1_decoder|REG_4bits|DOUT\(3) & (!\HEX1_decoder|REG_4bits|DOUT\(0) $ (!\HEX1_decoder|REG_4bits|DOUT\(2))))) # (\HEX1_decoder|REG_4bits|DOUT\(1) & 
-- ((!\HEX1_decoder|REG_4bits|DOUT\(0) & (!\HEX1_decoder|REG_4bits|DOUT\(2) & \HEX1_decoder|REG_4bits|DOUT\(3))) # (\HEX1_decoder|REG_4bits|DOUT\(0) & (\HEX1_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

\HEX1_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX1_decoder|REG_4bits|DOUT\(1) & ((!\HEX1_decoder|REG_4bits|DOUT\(2) & ((\HEX1_decoder|REG_4bits|DOUT\(0)))) # (\HEX1_decoder|REG_4bits|DOUT\(2) & (!\HEX1_decoder|REG_4bits|DOUT\(3))))) # 
-- (\HEX1_decoder|REG_4bits|DOUT\(1) & (!\HEX1_decoder|REG_4bits|DOUT\(3) & ((\HEX1_decoder|REG_4bits|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

\HEX1_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = (!\HEX1_decoder|REG_4bits|DOUT\(0) & (\HEX1_decoder|REG_4bits|DOUT\(1) & (!\HEX1_decoder|REG_4bits|DOUT\(2) & !\HEX1_decoder|REG_4bits|DOUT\(3)))) # (\HEX1_decoder|REG_4bits|DOUT\(0) & 
-- (!\HEX1_decoder|REG_4bits|DOUT\(3) $ (((!\HEX1_decoder|REG_4bits|DOUT\(1) & \HEX1_decoder|REG_4bits|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX1_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX1_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

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

\habHEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX2~0_combout\ = ( \decoderBlock|Equal3~0_combout\ & ( \CPU|DECODER|Equal1~4_combout\ & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \decoderBlock|ALT_INV_Equal3~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	combout => \habHEX2~0_combout\);

\HEX2_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \habHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(0));

\HEX2_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \habHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(3));

\HEX2_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \habHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(1));

\HEX2_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \habHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(2));

\HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = (!\HEX2_decoder|REG_4bits|DOUT\(3) & (!\HEX2_decoder|REG_4bits|DOUT\(1) & (!\HEX2_decoder|REG_4bits|DOUT\(0) $ (!\HEX2_decoder|REG_4bits|DOUT\(2))))) # (\HEX2_decoder|REG_4bits|DOUT\(3) & 
-- (\HEX2_decoder|REG_4bits|DOUT\(0) & (!\HEX2_decoder|REG_4bits|DOUT\(1) $ (!\HEX2_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

\HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = (!\HEX2_decoder|REG_4bits|DOUT\(3) & (\HEX2_decoder|REG_4bits|DOUT\(2) & (!\HEX2_decoder|REG_4bits|DOUT\(0) $ (!\HEX2_decoder|REG_4bits|DOUT\(1))))) # (\HEX2_decoder|REG_4bits|DOUT\(3) & 
-- ((!\HEX2_decoder|REG_4bits|DOUT\(0) & ((\HEX2_decoder|REG_4bits|DOUT\(2)))) # (\HEX2_decoder|REG_4bits|DOUT\(0) & (\HEX2_decoder|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

\HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = (!\HEX2_decoder|REG_4bits|DOUT\(3) & (!\HEX2_decoder|REG_4bits|DOUT\(0) & (\HEX2_decoder|REG_4bits|DOUT\(1) & !\HEX2_decoder|REG_4bits|DOUT\(2)))) # (\HEX2_decoder|REG_4bits|DOUT\(3) & 
-- (\HEX2_decoder|REG_4bits|DOUT\(2) & ((!\HEX2_decoder|REG_4bits|DOUT\(0)) # (\HEX2_decoder|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

\HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = (!\HEX2_decoder|REG_4bits|DOUT\(1) & (!\HEX2_decoder|REG_4bits|DOUT\(3) & (!\HEX2_decoder|REG_4bits|DOUT\(0) $ (!\HEX2_decoder|REG_4bits|DOUT\(2))))) # (\HEX2_decoder|REG_4bits|DOUT\(1) & 
-- ((!\HEX2_decoder|REG_4bits|DOUT\(0) & (!\HEX2_decoder|REG_4bits|DOUT\(2) & \HEX2_decoder|REG_4bits|DOUT\(3))) # (\HEX2_decoder|REG_4bits|DOUT\(0) & (\HEX2_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

\HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX2_decoder|REG_4bits|DOUT\(1) & ((!\HEX2_decoder|REG_4bits|DOUT\(2) & ((\HEX2_decoder|REG_4bits|DOUT\(0)))) # (\HEX2_decoder|REG_4bits|DOUT\(2) & (!\HEX2_decoder|REG_4bits|DOUT\(3))))) # 
-- (\HEX2_decoder|REG_4bits|DOUT\(1) & (!\HEX2_decoder|REG_4bits|DOUT\(3) & ((\HEX2_decoder|REG_4bits|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

\HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = (!\HEX2_decoder|REG_4bits|DOUT\(0) & (\HEX2_decoder|REG_4bits|DOUT\(1) & (!\HEX2_decoder|REG_4bits|DOUT\(2) & !\HEX2_decoder|REG_4bits|DOUT\(3)))) # (\HEX2_decoder|REG_4bits|DOUT\(0) & 
-- (!\HEX2_decoder|REG_4bits|DOUT\(3) $ (((!\HEX2_decoder|REG_4bits|DOUT\(1) & \HEX2_decoder|REG_4bits|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

\HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = (!\HEX2_decoder|REG_4bits|DOUT\(0) & (!\HEX2_decoder|REG_4bits|DOUT\(1) & (!\HEX2_decoder|REG_4bits|DOUT\(3) $ (\HEX2_decoder|REG_4bits|DOUT\(2))))) # (\HEX2_decoder|REG_4bits|DOUT\(0) & 
-- (!\HEX2_decoder|REG_4bits|DOUT\(3) & (!\HEX2_decoder|REG_4bits|DOUT\(1) $ (\HEX2_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

\ADDR_511~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_511~0_combout\ = (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (\ROM|memROM~3_combout\ & \ROM|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ADDR_511~0_combout\);

\habHEX3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX3~0_combout\ = (!\ROM|memROM~6_combout\ & (\ADDR_511~0_combout\ & (\decoderBlock|Equal3~0_combout\ & \CPU|DECODER|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ALT_INV_ADDR_511~0_combout\,
	datac => \decoderBlock|ALT_INV_Equal3~0_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	combout => \habHEX3~0_combout\);

\HEX3_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \habHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_decoder|REG_4bits|DOUT\(0));

\HEX3_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \habHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_decoder|REG_4bits|DOUT\(3));

\HEX3_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \habHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_decoder|REG_4bits|DOUT\(1));

\HEX3_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \habHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_decoder|REG_4bits|DOUT\(2));

\HEX3_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = (!\HEX3_decoder|REG_4bits|DOUT\(3) & (!\HEX3_decoder|REG_4bits|DOUT\(1) & (!\HEX3_decoder|REG_4bits|DOUT\(0) $ (!\HEX3_decoder|REG_4bits|DOUT\(2))))) # (\HEX3_decoder|REG_4bits|DOUT\(3) & 
-- (\HEX3_decoder|REG_4bits|DOUT\(0) & (!\HEX3_decoder|REG_4bits|DOUT\(1) $ (!\HEX3_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

\HEX3_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = (!\HEX3_decoder|REG_4bits|DOUT\(3) & (\HEX3_decoder|REG_4bits|DOUT\(2) & (!\HEX3_decoder|REG_4bits|DOUT\(0) $ (!\HEX3_decoder|REG_4bits|DOUT\(1))))) # (\HEX3_decoder|REG_4bits|DOUT\(3) & 
-- ((!\HEX3_decoder|REG_4bits|DOUT\(0) & ((\HEX3_decoder|REG_4bits|DOUT\(2)))) # (\HEX3_decoder|REG_4bits|DOUT\(0) & (\HEX3_decoder|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

\HEX3_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = (!\HEX3_decoder|REG_4bits|DOUT\(3) & (!\HEX3_decoder|REG_4bits|DOUT\(0) & (\HEX3_decoder|REG_4bits|DOUT\(1) & !\HEX3_decoder|REG_4bits|DOUT\(2)))) # (\HEX3_decoder|REG_4bits|DOUT\(3) & 
-- (\HEX3_decoder|REG_4bits|DOUT\(2) & ((!\HEX3_decoder|REG_4bits|DOUT\(0)) # (\HEX3_decoder|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

\HEX3_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = (!\HEX3_decoder|REG_4bits|DOUT\(1) & (!\HEX3_decoder|REG_4bits|DOUT\(3) & (!\HEX3_decoder|REG_4bits|DOUT\(0) $ (!\HEX3_decoder|REG_4bits|DOUT\(2))))) # (\HEX3_decoder|REG_4bits|DOUT\(1) & 
-- ((!\HEX3_decoder|REG_4bits|DOUT\(0) & (!\HEX3_decoder|REG_4bits|DOUT\(2) & \HEX3_decoder|REG_4bits|DOUT\(3))) # (\HEX3_decoder|REG_4bits|DOUT\(0) & (\HEX3_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

\HEX3_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX3_decoder|REG_4bits|DOUT\(1) & ((!\HEX3_decoder|REG_4bits|DOUT\(2) & ((\HEX3_decoder|REG_4bits|DOUT\(0)))) # (\HEX3_decoder|REG_4bits|DOUT\(2) & (!\HEX3_decoder|REG_4bits|DOUT\(3))))) # 
-- (\HEX3_decoder|REG_4bits|DOUT\(1) & (!\HEX3_decoder|REG_4bits|DOUT\(3) & ((\HEX3_decoder|REG_4bits|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

\HEX3_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = (!\HEX3_decoder|REG_4bits|DOUT\(0) & (\HEX3_decoder|REG_4bits|DOUT\(1) & (!\HEX3_decoder|REG_4bits|DOUT\(2) & !\HEX3_decoder|REG_4bits|DOUT\(3)))) # (\HEX3_decoder|REG_4bits|DOUT\(0) & 
-- (!\HEX3_decoder|REG_4bits|DOUT\(3) $ (((!\HEX3_decoder|REG_4bits|DOUT\(1) & \HEX3_decoder|REG_4bits|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

\HEX3_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = (!\HEX3_decoder|REG_4bits|DOUT\(0) & (!\HEX3_decoder|REG_4bits|DOUT\(1) & (!\HEX3_decoder|REG_4bits|DOUT\(3) $ (\HEX3_decoder|REG_4bits|DOUT\(2))))) # (\HEX3_decoder|REG_4bits|DOUT\(0) & 
-- (!\HEX3_decoder|REG_4bits|DOUT\(3) & (!\HEX3_decoder|REG_4bits|DOUT\(1) $ (\HEX3_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

\habHEX4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX4~0_combout\ = (\ROM|memROM~6_combout\ & (\habHEX0~0_combout\ & (\decoderBlock|Equal3~0_combout\ & \CPU|DECODER|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ALT_INV_habHEX0~0_combout\,
	datac => \decoderBlock|ALT_INV_Equal3~0_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	combout => \habHEX4~0_combout\);

\HEX4_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \habHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_decoder|REG_4bits|DOUT\(0));

\HEX4_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \habHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_decoder|REG_4bits|DOUT\(3));

\HEX4_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \habHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_decoder|REG_4bits|DOUT\(1));

\HEX4_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \habHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_decoder|REG_4bits|DOUT\(2));

\HEX4_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = (!\HEX4_decoder|REG_4bits|DOUT\(3) & (!\HEX4_decoder|REG_4bits|DOUT\(1) & (!\HEX4_decoder|REG_4bits|DOUT\(0) $ (!\HEX4_decoder|REG_4bits|DOUT\(2))))) # (\HEX4_decoder|REG_4bits|DOUT\(3) & 
-- (\HEX4_decoder|REG_4bits|DOUT\(0) & (!\HEX4_decoder|REG_4bits|DOUT\(1) $ (!\HEX4_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

\HEX4_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = (!\HEX4_decoder|REG_4bits|DOUT\(3) & (\HEX4_decoder|REG_4bits|DOUT\(2) & (!\HEX4_decoder|REG_4bits|DOUT\(0) $ (!\HEX4_decoder|REG_4bits|DOUT\(1))))) # (\HEX4_decoder|REG_4bits|DOUT\(3) & 
-- ((!\HEX4_decoder|REG_4bits|DOUT\(0) & ((\HEX4_decoder|REG_4bits|DOUT\(2)))) # (\HEX4_decoder|REG_4bits|DOUT\(0) & (\HEX4_decoder|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

\HEX4_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = (!\HEX4_decoder|REG_4bits|DOUT\(3) & (!\HEX4_decoder|REG_4bits|DOUT\(0) & (\HEX4_decoder|REG_4bits|DOUT\(1) & !\HEX4_decoder|REG_4bits|DOUT\(2)))) # (\HEX4_decoder|REG_4bits|DOUT\(3) & 
-- (\HEX4_decoder|REG_4bits|DOUT\(2) & ((!\HEX4_decoder|REG_4bits|DOUT\(0)) # (\HEX4_decoder|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

\HEX4_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = (!\HEX4_decoder|REG_4bits|DOUT\(1) & (!\HEX4_decoder|REG_4bits|DOUT\(3) & (!\HEX4_decoder|REG_4bits|DOUT\(0) $ (!\HEX4_decoder|REG_4bits|DOUT\(2))))) # (\HEX4_decoder|REG_4bits|DOUT\(1) & 
-- ((!\HEX4_decoder|REG_4bits|DOUT\(0) & (!\HEX4_decoder|REG_4bits|DOUT\(2) & \HEX4_decoder|REG_4bits|DOUT\(3))) # (\HEX4_decoder|REG_4bits|DOUT\(0) & (\HEX4_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

\HEX4_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX4_decoder|REG_4bits|DOUT\(1) & ((!\HEX4_decoder|REG_4bits|DOUT\(2) & ((\HEX4_decoder|REG_4bits|DOUT\(0)))) # (\HEX4_decoder|REG_4bits|DOUT\(2) & (!\HEX4_decoder|REG_4bits|DOUT\(3))))) # 
-- (\HEX4_decoder|REG_4bits|DOUT\(1) & (!\HEX4_decoder|REG_4bits|DOUT\(3) & ((\HEX4_decoder|REG_4bits|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

\HEX4_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = (!\HEX4_decoder|REG_4bits|DOUT\(0) & (\HEX4_decoder|REG_4bits|DOUT\(1) & (!\HEX4_decoder|REG_4bits|DOUT\(2) & !\HEX4_decoder|REG_4bits|DOUT\(3)))) # (\HEX4_decoder|REG_4bits|DOUT\(0) & 
-- (!\HEX4_decoder|REG_4bits|DOUT\(3) $ (((!\HEX4_decoder|REG_4bits|DOUT\(1) & \HEX4_decoder|REG_4bits|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

\HEX4_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = (!\HEX4_decoder|REG_4bits|DOUT\(0) & (!\HEX4_decoder|REG_4bits|DOUT\(1) & (!\HEX4_decoder|REG_4bits|DOUT\(3) $ (\HEX4_decoder|REG_4bits|DOUT\(2))))) # (\HEX4_decoder|REG_4bits|DOUT\(0) & 
-- (!\HEX4_decoder|REG_4bits|DOUT\(3) & (!\HEX4_decoder|REG_4bits|DOUT\(1) $ (\HEX4_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

habHEX5 : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX5~combout\ = (\ROM|memROM~6_combout\ & (\habHEX5~0_combout\ & (\decoderBlock|Equal3~0_combout\ & \CPU|DECODER|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ALT_INV_habHEX5~0_combout\,
	datac => \decoderBlock|ALT_INV_Equal3~0_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	combout => \habHEX5~combout\);

\HEX5_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \habHEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_decoder|REG_4bits|DOUT\(0));

\HEX5_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \habHEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_decoder|REG_4bits|DOUT\(3));

\HEX5_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \habHEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_decoder|REG_4bits|DOUT\(1));

\HEX5_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \habHEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX5_decoder|REG_4bits|DOUT\(2));

\HEX5_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = (!\HEX5_decoder|REG_4bits|DOUT\(3) & (!\HEX5_decoder|REG_4bits|DOUT\(1) & (!\HEX5_decoder|REG_4bits|DOUT\(0) $ (!\HEX5_decoder|REG_4bits|DOUT\(2))))) # (\HEX5_decoder|REG_4bits|DOUT\(3) & 
-- (\HEX5_decoder|REG_4bits|DOUT\(0) & (!\HEX5_decoder|REG_4bits|DOUT\(1) $ (!\HEX5_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX5_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

\HEX5_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = (!\HEX5_decoder|REG_4bits|DOUT\(3) & (\HEX5_decoder|REG_4bits|DOUT\(2) & (!\HEX5_decoder|REG_4bits|DOUT\(0) $ (!\HEX5_decoder|REG_4bits|DOUT\(1))))) # (\HEX5_decoder|REG_4bits|DOUT\(3) & 
-- ((!\HEX5_decoder|REG_4bits|DOUT\(0) & ((\HEX5_decoder|REG_4bits|DOUT\(2)))) # (\HEX5_decoder|REG_4bits|DOUT\(0) & (\HEX5_decoder|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX5_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

\HEX5_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = (!\HEX5_decoder|REG_4bits|DOUT\(3) & (!\HEX5_decoder|REG_4bits|DOUT\(0) & (\HEX5_decoder|REG_4bits|DOUT\(1) & !\HEX5_decoder|REG_4bits|DOUT\(2)))) # (\HEX5_decoder|REG_4bits|DOUT\(3) & 
-- (\HEX5_decoder|REG_4bits|DOUT\(2) & ((!\HEX5_decoder|REG_4bits|DOUT\(0)) # (\HEX5_decoder|REG_4bits|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX5_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

\HEX5_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = (!\HEX5_decoder|REG_4bits|DOUT\(1) & (!\HEX5_decoder|REG_4bits|DOUT\(3) & (!\HEX5_decoder|REG_4bits|DOUT\(0) $ (!\HEX5_decoder|REG_4bits|DOUT\(2))))) # (\HEX5_decoder|REG_4bits|DOUT\(1) & 
-- ((!\HEX5_decoder|REG_4bits|DOUT\(0) & (!\HEX5_decoder|REG_4bits|DOUT\(2) & \HEX5_decoder|REG_4bits|DOUT\(3))) # (\HEX5_decoder|REG_4bits|DOUT\(0) & (\HEX5_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX5_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

\HEX5_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = (!\HEX5_decoder|REG_4bits|DOUT\(1) & ((!\HEX5_decoder|REG_4bits|DOUT\(2) & ((\HEX5_decoder|REG_4bits|DOUT\(0)))) # (\HEX5_decoder|REG_4bits|DOUT\(2) & (!\HEX5_decoder|REG_4bits|DOUT\(3))))) # 
-- (\HEX5_decoder|REG_4bits|DOUT\(1) & (!\HEX5_decoder|REG_4bits|DOUT\(3) & ((\HEX5_decoder|REG_4bits|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datab => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX5_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

\HEX5_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = (!\HEX5_decoder|REG_4bits|DOUT\(0) & (\HEX5_decoder|REG_4bits|DOUT\(1) & (!\HEX5_decoder|REG_4bits|DOUT\(2) & !\HEX5_decoder|REG_4bits|DOUT\(3)))) # (\HEX5_decoder|REG_4bits|DOUT\(0) & 
-- (!\HEX5_decoder|REG_4bits|DOUT\(3) $ (((!\HEX5_decoder|REG_4bits|DOUT\(1) & \HEX5_decoder|REG_4bits|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX5_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

\HEX5_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = (!\HEX5_decoder|REG_4bits|DOUT\(0) & (!\HEX5_decoder|REG_4bits|DOUT\(1) & (!\HEX5_decoder|REG_4bits|DOUT\(3) $ (\HEX5_decoder|REG_4bits|DOUT\(2))))) # (\HEX5_decoder|REG_4bits|DOUT\(0) & 
-- (!\HEX5_decoder|REG_4bits|DOUT\(3) & (!\HEX5_decoder|REG_4bits|DOUT\(1) $ (\HEX5_decoder|REG_4bits|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX5_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX5_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

\CPU|ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[0]~0_combout\ = (!\CPU|DECODER|operacao~1_combout\ & ((\CPU|ULA|Add0~1_sumout\))) # (\CPU|DECODER|operacao~1_combout\ & (\CPU|MUX_ULA|saida_MUX[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	combout => \CPU|ULA|saida[0]~0_combout\);

\CPU|ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[1]~1_combout\ = (!\CPU|DECODER|operacao~1_combout\ & ((\CPU|ULA|Add0~5_sumout\))) # (\CPU|DECODER|operacao~1_combout\ & (\CPU|MUX_ULA|saida_MUX[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\,
	datab => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	combout => \CPU|ULA|saida[1]~1_combout\);

\CPU|ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[2]~2_combout\ = (!\CPU|DECODER|operacao~1_combout\ & ((\CPU|ULA|Add0~9_sumout\))) # (\CPU|DECODER|operacao~1_combout\ & (\CPU|MUX_ULA|saida_MUX[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~9_sumout\,
	combout => \CPU|ULA|saida[2]~2_combout\);

\CPU|ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[3]~3_combout\ = (!\CPU|DECODER|operacao~1_combout\ & ((\CPU|ULA|Add0~13_sumout\))) # (\CPU|DECODER|operacao~1_combout\ & (\CPU|MUX_ULA|saida_MUX[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	datab => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~13_sumout\,
	combout => \CPU|ULA|saida[3]~3_combout\);

\CPU|ULA|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[4]~4_combout\ = (!\CPU|DECODER|operacao~1_combout\ & ((\CPU|ULA|Add0~17_sumout\))) # (\CPU|DECODER|operacao~1_combout\ & (\CPU|MUX_ULA|saida_MUX[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	combout => \CPU|ULA|saida[4]~4_combout\);

\CPU|ULA|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[5]~5_combout\ = (!\CPU|DECODER|operacao~1_combout\ & ((\CPU|ULA|Add0~21_sumout\))) # (\CPU|DECODER|operacao~1_combout\ & (\CPU|MUX_ULA|saida_MUX[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\,
	datab => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~21_sumout\,
	combout => \CPU|ULA|saida[5]~5_combout\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

ww_endROM(0) <= \endROM[0]~output_o\;

ww_endROM(1) <= \endROM[1]~output_o\;

ww_endROM(2) <= \endROM[2]~output_o\;

ww_endROM(3) <= \endROM[3]~output_o\;

ww_endROM(4) <= \endROM[4]~output_o\;

ww_endROM(5) <= \endROM[5]~output_o\;

ww_endROM(6) <= \endROM[6]~output_o\;

ww_endROM(7) <= \endROM[7]~output_o\;

ww_endROM(8) <= \endROM[8]~output_o\;

ww_endRAM(0) <= \endRAM[0]~output_o\;

ww_endRAM(1) <= \endRAM[1]~output_o\;

ww_endRAM(2) <= \endRAM[2]~output_o\;

ww_endRAM(3) <= \endRAM[3]~output_o\;

ww_endRAM(4) <= \endRAM[4]~output_o\;

ww_endRAM(5) <= \endRAM[5]~output_o\;

ww_valorDado(0) <= \valorDado[0]~output_o\;

ww_valorDado(1) <= \valorDado[1]~output_o\;

ww_valorDado(2) <= \valorDado[2]~output_o\;

ww_valorDado(3) <= \valorDado[3]~output_o\;

ww_valorDado(4) <= \valorDado[4]~output_o\;

ww_valorDado(5) <= \valorDado[5]~output_o\;

ww_valorDado(6) <= \valorDado[6]~output_o\;

ww_valorDado(7) <= \valorDado[7]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_teste_datain(0) <= \teste_datain[0]~output_o\;

ww_teste_datain(1) <= \teste_datain[1]~output_o\;

ww_teste_datain(2) <= \teste_datain[2]~output_o\;

ww_teste_datain(3) <= \teste_datain[3]~output_o\;

ww_teste_datain(4) <= \teste_datain[4]~output_o\;

ww_teste_datain(5) <= \teste_datain[5]~output_o\;

ww_teste_datain(6) <= \teste_datain[6]~output_o\;

ww_teste_datain(7) <= \teste_datain[7]~output_o\;

ww_teste_hab <= \teste_hab~output_o\;

ww_habFlaguinha <= \habFlaguinha~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_flaginha <= \flaginha~output_o\;

ww_ula_ain(0) <= \ula_ain[0]~output_o\;

ww_ula_ain(1) <= \ula_ain[1]~output_o\;

ww_ula_ain(2) <= \ula_ain[2]~output_o\;

ww_ula_ain(3) <= \ula_ain[3]~output_o\;

ww_ula_ain(4) <= \ula_ain[4]~output_o\;

ww_ula_ain(5) <= \ula_ain[5]~output_o\;

ww_ula_ain(6) <= \ula_ain[6]~output_o\;

ww_ula_ain(7) <= \ula_ain[7]~output_o\;

ww_ula_bin(0) <= \ula_bin[0]~output_o\;

ww_ula_bin(1) <= \ula_bin[1]~output_o\;

ww_ula_bin(2) <= \ula_bin[2]~output_o\;

ww_ula_bin(3) <= \ula_bin[3]~output_o\;

ww_ula_bin(4) <= \ula_bin[4]~output_o\;

ww_ula_bin(5) <= \ula_bin[5]~output_o\;

ww_ula_bin(6) <= \ula_bin[6]~output_o\;

ww_ula_bin(7) <= \ula_bin[7]~output_o\;

ww_ula_out(0) <= \ula_out[0]~output_o\;

ww_ula_out(1) <= \ula_out[1]~output_o\;

ww_ula_out(2) <= \ula_out[2]~output_o\;

ww_ula_out(3) <= \ula_out[3]~output_o\;

ww_ula_out(4) <= \ula_out[4]~output_o\;

ww_ula_out(5) <= \ula_out[5]~output_o\;

ww_ula_out(6) <= \ula_out[6]~output_o\;

ww_ula_out(7) <= \ula_out[7]~output_o\;
END structure;


