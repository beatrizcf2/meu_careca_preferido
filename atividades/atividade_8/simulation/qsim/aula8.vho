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

-- DATE "05/04/2022 11:33:02"

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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
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
SIGNAL \CPU|PC_INC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~2\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~6\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~10\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~14\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~18\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~22\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~4_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~26\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~30\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|DESVIO|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~2_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~3_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~0_combout\ : std_logic;
SIGNAL \RAM|dado_out~8_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|ram~157_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~152_combout\ : std_logic;
SIGNAL \RAM|ram~158_combout\ : std_logic;
SIGNAL \RAM|ram~82_q\ : std_logic;
SIGNAL \RAM|ram~153_combout\ : std_logic;
SIGNAL \RAM|ram~159_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~154_combout\ : std_logic;
SIGNAL \RAM|ram~160_combout\ : std_logic;
SIGNAL \RAM|ram~98_q\ : std_logic;
SIGNAL \RAM|ram~155_combout\ : std_logic;
SIGNAL \RAM|ram~156_combout\ : std_logic;
SIGNAL \RAM|dado_out[3]~12_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~81_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~97_q\ : std_logic;
SIGNAL \RAM|ram~150_combout\ : std_logic;
SIGNAL \RAM|ram~151_combout\ : std_logic;
SIGNAL \RAM|dado_out[2]~11_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~145_combout\ : std_logic;
SIGNAL \RAM|ram~80_q\ : std_logic;
SIGNAL \RAM|ram~146_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~147_combout\ : std_logic;
SIGNAL \RAM|ram~96_q\ : std_logic;
SIGNAL \RAM|ram~148_combout\ : std_logic;
SIGNAL \RAM|ram~149_combout\ : std_logic;
SIGNAL \RAM|dado_out[1]~10_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~9_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add0~2\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~0_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~79_q\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~95_q\ : std_logic;
SIGNAL \RAM|ram~143_combout\ : std_logic;
SIGNAL \RAM|ram~144_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~q\ : std_logic;
SIGNAL \FFLED9|DOUT~q\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[2]~11_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[1]~10_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~9_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~144_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~143_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~q\ : std_logic;
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
SIGNAL \CPU|REG_A|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \CPU|END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DECODER|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \CPU|DESVIO|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[3]~12_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;

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
\RAM|ALT_INV_ram~153_combout\ <= NOT \RAM|ram~153_combout\;
\RAM|ALT_INV_ram~82_q\ <= NOT \RAM|ram~82_q\;
\RAM|ALT_INV_ram~152_combout\ <= NOT \RAM|ram~152_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_dado_out[2]~11_combout\ <= NOT \RAM|dado_out[2]~11_combout\;
\RAM|ALT_INV_ram~151_combout\ <= NOT \RAM|ram~151_combout\;
\RAM|ALT_INV_ram~150_combout\ <= NOT \RAM|ram~150_combout\;
\RAM|ALT_INV_ram~97_q\ <= NOT \RAM|ram~97_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~81_q\ <= NOT \RAM|ram~81_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_dado_out[1]~10_combout\ <= NOT \RAM|dado_out[1]~10_combout\;
\RAM|ALT_INV_ram~149_combout\ <= NOT \RAM|ram~149_combout\;
\RAM|ALT_INV_ram~148_combout\ <= NOT \RAM|ram~148_combout\;
\RAM|ALT_INV_ram~96_q\ <= NOT \RAM|ram~96_q\;
\RAM|ALT_INV_ram~147_combout\ <= NOT \RAM|ram~147_combout\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~146_combout\ <= NOT \RAM|ram~146_combout\;
\RAM|ALT_INV_ram~80_q\ <= NOT \RAM|ram~80_q\;
\RAM|ALT_INV_ram~145_combout\ <= NOT \RAM|ram~145_combout\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|DECODER|ALT_INV_Equal1~1_combout\ <= NOT \CPU|DECODER|Equal1~1_combout\;
\RAM|ALT_INV_dado_out[0]~9_combout\ <= NOT \RAM|dado_out[0]~9_combout\;
\RAM|ALT_INV_dado_out~8_combout\ <= NOT \RAM|dado_out~8_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\CPU|DECODER|ALT_INV_Equal1~0_combout\ <= NOT \CPU|DECODER|Equal1~0_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\RAM|ALT_INV_ram~144_combout\ <= NOT \RAM|ram~144_combout\;
\RAM|ALT_INV_ram~143_combout\ <= NOT \RAM|ram~143_combout\;
\RAM|ALT_INV_ram~95_q\ <= NOT \RAM|ram~95_q\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~79_q\ <= NOT \RAM|ram~79_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\CPU|FLAGer|ALT_INV_DOUT~q\ <= NOT \CPU|FLAGer|DOUT~q\;
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
\CPU|REG_A|ALT_INV_DOUT\(3) <= NOT \CPU|REG_A|DOUT\(3);
\CPU|REG_A|ALT_INV_DOUT\(2) <= NOT \CPU|REG_A|DOUT\(2);
\CPU|REG_A|ALT_INV_DOUT\(1) <= NOT \CPU|REG_A|DOUT\(1);
\CPU|REG_A|ALT_INV_DOUT\(0) <= NOT \CPU|REG_A|DOUT\(0);
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\CPU|FLAGer|ALT_INV_DOUT~3_combout\ <= NOT \CPU|FLAGer|DOUT~3_combout\;
\CPU|FLAGer|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAGer|DOUT~2_combout\;
\CPU|FLAGer|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAGer|DOUT~1_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\CPU|DECODER|ALT_INV_Equal1~3_combout\ <= NOT \CPU|DECODER|Equal1~3_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|END_RETORNO|DOUT\(8);
\CPU|END_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|END_RETORNO|DOUT\(7);
\CPU|END_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|END_RETORNO|DOUT\(6);
\CPU|END_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|END_RETORNO|DOUT\(5);
\CPU|END_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|END_RETORNO|DOUT\(4);
\CPU|DECODER|ALT_INV_Equal1~2_combout\ <= NOT \CPU|DECODER|Equal1~2_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|END_RETORNO|DOUT\(3);
\CPU|END_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|END_RETORNO|DOUT\(2);
\CPU|END_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|END_RETORNO|DOUT\(1);
\CPU|END_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|END_RETORNO|DOUT\(0);
\CPU|DESVIO|ALT_INV_saida[0]~0_combout\ <= NOT \CPU|DESVIO|saida[0]~0_combout\;
\CPU|PC|ALT_INV_DOUT[1]~0_combout\ <= NOT \CPU|PC|DOUT[1]~0_combout\;
\RAM|ALT_INV_dado_out[3]~12_combout\ <= NOT \RAM|dado_out[3]~12_combout\;
\RAM|ALT_INV_ram~156_combout\ <= NOT \RAM|ram~156_combout\;
\RAM|ALT_INV_ram~155_combout\ <= NOT \RAM|ram~155_combout\;
\RAM|ALT_INV_ram~98_q\ <= NOT \RAM|ram~98_q\;
\RAM|ALT_INV_ram~154_combout\ <= NOT \RAM|ram~154_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;

