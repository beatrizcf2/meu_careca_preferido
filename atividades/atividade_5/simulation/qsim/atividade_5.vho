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

-- DATE "03/30/2022 16:45:19"

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

ENTITY 	dataFlow IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	RESULTADO_ULA : OUT std_logic_vector(7 DOWNTO 0);
	saidaFlag_H : OUT std_logic;
	ACUMULADOR : OUT std_logic_vector(7 DOWNTO 0);
	seletorDaULA : OUT std_logic_vector(1 DOWNTO 0);
	entradaA_ULA : OUT std_logic_vector(7 DOWNTO 0);
	entradaB_ULA : OUT std_logic_vector(7 DOWNTO 0);
	vimediatoValor : OUT std_logic_vector(7 DOWNTO 0);
	sel_MUX_t : OUT std_logic;
	habilita_flag : OUT std_logic
	);
END dataFlow;

ARCHITECTURE structure OF dataFlow IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_RESULTADO_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saidaFlag_H : std_logic;
SIGNAL ww_ACUMULADOR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seletorDaULA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_entradaA_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_entradaB_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vimediatoValor : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel_MUX_t : std_logic;
SIGNAL ww_habilita_flag : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \RESULTADO_ULA[0]~output_o\ : std_logic;
SIGNAL \RESULTADO_ULA[1]~output_o\ : std_logic;
SIGNAL \RESULTADO_ULA[2]~output_o\ : std_logic;
SIGNAL \RESULTADO_ULA[3]~output_o\ : std_logic;
SIGNAL \RESULTADO_ULA[4]~output_o\ : std_logic;
SIGNAL \RESULTADO_ULA[5]~output_o\ : std_logic;
SIGNAL \RESULTADO_ULA[6]~output_o\ : std_logic;
SIGNAL \RESULTADO_ULA[7]~output_o\ : std_logic;
SIGNAL \saidaFlag_H~output_o\ : std_logic;
SIGNAL \ACUMULADOR[0]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[1]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[2]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[3]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[4]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[5]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[6]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[7]~output_o\ : std_logic;
SIGNAL \seletorDaULA[0]~output_o\ : std_logic;
SIGNAL \seletorDaULA[1]~output_o\ : std_logic;
SIGNAL \entradaA_ULA[0]~output_o\ : std_logic;
SIGNAL \entradaA_ULA[1]~output_o\ : std_logic;
SIGNAL \entradaA_ULA[2]~output_o\ : std_logic;
SIGNAL \entradaA_ULA[3]~output_o\ : std_logic;
SIGNAL \entradaA_ULA[4]~output_o\ : std_logic;
SIGNAL \entradaA_ULA[5]~output_o\ : std_logic;
SIGNAL \entradaA_ULA[6]~output_o\ : std_logic;
SIGNAL \entradaA_ULA[7]~output_o\ : std_logic;
SIGNAL \entradaB_ULA[0]~output_o\ : std_logic;
SIGNAL \entradaB_ULA[1]~output_o\ : std_logic;
SIGNAL \entradaB_ULA[2]~output_o\ : std_logic;
SIGNAL \entradaB_ULA[3]~output_o\ : std_logic;
SIGNAL \entradaB_ULA[4]~output_o\ : std_logic;
SIGNAL \entradaB_ULA[5]~output_o\ : std_logic;
SIGNAL \entradaB_ULA[6]~output_o\ : std_logic;
SIGNAL \entradaB_ULA[7]~output_o\ : std_logic;
SIGNAL \vimediatoValor[0]~output_o\ : std_logic;
SIGNAL \vimediatoValor[1]~output_o\ : std_logic;
SIGNAL \vimediatoValor[2]~output_o\ : std_logic;
SIGNAL \vimediatoValor[3]~output_o\ : std_logic;
SIGNAL \vimediatoValor[4]~output_o\ : std_logic;
SIGNAL \vimediatoValor[5]~output_o\ : std_logic;
SIGNAL \vimediatoValor[6]~output_o\ : std_logic;
SIGNAL \vimediatoValor[7]~output_o\ : std_logic;
SIGNAL \sel_MUX_t~output_o\ : std_logic;
SIGNAL \habilita_flag~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \DECODER|saida[4]~1_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \DECODER|saida[6]~3_combout\ : std_logic;
SIGNAL \DECODER|saida[6]~0_combout\ : std_logic;
SIGNAL \ULA|Add0~34_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \DECODER|saida[5]~4_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|ram~173_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~174_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~175_combout\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~176_combout\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|ram~145_combout\ : std_logic;
SIGNAL \RAM|ram~146_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~147_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~148_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~149_combout\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|ram~150_combout\ : std_logic;
SIGNAL \RAM|ram~151_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~43_q\ : std_logic;
SIGNAL \RAM|ram~152_combout\ : std_logic;
SIGNAL \RAM|ram~153_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~154_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~155_combout\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~156_combout\ : std_logic;
SIGNAL \RAM|ram~44_q\ : std_logic;
SIGNAL \RAM|ram~157_combout\ : std_logic;
SIGNAL \RAM|ram~158_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~45_q\ : std_logic;
SIGNAL \RAM|ram~159_combout\ : std_logic;
SIGNAL \RAM|ram~160_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~161_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~162_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~163_combout\ : std_logic;
SIGNAL \RAM|ram~46_q\ : std_logic;
SIGNAL \RAM|ram~164_combout\ : std_logic;
SIGNAL \RAM|ram~165_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|ram~166_combout\ : std_logic;
SIGNAL \RAM|ram~167_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~168_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~169_combout\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|ram~170_combout\ : std_logic;
SIGNAL \RAM|ram~48_q\ : std_logic;
SIGNAL \RAM|ram~171_combout\ : std_logic;
SIGNAL \RAM|ram~172_combout\ : std_logic;
SIGNAL \MUX_ULA|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \DECODER|saida[2]~2_combout\ : std_logic;
SIGNAL \FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \FLAG|DOUT~3_combout\ : std_logic;
SIGNAL \FLAG|DOUT~4_combout\ : std_logic;
SIGNAL \FLAG|DOUT~q\ : std_logic;
SIGNAL \PC|DOUT[1]~0_combout\ : std_logic;
SIGNAL \PC_INC|Add0~2\ : std_logic;
SIGNAL \PC_INC|Add0~6\ : std_logic;
SIGNAL \PC_INC|Add0~9_sumout\ : std_logic;
SIGNAL \DECODER|Equal8~0_combout\ : std_logic;
SIGNAL \MUX_DESVIO|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \PC_INC|Add0~10\ : std_logic;
SIGNAL \PC_INC|Add0~13_sumout\ : std_logic;
SIGNAL \MUX_DESVIO|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \PC_INC|Add0~14\ : std_logic;
SIGNAL \PC_INC|Add0~18\ : std_logic;
SIGNAL \PC_INC|Add0~22\ : std_logic;
SIGNAL \PC_INC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX_DESVIO|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \PC_INC|Add0~26\ : std_logic;
SIGNAL \PC_INC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX_DESVIO|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \PC_INC|Add0~30\ : std_logic;
SIGNAL \PC_INC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \MUX_DESVIO|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \PC_INC|Add0~5_sumout\ : std_logic;
SIGNAL \MUX_DESVIO|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~1_combout\ : std_logic;
SIGNAL \PC_INC|Add0~21_sumout\ : std_logic;
SIGNAL \MUX_DESVIO|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \DECODER|Equal9~0_combout\ : std_logic;
SIGNAL \PC_INC|Add0~17_sumout\ : std_logic;
SIGNAL \MUX_DESVIO|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \PC_INC|Add0~1_sumout\ : std_logic;
SIGNAL \MUX_DESVIO|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \ULA|saida[4]~4_combout\ : std_logic;
SIGNAL \ULA|saida[5]~5_combout\ : std_logic;
SIGNAL \REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_saida[6]~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~1_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~0_combout\ : std_logic;
SIGNAL \DECODER|ALT_INV_saida[2]~2_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[7]~7_combout\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \ULA|ALT_INV_saida[6]~6_combout\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \DECODER|ALT_INV_saida[4]~1_combout\ : std_logic;
SIGNAL \MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \DECODER|ALT_INV_saida[6]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PC_INC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \PC_INC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \PC_INC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \PC_INC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \PC_INC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \PC_INC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \PC_INC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \PC_INC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \PC_INC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \REG_A|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
PC_OUT <= ww_PC_OUT;
RESULTADO_ULA <= ww_RESULTADO_ULA;
saidaFlag_H <= ww_saidaFlag_H;
ACUMULADOR <= ww_ACUMULADOR;
seletorDaULA <= ww_seletorDaULA;
entradaA_ULA <= ww_entradaA_ULA;
entradaB_ULA <= ww_entradaB_ULA;
vimediatoValor <= ww_vimediatoValor;
sel_MUX_t <= ww_sel_MUX_t;
habilita_flag <= ww_habilita_flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\FLAG|ALT_INV_DOUT~3_combout\ <= NOT \FLAG|DOUT~3_combout\;
\FLAG|ALT_INV_DOUT~2_combout\ <= NOT \FLAG|DOUT~2_combout\;
\FLAG|ALT_INV_DOUT~1_combout\ <= NOT \FLAG|DOUT~1_combout\;
\FLAG|ALT_INV_DOUT~0_combout\ <= NOT \FLAG|DOUT~0_combout\;
\DECODER|ALT_INV_saida[6]~3_combout\ <= NOT \DECODER|saida[6]~3_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\END_RETORNO|ALT_INV_DOUT\(8) <= NOT \END_RETORNO|DOUT\(8);
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\END_RETORNO|ALT_INV_DOUT\(7) <= NOT \END_RETORNO|DOUT\(7);
\END_RETORNO|ALT_INV_DOUT\(6) <= NOT \END_RETORNO|DOUT\(6);
\END_RETORNO|ALT_INV_DOUT\(5) <= NOT \END_RETORNO|DOUT\(5);
\END_RETORNO|ALT_INV_DOUT\(4) <= NOT \END_RETORNO|DOUT\(4);
\DECODER|ALT_INV_Equal9~0_combout\ <= NOT \DECODER|Equal9~0_combout\;
\END_RETORNO|ALT_INV_DOUT\(3) <= NOT \END_RETORNO|DOUT\(3);
\END_RETORNO|ALT_INV_DOUT\(2) <= NOT \END_RETORNO|DOUT\(2);
\END_RETORNO|ALT_INV_DOUT\(1) <= NOT \END_RETORNO|DOUT\(1);
\END_RETORNO|ALT_INV_DOUT\(0) <= NOT \END_RETORNO|DOUT\(0);
\PC|ALT_INV_DOUT[1]~1_combout\ <= NOT \PC|DOUT[1]~1_combout\;
\PC|ALT_INV_DOUT[1]~0_combout\ <= NOT \PC|DOUT[1]~0_combout\;
\DECODER|ALT_INV_saida[2]~2_combout\ <= NOT \DECODER|saida[2]~2_combout\;
\FLAG|ALT_INV_DOUT~q\ <= NOT \FLAG|DOUT~q\;
\ULA|ALT_INV_saida[7]~7_combout\ <= NOT \ULA|saida[7]~7_combout\;
\MUX_ULA|ALT_INV_saida_MUX[7]~8_combout\ <= NOT \MUX_ULA|saida_MUX[7]~8_combout\;
\RAM|ALT_INV_ram~172_combout\ <= NOT \RAM|ram~172_combout\;
\RAM|ALT_INV_ram~171_combout\ <= NOT \RAM|ram~171_combout\;
\RAM|ALT_INV_ram~48_q\ <= NOT \RAM|ram~48_q\;
\RAM|ALT_INV_ram~170_combout\ <= NOT \RAM|ram~170_combout\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\RAM|ALT_INV_ram~169_combout\ <= NOT \RAM|ram~169_combout\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~168_combout\ <= NOT \RAM|ram~168_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\ULA|ALT_INV_saida[6]~6_combout\ <= NOT \ULA|saida[6]~6_combout\;
\MUX_ULA|ALT_INV_saida_MUX[6]~7_combout\ <= NOT \MUX_ULA|saida_MUX[6]~7_combout\;
\RAM|ALT_INV_ram~167_combout\ <= NOT \RAM|ram~167_combout\;
\RAM|ALT_INV_ram~166_combout\ <= NOT \RAM|ram~166_combout\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\MUX_ULA|ALT_INV_saida_MUX[5]~6_combout\ <= NOT \MUX_ULA|saida_MUX[5]~6_combout\;
\RAM|ALT_INV_ram~165_combout\ <= NOT \RAM|ram~165_combout\;
\RAM|ALT_INV_ram~164_combout\ <= NOT \RAM|ram~164_combout\;
\RAM|ALT_INV_ram~46_q\ <= NOT \RAM|ram~46_q\;
\RAM|ALT_INV_ram~163_combout\ <= NOT \RAM|ram~163_combout\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~162_combout\ <= NOT \RAM|ram~162_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~161_combout\ <= NOT \RAM|ram~161_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\MUX_ULA|ALT_INV_saida_MUX[4]~5_combout\ <= NOT \MUX_ULA|saida_MUX[4]~5_combout\;
\RAM|ALT_INV_ram~160_combout\ <= NOT \RAM|ram~160_combout\;
\RAM|ALT_INV_ram~159_combout\ <= NOT \RAM|ram~159_combout\;
\RAM|ALT_INV_ram~45_q\ <= NOT \RAM|ram~45_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX_ULA|saida_MUX[4]~4_combout\;
\MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX_ULA|saida_MUX[3]~3_combout\;
\RAM|ALT_INV_ram~158_combout\ <= NOT \RAM|ram~158_combout\;
\RAM|ALT_INV_ram~157_combout\ <= NOT \RAM|ram~157_combout\;
\RAM|ALT_INV_ram~44_q\ <= NOT \RAM|ram~44_q\;
\RAM|ALT_INV_ram~156_combout\ <= NOT \RAM|ram~156_combout\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~155_combout\ <= NOT \RAM|ram~155_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~154_combout\ <= NOT \RAM|ram~154_combout\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX_ULA|saida_MUX[2]~2_combout\;
\RAM|ALT_INV_ram~153_combout\ <= NOT \RAM|ram~153_combout\;
\RAM|ALT_INV_ram~152_combout\ <= NOT \RAM|ram~152_combout\;
\RAM|ALT_INV_ram~43_q\ <= NOT \RAM|ram~43_q\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX_ULA|saida_MUX[1]~1_combout\;
\RAM|ALT_INV_ram~151_combout\ <= NOT \RAM|ram~151_combout\;
\RAM|ALT_INV_ram~150_combout\ <= NOT \RAM|ram~150_combout\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~149_combout\ <= NOT \RAM|ram~149_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~148_combout\ <= NOT \RAM|ram~148_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~147_combout\ <= NOT \RAM|ram~147_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\DECODER|ALT_INV_saida[4]~1_combout\ <= NOT \DECODER|saida[4]~1_combout\;
\MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX_ULA|saida_MUX[0]~0_combout\;
\RAM|ALT_INV_ram~146_combout\ <= NOT \RAM|ram~146_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\RAM|ALT_INV_ram~145_combout\ <= NOT \RAM|ram~145_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\DECODER|ALT_INV_saida[6]~0_combout\ <= NOT \DECODER|saida[6]~0_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\PC_INC|ALT_INV_Add0~33_sumout\ <= NOT \PC_INC|Add0~33_sumout\;
\PC_INC|ALT_INV_Add0~29_sumout\ <= NOT \PC_INC|Add0~29_sumout\;
\PC_INC|ALT_INV_Add0~25_sumout\ <= NOT \PC_INC|Add0~25_sumout\;
\PC_INC|ALT_INV_Add0~21_sumout\ <= NOT \PC_INC|Add0~21_sumout\;
\PC_INC|ALT_INV_Add0~17_sumout\ <= NOT \PC_INC|Add0~17_sumout\;
\PC_INC|ALT_INV_Add0~13_sumout\ <= NOT \PC_INC|Add0~13_sumout\;
\PC_INC|ALT_INV_Add0~9_sumout\ <= NOT \PC_INC|Add0~9_sumout\;
\PC_INC|ALT_INV_Add0~5_sumout\ <= NOT \PC_INC|Add0~5_sumout\;
\PC_INC|ALT_INV_Add0~1_sumout\ <= NOT \PC_INC|Add0~1_sumout\;
\REG_A|ALT_INV_DOUT\(7) <= NOT \REG_A|DOUT\(7);
\REG_A|ALT_INV_DOUT\(6) <= NOT \REG_A|DOUT\(6);
\REG_A|ALT_INV_DOUT\(5) <= NOT \REG_A|DOUT\(5);
\REG_A|ALT_INV_DOUT\(4) <= NOT \REG_A|DOUT\(4);
\REG_A|ALT_INV_DOUT\(3) <= NOT \REG_A|DOUT\(3);
\REG_A|ALT_INV_DOUT\(2) <= NOT \REG_A|DOUT\(2);
\REG_A|ALT_INV_DOUT\(1) <= NOT \REG_A|DOUT\(1);
\REG_A|ALT_INV_DOUT\(0) <= NOT \REG_A|DOUT\(0);
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\ULA|ALT_INV_Add0~25_sumout\ <= NOT \ULA|Add0~25_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\ULA|ALT_INV_Add0~17_sumout\ <= NOT \ULA|Add0~17_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\ULA|ALT_INV_Add0~9_sumout\ <= NOT \ULA|Add0~9_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\RESULTADO_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO_ULA[0]~output_o\);

