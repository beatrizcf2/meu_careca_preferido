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

-- DATE "04/16/2022 16:42:52"

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
	LED8 : OUT std_logic;
	LED9 : OUT std_logic;
	LEDconj : OUT std_logic_vector(7 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY0 : IN std_logic;
	KEY1 : IN std_logic;
	KEY2 : IN std_logic;
	KEY3 : IN std_logic;
	FPGA_RESST : IN std_logic;
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
SIGNAL ww_LED8 : std_logic;
SIGNAL ww_LED9 : std_logic;
SIGNAL ww_LEDconj : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_KEY2 : std_logic;
SIGNAL ww_KEY3 : std_logic;
SIGNAL ww_FPGA_RESST : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_clovis : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \clovis~input_o\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~14\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~17_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~18\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~22\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~26\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~30\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~0_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~2\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~6\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~10\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~0_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~8_combout\ : std_logic;
SIGNAL \habHEX0~0_combout\ : std_logic;
SIGNAL \FPGA_RESST~input_o\ : std_logic;
SIGNAL \bufferRESET|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out~9_combout\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \bufferKEY1|saida[0]~0_combout\ : std_logic;
SIGNAL \KEY3~input_o\ : std_logic;
SIGNAL \bufferKEY3|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~10_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \habLEDconj~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \bufferSW8|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~11_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \bufferKEY0|saida[0]~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \bufferSW9|saida[0]~0_combout\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \bufferKEY2|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~12_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~13_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~25_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~14_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[1]~15_combout\ : std_logic;
SIGNAL \RAM|dado_out[1]~16_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[2]~17_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[3]~18_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[4]~19_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[5]~20_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[6]~21_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[7]~22_combout\ : std_logic;
SIGNAL \habLED8~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~24_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \habSWconj~0_combout\ : std_logic;
SIGNAL \bufferSWConj|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~23_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~3_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[0]~1_combout\ : std_logic;
SIGNAL \habHEX1~0_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~q\ : std_logic;
SIGNAL \habLED9~0_combout\ : std_logic;
SIGNAL \FFLED9|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED9|DOUT~q\ : std_logic;
SIGNAL \habLEDconj~1_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~2\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \habHEX0~1_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \habHEX5~0_combout\ : std_logic;
SIGNAL \habHEX1~1_combout\ : std_logic;
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
SIGNAL \HEX5_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX1_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \HEX3_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \HEX2_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX4_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegLEDconj|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \FFLED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG_A|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_habLED9~0_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX1~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_habLED8~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[7]~22_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[6]~21_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[5]~20_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[4]~19_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[3]~18_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[2]~17_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[1]~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~14_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~12_combout\ : std_logic;
SIGNAL \bufferKEY2|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \bufferSW9|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \bufferKEY0|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~11_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_habLEDconj~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~10_combout\ : std_logic;
SIGNAL \bufferKEY3|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \bufferKEY1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out~9_combout\ : std_logic;
SIGNAL \bufferRESET|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX0~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \HEX5_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX4_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX3_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX1_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FFLED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY2~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY0~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY3~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY1~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESST~input_o\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~25_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~24_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~23_combout\ : std_logic;
SIGNAL \bufferSWConj|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_habSWconj~0_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX5~0_combout\ : std_logic;

BEGIN

endROM <= ww_endROM;
endRAM <= ww_endRAM;
valorDado <= ww_valorDado;
LEDR <= ww_LEDR;
LED8 <= ww_LED8;
LED9 <= ww_LED9;
LEDconj <= ww_LEDconj;
ww_SW <= SW;
ww_KEY0 <= KEY0;
ww_KEY1 <= KEY1;
ww_KEY2 <= KEY2;
ww_KEY3 <= KEY3;
ww_FPGA_RESST <= FPGA_RESST;
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
\FFLED8|ALT_INV_DOUT~q\ <= NOT \FFLED8|DOUT~q\;
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
\ALT_INV_habLED9~0_combout\ <= NOT \habLED9~0_combout\;
\ALT_INV_habHEX1~0_combout\ <= NOT \habHEX1~0_combout\;
\CPU|DECODER|ALT_INV_saida[0]~1_combout\ <= NOT \CPU|DECODER|saida[0]~1_combout\;
\ALT_INV_habLED8~0_combout\ <= NOT \habLED8~0_combout\;
\RAM|ALT_INV_dado_out[7]~22_combout\ <= NOT \RAM|dado_out[7]~22_combout\;
\RAM|ALT_INV_dado_out[6]~21_combout\ <= NOT \RAM|dado_out[6]~21_combout\;
\RAM|ALT_INV_dado_out[5]~20_combout\ <= NOT \RAM|dado_out[5]~20_combout\;
\RAM|ALT_INV_dado_out[4]~19_combout\ <= NOT \RAM|dado_out[4]~19_combout\;
\RAM|ALT_INV_dado_out[3]~18_combout\ <= NOT \RAM|dado_out[3]~18_combout\;
\RAM|ALT_INV_dado_out[2]~17_combout\ <= NOT \RAM|dado_out[2]~17_combout\;
\RAM|ALT_INV_dado_out[1]~15_combout\ <= NOT \RAM|dado_out[1]~15_combout\;
\RAM|ALT_INV_dado_out[0]~14_combout\ <= NOT \RAM|dado_out[0]~14_combout\;
\RAM|ALT_INV_dado_out[0]~12_combout\ <= NOT \RAM|dado_out[0]~12_combout\;
\bufferKEY2|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY2|saida[0]~0_combout\;
\bufferSW9|ALT_INV_saida[0]~0_combout\ <= NOT \bufferSW9|saida[0]~0_combout\;
\bufferKEY0|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY0|saida[0]~0_combout\;
\RAM|ALT_INV_dado_out[0]~11_combout\ <= NOT \RAM|dado_out[0]~11_combout\;
\bufferSW8|ALT_INV_saida[0]~0_combout\ <= NOT \bufferSW8|saida[0]~0_combout\;
\ALT_INV_habLEDconj~0_combout\ <= NOT \habLEDconj~0_combout\;
\RAM|ALT_INV_dado_out[0]~10_combout\ <= NOT \RAM|dado_out[0]~10_combout\;
\bufferKEY3|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY3|saida[0]~0_combout\;
\bufferKEY1|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY1|saida[0]~0_combout\;
\RAM|ALT_INV_dado_out~9_combout\ <= NOT \RAM|dado_out~9_combout\;
\bufferRESET|ALT_INV_saida[0]~0_combout\ <= NOT \bufferRESET|saida[0]~0_combout\;
\ALT_INV_habHEX0~0_combout\ <= NOT \habHEX0~0_combout\;
\RAM|ALT_INV_dado_out[0]~8_combout\ <= NOT \RAM|dado_out[0]~8_combout\;
\CPU|DECODER|ALT_INV_saida~0_combout\ <= NOT \CPU|DECODER|saida~0_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
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
\FFLED9|ALT_INV_DOUT~q\ <= NOT \FFLED9|DOUT~q\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_KEY2~input_o\ <= NOT \KEY2~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY0~input_o\ <= NOT \KEY0~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY3~input_o\ <= NOT \KEY3~input_o\;
\ALT_INV_KEY1~input_o\ <= NOT \KEY1~input_o\;
\ALT_INV_FPGA_RESST~input_o\ <= NOT \FPGA_RESST~input_o\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\RAM|ALT_INV_dado_out[0]~25_combout\ <= NOT \RAM|dado_out[0]~25_combout\;
\RAM|ALT_INV_dado_out[0]~24_combout\ <= NOT \RAM|dado_out[0]~24_combout\;
\RAM|ALT_INV_dado_out[0]~23_combout\ <= NOT \RAM|dado_out[0]~23_combout\;
\bufferSWConj|ALT_INV_saida[0]~0_combout\ <= NOT \bufferSWConj|saida[0]~0_combout\;
\ALT_INV_habSWconj~0_combout\ <= NOT \habSWconj~0_combout\;
\ALT_INV_habHEX5~0_combout\ <= NOT \habHEX5~0_combout\;

\valorDado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[0]~13_combout\,
	oe => \RAM|dado_out[0]~14_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(0));