\valorDado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~144_combout\,
	oe => \RAM|dado_out~8_combout\,
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
	i => \RAM|ram~149_combout\,
	oe => \RAM|dado_out~8_combout\,
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
	i => \RAM|ram~151_combout\,
	oe => \RAM|dado_out~8_combout\,
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
	i => \RAM|ram~156_combout\,
	oe => \RAM|dado_out~8_combout\,
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
	i => GND,
	oe => \RAM|dado_out~8_combout\,
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
	i => GND,
	oe => \RAM|dado_out~8_combout\,
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
	i => GND,
	oe => \RAM|dado_out~8_combout\,
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
	i => GND,
	oe => \RAM|dado_out~8_combout\,
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
	i => \ROM|memROM~1_combout\,
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
	i => \ROM|memROM~2_combout\,
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
	i => \ROM|memROM~3_combout\,
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
	i => \ROM|memROM~4_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	o => \HEX0[0]~output_o\);

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
	o => \HEX0[1]~output_o\);

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
	o => \HEX0[2]~output_o\);

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
	o => \HEX0[3]~output_o\);

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
	o => \HEX0[4]~output_o\);

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
	o => \HEX0[5]~output_o\);

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
	o => \HEX0[6]~output_o\);

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
	o => \HEX1[0]~output_o\);

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
	o => \HEX1[1]~output_o\);

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
	o => \HEX1[2]~output_o\);

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
	o => \HEX1[3]~output_o\);

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
	o => \HEX1[4]~output_o\);

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
	o => \HEX1[5]~output_o\);

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
	o => \HEX1[6]~output_o\);

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
	o => \HEX2[0]~output_o\);

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
	o => \HEX2[1]~output_o\);

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
	o => \HEX2[2]~output_o\);

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
	o => \HEX2[3]~output_o\);

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
	o => \HEX2[4]~output_o\);

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
	o => \HEX2[5]~output_o\);

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
	o => \HEX2[6]~output_o\);

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
	o => \HEX3[0]~output_o\);

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
	o => \HEX3[1]~output_o\);

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
	o => \HEX3[2]~output_o\);

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
	o => \HEX3[3]~output_o\);

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
	o => \HEX3[4]~output_o\);

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
	o => \HEX3[5]~output_o\);

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
	o => \HEX3[6]~output_o\);

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
	o => \HEX4[0]~output_o\);

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
	o => \HEX4[1]~output_o\);

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
	o => \HEX4[2]~output_o\);

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
	o => \HEX4[3]~output_o\);

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
	o => \HEX4[4]~output_o\);

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
	o => \HEX4[5]~output_o\);

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
	o => \HEX4[6]~output_o\);

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
	o => \HEX5[0]~output_o\);

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
	o => \HEX5[1]~output_o\);

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
	o => \HEX5[2]~output_o\);

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
	o => \HEX5[3]~output_o\);

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
	o => \HEX5[4]~output_o\);

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
	o => \HEX5[5]~output_o\);

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
	i => \CPU|REG_A|DOUT\(0),
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
	i => \CPU|REG_A|DOUT\(1),
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
	i => \CPU|REG_A|DOUT\(2),
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
	i => \CPU|REG_A|DOUT\(3),
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
	i => \CPU|MUX_ULA|saida_MUX[4]~4_combout\,
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
	i => \CPU|MUX_ULA|saida_MUX[4]~4_combout\,
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
	i => \CPU|MUX_ULA|saida_MUX[4]~4_combout\,
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

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000001000101000100000100010100010000010001010001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~8_combout\);