\RESULTADO_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \RESULTADO_ULA[1]~output_o\);

\RESULTADO_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => \RESULTADO_ULA[2]~output_o\);

\RESULTADO_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => \RESULTADO_ULA[3]~output_o\);

\RESULTADO_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => \RESULTADO_ULA[4]~output_o\);

\RESULTADO_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => \RESULTADO_ULA[5]~output_o\);

\RESULTADO_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[6]~6_combout\,
	devoe => ww_devoe,
	o => \RESULTADO_ULA[6]~output_o\);

\RESULTADO_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|saida[7]~7_combout\,
	devoe => ww_devoe,
	o => \RESULTADO_ULA[7]~output_o\);

\saidaFlag_H~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FLAG|DOUT~q\,
	devoe => ww_devoe,
	o => \saidaFlag_H~output_o\);

\ACUMULADOR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(0),
	devoe => ww_devoe,
	o => \ACUMULADOR[0]~output_o\);

\ACUMULADOR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(1),
	devoe => ww_devoe,
	o => \ACUMULADOR[1]~output_o\);

\ACUMULADOR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(2),
	devoe => ww_devoe,
	o => \ACUMULADOR[2]~output_o\);

\ACUMULADOR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(3),
	devoe => ww_devoe,
	o => \ACUMULADOR[3]~output_o\);