\valorDado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[1]~15_combout\,
	oe => \RAM|dado_out[1]~16_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(1));

\valorDado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[2]~17_combout\,
	oe => \RAM|dado_out[1]~16_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(2));

\valorDado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[3]~18_combout\,
	oe => \RAM|dado_out[1]~16_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(3));

\valorDado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[4]~19_combout\,
	oe => \RAM|dado_out[1]~16_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(4));

\valorDado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[5]~20_combout\,
	oe => \RAM|dado_out[1]~16_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(5));

\valorDado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[6]~21_combout\,
	oe => \RAM|dado_out[1]~16_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(6));

\valorDado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[7]~22_combout\,
	oe => \RAM|dado_out[1]~16_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(7));

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

\endRAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~15_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(2));

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

\endRAM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(5));

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

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

\LED8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FFLED8|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LED8);

\LED9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FFLED9|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LED9);

\LEDconj[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLEDconj|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDconj(0));

\LEDconj[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLEDconj|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDconj(1));

\LEDconj[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLEDconj|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDconj(2));

\LEDconj[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLEDconj|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDconj(3));

\LEDconj[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLEDconj|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDconj(4));

\LEDconj[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLEDconj|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDconj(5));

\LEDconj[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLEDconj|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDconj(6));

\LEDconj[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegLEDconj|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDconj(7));

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