\CPU|DECODER|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~4_combout\ = ( \ROM|memROM~8_combout\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~5_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DECODER|Equal1~4_combout\);

\CPU|END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~25_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(6));

\CPU|MUX_DESVIO|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\ = (!\CPU|DESVIO|saida[0]~0_combout\ & ((!\CPU|DECODER|Equal1~2_combout\ & ((\CPU|PC_INC|Add0~25_sumout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\CPU|END_RETORNO|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DESVIO|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(6),
	datad => \CPU|PC_INC|ALT_INV_Add0~25_sumout\,
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
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(7));

\CPU|MUX_DESVIO|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\ = (!\CPU|DESVIO|saida[0]~0_combout\ & ((!\CPU|DECODER|Equal1~2_combout\ & ((\CPU|PC_INC|Add0~29_sumout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\CPU|END_RETORNO|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DESVIO|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(7),
	datad => \CPU|PC_INC|ALT_INV_Add0~29_sumout\,
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

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~13_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~14_combout\);

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
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(8));

\CPU|MUX_DESVIO|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\ = ( \CPU|END_RETORNO|DOUT\(8) & ( (!\CPU|PC|DOUT[1]~0_combout\ & (((\CPU|PC_INC|Add0~33_sumout\)))) # (\CPU|PC|DOUT[1]~0_combout\ & (((!\CPU|DESVIO|saida[0]~0_combout\)) # (\ROM|memROM~14_combout\))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(8) & ( (!\CPU|PC|DOUT[1]~0_combout\ & (((\CPU|PC_INC|Add0~33_sumout\)))) # (\CPU|PC|DOUT[1]~0_combout\ & (\ROM|memROM~14_combout\ & (\CPU|DESVIO|saida[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~0_combout\,
	datac => \CPU|DESVIO|ALT_INV_saida[0]~0_combout\,
	datad => \CPU|PC_INC|ALT_INV_Add0~33_sumout\,
	datae => \CPU|END_RETORNO|ALT_INV_DOUT\(8),
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

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (!\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000100101000000000010010100000000001001010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~16_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~16_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \ROM|memROM~4_combout\);

\CPU|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~13_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(3));

\CPU|MUX_DESVIO|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\ = ( \CPU|END_RETORNO|DOUT\(3) & ( (!\CPU|PC|DOUT[1]~0_combout\ & (((\CPU|PC_INC|Add0~13_sumout\)))) # (\CPU|PC|DOUT[1]~0_combout\ & (((!\CPU|DESVIO|saida[0]~0_combout\)) # (\ROM|memROM~4_combout\))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(3) & ( (!\CPU|PC|DOUT[1]~0_combout\ & (((\CPU|PC_INC|Add0~13_sumout\)))) # (\CPU|PC|DOUT[1]~0_combout\ & (\ROM|memROM~4_combout\ & (\CPU|DESVIO|saida[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~0_combout\,
	datac => \CPU|DESVIO|ALT_INV_saida[0]~0_combout\,
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

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001000010010000000000000000001100010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~3_combout\);

\CPU|END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~9_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(2));

\CPU|MUX_DESVIO|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\ = ( \CPU|END_RETORNO|DOUT\(2) & ( (!\CPU|PC|DOUT[1]~0_combout\ & (((\CPU|PC_INC|Add0~9_sumout\)))) # (\CPU|PC|DOUT[1]~0_combout\ & (((!\CPU|DESVIO|saida[0]~0_combout\)) # (\ROM|memROM~3_combout\))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(2) & ( (!\CPU|PC|DOUT[1]~0_combout\ & (((\CPU|PC_INC|Add0~9_sumout\)))) # (\CPU|PC|DOUT[1]~0_combout\ & (\ROM|memROM~3_combout\ & (\CPU|DESVIO|saida[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~0_combout\,
	datac => \CPU|DESVIO|ALT_INV_saida[0]~0_combout\,
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

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ ((!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~10_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~9_combout\);

\CPU|DESVIO|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO|saida[0]~0_combout\ = ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~12_combout\ & (!\ROM|memROM~11_combout\ & !\ROM|memROM~10_combout\)) ) ) # ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~10_combout\ & 
-- ((!\ROM|memROM~12_combout\) # (\CPU|FLAGer|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101001100000000000000000000000011010011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FLAGer|ALT_INV_DOUT~q\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|DESVIO|saida[0]~0_combout\);

\CPU|END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~21_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(5));

\CPU|MUX_DESVIO|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\ = (!\CPU|DESVIO|saida[0]~0_combout\ & ((!\CPU|DECODER|Equal1~2_combout\ & ((\CPU|PC_INC|Add0~21_sumout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\CPU|END_RETORNO|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DESVIO|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(5),
	datad => \CPU|PC_INC|ALT_INV_Add0~21_sumout\,
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

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (((\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001110001000100000111000100010000011100010001000001110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~15_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~15_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~2_combout\);

\CPU|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~5_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(1));

\CPU|MUX_DESVIO|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\ = ( \CPU|END_RETORNO|DOUT\(1) & ( (!\CPU|PC|DOUT[1]~0_combout\ & (((\CPU|PC_INC|Add0~5_sumout\)))) # (\CPU|PC|DOUT[1]~0_combout\ & (((!\CPU|DESVIO|saida[0]~0_combout\)) # (\ROM|memROM~2_combout\))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(1) & ( (!\CPU|PC|DOUT[1]~0_combout\ & (((\CPU|PC_INC|Add0~5_sumout\)))) # (\CPU|PC|DOUT[1]~0_combout\ & (\ROM|memROM~2_combout\ & (\CPU|DESVIO|saida[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~0_combout\,
	datac => \CPU|DESVIO|ALT_INV_saida[0]~0_combout\,
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

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~11_combout\);

\CPU|DECODER|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~2_combout\ = (!\ROM|memROM~12_combout\ & (\ROM|memROM~11_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|DECODER|Equal1~2_combout\);

\CPU|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~17_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(4));

\CPU|MUX_DESVIO|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\ = (!\CPU|DESVIO|saida[0]~0_combout\ & ((!\CPU|DECODER|Equal1~2_combout\ & ((\CPU|PC_INC|Add0~17_sumout\))) # (\CPU|DECODER|Equal1~2_combout\ & (\CPU|END_RETORNO|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datab => \CPU|DESVIO|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(4),
	datad => \CPU|PC_INC|ALT_INV_Add0~17_sumout\,
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

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~12_combout\);

\CPU|DECODER|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~1_combout\ = (!\ROM|memROM~12_combout\ & (!\ROM|memROM~11_combout\ & (\ROM|memROM~10_combout\ & !\ROM|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|DECODER|Equal1~1_combout\);

\CPU|DECODER|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~3_combout\ = (!\ROM|memROM~12_combout\ & (\ROM|memROM~11_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|DECODER|Equal1~3_combout\);

\CPU|DECODER|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~0_combout\ = ( \ROM|memROM~8_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~5_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DECODER|Equal1~0_combout\);

\RAM|dado_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~8_combout\ = (\CPU|DECODER|Equal1~0_combout\ & !\ROM|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|dado_out~8_combout\);

\CPU|REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ROM|memROM~4_combout\,
	ena => \CPU|DECODER|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(3));

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|process_0~0_combout\);

\RAM|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~157_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~157_combout\);

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~152_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~152_combout\);

\RAM|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~158_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~158_combout\);

\RAM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~82_q\);

\RAM|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~153_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~82_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~153_combout\);

\RAM|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~159_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~1_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~159_combout\);

\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

\RAM|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~154_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~34_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~154_combout\);

\RAM|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~160_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~1_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~160_combout\);

\RAM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~98_q\);

\RAM|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~155_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~98_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~98_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~155_combout\);

\RAM|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~156_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~155_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~154_combout\ ) ) ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~153_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~152_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~152_combout\,
	datab => \RAM|ALT_INV_ram~153_combout\,
	datac => \RAM|ALT_INV_ram~154_combout\,
	datad => \RAM|ALT_INV_ram~155_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~156_combout\);

\RAM|dado_out[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[3]~12_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~156_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~156_combout\,
	combout => \RAM|dado_out[3]~12_combout\);

\CPU|REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ROM|memROM~3_combout\,
	ena => \CPU|DECODER|Equal1~1_combout\,
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
	ena => \RAM|ram~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~81_q\);

\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

\RAM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~97_q\);

\RAM|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~150_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~97_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~33_q\ ) ) ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~81_q\ 
-- ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datab => \RAM|ALT_INV_ram~81_q\,
	datac => \RAM|ALT_INV_ram~33_q\,
	datad => \RAM|ALT_INV_ram~97_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~150_combout\);