\ACUMULADOR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(4),
	devoe => ww_devoe,
	o => \ACUMULADOR[4]~output_o\);

\ACUMULADOR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(5),
	devoe => ww_devoe,
	o => \ACUMULADOR[5]~output_o\);

\ACUMULADOR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(6),
	devoe => ww_devoe,
	o => \ACUMULADOR[6]~output_o\);

\ACUMULADOR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(7),
	devoe => ww_devoe,
	o => \ACUMULADOR[7]~output_o\);

\seletorDaULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seletorDaULA[0]~output_o\);

\seletorDaULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|saida[4]~1_combout\,
	devoe => ww_devoe,
	o => \seletorDaULA[1]~output_o\);

\entradaA_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(0),
	devoe => ww_devoe,
	o => \entradaA_ULA[0]~output_o\);

\entradaA_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(1),
	devoe => ww_devoe,
	o => \entradaA_ULA[1]~output_o\);

\entradaA_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(2),
	devoe => ww_devoe,
	o => \entradaA_ULA[2]~output_o\);

\entradaA_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(3),
	devoe => ww_devoe,
	o => \entradaA_ULA[3]~output_o\);

\entradaA_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(4),
	devoe => ww_devoe,
	o => \entradaA_ULA[4]~output_o\);

\entradaA_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(5),
	devoe => ww_devoe,
	o => \entradaA_ULA[5]~output_o\);

\entradaA_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(6),
	devoe => ww_devoe,
	o => \entradaA_ULA[6]~output_o\);

\entradaA_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|DOUT\(7),
	devoe => ww_devoe,
	o => \entradaA_ULA[7]~output_o\);

\entradaB_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ULA|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => \entradaB_ULA[0]~output_o\);

\entradaB_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ULA|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => \entradaB_ULA[1]~output_o\);

\entradaB_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ULA|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => \entradaB_ULA[2]~output_o\);

\entradaB_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ULA|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => \entradaB_ULA[3]~output_o\);

\entradaB_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ULA|saida_MUX[4]~5_combout\,
	devoe => ww_devoe,
	o => \entradaB_ULA[4]~output_o\);

\entradaB_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ULA|saida_MUX[5]~6_combout\,
	devoe => ww_devoe,
	o => \entradaB_ULA[5]~output_o\);

\entradaB_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ULA|saida_MUX[6]~7_combout\,
	devoe => ww_devoe,
	o => \entradaB_ULA[6]~output_o\);

\entradaB_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ULA|saida_MUX[7]~8_combout\,
	devoe => ww_devoe,
	o => \entradaB_ULA[7]~output_o\);

\vimediatoValor[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \vimediatoValor[0]~output_o\);

\vimediatoValor[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => \vimediatoValor[1]~output_o\);

\vimediatoValor[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~7_combout\,
	devoe => ww_devoe,
	o => \vimediatoValor[2]~output_o\);

\vimediatoValor[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => \vimediatoValor[3]~output_o\);

\vimediatoValor[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vimediatoValor[4]~output_o\);

\vimediatoValor[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vimediatoValor[5]~output_o\);

\vimediatoValor[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vimediatoValor[6]~output_o\);

\vimediatoValor[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vimediatoValor[7]~output_o\);

\sel_MUX_t~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|saida[6]~0_combout\,
	devoe => ww_devoe,
	o => \sel_MUX_t~output_o\);