\clovis~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clovis,
	o => \clovis~input_o\);

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

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
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

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000101010101010100010101010101010001010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~12_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~12_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

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
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \ROM|memROM~13_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~25_sumout\,
	asdata => \ROM|memROM~13_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (((\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000111101010000000011110101000000001111010100000000111",
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
-- \ROM|memROM~6_combout\ = ( !\CPU|PC|DOUT\(8) & ( !\ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~21_sumout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

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
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = !\CPU|PC|DOUT\(0) $ (((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110010101010101011001010101010101100101010101010110",
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
-- \ROM|memROM~8_combout\ = (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111100000000011111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	datae => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~10_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (\CPU|PC|DOUT\(3) & (\ROM|memROM~4_combout\ & \ROM|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	combout => \ROM|memROM~11_combout\);

\CPU|DECODER|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~0_combout\ = (\ROM|memROM~4_combout\ & (\ROM|memROM~7_combout\ & (!\ROM|memROM~9_combout\ & \ROM|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|Equal1~0_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000110011100001100011001110000110001100111000011000110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

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
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~1_sumout\,
	asdata => \ROM|memROM~1_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

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

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101000000011010010100000001101001010000000110100101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~2_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~2_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

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
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~3_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~5_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

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

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~9_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(8))))

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
	combout => \ROM|memROM~14_combout\);

\CPU|DECODER|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~0_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~10_combout\ & ( (\ROM|memROM~14_combout\ & ((!\ROM|memROM~7_combout\) # (\CPU|PC|DOUT\(4)))) ) ) ) # ( !\ROM|memROM~8_combout\ & ( \ROM|memROM~10_combout\ & ( (\CPU|PC|DOUT\(3) & 
-- (!\CPU|PC|DOUT\(4) & (\ROM|memROM~14_combout\ & !\ROM|memROM~7_combout\))) ) ) ) # ( \ROM|memROM~8_combout\ & ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~14_combout\ & ((!\ROM|memROM~7_combout\) # (\CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000001100000100000000000000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER|saida~0_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & (\ROM|memROM~4_combout\ & \CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~15_combout\);

\RAM|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~8_combout\ = (\ROM|memROM~4_combout\ & (\ROM|memROM~8_combout\ & \ROM|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|dado_out[0]~8_combout\);

\habHEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~0_combout\ = (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \habHEX0~0_combout\);

\FPGA_RESST~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESST,
	o => \FPGA_RESST~input_o\);

\bufferRESET|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferRESET|saida[0]~0_combout\ = ( !\FPGA_RESST~input_o\ & ( (\CPU|DECODER|saida~0_combout\ & (\ROM|memROM~15_combout\ & (\RAM|dado_out[0]~8_combout\ & \habHEX0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \ALT_INV_habHEX0~0_combout\,
	datae => \ALT_INV_FPGA_RESST~input_o\,
	combout => \bufferRESET|saida[0]~0_combout\);

\RAM|dado_out~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~9_combout\ = (\ROM|memROM~14_combout\ & (((!\CPU|PC|DOUT\(4) & \ROM|memROM~12_combout\)) # (\ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100100011000000110010001100000011001000110000001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|dado_out~9_combout\);

\KEY1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

\bufferKEY1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY1|saida[0]~0_combout\ = ( !\KEY1~input_o\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ALT_INV_KEY1~input_o\,
	combout => \bufferKEY1|saida[0]~0_combout\);

\KEY3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY3,
	o => \KEY3~input_o\);

\bufferKEY3|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY3|saida[0]~0_combout\ = ( !\KEY3~input_o\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & (\ROM|memROM~2_combout\ & !\ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ALT_INV_KEY3~input_o\,
	combout => \bufferKEY3|saida[0]~0_combout\);

\RAM|dado_out[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~10_combout\ = ( \bufferKEY1|saida[0]~0_combout\ & ( \bufferKEY3|saida[0]~0_combout\ & ( (\CPU|DECODER|saida~0_combout\ & ((!\RAM|dado_out~9_combout\) # ((!\ROM|memROM~15_combout\ & \RAM|dado_out[0]~8_combout\)))) ) ) ) # ( 
-- !\bufferKEY1|saida[0]~0_combout\ & ( \bufferKEY3|saida[0]~0_combout\ & ( (\CPU|DECODER|saida~0_combout\ & ((!\RAM|dado_out~9_combout\) # ((!\ROM|memROM~15_combout\ & \RAM|dado_out[0]~8_combout\)))) ) ) ) # ( \bufferKEY1|saida[0]~0_combout\ & ( 
-- !\bufferKEY3|saida[0]~0_combout\ & ( (\CPU|DECODER|saida~0_combout\ & ((!\RAM|dado_out~9_combout\) # ((!\ROM|memROM~15_combout\ & \RAM|dado_out[0]~8_combout\)))) ) ) ) # ( !\bufferKEY1|saida[0]~0_combout\ & ( !\bufferKEY3|saida[0]~0_combout\ & ( 
-- (\CPU|DECODER|saida~0_combout\ & !\RAM|dado_out~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000010001010101000001000101010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \RAM|ALT_INV_dado_out~9_combout\,
	datae => \bufferKEY1|ALT_INV_saida[0]~0_combout\,
	dataf => \bufferKEY3|ALT_INV_saida[0]~0_combout\,
	combout => \RAM|dado_out[0]~10_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\habLEDconj~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLEDconj~0_combout\ = (\ROM|memROM~4_combout\ & (((!\ROM|memROM~5_combout\) # (\ROM|memROM~2_combout\)) # (\ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010011001100110001001100110011000100110011001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \habLEDconj~0_combout\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\bufferSW8|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[0]~0_combout\ = ( !\SW[8]~input_o\ & ( (\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~2_combout\ & \ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ALT_INV_SW[8]~input_o\,
	combout => \bufferSW8|saida[0]~0_combout\);

\RAM|dado_out[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~11_combout\ = ( \habLEDconj~0_combout\ & ( \bufferSW8|saida[0]~0_combout\ & ( (\CPU|DECODER|saida~0_combout\ & (!\ROM|memROM~15_combout\ & \RAM|dado_out[0]~8_combout\)) ) ) ) # ( !\habLEDconj~0_combout\ & ( \bufferSW8|saida[0]~0_combout\ 
-- & ( (\CPU|DECODER|saida~0_combout\ & (!\ROM|memROM~15_combout\ & \RAM|dado_out[0]~8_combout\)) ) ) ) # ( !\habLEDconj~0_combout\ & ( !\bufferSW8|saida[0]~0_combout\ & ( (!\SW[0]~input_o\ & (\CPU|DECODER|saida~0_combout\ & (!\ROM|memROM~15_combout\ & 
-- \RAM|dado_out[0]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datae => \ALT_INV_habLEDconj~0_combout\,
	dataf => \bufferSW8|ALT_INV_saida[0]~0_combout\,
	combout => \RAM|dado_out[0]~11_combout\);

\KEY0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

\bufferKEY0|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY0|saida[0]~0_combout\ = ( !\KEY0~input_o\ & ( (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ALT_INV_KEY0~input_o\,
	combout => \bufferKEY0|saida[0]~0_combout\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\bufferSW9|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW9|saida[0]~0_combout\ = ( !\SW[9]~input_o\ & ( (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & (\ROM|memROM~2_combout\ & \ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	combout => \bufferSW9|saida[0]~0_combout\);

\KEY2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY2,
	o => \KEY2~input_o\);

\bufferKEY2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY2|saida[0]~0_combout\ = ( !\KEY2~input_o\ & ( (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & (\ROM|memROM~2_combout\ & !\ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ALT_INV_KEY2~input_o\,
	combout => \bufferKEY2|saida[0]~0_combout\);

\RAM|dado_out[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~12_combout\ = ( \bufferSW9|saida[0]~0_combout\ & ( \bufferKEY2|saida[0]~0_combout\ & ( (\CPU|DECODER|saida~0_combout\ & (!\ROM|memROM~15_combout\ & \RAM|dado_out[0]~8_combout\)) ) ) ) # ( !\bufferSW9|saida[0]~0_combout\ & ( 
-- \bufferKEY2|saida[0]~0_combout\ & ( (\CPU|DECODER|saida~0_combout\ & (!\ROM|memROM~15_combout\ & \RAM|dado_out[0]~8_combout\)) ) ) ) # ( \bufferSW9|saida[0]~0_combout\ & ( !\bufferKEY2|saida[0]~0_combout\ & ( (\CPU|DECODER|saida~0_combout\ & 
-- (!\ROM|memROM~15_combout\ & \RAM|dado_out[0]~8_combout\)) ) ) ) # ( !\bufferSW9|saida[0]~0_combout\ & ( !\bufferKEY2|saida[0]~0_combout\ & ( (\CPU|DECODER|saida~0_combout\ & (!\ROM|memROM~15_combout\ & (\RAM|dado_out[0]~8_combout\ & 
-- \bufferKEY0|saida[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \bufferKEY0|ALT_INV_saida[0]~0_combout\,
	datae => \bufferSW9|ALT_INV_saida[0]~0_combout\,
	dataf => \bufferKEY2|ALT_INV_saida[0]~0_combout\,
	combout => \RAM|dado_out[0]~12_combout\);

\RAM|dado_out[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~13_combout\ = (!\bufferRESET|saida[0]~0_combout\ & (!\RAM|dado_out[0]~10_combout\ & (!\RAM|dado_out[0]~11_combout\ & !\RAM|dado_out[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bufferRESET|ALT_INV_saida[0]~0_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~10_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~11_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~12_combout\,
	combout => \RAM|dado_out[0]~13_combout\);

\RAM|dado_out[0]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~25_combout\ = ( \CPU|PC|DOUT\(3) & ( (\ROM|memROM~4_combout\ & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(0))))) ) ) # ( !\CPU|PC|DOUT\(3) & ( (\ROM|memROM~4_combout\ & (((\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(1))) # 
-- (\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000001110110000000000011111110000000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \RAM|dado_out[0]~25_combout\);

\RAM|dado_out[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~14_combout\ = ( \RAM|dado_out~9_combout\ & ( \RAM|dado_out[0]~25_combout\ & ( (\CPU|DECODER|saida~0_combout\ & \RAM|dado_out[0]~8_combout\) ) ) ) # ( !\RAM|dado_out~9_combout\ & ( \RAM|dado_out[0]~25_combout\ & ( 
-- \CPU|DECODER|saida~0_combout\ ) ) ) # ( \RAM|dado_out~9_combout\ & ( !\RAM|dado_out[0]~25_combout\ & ( (\CPU|DECODER|saida~0_combout\ & (!\ROM|memROM~15_combout\ & (\RAM|dado_out[0]~8_combout\ & !\habLEDconj~0_combout\))) ) ) ) # ( 
-- !\RAM|dado_out~9_combout\ & ( !\RAM|dado_out[0]~25_combout\ & ( \CPU|DECODER|saida~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000001000000000001010101010101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \ALT_INV_habLEDconj~0_combout\,
	datae => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~25_combout\,
	combout => \RAM|dado_out[0]~14_combout\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\RAM|dado_out[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~15_combout\ = ( \RAM|dado_out~9_combout\ & ( \SW[1]~input_o\ ) ) # ( !\RAM|dado_out~9_combout\ & ( \SW[1]~input_o\ & ( !\CPU|DECODER|saida~0_combout\ ) ) ) # ( \RAM|dado_out~9_combout\ & ( !\SW[1]~input_o\ & ( 
-- (!\CPU|DECODER|saida~0_combout\) # (((!\RAM|dado_out[0]~8_combout\) # (\habLEDconj~0_combout\)) # (\ROM|memROM~15_combout\)) ) ) ) # ( !\RAM|dado_out~9_combout\ & ( !\SW[1]~input_o\ & ( !\CPU|DECODER|saida~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111110111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \ALT_INV_habLEDconj~0_combout\,
	datae => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \RAM|dado_out[1]~15_combout\);

\RAM|dado_out[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~16_combout\ = ( \RAM|dado_out~9_combout\ & ( (\CPU|DECODER|saida~0_combout\ & (!\ROM|memROM~15_combout\ & (\RAM|dado_out[0]~8_combout\ & !\habLEDconj~0_combout\))) ) ) # ( !\RAM|dado_out~9_combout\ & ( \CPU|DECODER|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000001000000000001010101010101010000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \ALT_INV_habLEDconj~0_combout\,
	datae => \RAM|ALT_INV_dado_out~9_combout\,
	combout => \RAM|dado_out[1]~16_combout\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\RAM|dado_out[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[2]~17_combout\ = ( \RAM|dado_out~9_combout\ & ( \SW[2]~input_o\ ) ) # ( !\RAM|dado_out~9_combout\ & ( \SW[2]~input_o\ & ( !\CPU|DECODER|saida~0_combout\ ) ) ) # ( \RAM|dado_out~9_combout\ & ( !\SW[2]~input_o\ & ( 
-- (!\CPU|DECODER|saida~0_combout\) # (((!\RAM|dado_out[0]~8_combout\) # (\habLEDconj~0_combout\)) # (\ROM|memROM~15_combout\)) ) ) ) # ( !\RAM|dado_out~9_combout\ & ( !\SW[2]~input_o\ & ( !\CPU|DECODER|saida~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111110111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \ALT_INV_habLEDconj~0_combout\,
	datae => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \RAM|dado_out[2]~17_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\RAM|dado_out[3]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[3]~18_combout\ = ( \RAM|dado_out~9_combout\ & ( \SW[3]~input_o\ ) ) # ( !\RAM|dado_out~9_combout\ & ( \SW[3]~input_o\ & ( !\CPU|DECODER|saida~0_combout\ ) ) ) # ( \RAM|dado_out~9_combout\ & ( !\SW[3]~input_o\ & ( 
-- (!\CPU|DECODER|saida~0_combout\) # (((!\RAM|dado_out[0]~8_combout\) # (\habLEDconj~0_combout\)) # (\ROM|memROM~15_combout\)) ) ) ) # ( !\RAM|dado_out~9_combout\ & ( !\SW[3]~input_o\ & ( !\CPU|DECODER|saida~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111110111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \ALT_INV_habLEDconj~0_combout\,
	datae => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \RAM|dado_out[3]~18_combout\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\RAM|dado_out[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[4]~19_combout\ = ( \RAM|dado_out~9_combout\ & ( \SW[4]~input_o\ ) ) # ( !\RAM|dado_out~9_combout\ & ( \SW[4]~input_o\ & ( !\CPU|DECODER|saida~0_combout\ ) ) ) # ( \RAM|dado_out~9_combout\ & ( !\SW[4]~input_o\ & ( 
-- (!\CPU|DECODER|saida~0_combout\) # (((!\RAM|dado_out[0]~8_combout\) # (\habLEDconj~0_combout\)) # (\ROM|memROM~15_combout\)) ) ) ) # ( !\RAM|dado_out~9_combout\ & ( !\SW[4]~input_o\ & ( !\CPU|DECODER|saida~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111110111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \ALT_INV_habLEDconj~0_combout\,
	datae => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \RAM|dado_out[4]~19_combout\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\RAM|dado_out[5]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[5]~20_combout\ = ( \RAM|dado_out~9_combout\ & ( \SW[5]~input_o\ ) ) # ( !\RAM|dado_out~9_combout\ & ( \SW[5]~input_o\ & ( !\CPU|DECODER|saida~0_combout\ ) ) ) # ( \RAM|dado_out~9_combout\ & ( !\SW[5]~input_o\ & ( 
-- (!\CPU|DECODER|saida~0_combout\) # (((!\RAM|dado_out[0]~8_combout\) # (\habLEDconj~0_combout\)) # (\ROM|memROM~15_combout\)) ) ) ) # ( !\RAM|dado_out~9_combout\ & ( !\SW[5]~input_o\ & ( !\CPU|DECODER|saida~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111110111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \ALT_INV_habLEDconj~0_combout\,
	datae => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \RAM|dado_out[5]~20_combout\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\RAM|dado_out[6]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[6]~21_combout\ = ( \RAM|dado_out~9_combout\ & ( \SW[6]~input_o\ ) ) # ( !\RAM|dado_out~9_combout\ & ( \SW[6]~input_o\ & ( !\CPU|DECODER|saida~0_combout\ ) ) ) # ( \RAM|dado_out~9_combout\ & ( !\SW[6]~input_o\ & ( 
-- (!\CPU|DECODER|saida~0_combout\) # (((!\RAM|dado_out[0]~8_combout\) # (\habLEDconj~0_combout\)) # (\ROM|memROM~15_combout\)) ) ) ) # ( !\RAM|dado_out~9_combout\ & ( !\SW[6]~input_o\ & ( !\CPU|DECODER|saida~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111110111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \ALT_INV_habLEDconj~0_combout\,
	datae => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \RAM|dado_out[6]~21_combout\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\RAM|dado_out[7]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[7]~22_combout\ = ( \RAM|dado_out~9_combout\ & ( \SW[7]~input_o\ ) ) # ( !\RAM|dado_out~9_combout\ & ( \SW[7]~input_o\ & ( !\CPU|DECODER|saida~0_combout\ ) ) ) # ( \RAM|dado_out~9_combout\ & ( !\SW[7]~input_o\ & ( 
-- (!\CPU|DECODER|saida~0_combout\) # (((!\RAM|dado_out[0]~8_combout\) # (\habLEDconj~0_combout\)) # (\ROM|memROM~15_combout\)) ) ) ) # ( !\RAM|dado_out~9_combout\ & ( !\SW[7]~input_o\ & ( !\CPU|DECODER|saida~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111110111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datad => \ALT_INV_habLEDconj~0_combout\,
	datae => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \RAM|dado_out[7]~22_combout\);

\habLED8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLED8~0_combout\ = (\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~2_combout\ & \ROM|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \habLED8~0_combout\);

\RAM|dado_out[0]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~24_combout\ = ( \RAM|dado_out[0]~12_combout\ & ( !\RAM|dado_out[0]~14_combout\ ) ) # ( !\RAM|dado_out[0]~12_combout\ & ( (!\RAM|dado_out[0]~14_combout\) # ((!\bufferRESET|saida[0]~0_combout\ & (!\RAM|dado_out[0]~10_combout\ & 
-- !\RAM|dado_out[0]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010101010101010101010101011101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[0]~14_combout\,
	datab => \bufferRESET|ALT_INV_saida[0]~0_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~10_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~11_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~12_combout\,
	combout => \RAM|dado_out[0]~24_combout\);

\CPU|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA|Add0~34_cout\);

\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( !\RAM|dado_out[0]~24_combout\ ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA|Add0~34_cout\ ))
-- \CPU|ULA|Add0~2\ = CARRY(( !\RAM|dado_out[0]~24_combout\ ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out[0]~24_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => \CPU|ULA|Add0~34_cout\,
	sumout => \CPU|ULA|Add0~1_sumout\,
	cout => \CPU|ULA|Add0~2\);

\habSWconj~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habSWconj~0_combout\ = (\CPU|DECODER|saida~0_combout\ & (!\ROM|memROM~15_combout\ & \RAM|dado_out[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~8_combout\,
	combout => \habSWconj~0_combout\);

\bufferSWConj|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSWConj|saida[0]~0_combout\ = ( !\habLEDconj~0_combout\ & ( (!\SW[0]~input_o\ & (\CPU|DECODER|saida~0_combout\ & (!\ROM|memROM~15_combout\ & \RAM|dado_out[0]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datae => \ALT_INV_habLEDconj~0_combout\,
	combout => \bufferSWConj|saida[0]~0_combout\);

\RAM|dado_out[0]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~23_combout\ = ( \bufferSW9|saida[0]~0_combout\ & ( \bufferKEY2|saida[0]~0_combout\ & ( (!\habSWconj~0_combout\ & !\bufferSWConj|saida[0]~0_combout\) ) ) ) # ( !\bufferSW9|saida[0]~0_combout\ & ( \bufferKEY2|saida[0]~0_combout\ & ( 
-- (!\habSWconj~0_combout\ & !\bufferSWConj|saida[0]~0_combout\) ) ) ) # ( \bufferSW9|saida[0]~0_combout\ & ( !\bufferKEY2|saida[0]~0_combout\ & ( (!\habSWconj~0_combout\ & !\bufferSWConj|saida[0]~0_combout\) ) ) ) # ( !\bufferSW9|saida[0]~0_combout\ & ( 
-- !\bufferKEY2|saida[0]~0_combout\ & ( (!\bufferSWConj|saida[0]~0_combout\ & ((!\habSWconj~0_combout\) # ((!\bufferSW8|saida[0]~0_combout\ & !\bufferKEY0|saida[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habSWconj~0_combout\,
	datab => \bufferSWConj|ALT_INV_saida[0]~0_combout\,
	datac => \bufferSW8|ALT_INV_saida[0]~0_combout\,
	datad => \bufferKEY0|ALT_INV_saida[0]~0_combout\,
	datae => \bufferSW9|ALT_INV_saida[0]~0_combout\,
	dataf => \bufferKEY2|ALT_INV_saida[0]~0_combout\,
	combout => \RAM|dado_out[0]~23_combout\);

\CPU|MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[0]~0_combout\ = ( \RAM|dado_out[0]~10_combout\ & ( \RAM|dado_out[0]~23_combout\ & ( !\RAM|dado_out[0]~14_combout\ ) ) ) # ( !\RAM|dado_out[0]~10_combout\ & ( \RAM|dado_out[0]~23_combout\ & ( (!\RAM|dado_out[0]~14_combout\) # 
-- (!\bufferRESET|saida[0]~0_combout\) ) ) ) # ( \RAM|dado_out[0]~10_combout\ & ( !\RAM|dado_out[0]~23_combout\ & ( !\RAM|dado_out[0]~14_combout\ ) ) ) # ( !\RAM|dado_out[0]~10_combout\ & ( !\RAM|dado_out[0]~23_combout\ & ( !\RAM|dado_out[0]~14_combout\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out[0]~14_combout\,
	datad => \bufferRESET|ALT_INV_saida[0]~0_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~10_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~23_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[0]~0_combout\);

\CPU|DECODER|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~2_combout\ = (!\ROM|memROM~11_combout\ & (!\ROM|memROM~9_combout\ $ (((!\ROM|memROM~4_combout\) # (!\ROM|memROM~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000000000000111100000000000011110000000000001111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|saida~2_combout\);

\CPU|DECODER|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~3_combout\ = (!\ROM|memROM~4_combout\ & (((\ROM|memROM~11_combout\) # (\ROM|memROM~9_combout\)))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~7_combout\ $ (((!\ROM|memROM~9_combout\ & !\ROM|memROM~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011101110000111101110111000011110111011100001111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|saida~3_combout\);

\CPU|REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~1_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(0));

\CPU|DECODER|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[0]~1_combout\ = (\ROM|memROM~4_combout\ & (\ROM|memROM~7_combout\ & ((!\CPU|PC|DOUT\(3)) # (!\ROM|memROM~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000010000000110000001000000011000000100000001100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER|saida[0]~1_combout\);

\habHEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX1~0_combout\ = (\ROM|memROM~14_combout\ & (\ROM|memROM~8_combout\ & ((!\ROM|memROM~12_combout\) # (\CPU|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000001000000110000000100000011000000010000001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	combout => \habHEX1~0_combout\);

\FFLED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED8|DOUT~0_combout\ = ( \CPU|DECODER|saida[0]~1_combout\ & ( \habHEX1~0_combout\ & ( (!\ROM|memROM~15_combout\ & ((!\habLED8~0_combout\ & (\FFLED8|DOUT~q\)) # (\habLED8~0_combout\ & ((\CPU|REG_A|DOUT\(0)))))) # (\ROM|memROM~15_combout\ & 
-- (\FFLED8|DOUT~q\)) ) ) ) # ( !\CPU|DECODER|saida[0]~1_combout\ & ( \habHEX1~0_combout\ & ( \FFLED8|DOUT~q\ ) ) ) # ( \CPU|DECODER|saida[0]~1_combout\ & ( !\habHEX1~0_combout\ & ( \FFLED8|DOUT~q\ ) ) ) # ( !\CPU|DECODER|saida[0]~1_combout\ & ( 
-- !\habHEX1~0_combout\ & ( \FFLED8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101000101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFLED8|ALT_INV_DOUT~q\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ALT_INV_habLED8~0_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(0),
	datae => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	dataf => \ALT_INV_habHEX1~0_combout\,
	combout => \FFLED8|DOUT~0_combout\);

\FFLED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \FFLED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLED8|DOUT~q\);

\habLED9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLED9~0_combout\ = (!\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & (\ROM|memROM~2_combout\ & \ROM|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \habLED9~0_combout\);

\FFLED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED9|DOUT~0_combout\ = ( \CPU|DECODER|saida[0]~1_combout\ & ( \habHEX1~0_combout\ & ( (!\ROM|memROM~15_combout\ & ((!\habLED9~0_combout\ & (\FFLED9|DOUT~q\)) # (\habLED9~0_combout\ & ((\CPU|REG_A|DOUT\(0)))))) # (\ROM|memROM~15_combout\ & 
-- (\FFLED9|DOUT~q\)) ) ) ) # ( !\CPU|DECODER|saida[0]~1_combout\ & ( \habHEX1~0_combout\ & ( \FFLED9|DOUT~q\ ) ) ) # ( \CPU|DECODER|saida[0]~1_combout\ & ( !\habHEX1~0_combout\ & ( \FFLED9|DOUT~q\ ) ) ) # ( !\CPU|DECODER|saida[0]~1_combout\ & ( 
-- !\habHEX1~0_combout\ & ( \FFLED9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101000101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFLED9|ALT_INV_DOUT~q\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ALT_INV_habLED9~0_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(0),
	datae => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	dataf => \ALT_INV_habHEX1~0_combout\,
	combout => \FFLED9|DOUT~0_combout\);

\FFLED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \FFLED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLED9|DOUT~q\);

\habLEDconj~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLEDconj~1_combout\ = (!\ROM|memROM~15_combout\ & (!\habLEDconj~0_combout\ & (\CPU|DECODER|saida[0]~1_combout\ & \habHEX1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ALT_INV_habLEDconj~0_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	datad => \ALT_INV_habHEX1~0_combout\,
	combout => \habLEDconj~1_combout\);

\RegLEDconj|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(0));

\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( !\RAM|dado_out[1]~15_combout\ ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA|Add0~2\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( !\RAM|dado_out[1]~15_combout\ ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out[1]~15_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	cin => \CPU|ULA|Add0~2\,
	sumout => \CPU|ULA|Add0~5_sumout\,
	cout => \CPU|ULA|Add0~6\);

\CPU|REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~5_sumout\,
	asdata => \RAM|dado_out[1]~15_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(1));

\RegLEDconj|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(1));

\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( !\RAM|dado_out[2]~17_combout\ ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA|Add0~6\ ))
-- \CPU|ULA|Add0~10\ = CARRY(( !\RAM|dado_out[2]~17_combout\ ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out[2]~17_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA|Add0~6\,
	sumout => \CPU|ULA|Add0~9_sumout\,
	cout => \CPU|ULA|Add0~10\);

\CPU|REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~9_sumout\,
	asdata => \RAM|dado_out[2]~17_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(2));

\RegLEDconj|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(2));

\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( !\RAM|dado_out[3]~18_combout\ ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA|Add0~10\ ))
-- \CPU|ULA|Add0~14\ = CARRY(( !\RAM|dado_out[3]~18_combout\ ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out[3]~18_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA|Add0~10\,
	sumout => \CPU|ULA|Add0~13_sumout\,
	cout => \CPU|ULA|Add0~14\);

\CPU|REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~13_sumout\,
	asdata => \RAM|dado_out[3]~18_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(3));

\RegLEDconj|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(3));

\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( !\RAM|dado_out[4]~19_combout\ ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA|Add0~14\ ))
-- \CPU|ULA|Add0~18\ = CARRY(( !\RAM|dado_out[4]~19_combout\ ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out[4]~19_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA|Add0~14\,
	sumout => \CPU|ULA|Add0~17_sumout\,
	cout => \CPU|ULA|Add0~18\);

\CPU|REG_A|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~17_sumout\,
	asdata => \RAM|dado_out[4]~19_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(4));

\RegLEDconj|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(4));

\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( !\RAM|dado_out[5]~20_combout\ ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA|Add0~18\ ))
-- \CPU|ULA|Add0~22\ = CARRY(( !\RAM|dado_out[5]~20_combout\ ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out[5]~20_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	cin => \CPU|ULA|Add0~18\,
	sumout => \CPU|ULA|Add0~21_sumout\,
	cout => \CPU|ULA|Add0~22\);

\CPU|REG_A|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~21_sumout\,
	asdata => \RAM|dado_out[5]~20_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(5));

\RegLEDconj|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(5));

\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( !\RAM|dado_out[6]~21_combout\ ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA|Add0~22\ ))
-- \CPU|ULA|Add0~26\ = CARRY(( !\RAM|dado_out[6]~21_combout\ ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out[6]~21_combout\,
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
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~25_sumout\,
	asdata => \RAM|dado_out[6]~21_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(6));

\RegLEDconj|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(6));

\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( !\RAM|dado_out[7]~22_combout\ ) + ( \CPU|REG_A|DOUT\(7) ) + ( \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out[7]~22_combout\,
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
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~29_sumout\,
	asdata => \RAM|dado_out[7]~22_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(7));

\RegLEDconj|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \habLEDconj~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(7));

\habHEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~1_combout\ = (!\ROM|memROM~15_combout\ & (\habHEX0~0_combout\ & (\CPU|DECODER|saida[0]~1_combout\ & \habHEX1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ALT_INV_habHEX0~0_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	datad => \ALT_INV_habHEX1~0_combout\,
	combout => \habHEX0~1_combout\);

\HEX0_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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
-- \habHEX5~0_combout\ = (\ROM|memROM~0_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \habHEX5~0_combout\);

\habHEX1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX1~1_combout\ = (!\ROM|memROM~15_combout\ & (\habHEX5~0_combout\ & (\CPU|DECODER|saida[0]~1_combout\ & \habHEX1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ALT_INV_habHEX5~0_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	datad => \ALT_INV_habHEX1~0_combout\,
	combout => \habHEX1~1_combout\);

\HEX1_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \habHEX1~1_combout\,
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
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \habHEX1~1_combout\,
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
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \habHEX1~1_combout\,
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
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \habHEX1~1_combout\,
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
-- \habHEX2~0_combout\ = ( \CPU|DECODER|saida[0]~1_combout\ & ( \habHEX1~0_combout\ & ( (!\ROM|memROM~1_combout\ & (\ROM|memROM~3_combout\ & (\ROM|memROM~6_combout\ & !\ROM|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	dataf => \ALT_INV_habHEX1~0_combout\,
	combout => \habHEX2~0_combout\);

\HEX2_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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

\habHEX3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX3~0_combout\ = ( \CPU|DECODER|saida[0]~1_combout\ & ( \habHEX1~0_combout\ & ( (\ROM|memROM~1_combout\ & (\ROM|memROM~3_combout\ & (\ROM|memROM~6_combout\ & !\ROM|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	dataf => \ALT_INV_habHEX1~0_combout\,
	combout => \habHEX3~0_combout\);

\HEX3_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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
-- \habHEX4~0_combout\ = (\ROM|memROM~15_combout\ & (\habHEX0~0_combout\ & (\CPU|DECODER|saida[0]~1_combout\ & \habHEX1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ALT_INV_habHEX0~0_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	datad => \ALT_INV_habHEX1~0_combout\,
	combout => \habHEX4~0_combout\);

\HEX4_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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
-- \habHEX5~combout\ = (\ROM|memROM~15_combout\ & (\habHEX5~0_combout\ & (\CPU|DECODER|saida[0]~1_combout\ & \habHEX1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ALT_INV_habHEX5~0_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[0]~1_combout\,
	datad => \ALT_INV_habHEX1~0_combout\,
	combout => \habHEX5~combout\);

\HEX5_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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
	clk => \clovis~input_o\,
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

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);
END structure;