\RAM|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~151_combout\ = ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~1_combout\ & ( \RAM|ram~150_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~150_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~151_combout\);

\RAM|dado_out[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[2]~11_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~151_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~151_combout\,
	combout => \RAM|dado_out[2]~11_combout\);

\CPU|REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ROM|memROM~2_combout\,
	ena => \CPU|DECODER|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(1));

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~145_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~145_combout\);

\RAM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~80_q\);

\RAM|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~146_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~80_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~146_combout\);

\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

\RAM|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~147_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~32_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~147_combout\);

\RAM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~96_q\);

\RAM|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~148_combout\ = ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM|ram~96_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~96_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~148_combout\);

\RAM|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~149_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~148_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~147_combout\ ) ) ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~2_combout\ & ( 
-- \RAM|ram~146_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~145_combout\,
	datab => \RAM|ALT_INV_ram~146_combout\,
	datac => \RAM|ALT_INV_ram~147_combout\,
	datad => \RAM|ALT_INV_ram~148_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~149_combout\);

\RAM|dado_out[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~10_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~149_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~149_combout\,
	combout => \RAM|dado_out[1]~10_combout\);

\RAM|dado_out[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~9_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~144_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~144_combout\,
	datab => \RAM|ALT_INV_dado_out~8_combout\,
	combout => \RAM|dado_out[0]~9_combout\);