\habilita_flag~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => \habilita_flag~output_o\);

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
-- \ROM|memROM~7_combout\ = ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & (!\PC|DOUT\(1) $ (\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(3)) # (\PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001000010010000000000000000001100010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (!\PC|DOUT\(0) $ (!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(0) & (!\PC|DOUT\(1))) # (\PC|DOUT\(0) & ((\PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) # (\PC|DOUT\(0) & (\PC|DOUT\(1) & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(0) $ ((!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(0))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\DECODER|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|saida[4]~1_combout\ = ( \ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) ) # ( !\ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~2_combout\ & 
-- (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000010000000000000000010000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER|saida[4]~1_combout\);

\MUX_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[4]~4_combout\ = ( \ROM|memROM~5_combout\ & ( (!\ROM|memROM~0_combout\) # (((\ROM|memROM~4_combout\) # (\ROM|memROM~3_combout\)) # (\ROM|memROM~2_combout\)) ) ) # ( !\ROM|memROM~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101111111111111111111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \MUX_ULA|saida_MUX[4]~4_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~10_combout\);

\DECODER|saida[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|saida[6]~3_combout\ = ( \ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER|saida[6]~3_combout\);

\DECODER|saida[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|saida[6]~0_combout\ = ( \ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER|saida[6]~0_combout\);

\ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA|Add0~34_cout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( (!\DECODER|saida[6]~0_combout\ & ((!\RAM|ram~146_combout\))) # (\DECODER|saida[6]~0_combout\ & (!\ROM|memROM~1_combout\)) ) + ( \REG_A|DOUT\(0) ) + ( \ULA|Add0~34_cout\ ))
-- \ULA|Add0~2\ = CARRY(( (!\DECODER|saida[6]~0_combout\ & ((!\RAM|ram~146_combout\))) # (\DECODER|saida[6]~0_combout\ & (!\ROM|memROM~1_combout\)) ) + ( \REG_A|DOUT\(0) ) + ( \ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER|ALT_INV_saida[6]~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \RAM|ALT_INV_ram~146_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(0),
	cin => \ULA|Add0~34_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[0]~0_combout\ = (!\DECODER|saida[6]~0_combout\ & ((\RAM|ram~146_combout\))) # (\DECODER|saida[6]~0_combout\ & (\ROM|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \DECODER|ALT_INV_saida[6]~0_combout\,
	datac => \RAM|ALT_INV_ram~146_combout\,
	combout => \MUX_ULA|saida_MUX[0]~0_combout\);

\DECODER|saida[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|saida[5]~4_combout\ = ( \ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) ) # ( !\ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~4_combout\ & 
-- ((\ROM|memROM~3_combout\) # (\ROM|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000000010000000000000000010101000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER|saida[5]~4_combout\);

\REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~1_sumout\,
	asdata => \MUX_ULA|saida_MUX[0]~0_combout\,
	sload => \DECODER|saida[4]~1_combout\,
	ena => \DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(0));

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT\(3) & (\PC|DOUT\(2) & (\PC|DOUT\(1) & !\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|process_0~0_combout\);

\RAM|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~173_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~173_combout\);

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \RAM|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~174_combout\ = ( \RAM|process_0~0_combout\ & ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~174_combout\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~175_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~1_combout\ & (\ROM|memROM~6_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~175_combout\);

\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

\RAM|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~176_combout\ = ( \RAM|process_0~0_combout\ & ( (\ROM|memROM~1_combout\ & (\ROM|memROM~6_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~176_combout\);

\RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(0),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~41_q\);

\RAM|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~145_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~41_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~33_q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~25_q\ 
-- ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datab => \RAM|ALT_INV_ram~25_q\,
	datac => \RAM|ALT_INV_ram~33_q\,
	datad => \RAM|ALT_INV_ram~41_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~145_combout\);

\RAM|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~146_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~145_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~146_combout\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( (!\DECODER|saida[6]~0_combout\ & ((!\RAM|ram~151_combout\))) # (\DECODER|saida[6]~0_combout\ & (!\ROM|memROM~6_combout\)) ) + ( \REG_A|DOUT\(1) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( (!\DECODER|saida[6]~0_combout\ & ((!\RAM|ram~151_combout\))) # (\DECODER|saida[6]~0_combout\ & (!\ROM|memROM~6_combout\)) ) + ( \REG_A|DOUT\(1) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER|ALT_INV_saida[6]~0_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~151_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(1),
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\MUX_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[1]~1_combout\ = (!\DECODER|saida[6]~0_combout\ & ((\RAM|ram~151_combout\))) # (\DECODER|saida[6]~0_combout\ & (\ROM|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[6]~0_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~151_combout\,
	combout => \MUX_ULA|saida_MUX[1]~1_combout\);

\REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~5_sumout\,
	asdata => \MUX_ULA|saida_MUX[1]~1_combout\,
	sload => \DECODER|saida[4]~1_combout\,
	ena => \DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(1));

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \RAM|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~147_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~147_combout\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~148_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~26_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~148_combout\);

\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

\RAM|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~149_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~34_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~149_combout\);

\RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(1),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~42_q\);

\RAM|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~150_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~42_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~150_combout\);

\RAM|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~151_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~150_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~149_combout\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( 
-- \RAM|ram~148_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~147_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~147_combout\,
	datab => \RAM|ALT_INV_ram~148_combout\,
	datac => \RAM|ALT_INV_ram~149_combout\,
	datad => \RAM|ALT_INV_ram~150_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~151_combout\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( (!\DECODER|saida[6]~0_combout\ & ((!\RAM|ram~153_combout\))) # (\DECODER|saida[6]~0_combout\ & (!\ROM|memROM~7_combout\)) ) + ( \REG_A|DOUT\(2) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( (!\DECODER|saida[6]~0_combout\ & ((!\RAM|ram~153_combout\))) # (\DECODER|saida[6]~0_combout\ & (!\ROM|memROM~7_combout\)) ) + ( \REG_A|DOUT\(2) ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER|ALT_INV_saida[6]~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_ram~153_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(2),
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\MUX_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[2]~2_combout\ = (!\DECODER|saida[6]~0_combout\ & ((\RAM|ram~153_combout\))) # (\DECODER|saida[6]~0_combout\ & (\ROM|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[6]~0_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~153_combout\,
	combout => \MUX_ULA|saida_MUX[2]~2_combout\);

\REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~9_sumout\,
	asdata => \MUX_ULA|saida_MUX[2]~2_combout\,
	sload => \DECODER|saida[4]~1_combout\,
	ena => \DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(2));

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \RAM|ram~173_combout\,
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
	d => \REG_A|DOUT\(2),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

\RAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(2),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~43_q\);

\RAM|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~152_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~43_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~35_q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~27_q\ 
-- ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datab => \RAM|ALT_INV_ram~27_q\,
	datac => \RAM|ALT_INV_ram~35_q\,
	datad => \RAM|ALT_INV_ram~43_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~152_combout\);

\RAM|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~153_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~152_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~152_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~153_combout\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( (!\DECODER|saida[6]~0_combout\ & ((!\RAM|ram~158_combout\))) # (\DECODER|saida[6]~0_combout\ & (!\ROM|memROM~8_combout\)) ) + ( \REG_A|DOUT\(3) ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( (!\DECODER|saida[6]~0_combout\ & ((!\RAM|ram~158_combout\))) # (\DECODER|saida[6]~0_combout\ & (!\ROM|memROM~8_combout\)) ) + ( \REG_A|DOUT\(3) ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER|ALT_INV_saida[6]~0_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \RAM|ALT_INV_ram~158_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(3),
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\MUX_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[3]~3_combout\ = (!\DECODER|saida[6]~0_combout\ & ((\RAM|ram~158_combout\))) # (\DECODER|saida[6]~0_combout\ & (\ROM|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[6]~0_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \RAM|ALT_INV_ram~158_combout\,
	combout => \MUX_ULA|saida_MUX[3]~3_combout\);

\REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~13_sumout\,
	asdata => \MUX_ULA|saida_MUX[3]~3_combout\,
	sload => \DECODER|saida[4]~1_combout\,
	ena => \DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(3));

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \RAM|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~154_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~154_combout\);

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~155_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~155_combout\);

\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

\RAM|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~156_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~36_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~156_combout\);

\RAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(3),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~44_q\);

\RAM|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~157_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~44_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~157_combout\);

\RAM|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~158_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~157_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~156_combout\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( 
-- \RAM|ram~155_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~154_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~154_combout\,
	datab => \RAM|ALT_INV_ram~155_combout\,
	datac => \RAM|ALT_INV_ram~156_combout\,
	datad => \RAM|ALT_INV_ram~157_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~158_combout\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( (!\MUX_ULA|saida_MUX[4]~4_combout\) # (!\RAM|ram~160_combout\) ) + ( \REG_A|DOUT\(4) ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( (!\MUX_ULA|saida_MUX[4]~4_combout\) # (!\RAM|ram~160_combout\) ) + ( \REG_A|DOUT\(4) ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datad => \RAM|ALT_INV_ram~160_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(4),
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\MUX_ULA|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[4]~5_combout\ = (\MUX_ULA|saida_MUX[4]~4_combout\ & \RAM|ram~160_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \RAM|ALT_INV_ram~160_combout\,
	combout => \MUX_ULA|saida_MUX[4]~5_combout\);

\REG_A|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~17_sumout\,
	asdata => \MUX_ULA|saida_MUX[4]~5_combout\,
	sload => \DECODER|saida[4]~1_combout\,
	ena => \DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(4));

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \RAM|ram~173_combout\,
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
	d => \REG_A|DOUT\(4),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

\RAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(4),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~45_q\);