\CPU|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~34_cout\ = CARRY(( !\CPU|DECODER|Equal1~3_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	cin => GND,
	cout => \CPU|ULA|Add0~34_cout\);

\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[0]~9_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~1_combout\)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA|Add0~34_cout\ 
-- ))
-- \CPU|ULA|Add0~2\ = CARRY(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[0]~9_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~1_combout\)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~9_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => \CPU|ULA|Add0~34_cout\,
	sumout => \CPU|ULA|Add0~1_sumout\,
	cout => \CPU|ULA|Add0~2\);

\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[1]~10_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA|Add0~2\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[1]~10_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_dado_out[1]~10_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	cin => \CPU|ULA|Add0~2\,
	sumout => \CPU|ULA|Add0~5_sumout\,
	cout => \CPU|ULA|Add0~6\);

\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[2]~11_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~3_combout\)))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA|Add0~6\ ))
-- \CPU|ULA|Add0~10\ = CARRY(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[2]~11_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~3_combout\)))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \RAM|ALT_INV_dado_out[2]~11_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA|Add0~6\,
	sumout => \CPU|ULA|Add0~9_sumout\,
	cout => \CPU|ULA|Add0~10\);

\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[3]~12_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA|Add0~10\ ))
-- \CPU|ULA|Add0~14\ = CARRY(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[3]~12_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_dado_out[3]~12_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA|Add0~10\,
	sumout => \CPU|ULA|Add0~13_sumout\,
	cout => \CPU|ULA|Add0~14\);

\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & !\RAM|dado_out~8_combout\))) ) + ( GND ) + ( \CPU|ULA|Add0~14\ ))
-- \CPU|ULA|Add0~18\ = CARRY(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & !\RAM|dado_out~8_combout\))) ) + ( GND ) + ( \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \RAM|ALT_INV_dado_out~8_combout\,
	cin => \CPU|ULA|Add0~14\,
	sumout => \CPU|ULA|Add0~17_sumout\,
	cout => \CPU|ULA|Add0~18\);

\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & !\RAM|dado_out~8_combout\))) ) + ( GND ) + ( \CPU|ULA|Add0~18\ ))
-- \CPU|ULA|Add0~22\ = CARRY(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & !\RAM|dado_out~8_combout\))) ) + ( GND ) + ( \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \RAM|ALT_INV_dado_out~8_combout\,
	cin => \CPU|ULA|Add0~18\,
	sumout => \CPU|ULA|Add0~21_sumout\,
	cout => \CPU|ULA|Add0~22\);

\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & !\RAM|dado_out~8_combout\))) ) + ( GND ) + ( \CPU|ULA|Add0~22\ ))
-- \CPU|ULA|Add0~26\ = CARRY(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & !\RAM|dado_out~8_combout\))) ) + ( GND ) + ( \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \RAM|ALT_INV_dado_out~8_combout\,
	cin => \CPU|ULA|Add0~22\,
	sumout => \CPU|ULA|Add0~25_sumout\,
	cout => \CPU|ULA|Add0~26\);

\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( !\CPU|DECODER|Equal1~3_combout\ $ (((!\CPU|DECODER|Equal1~1_combout\ & !\RAM|dado_out~8_combout\))) ) + ( GND ) + ( \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \RAM|ALT_INV_dado_out~8_combout\,
	cin => \CPU|ULA|Add0~26\,
	sumout => \CPU|ULA|Add0~29_sumout\);