\RAM|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~159_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~45_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~37_q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~29_q\ 
-- ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datab => \RAM|ALT_INV_ram~29_q\,
	datac => \RAM|ALT_INV_ram~37_q\,
	datad => \RAM|ALT_INV_ram~45_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~159_combout\);

\RAM|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~160_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~159_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~160_combout\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( (!\RAM|ram~165_combout\) # ((!\ROM|memROM~10_combout\ & \DECODER|saida[6]~3_combout\)) ) + ( \REG_A|DOUT\(5) ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( (!\RAM|ram~165_combout\) # ((!\ROM|memROM~10_combout\ & \DECODER|saida[6]~3_combout\)) ) + ( \REG_A|DOUT\(5) ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~165_combout\,
	datad => \DECODER|ALT_INV_saida[6]~3_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(5),
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\MUX_ULA|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[5]~6_combout\ = (\MUX_ULA|saida_MUX[4]~4_combout\ & \RAM|ram~165_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \RAM|ALT_INV_ram~165_combout\,
	combout => \MUX_ULA|saida_MUX[5]~6_combout\);

\REG_A|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~21_sumout\,
	asdata => \MUX_ULA|saida_MUX[5]~6_combout\,
	sload => \DECODER|saida[4]~1_combout\,
	ena => \DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(5));

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \RAM|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~161_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~161_combout\);

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~162_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~162_combout\);

\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

\RAM|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~163_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~38_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~163_combout\);

\RAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(5),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~46_q\);

\RAM|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~164_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~46_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~164_combout\);

\RAM|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~165_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~164_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~163_combout\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( 
-- \RAM|ram~162_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~161_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~161_combout\,
	datab => \RAM|ALT_INV_ram~162_combout\,
	datac => \RAM|ALT_INV_ram~163_combout\,
	datad => \RAM|ALT_INV_ram~164_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~165_combout\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( (!\RAM|ram~167_combout\) # ((!\ROM|memROM~10_combout\ & \DECODER|saida[6]~3_combout\)) ) + ( \REG_A|DOUT\(6) ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( (!\RAM|ram~167_combout\) # ((!\ROM|memROM~10_combout\ & \DECODER|saida[6]~3_combout\)) ) + ( \REG_A|DOUT\(6) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~167_combout\,
	datad => \DECODER|ALT_INV_saida[6]~3_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(6),
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\REG_A|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~25_sumout\,
	asdata => \MUX_ULA|saida_MUX[6]~7_combout\,
	sload => \DECODER|saida[4]~1_combout\,
	ena => \DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(6));

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \RAM|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~39_q\);

\RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(6),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~47_q\);

\RAM|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~166_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~47_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~39_q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~31_q\ 
-- ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datab => \RAM|ALT_INV_ram~31_q\,
	datac => \RAM|ALT_INV_ram~39_q\,
	datad => \RAM|ALT_INV_ram~47_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~166_combout\);

\RAM|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~167_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~166_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~166_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~167_combout\);

\MUX_ULA|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[6]~7_combout\ = (\MUX_ULA|saida_MUX[4]~4_combout\ & \RAM|ram~167_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \RAM|ALT_INV_ram~167_combout\,
	combout => \MUX_ULA|saida_MUX[6]~7_combout\);

\ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[6]~6_combout\ = (!\DECODER|saida[4]~1_combout\ & ((\ULA|Add0~25_sumout\))) # (\DECODER|saida[4]~1_combout\ & (\MUX_ULA|saida_MUX[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[4]~1_combout\,
	datab => \MUX_ULA|ALT_INV_saida_MUX[6]~7_combout\,
	datac => \ULA|ALT_INV_Add0~25_sumout\,
	combout => \ULA|saida[6]~6_combout\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( (!\RAM|ram~172_combout\) # ((\DECODER|saida[6]~3_combout\ & !\ROM|memROM~10_combout\)) ) + ( \REG_A|DOUT\(7) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER|ALT_INV_saida[6]~3_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~172_combout\,
	dataf => \REG_A|ALT_INV_DOUT\(7),
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\);

\REG_A|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|Add0~29_sumout\,
	asdata => \MUX_ULA|saida_MUX[7]~8_combout\,
	sload => \DECODER|saida[4]~1_combout\,
	ena => \DECODER|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DOUT\(7));

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \RAM|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~168_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~168_combout\);

\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

\RAM|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~169_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~32_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~169_combout\);

\RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~40_q\);

\RAM|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~170_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~40_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~170_combout\);

\RAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG_A|DOUT\(7),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~48_q\);

\RAM|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~171_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~48_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~171_combout\);

\RAM|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~172_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~171_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM|ram~170_combout\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( 
-- \RAM|ram~169_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~168_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~168_combout\,
	datab => \RAM|ALT_INV_ram~169_combout\,
	datac => \RAM|ALT_INV_ram~170_combout\,
	datad => \RAM|ALT_INV_ram~171_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~172_combout\);

\MUX_ULA|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_ULA|saida_MUX[7]~8_combout\ = (\MUX_ULA|saida_MUX[4]~4_combout\ & \RAM|ram~172_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \RAM|ALT_INV_ram~172_combout\,
	combout => \MUX_ULA|saida_MUX[7]~8_combout\);

\ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[7]~7_combout\ = (!\DECODER|saida[4]~1_combout\ & ((\ULA|Add0~29_sumout\))) # (\DECODER|saida[4]~1_combout\ & (\MUX_ULA|saida_MUX[7]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[4]~1_combout\,
	datab => \MUX_ULA|ALT_INV_saida_MUX[7]~8_combout\,
	datac => \ULA|ALT_INV_Add0~29_sumout\,
	combout => \ULA|saida[7]~7_combout\);

\DECODER|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|saida[2]~2_combout\ = ( !\ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER|saida[2]~2_combout\);

\FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~0_combout\ = (\FLAG|DOUT~q\ & !\DECODER|saida[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG|ALT_INV_DOUT~q\,
	datab => \DECODER|ALT_INV_saida[2]~2_combout\,
	combout => \FLAG|DOUT~0_combout\);

\FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~1_combout\ = ( \ULA|Add0~5_sumout\ & ( \DECODER|saida[2]~2_combout\ & ( (!\MUX_ULA|saida_MUX[0]~0_combout\ & (\DECODER|saida[4]~1_combout\ & !\MUX_ULA|saida_MUX[1]~1_combout\)) ) ) ) # ( !\ULA|Add0~5_sumout\ & ( \DECODER|saida[2]~2_combout\ & ( 
-- (!\DECODER|saida[4]~1_combout\ & (((!\ULA|Add0~1_sumout\)))) # (\DECODER|saida[4]~1_combout\ & (!\MUX_ULA|saida_MUX[0]~0_combout\ & ((!\MUX_ULA|saida_MUX[1]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011100010110000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \DECODER|ALT_INV_saida[4]~1_combout\,
	datac => \ULA|ALT_INV_Add0~1_sumout\,
	datad => \MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \ULA|ALT_INV_Add0~5_sumout\,
	dataf => \DECODER|ALT_INV_saida[2]~2_combout\,
	combout => \FLAG|DOUT~1_combout\);

\FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~2_combout\ = ( \ULA|Add0~21_sumout\ & ( (\DECODER|saida[4]~1_combout\ & (!\MUX_ULA|saida_MUX[4]~5_combout\ & !\MUX_ULA|saida_MUX[5]~6_combout\)) ) ) # ( !\ULA|Add0~21_sumout\ & ( (!\DECODER|saida[4]~1_combout\ & (((!\ULA|Add0~17_sumout\)))) # 
-- (\DECODER|saida[4]~1_combout\ & (!\MUX_ULA|saida_MUX[4]~5_combout\ & ((!\MUX_ULA|saida_MUX[5]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010010100000010001000000000011100100101000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[4]~1_combout\,
	datab => \MUX_ULA|ALT_INV_saida_MUX[4]~5_combout\,
	datac => \ULA|ALT_INV_Add0~17_sumout\,
	datad => \MUX_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	datae => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \FLAG|DOUT~2_combout\);

\FLAG|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~3_combout\ = ( \ULA|Add0~13_sumout\ & ( (\DECODER|saida[4]~1_combout\ & (!\MUX_ULA|saida_MUX[2]~2_combout\ & !\MUX_ULA|saida_MUX[3]~3_combout\)) ) ) # ( !\ULA|Add0~13_sumout\ & ( (!\DECODER|saida[4]~1_combout\ & (((!\ULA|Add0~9_sumout\)))) # 
-- (\DECODER|saida[4]~1_combout\ & (!\MUX_ULA|saida_MUX[2]~2_combout\ & ((!\MUX_ULA|saida_MUX[3]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010010100000010001000000000011100100101000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[4]~1_combout\,
	datab => \MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \ULA|ALT_INV_Add0~9_sumout\,
	datad => \MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \FLAG|DOUT~3_combout\);

\FLAG|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~4_combout\ = ( \FLAG|DOUT~2_combout\ & ( \FLAG|DOUT~3_combout\ & ( ((!\ULA|saida[6]~6_combout\ & (!\ULA|saida[7]~7_combout\ & \FLAG|DOUT~1_combout\))) # (\FLAG|DOUT~0_combout\) ) ) ) # ( !\FLAG|DOUT~2_combout\ & ( \FLAG|DOUT~3_combout\ & ( 
-- \FLAG|DOUT~0_combout\ ) ) ) # ( \FLAG|DOUT~2_combout\ & ( !\FLAG|DOUT~3_combout\ & ( \FLAG|DOUT~0_combout\ ) ) ) # ( !\FLAG|DOUT~2_combout\ & ( !\FLAG|DOUT~3_combout\ & ( \FLAG|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_saida[6]~6_combout\,
	datab => \ULA|ALT_INV_saida[7]~7_combout\,
	datac => \FLAG|ALT_INV_DOUT~0_combout\,
	datad => \FLAG|ALT_INV_DOUT~1_combout\,
	datae => \FLAG|ALT_INV_DOUT~2_combout\,
	dataf => \FLAG|ALT_INV_DOUT~3_combout\,
	combout => \FLAG|DOUT~4_combout\);

\FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FLAG|DOUT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG|DOUT~q\);

\PC|DOUT[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[1]~0_combout\ = ( \ROM|memROM~5_combout\ & ( \FLAG|DOUT~q\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\)) ) ) ) # ( !\ROM|memROM~5_combout\ & ( \FLAG|DOUT~q\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ 
-- & (!\ROM|memROM~2_combout\ $ (!\ROM|memROM~3_combout\)))) ) ) ) # ( \ROM|memROM~5_combout\ & ( !\FLAG|DOUT~q\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) ) ) # ( !\ROM|memROM~5_combout\ & 
-- ( !\FLAG|DOUT~q\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~2_combout\ $ (!\ROM|memROM~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000001000000000000000000000101000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \FLAG|ALT_INV_DOUT~q\,
	combout => \PC|DOUT[1]~0_combout\);

\PC_INC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_INC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \PC_INC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \PC_INC|Add0~1_sumout\,
	cout => \PC_INC|Add0~2\);

\PC_INC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_INC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \PC_INC|Add0~2\ ))
-- \PC_INC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \PC_INC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \PC_INC|Add0~2\,
	sumout => \PC_INC|Add0~5_sumout\,
	cout => \PC_INC|Add0~6\);

\PC_INC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_INC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \PC_INC|Add0~6\ ))
-- \PC_INC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \PC_INC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \PC_INC|Add0~6\,
	sumout => \PC_INC|Add0~9_sumout\,
	cout => \PC_INC|Add0~10\);

\DECODER|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal8~0_combout\ = ( !\ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER|Equal8~0_combout\);

\END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC_INC|Add0~9_sumout\,
	ena => \DECODER|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(2));

\MUX_DESVIO|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_DESVIO|saida_MUX[2]~2_combout\ = ( \END_RETORNO|DOUT\(2) & ( (!\PC|DOUT[1]~0_combout\ & (((\PC_INC|Add0~9_sumout\)))) # (\PC|DOUT[1]~0_combout\ & (((!\PC|DOUT[1]~1_combout\)) # (\ROM|memROM~7_combout\))) ) ) # ( !\END_RETORNO|DOUT\(2) & ( 
-- (!\PC|DOUT[1]~0_combout\ & (((\PC_INC|Add0~9_sumout\)))) # (\PC|DOUT[1]~0_combout\ & (\ROM|memROM~7_combout\ & (\PC|DOUT[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \PC|ALT_INV_DOUT[1]~0_combout\,
	datac => \PC|ALT_INV_DOUT[1]~1_combout\,
	datad => \PC_INC|ALT_INV_Add0~9_sumout\,
	datae => \END_RETORNO|ALT_INV_DOUT\(2),
	combout => \MUX_DESVIO|saida_MUX[2]~2_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_DESVIO|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT\(0) & (((!\PC|DOUT\(2) & !\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & (\PC|DOUT\(2) & \PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000010000000000000000001010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~8_combout\);

\PC_INC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_INC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \PC_INC|Add0~10\ ))
-- \PC_INC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \PC_INC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \PC_INC|Add0~10\,
	sumout => \PC_INC|Add0~13_sumout\,
	cout => \PC_INC|Add0~14\);

\END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC_INC|Add0~13_sumout\,
	ena => \DECODER|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(3));

\MUX_DESVIO|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_DESVIO|saida_MUX[3]~3_combout\ = ( \END_RETORNO|DOUT\(3) & ( (!\PC|DOUT[1]~0_combout\ & (((\PC_INC|Add0~13_sumout\)))) # (\PC|DOUT[1]~0_combout\ & (((!\PC|DOUT[1]~1_combout\)) # (\ROM|memROM~8_combout\))) ) ) # ( !\END_RETORNO|DOUT\(3) & ( 
-- (!\PC|DOUT[1]~0_combout\ & (((\PC_INC|Add0~13_sumout\)))) # (\PC|DOUT[1]~0_combout\ & (\ROM|memROM~8_combout\ & (\PC|DOUT[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \PC|ALT_INV_DOUT[1]~0_combout\,
	datac => \PC|ALT_INV_DOUT[1]~1_combout\,
	datad => \PC_INC|ALT_INV_Add0~13_sumout\,
	datae => \END_RETORNO|ALT_INV_DOUT\(3),
	combout => \MUX_DESVIO|saida_MUX[3]~3_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_DESVIO|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\PC_INC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_INC|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \PC_INC|Add0~14\ ))
-- \PC_INC|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \PC_INC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \PC_INC|Add0~14\,
	sumout => \PC_INC|Add0~17_sumout\,
	cout => \PC_INC|Add0~18\);

\PC_INC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_INC|Add0~21_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \PC_INC|Add0~18\ ))
-- \PC_INC|Add0~22\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \PC_INC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \PC_INC|Add0~18\,
	sumout => \PC_INC|Add0~21_sumout\,
	cout => \PC_INC|Add0~22\);