\CPU|FLAGer|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~1_combout\ = ( \CPU|DECODER|Equal1~0_combout\ & ( \CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~3_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~1_combout\ & !\ROM|memROM~2_combout\))) ) ) ) # ( !\CPU|DECODER|Equal1~0_combout\ & ( 
-- \CPU|FLAGer|DOUT~q\ ) ) # ( \CPU|DECODER|Equal1~0_combout\ & ( !\CPU|FLAGer|DOUT~q\ & ( (!\ROM|memROM~3_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~1_combout\ & !\ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|FLAGer|ALT_INV_DOUT~q\,
	combout => \CPU|FLAGer|DOUT~1_combout\);

\CPU|FLAGer|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~2_combout\ = ( \CPU|ULA|Add0~5_sumout\ & ( \CPU|FLAGer|DOUT~1_combout\ & ( (!\CPU|DECODER|Equal1~0_combout\) # (\CPU|DECODER|Equal1~1_combout\) ) ) ) # ( !\CPU|ULA|Add0~5_sumout\ & ( \CPU|FLAGer|DOUT~1_combout\ & ( 
-- ((!\CPU|DECODER|Equal1~0_combout\) # ((!\CPU|ULA|Add0~17_sumout\ & !\CPU|ULA|Add0~1_sumout\))) # (\CPU|DECODER|Equal1~1_combout\) ) ) ) # ( !\CPU|ULA|Add0~5_sumout\ & ( !\CPU|FLAGer|DOUT~1_combout\ & ( (!\CPU|DECODER|Equal1~1_combout\ & 
-- (!\CPU|ULA|Add0~17_sumout\ & (\CPU|DECODER|Equal1~0_combout\ & !\CPU|ULA|Add0~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000011111101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datad => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	datae => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	dataf => \CPU|FLAGer|ALT_INV_DOUT~1_combout\,
	combout => \CPU|FLAGer|DOUT~2_combout\);

\CPU|FLAGer|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~3_combout\ = (!\CPU|ULA|Add0~21_sumout\ & (!\CPU|ULA|Add0~9_sumout\ & !\CPU|ULA|Add0~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Add0~21_sumout\,
	datab => \CPU|ULA|ALT_INV_Add0~9_sumout\,
	datac => \CPU|ULA|ALT_INV_Add0~13_sumout\,
	combout => \CPU|FLAGer|DOUT~3_combout\);

\CPU|FLAGer|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~0_combout\ = ( \CPU|FLAGer|DOUT~2_combout\ & ( \CPU|FLAGer|DOUT~3_combout\ & ( ((!\CPU|DECODER|Equal1~0_combout\) # ((!\CPU|ULA|Add0~29_sumout\ & !\CPU|ULA|Add0~25_sumout\))) # (\CPU|DECODER|Equal1~1_combout\) ) ) ) # ( 
-- \CPU|FLAGer|DOUT~2_combout\ & ( !\CPU|FLAGer|DOUT~3_combout\ & ( (!\CPU|DECODER|Equal1~0_combout\) # (\CPU|DECODER|Equal1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000001111111111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|ULA|ALT_INV_Add0~29_sumout\,
	datac => \CPU|ULA|ALT_INV_Add0~25_sumout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datae => \CPU|FLAGer|ALT_INV_DOUT~2_combout\,
	dataf => \CPU|FLAGer|ALT_INV_DOUT~3_combout\,
	combout => \CPU|FLAGer|DOUT~0_combout\);

\CPU|FLAGer|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|FLAGer|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAGer|DOUT~q\);

\CPU|PC|DOUT[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[1]~0_combout\ = ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ $ (!\ROM|memROM~11_combout\))) ) ) # ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~10_combout\ & 
-- ((!\ROM|memROM~12_combout\) # (\CPU|FLAGer|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101001111000000000000000000000011010011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FLAGer|ALT_INV_DOUT~q\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|PC|DOUT[1]~0_combout\);

\CPU|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|PC_INC|Add0~1_sumout\,
	ena => \CPU|DECODER|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(0));

\CPU|MUX_DESVIO|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\ = ( \CPU|END_RETORNO|DOUT\(0) & ( (!\CPU|PC|DOUT[1]~0_combout\ & (((\CPU|PC_INC|Add0~1_sumout\)))) # (\CPU|PC|DOUT[1]~0_combout\ & (((!\CPU|DESVIO|saida[0]~0_combout\)) # (\ROM|memROM~1_combout\))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(0) & ( (!\CPU|PC|DOUT[1]~0_combout\ & (((\CPU|PC_INC|Add0~1_sumout\)))) # (\CPU|PC|DOUT[1]~0_combout\ & (\ROM|memROM~1_combout\ & ((\CPU|DESVIO|saida[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001111110011010100110000001101010011111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC_INC|ALT_INV_Add0~1_sumout\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~0_combout\,
	datad => \CPU|DESVIO|ALT_INV_saida[0]~0_combout\,
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

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001000000110000000000000000000110010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

\CPU|REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ROM|memROM~1_combout\,
	ena => \CPU|DECODER|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(0));

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~79_q\);

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~95_q\);

\RAM|ram~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~143_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~95_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~31_q\ ) ) ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~79_q\ 
-- ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datab => \RAM|ALT_INV_ram~79_q\,
	datac => \RAM|ALT_INV_ram~31_q\,
	datad => \RAM|ALT_INV_ram~95_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~143_combout\);

\RAM|ram~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~144_combout\ = ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~1_combout\ & ( \RAM|ram~143_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~143_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~144_combout\);

\FFLED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FFLED8|DOUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLED8|DOUT~q\);

\FFLED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FFLED9|DOUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLED9|DOUT~q\);

\CPU|MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[0]~0_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[0]~9_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~9_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[0]~0_combout\);