\PC_INC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_INC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \PC_INC|Add0~22\ ))
-- \PC_INC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \PC_INC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \PC_INC|Add0~22\,
	sumout => \PC_INC|Add0~25_sumout\,
	cout => \PC_INC|Add0~26\);

\END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC_INC|Add0~25_sumout\,
	ena => \DECODER|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(6));

\MUX_DESVIO|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_DESVIO|saida_MUX[6]~6_combout\ = (!\PC|DOUT[1]~1_combout\ & ((!\DECODER|Equal9~0_combout\ & ((\PC_INC|Add0~25_sumout\))) # (\DECODER|Equal9~0_combout\ & (\END_RETORNO|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal9~0_combout\,
	datab => \PC|ALT_INV_DOUT[1]~1_combout\,
	datac => \END_RETORNO|ALT_INV_DOUT\(6),
	datad => \PC_INC|ALT_INV_Add0~25_sumout\,
	combout => \MUX_DESVIO|saida_MUX[6]~6_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_DESVIO|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\PC_INC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_INC|Add0~29_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \PC_INC|Add0~26\ ))
-- \PC_INC|Add0~30\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \PC_INC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \PC_INC|Add0~26\,
	sumout => \PC_INC|Add0~29_sumout\,
	cout => \PC_INC|Add0~30\);

\END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC_INC|Add0~29_sumout\,
	ena => \DECODER|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(7));

\MUX_DESVIO|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_DESVIO|saida_MUX[7]~7_combout\ = (!\PC|DOUT[1]~1_combout\ & ((!\DECODER|Equal9~0_combout\ & ((\PC_INC|Add0~29_sumout\))) # (\DECODER|Equal9~0_combout\ & (\END_RETORNO|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal9~0_combout\,
	datab => \PC|ALT_INV_DOUT[1]~1_combout\,
	datac => \END_RETORNO|ALT_INV_DOUT\(7),
	datad => \PC_INC|ALT_INV_Add0~29_sumout\,
	combout => \MUX_DESVIO|saida_MUX[7]~7_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_DESVIO|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\PC_INC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_INC|Add0~33_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \PC_INC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \PC_INC|Add0~30\,
	sumout => \PC_INC|Add0~33_sumout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\PC|DOUT\(0) & (\PC|DOUT\(1) & (\PC|DOUT\(2) & !\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

\END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC_INC|Add0~33_sumout\,
	ena => \DECODER|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(8));

\MUX_DESVIO|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_DESVIO|saida_MUX[8]~8_combout\ = ( \ROM|memROM~9_combout\ & ( \END_RETORNO|DOUT\(8) & ( (!\PC|DOUT[1]~0_combout\ & (((\PC_INC|Add0~33_sumout\)))) # (\PC|DOUT[1]~0_combout\ & (((!\PC|DOUT[1]~1_combout\)) # (\ROM|memROM~0_combout\))) ) ) ) # ( 
-- !\ROM|memROM~9_combout\ & ( \END_RETORNO|DOUT\(8) & ( (!\PC|DOUT[1]~0_combout\ & ((\PC_INC|Add0~33_sumout\))) # (\PC|DOUT[1]~0_combout\ & (!\PC|DOUT[1]~1_combout\)) ) ) ) # ( \ROM|memROM~9_combout\ & ( !\END_RETORNO|DOUT\(8) & ( (!\PC|DOUT[1]~0_combout\ & 
-- (((\PC_INC|Add0~33_sumout\)))) # (\PC|DOUT[1]~0_combout\ & (\ROM|memROM~0_combout\ & (\PC|DOUT[1]~1_combout\))) ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\END_RETORNO|DOUT\(8) & ( (!\PC|DOUT[1]~0_combout\ & \PC_INC|Add0~33_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000011100110100110000111111000011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[1]~0_combout\,
	datac => \PC|ALT_INV_DOUT[1]~1_combout\,
	datad => \PC_INC|ALT_INV_Add0~33_sumout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \END_RETORNO|ALT_INV_DOUT\(8),
	combout => \MUX_DESVIO|saida_MUX[8]~8_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_DESVIO|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100000001000100010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~12_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( !\PC|DOUT\(8) & ( \ROM|memROM~12_combout\ & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \ROM|memROM~6_combout\);

\END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC_INC|Add0~5_sumout\,
	ena => \DECODER|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(1));

\MUX_DESVIO|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_DESVIO|saida_MUX[1]~1_combout\ = ( \END_RETORNO|DOUT\(1) & ( (!\PC|DOUT[1]~0_combout\ & (((\PC_INC|Add0~5_sumout\)))) # (\PC|DOUT[1]~0_combout\ & (((!\PC|DOUT[1]~1_combout\)) # (\ROM|memROM~6_combout\))) ) ) # ( !\END_RETORNO|DOUT\(1) & ( 
-- (!\PC|DOUT[1]~0_combout\ & (((\PC_INC|Add0~5_sumout\)))) # (\PC|DOUT[1]~0_combout\ & (\ROM|memROM~6_combout\ & (\PC|DOUT[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \PC|ALT_INV_DOUT[1]~0_combout\,
	datac => \PC|ALT_INV_DOUT[1]~1_combout\,
	datad => \PC_INC|ALT_INV_Add0~5_sumout\,
	datae => \END_RETORNO|ALT_INV_DOUT\(1),
	combout => \MUX_DESVIO|saida_MUX[1]~1_combout\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_DESVIO|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(3) $ (((!\PC|DOUT\(1) & \PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000001000101000100000100010100010000010001010001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~2_combout\);

\PC|DOUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[1]~1_combout\ = ( \ROM|memROM~5_combout\ & ( \FLAG|DOUT~q\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\)) ) ) ) # ( !\ROM|memROM~5_combout\ & ( \FLAG|DOUT~q\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~2_combout\ 
-- & (!\ROM|memROM~3_combout\ & \ROM|memROM~4_combout\))) ) ) ) # ( \ROM|memROM~5_combout\ & ( !\FLAG|DOUT~q\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) ) ) # ( !\ROM|memROM~5_combout\ & ( 
-- !\FLAG|DOUT~q\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000001000000000000000000000100000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \FLAG|ALT_INV_DOUT~q\,
	combout => \PC|DOUT[1]~1_combout\);

\END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC_INC|Add0~21_sumout\,
	ena => \DECODER|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(5));

\MUX_DESVIO|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_DESVIO|saida_MUX[5]~5_combout\ = (!\PC|DOUT[1]~1_combout\ & ((!\DECODER|Equal9~0_combout\ & ((\PC_INC|Add0~21_sumout\))) # (\DECODER|Equal9~0_combout\ & (\END_RETORNO|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal9~0_combout\,
	datab => \PC|ALT_INV_DOUT[1]~1_combout\,
	datac => \END_RETORNO|ALT_INV_DOUT\(5),
	datad => \PC_INC|ALT_INV_Add0~21_sumout\,
	combout => \MUX_DESVIO|saida_MUX[5]~5_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_DESVIO|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT\(8) & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~0_combout\);

\DECODER|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal9~0_combout\ = ( !\ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~2_combout\ & (\ROM|memROM~3_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DECODER|Equal9~0_combout\);

\END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC_INC|Add0~17_sumout\,
	ena => \DECODER|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(4));

\MUX_DESVIO|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_DESVIO|saida_MUX[4]~4_combout\ = (!\PC|DOUT[1]~1_combout\ & ((!\DECODER|Equal9~0_combout\ & ((\PC_INC|Add0~17_sumout\))) # (\DECODER|Equal9~0_combout\ & (\END_RETORNO|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_Equal9~0_combout\,
	datab => \PC|ALT_INV_DOUT[1]~1_combout\,
	datac => \END_RETORNO|ALT_INV_DOUT\(4),
	datad => \PC_INC|ALT_INV_Add0~17_sumout\,
	combout => \MUX_DESVIO|saida_MUX[4]~4_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_DESVIO|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\PC|DOUT\(1) & ((!\PC|DOUT\(3) & (\PC|DOUT\(0))) # (\PC|DOUT\(3) & ((\PC|DOUT\(2)))))) # (\PC|DOUT\(1) & (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000001100011001000000110001100100000011000110010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\PC|DOUT\(8) & ( \ROM|memROM~11_combout\ & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~1_combout\);

\END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC_INC|Add0~1_sumout\,
	ena => \DECODER|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(0));

\MUX_DESVIO|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_DESVIO|saida_MUX[0]~0_combout\ = ( \END_RETORNO|DOUT\(0) & ( (!\PC|DOUT[1]~0_combout\ & (((\PC_INC|Add0~1_sumout\)))) # (\PC|DOUT[1]~0_combout\ & (((!\PC|DOUT[1]~1_combout\)) # (\ROM|memROM~1_combout\))) ) ) # ( !\END_RETORNO|DOUT\(0) & ( 
-- (!\PC|DOUT[1]~0_combout\ & (((\PC_INC|Add0~1_sumout\)))) # (\PC|DOUT[1]~0_combout\ & (\ROM|memROM~1_combout\ & ((\PC|DOUT[1]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001111110011010100110000001101010011111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \PC_INC|ALT_INV_Add0~1_sumout\,
	datac => \PC|ALT_INV_DOUT[1]~0_combout\,
	datad => \PC|ALT_INV_DOUT[1]~1_combout\,
	datae => \END_RETORNO|ALT_INV_DOUT\(0),
	combout => \MUX_DESVIO|saida_MUX[0]~0_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_DESVIO|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[0]~0_combout\ = (!\DECODER|saida[4]~1_combout\ & ((\ULA|Add0~1_sumout\))) # (\DECODER|saida[4]~1_combout\ & (\MUX_ULA|saida_MUX[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \DECODER|ALT_INV_saida[4]~1_combout\,
	datac => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \ULA|saida[0]~0_combout\);

\ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[1]~1_combout\ = (!\DECODER|saida[4]~1_combout\ & ((\ULA|Add0~5_sumout\))) # (\DECODER|saida[4]~1_combout\ & (\MUX_ULA|saida_MUX[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[4]~1_combout\,
	datab => \MUX_ULA|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \ULA|ALT_INV_Add0~5_sumout\,
	combout => \ULA|saida[1]~1_combout\);

\ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[2]~2_combout\ = (!\DECODER|saida[4]~1_combout\ & ((\ULA|Add0~9_sumout\))) # (\DECODER|saida[4]~1_combout\ & (\MUX_ULA|saida_MUX[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[4]~1_combout\,
	datab => \MUX_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \ULA|ALT_INV_Add0~9_sumout\,
	combout => \ULA|saida[2]~2_combout\);

\ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[3]~3_combout\ = (!\DECODER|saida[4]~1_combout\ & ((\ULA|Add0~13_sumout\))) # (\DECODER|saida[4]~1_combout\ & (\MUX_ULA|saida_MUX[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[4]~1_combout\,
	datab => \MUX_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	datac => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \ULA|saida[3]~3_combout\);

\ULA|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[4]~4_combout\ = (!\DECODER|saida[4]~1_combout\ & ((\ULA|Add0~17_sumout\))) # (\DECODER|saida[4]~1_combout\ & (\MUX_ULA|saida_MUX[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[4]~1_combout\,
	datab => \MUX_ULA|ALT_INV_saida_MUX[4]~5_combout\,
	datac => \ULA|ALT_INV_Add0~17_sumout\,
	combout => \ULA|saida[4]~4_combout\);

\ULA|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida[5]~5_combout\ = (!\DECODER|saida[4]~1_combout\ & ((\ULA|Add0~21_sumout\))) # (\DECODER|saida[4]~1_combout\ & (\MUX_ULA|saida_MUX[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|ALT_INV_saida[4]~1_combout\,
	datab => \MUX_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	datac => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \ULA|saida[5]~5_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

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

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_RESULTADO_ULA(0) <= \RESULTADO_ULA[0]~output_o\;

ww_RESULTADO_ULA(1) <= \RESULTADO_ULA[1]~output_o\;

ww_RESULTADO_ULA(2) <= \RESULTADO_ULA[2]~output_o\;

ww_RESULTADO_ULA(3) <= \RESULTADO_ULA[3]~output_o\;

ww_RESULTADO_ULA(4) <= \RESULTADO_ULA[4]~output_o\;

ww_RESULTADO_ULA(5) <= \RESULTADO_ULA[5]~output_o\;

ww_RESULTADO_ULA(6) <= \RESULTADO_ULA[6]~output_o\;

ww_RESULTADO_ULA(7) <= \RESULTADO_ULA[7]~output_o\;

ww_saidaFlag_H <= \saidaFlag_H~output_o\;

ww_ACUMULADOR(0) <= \ACUMULADOR[0]~output_o\;

ww_ACUMULADOR(1) <= \ACUMULADOR[1]~output_o\;

ww_ACUMULADOR(2) <= \ACUMULADOR[2]~output_o\;

ww_ACUMULADOR(3) <= \ACUMULADOR[3]~output_o\;

ww_ACUMULADOR(4) <= \ACUMULADOR[4]~output_o\;

ww_ACUMULADOR(5) <= \ACUMULADOR[5]~output_o\;

ww_ACUMULADOR(6) <= \ACUMULADOR[6]~output_o\;

ww_ACUMULADOR(7) <= \ACUMULADOR[7]~output_o\;

ww_seletorDaULA(0) <= \seletorDaULA[0]~output_o\;

ww_seletorDaULA(1) <= \seletorDaULA[1]~output_o\;

ww_entradaA_ULA(0) <= \entradaA_ULA[0]~output_o\;

ww_entradaA_ULA(1) <= \entradaA_ULA[1]~output_o\;

ww_entradaA_ULA(2) <= \entradaA_ULA[2]~output_o\;

ww_entradaA_ULA(3) <= \entradaA_ULA[3]~output_o\;

ww_entradaA_ULA(4) <= \entradaA_ULA[4]~output_o\;

ww_entradaA_ULA(5) <= \entradaA_ULA[5]~output_o\;

ww_entradaA_ULA(6) <= \entradaA_ULA[6]~output_o\;

ww_entradaA_ULA(7) <= \entradaA_ULA[7]~output_o\;

ww_entradaB_ULA(0) <= \entradaB_ULA[0]~output_o\;

ww_entradaB_ULA(1) <= \entradaB_ULA[1]~output_o\;

ww_entradaB_ULA(2) <= \entradaB_ULA[2]~output_o\;

ww_entradaB_ULA(3) <= \entradaB_ULA[3]~output_o\;

ww_entradaB_ULA(4) <= \entradaB_ULA[4]~output_o\;

ww_entradaB_ULA(5) <= \entradaB_ULA[5]~output_o\;

ww_entradaB_ULA(6) <= \entradaB_ULA[6]~output_o\;

ww_entradaB_ULA(7) <= \entradaB_ULA[7]~output_o\;

ww_vimediatoValor(0) <= \vimediatoValor[0]~output_o\;

ww_vimediatoValor(1) <= \vimediatoValor[1]~output_o\;

ww_vimediatoValor(2) <= \vimediatoValor[2]~output_o\;

ww_vimediatoValor(3) <= \vimediatoValor[3]~output_o\;

ww_vimediatoValor(4) <= \vimediatoValor[4]~output_o\;

ww_vimediatoValor(5) <= \vimediatoValor[5]~output_o\;

ww_vimediatoValor(6) <= \vimediatoValor[6]~output_o\;

ww_vimediatoValor(7) <= \vimediatoValor[7]~output_o\;

ww_sel_MUX_t <= \sel_MUX_t~output_o\;

ww_habilita_flag <= \habilita_flag~output_o\;
END structure;