\CPU|MUX_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[1]~1_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[1]~10_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \RAM|ALT_INV_dado_out[1]~10_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[1]~1_combout\);

\CPU|MUX_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[2]~2_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[2]~11_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \RAM|ALT_INV_dado_out[2]~11_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[2]~2_combout\);

\CPU|MUX_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[3]~3_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & ((\RAM|dado_out[3]~12_combout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \RAM|ALT_INV_dado_out[3]~12_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[3]~3_combout\);

\CPU|MUX_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[4]~4_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & !\RAM|dado_out~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \RAM|ALT_INV_dado_out~8_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[4]~4_combout\);

\CPU|ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[0]~0_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & ((\CPU|ULA|Add0~1_sumout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	combout => \CPU|ULA|saida[0]~0_combout\);

\CPU|ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[1]~1_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & ((\CPU|ULA|Add0~5_sumout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	combout => \CPU|ULA|saida[1]~1_combout\);

\CPU|ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[2]~2_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & ((\CPU|ULA|Add0~9_sumout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~9_sumout\,
	combout => \CPU|ULA|saida[2]~2_combout\);

\CPU|ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[3]~3_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & ((\CPU|ULA|Add0~13_sumout\))) # (\CPU|DECODER|Equal1~1_combout\ & (\ROM|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~13_sumout\,
	combout => \CPU|ULA|saida[3]~3_combout\);

\CPU|ULA|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[4]~4_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & \CPU|ULA|Add0~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	combout => \CPU|ULA|saida[4]~4_combout\);

\CPU|ULA|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[5]~5_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & \CPU|ULA|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|ULA|ALT_INV_Add0~21_sumout\,
	combout => \CPU|ULA|saida[5]~5_combout\);

\CPU|ULA|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[6]~6_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & \CPU|ULA|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|ULA|ALT_INV_Add0~25_sumout\,
	combout => \CPU|ULA|saida[6]~6_combout\);

\CPU|ULA|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[7]~7_combout\ = (!\CPU|DECODER|Equal1~1_combout\ & \CPU|ULA|Add0~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|ULA|ALT_INV_Add0~29_sumout\,
	combout => \CPU|ULA|saida[7]~7_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

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

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

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


