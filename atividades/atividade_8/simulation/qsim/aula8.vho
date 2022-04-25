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

-- DATE "04/19/2022 17:39:37"

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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_teste_datain : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_teste_hab : std_logic;
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
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \KEY3~input_o\ : std_logic;
SIGNAL \FPGA_RESST~input_o\ : std_logic;
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
SIGNAL \clovis~input_o\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~2\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~6\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~10\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~14\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~18\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~22\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~26\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~30\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~2_wirecell_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~1_combout\ : std_logic;
SIGNAL \RAM|dado_out~17_combout\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~564_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~16_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~8_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~3_combout\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|dado_out[1]~9_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~2\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~566_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|dado_out[2]~10_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|dado_out[3]~11_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|dado_out[4]~12_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|dado_out[5]~13_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|dado_out[6]~14_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|dado_out[7]~15_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \decoderAddr|Equal7~1_combout\ : std_logic;
SIGNAL \decoderAddr|Equal7~3_combout\ : std_logic;
SIGNAL \decoderAddr|Equal7~2_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~1_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~q\ : std_logic;
SIGNAL \decoderAddr|Equal7~0_combout\ : std_logic;
SIGNAL \FFLED9|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED9|DOUT~q\ : std_logic;
SIGNAL \RegLEDconj|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[7]~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[6]~14_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[5]~13_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[4]~12_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[3]~11_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[2]~10_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[1]~9_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \decoderAddr|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \FFLED8|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \FFLED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FFLED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \CPU|REG_A|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_dado_out~17_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \decoderAddr|ALT_INV_Equal7~3_combout\ : std_logic;
SIGNAL \decoderAddr|ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~16_combout\ : std_logic;

BEGIN

endROM <= ww_endROM;
endRAM <= ww_endRAM;
valorDado <= ww_valorDado;
LEDR <= ww_LEDR;
ww_SW <= SW;
teste_datain <= ww_teste_datain;
teste_hab <= ww_teste_hab;
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
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_dado_out[7]~15_combout\ <= NOT \RAM|dado_out[7]~15_combout\;
\RAM|ALT_INV_dado_out[6]~14_combout\ <= NOT \RAM|dado_out[6]~14_combout\;
\RAM|ALT_INV_dado_out[5]~13_combout\ <= NOT \RAM|dado_out[5]~13_combout\;
\RAM|ALT_INV_dado_out[4]~12_combout\ <= NOT \RAM|dado_out[4]~12_combout\;
\RAM|ALT_INV_dado_out[3]~11_combout\ <= NOT \RAM|dado_out[3]~11_combout\;
\RAM|ALT_INV_dado_out[2]~10_combout\ <= NOT \RAM|dado_out[2]~10_combout\;
\RAM|ALT_INV_dado_out[1]~9_combout\ <= NOT \RAM|dado_out[1]~9_combout\;
\RAM|ALT_INV_dado_out[0]~8_combout\ <= NOT \RAM|dado_out[0]~8_combout\;
\CPU|DECODER|ALT_INV_Equal1~1_combout\ <= NOT \CPU|DECODER|Equal1~1_combout\;
\CPU|DECODER|ALT_INV_saida~1_combout\ <= NOT \CPU|DECODER|saida~1_combout\;
\decoderAddr|ALT_INV_Equal7~0_combout\ <= NOT \decoderAddr|Equal7~0_combout\;
\FFLED8|ALT_INV_DOUT~0_combout\ <= NOT \FFLED8|DOUT~0_combout\;
\CPU|DECODER|ALT_INV_saida~0_combout\ <= NOT \CPU|DECODER|saida~0_combout\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\FFLED9|ALT_INV_DOUT~q\ <= NOT \FFLED9|DOUT~q\;
\FFLED8|ALT_INV_DOUT~q\ <= NOT \FFLED8|DOUT~q\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\RAM|ALT_INV_ram~560_combout\ <= NOT \RAM|ram~560_combout\;
\CPU|REG_A|ALT_INV_DOUT\(7) <= NOT \CPU|REG_A|DOUT\(7);
\CPU|REG_A|ALT_INV_DOUT\(6) <= NOT \CPU|REG_A|DOUT\(6);
\CPU|REG_A|ALT_INV_DOUT\(5) <= NOT \CPU|REG_A|DOUT\(5);
\CPU|REG_A|ALT_INV_DOUT\(4) <= NOT \CPU|REG_A|DOUT\(4);
\CPU|REG_A|ALT_INV_DOUT\(3) <= NOT \CPU|REG_A|DOUT\(3);
\CPU|REG_A|ALT_INV_DOUT\(2) <= NOT \CPU|REG_A|DOUT\(2);
\CPU|REG_A|ALT_INV_DOUT\(1) <= NOT \CPU|REG_A|DOUT\(1);
\CPU|REG_A|ALT_INV_DOUT\(0) <= NOT \CPU|REG_A|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\RAM|ALT_INV_dado_out~17_combout\ <= NOT \RAM|dado_out~17_combout\;
\RAM|ALT_INV_ram~566_combout\ <= NOT \RAM|ram~566_combout\;
\decoderAddr|ALT_INV_Equal7~3_combout\ <= NOT \decoderAddr|Equal7~3_combout\;
\decoderAddr|ALT_INV_Equal7~2_combout\ <= NOT \decoderAddr|Equal7~2_combout\;
\RAM|ALT_INV_ram~559_combout\ <= NOT \RAM|ram~559_combout\;
\RAM|ALT_INV_ram~558_combout\ <= NOT \RAM|ram~558_combout\;
\RAM|ALT_INV_dado_out[0]~16_combout\ <= NOT \RAM|dado_out[0]~16_combout\;

\valorDado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~528_combout\,
	oe => \RAM|dado_out~17_combout\,
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
	i => \RAM|ram~531_combout\,
	oe => \RAM|dado_out~17_combout\,
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
	i => \RAM|ram~535_combout\,
	oe => \RAM|dado_out~17_combout\,
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
	i => \RAM|ram~539_combout\,
	oe => \RAM|dado_out~17_combout\,
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
	i => \RAM|ram~543_combout\,
	oe => \RAM|dado_out~17_combout\,
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
	i => \RAM|ram~547_combout\,
	oe => \RAM|dado_out~17_combout\,
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
	i => \RAM|ram~551_combout\,
	oe => \RAM|dado_out~17_combout\,
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
	i => \RAM|ram~555_combout\,
	oe => \RAM|dado_out~17_combout\,
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
	i => \ROM|ALT_INV_memROM~2_combout\,
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
	i => \ROM|memROM~5_combout\,
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
	i => \ROM|memROM~6_combout\,
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
	i => \ROM|memROM~5_combout\,
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
	i => \ROM|memROM~7_combout\,
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
	i => \RegLEDconj|DOUT\(0),
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
	i => \RegLEDconj|DOUT\(1),
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
	i => \RegLEDconj|DOUT\(2),
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
	i => \RegLEDconj|DOUT\(3),
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
	i => \RegLEDconj|DOUT\(4),
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
	i => \RegLEDconj|DOUT\(5),
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
	i => \RegLEDconj|DOUT\(6),
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
	i => \RegLEDconj|DOUT\(7),
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

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000001111001010000000111100101000000011110010100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010100000010111101010000001011110101000000101111010100000",
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
-- \ROM|memROM~10_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000100000000100000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~10_combout\);

\CPU|DECODER|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~0_combout\ = (\ROM|memROM~1_combout\ & (!\ROM|memROM~8_combout\ & (!\ROM|memROM~9_combout\ & \ROM|memROM~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER|Equal1~0_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~9_sumout\,
	asdata => \ROM|memROM~5_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

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

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & \ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~6_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~13_sumout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

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

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~17_sumout\,
	asdata => \ROM|memROM~5_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

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

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \ROM|memROM~1_combout\ & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~7_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~21_sumout\,
	asdata => \ROM|memROM~7_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
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

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~25_sumout\,
	asdata => \ROM|memROM~5_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
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

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~29_sumout\,
	asdata => \ROM|memROM~7_combout\,
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

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010100000000001101010000000000110101000000000011010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
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

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~33_sumout\,
	asdata => \ROM|memROM~12_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

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
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010000000000100101000000000010010100000000001001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

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

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~5_sumout\,
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010100010000100101010001000010010101000100001001010100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\ROM|memROM~0_combout\) # (!\ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~2_combout\);

\ROM|memROM~2_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_wirecell_combout\ = !\ROM|memROM~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~2_wirecell_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~1_sumout\,
	asdata => \ROM|memROM~2_wirecell_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \ROM|memROM~1_combout\ & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~5_combout\);

\CPU|DECODER|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~0_combout\ = (\ROM|memROM~1_combout\ & (!\ROM|memROM~8_combout\ & !\ROM|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER|saida~0_combout\);

\CPU|DECODER|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~1_combout\ = (\CPU|DECODER|saida~0_combout\ & ((!\ROM|memROM~1_combout\) # (!\ROM|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~0_combout\,
	combout => \CPU|DECODER|saida~1_combout\);

\CPU|DECODER|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~1_combout\ = (\ROM|memROM~1_combout\ & (\ROM|memROM~8_combout\ & (!\ROM|memROM~9_combout\ & \ROM|memROM~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER|Equal1~1_combout\);

\RAM|dado_out~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~17_combout\ = ( !\CPU|PC|DOUT\(0) & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000000000000000000000000000100010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \RAM|dado_out~17_combout\);

\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( \CPU|PC|DOUT\(3) & ( \RAM|ram~23_q\ & ( ((!\ROM|memROM~1_combout\) # (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2)) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \RAM|ram~23_q\ & ( (!\CPU|PC|DOUT\(2)) # ((!\ROM|memROM~1_combout\) # 
-- ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111111111111111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \RAM|ALT_INV_ram~23_q\,
	combout => \RAM|ram~560_combout\);

\RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~564_combout\ = ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~564_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \RAM|ram~558_combout\);

\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( \ROM|memROM~3_combout\ & ( \RAM|ram~558_combout\ & ( (!\ROM|memROM~1_combout\ & (\RAM|ram~15_q\)) # (\ROM|memROM~1_combout\ & ((\CPU|PC|DOUT\(0)))) ) ) ) # ( !\ROM|memROM~3_combout\ & ( \RAM|ram~558_combout\ & ( (\RAM|ram~15_q\ & 
-- ((!\CPU|PC|DOUT\(0)) # (!\ROM|memROM~1_combout\))) ) ) ) # ( \ROM|memROM~3_combout\ & ( !\RAM|ram~558_combout\ & ( (\RAM|ram~15_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\RAM|ram~558_combout\ & ( \RAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010000000001010101010100000101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \RAM|ALT_INV_ram~558_combout\,
	combout => \RAM|ram~556_combout\);

\RAM|dado_out[0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~16_combout\ = ( \RAM|ram~556_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~2_combout\) # (!\ROM|memROM~6_combout\))) ) ) # ( !\RAM|ram~556_combout\ & ( (!\ROM|memROM~7_combout\ & !\ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000101010001010100010001000100010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datae => \RAM|ALT_INV_ram~556_combout\,
	combout => \RAM|dado_out[0]~16_combout\);

\RAM|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~8_combout\ = ( \RAM|ram~560_combout\ & ( \RAM|dado_out[0]~16_combout\ & ( (!\ROM|memROM~5_combout\) # (!\RAM|dado_out~17_combout\) ) ) ) # ( !\RAM|ram~560_combout\ & ( \RAM|dado_out[0]~16_combout\ & ( (!\RAM|dado_out~17_combout\) # 
-- ((!\ROM|memROM~5_combout\ & \ROM|memROM~2_combout\)) ) ) ) # ( \RAM|ram~560_combout\ & ( !\RAM|dado_out[0]~16_combout\ & ( !\RAM|dado_out~17_combout\ ) ) ) # ( !\RAM|ram~560_combout\ & ( !\RAM|dado_out[0]~16_combout\ & ( !\RAM|dado_out~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_dado_out~17_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_ram~560_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~16_combout\,
	combout => \RAM|dado_out[0]~8_combout\);

\CPU|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~34_cout\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	cin => GND,
	cout => \CPU|ULA|Add0~34_cout\);

\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[0]~8_combout\))) # (\CPU|DECODER|saida~1_combout\ & (!\ROM|memROM~2_combout\)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA|Add0~34_cout\ 
-- ))
-- \CPU|ULA|Add0~2\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[0]~8_combout\))) # (\CPU|DECODER|saida~1_combout\ & (!\ROM|memROM~2_combout\)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011010000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~8_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => \CPU|ULA|Add0~34_cout\,
	sumout => \CPU|ULA|Add0~1_sumout\,
	cout => \CPU|ULA|Add0~2\);

\CPU|MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[0]~0_combout\ = ( \CPU|DECODER|saida~1_combout\ & ( \RAM|dado_out~17_combout\ & ( !\ROM|memROM~2_combout\ ) ) ) # ( !\CPU|DECODER|saida~1_combout\ & ( \RAM|dado_out~17_combout\ & ( (!\ROM|memROM~5_combout\ & \RAM|ram~527_combout\) ) 
-- ) ) # ( \CPU|DECODER|saida~1_combout\ & ( !\RAM|dado_out~17_combout\ & ( !\ROM|memROM~2_combout\ ) ) ) # ( !\CPU|DECODER|saida~1_combout\ & ( !\RAM|dado_out~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101010101010101000000000111100001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~527_combout\,
	datae => \CPU|DECODER|ALT_INV_saida~1_combout\,
	dataf => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[0]~0_combout\);

\CPU|DECODER|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~2_combout\ = (\ROM|memROM~1_combout\ & (!\ROM|memROM~10_combout\ & (!\ROM|memROM~8_combout\ $ (\ROM|memROM~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100000000010000010000000001000001000000000100000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER|saida~2_combout\);

\CPU|DECODER|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~3_combout\ = (\ROM|memROM~1_combout\ & (!\ROM|memROM~8_combout\ $ (((\ROM|memROM~10_combout\) # (\ROM|memROM~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100010001010000010001000101000001000100010100000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
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

\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~565_combout\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( \RAM|ram~15_q\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~4_combout\ & ((\RAM|ram~23_q\) # (\ROM|memROM~2_combout\)))) # (\ROM|memROM~6_combout\ & (!\ROM|memROM~2_combout\ & ((\ROM|memROM~4_combout\)))) ) ) # ( !\RAM|ram~15_q\ 
-- & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~6_combout\ & (\RAM|ram~23_q\ & !\ROM|memROM~4_combout\)) # (\ROM|memROM~6_combout\ & ((\ROM|memROM~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100010010011000010001000001000001000100100110000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~23_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_ram~15_q\,
	combout => \RAM|ram~557_combout\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \RAM|ram~557_combout\ & ( (!\ROM|memROM~7_combout\ & !\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_ram~557_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = (!\ROM|memROM~5_combout\ & \RAM|ram~527_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~527_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|dado_out[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~9_combout\ = (!\RAM|dado_out~17_combout\) # ((!\ROM|memROM~5_combout\ & \RAM|ram~530_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001010111111110000101011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~530_combout\,
	datad => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \RAM|dado_out[1]~9_combout\);

\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[1]~9_combout\))) # (\CPU|DECODER|saida~1_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA|Add0~2\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[1]~9_combout\))) # (\CPU|DECODER|saida~1_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_dado_out[1]~9_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(1),
	cin => \CPU|ULA|Add0~2\,
	sumout => \CPU|ULA|Add0~5_sumout\,
	cout => \CPU|ULA|Add0~6\);

\CPU|MUX_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[1]~1_combout\ = ( \CPU|DECODER|saida~1_combout\ & ( \RAM|dado_out~17_combout\ & ( \ROM|memROM~4_combout\ ) ) ) # ( !\CPU|DECODER|saida~1_combout\ & ( \RAM|dado_out~17_combout\ & ( (!\ROM|memROM~5_combout\ & \RAM|ram~530_combout\) ) 
-- ) ) # ( \CPU|DECODER|saida~1_combout\ & ( !\RAM|dado_out~17_combout\ & ( \ROM|memROM~4_combout\ ) ) ) # ( !\CPU|DECODER|saida~1_combout\ & ( !\RAM|dado_out~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010100000000110011000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~530_combout\,
	datae => \CPU|DECODER|ALT_INV_saida~1_combout\,
	dataf => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[1]~1_combout\);

\CPU|REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~5_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(1));

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~566_combout\ = ( \CPU|PC|DOUT\(0) & ( \RAM|ram~24_q\ & ( (!\CPU|PC|DOUT\(3)) # ((!\ROM|memROM~1_combout\) # (\CPU|PC|DOUT\(2))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( \RAM|ram~24_q\ & ( ((!\CPU|PC|DOUT\(2)) # ((!\ROM|memROM~1_combout\) # 
-- (!\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111011111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \RAM|ALT_INV_ram~24_q\,
	combout => \RAM|ram~566_combout\);

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \RAM|ram~559_combout\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \ROM|memROM~3_combout\ & ( \RAM|ram~559_combout\ & ( (\RAM|ram~16_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~3_combout\ & ( \RAM|ram~559_combout\ & ( (\RAM|ram~16_q\ & ((!\CPU|PC|DOUT\(0)) # (!\ROM|memROM~1_combout\))) 
-- ) ) ) # ( \ROM|memROM~3_combout\ & ( !\RAM|ram~559_combout\ & ( (\RAM|ram~16_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\RAM|ram~559_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010000000001010101010100000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \RAM|ALT_INV_ram~559_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~529_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~566_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~566_combout\,
	datab => \RAM|ALT_INV_ram~529_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~530_combout\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = (!\ROM|memROM~5_combout\ & \RAM|ram~530_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~530_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|dado_out[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[2]~10_combout\ = (!\RAM|dado_out~17_combout\) # ((!\ROM|memROM~5_combout\ & \RAM|ram~534_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001010111111110000101011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~534_combout\,
	datad => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \RAM|dado_out[2]~10_combout\);

\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[2]~10_combout\))) # (\CPU|DECODER|saida~1_combout\ & (\ROM|memROM~5_combout\)))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA|Add0~6\ ))
-- \CPU|ULA|Add0~10\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[2]~10_combout\))) # (\CPU|DECODER|saida~1_combout\ & (\ROM|memROM~5_combout\)))) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_dado_out[2]~10_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(2),
	cin => \CPU|ULA|Add0~6\,
	sumout => \CPU|ULA|Add0~9_sumout\,
	cout => \CPU|ULA|Add0~10\);

\CPU|MUX_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[2]~2_combout\ = ( \RAM|dado_out~17_combout\ & ( (!\ROM|memROM~5_combout\ & (\RAM|ram~534_combout\ & !\CPU|DECODER|saida~1_combout\)) # (\ROM|memROM~5_combout\ & ((\CPU|DECODER|saida~1_combout\))) ) ) # ( !\RAM|dado_out~17_combout\ & 
-- ( (!\CPU|DECODER|saida~1_combout\) # (\ROM|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101000010100101010111111111010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~534_combout\,
	datad => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datae => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[2]~2_combout\);

\CPU|REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~9_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(2));

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~25_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~532_combout\);

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~533_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~532_combout\,
	datab => \RAM|ALT_INV_ram~533_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = (!\ROM|memROM~5_combout\ & \RAM|ram~534_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~534_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|dado_out[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[3]~11_combout\ = (!\RAM|dado_out~17_combout\) # ((!\ROM|memROM~5_combout\ & \RAM|ram~538_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001010111111110000101011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~538_combout\,
	datad => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \RAM|dado_out[3]~11_combout\);

\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[3]~11_combout\))) # (\CPU|DECODER|saida~1_combout\ & (\ROM|memROM~6_combout\)))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA|Add0~10\ ))
-- \CPU|ULA|Add0~14\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[3]~11_combout\))) # (\CPU|DECODER|saida~1_combout\ & (\ROM|memROM~6_combout\)))) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_dado_out[3]~11_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA|Add0~10\,
	sumout => \CPU|ULA|Add0~13_sumout\,
	cout => \CPU|ULA|Add0~14\);

\CPU|MUX_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[3]~3_combout\ = ( \CPU|DECODER|saida~1_combout\ & ( \RAM|dado_out~17_combout\ & ( \ROM|memROM~6_combout\ ) ) ) # ( !\CPU|DECODER|saida~1_combout\ & ( \RAM|dado_out~17_combout\ & ( (!\ROM|memROM~5_combout\ & \RAM|ram~538_combout\) ) 
-- ) ) # ( \CPU|DECODER|saida~1_combout\ & ( !\RAM|dado_out~17_combout\ & ( \ROM|memROM~6_combout\ ) ) ) # ( !\CPU|DECODER|saida~1_combout\ & ( !\RAM|dado_out~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010100000000110011000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~538_combout\,
	datae => \CPU|DECODER|ALT_INV_saida~1_combout\,
	dataf => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[3]~3_combout\);

\CPU|REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~13_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(3));

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~26_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~537_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~536_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~536_combout\,
	datab => \RAM|ALT_INV_ram~537_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~538_combout\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = (!\ROM|memROM~5_combout\ & \RAM|ram~538_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~538_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|dado_out[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[4]~12_combout\ = (!\RAM|dado_out~17_combout\) # ((!\ROM|memROM~5_combout\ & \RAM|ram~542_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001010111111110000101011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~542_combout\,
	datad => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \RAM|dado_out[4]~12_combout\);

\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[4]~12_combout\))) # (\CPU|DECODER|saida~1_combout\ & (\ROM|memROM~5_combout\)))) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA|Add0~14\ ))
-- \CPU|ULA|Add0~18\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[4]~12_combout\))) # (\CPU|DECODER|saida~1_combout\ & (\ROM|memROM~5_combout\)))) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_dado_out[4]~12_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA|Add0~14\,
	sumout => \CPU|ULA|Add0~17_sumout\,
	cout => \CPU|ULA|Add0~18\);

\CPU|MUX_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[4]~4_combout\ = ( \RAM|dado_out~17_combout\ & ( (!\ROM|memROM~5_combout\ & (\RAM|ram~542_combout\ & !\CPU|DECODER|saida~1_combout\)) # (\ROM|memROM~5_combout\ & ((\CPU|DECODER|saida~1_combout\))) ) ) # ( !\RAM|dado_out~17_combout\ & 
-- ( (!\CPU|DECODER|saida~1_combout\) # (\ROM|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101000010100101010111111111010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~542_combout\,
	datad => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datae => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[4]~4_combout\);

\CPU|REG_A|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~17_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(4));

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~27_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~540_combout\);

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~541_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~540_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~540_combout\,
	datab => \RAM|ALT_INV_ram~541_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~542_combout\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = (!\ROM|memROM~5_combout\ & \RAM|ram~542_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~542_combout\,
	combout => \RAM|ram~543_combout\);

\RAM|dado_out[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[5]~13_combout\ = (!\RAM|dado_out~17_combout\) # ((!\ROM|memROM~5_combout\ & \RAM|ram~546_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001010111111110000101011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~546_combout\,
	datad => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \RAM|dado_out[5]~13_combout\);

\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[5]~13_combout\))) # (\CPU|DECODER|saida~1_combout\ & (\ROM|memROM~7_combout\)))) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA|Add0~18\ ))
-- \CPU|ULA|Add0~22\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[5]~13_combout\))) # (\CPU|DECODER|saida~1_combout\ & (\ROM|memROM~7_combout\)))) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_dado_out[5]~13_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	cin => \CPU|ULA|Add0~18\,
	sumout => \CPU|ULA|Add0~21_sumout\,
	cout => \CPU|ULA|Add0~22\);

\CPU|MUX_ULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[5]~5_combout\ = ( \CPU|DECODER|saida~1_combout\ & ( \RAM|dado_out~17_combout\ & ( \ROM|memROM~7_combout\ ) ) ) # ( !\CPU|DECODER|saida~1_combout\ & ( \RAM|dado_out~17_combout\ & ( (!\ROM|memROM~5_combout\ & \RAM|ram~546_combout\) ) 
-- ) ) # ( \CPU|DECODER|saida~1_combout\ & ( !\RAM|dado_out~17_combout\ & ( \ROM|memROM~7_combout\ ) ) ) # ( !\CPU|DECODER|saida~1_combout\ & ( !\RAM|dado_out~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010100000000110011000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~546_combout\,
	datae => \CPU|DECODER|ALT_INV_saida~1_combout\,
	dataf => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[5]~5_combout\);

\CPU|REG_A|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~21_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(5));

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~544_combout\);

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~545_combout\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~545_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~544_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~544_combout\,
	datab => \RAM|ALT_INV_ram~545_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = (!\ROM|memROM~5_combout\ & \RAM|ram~546_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~546_combout\,
	combout => \RAM|ram~547_combout\);

\RAM|dado_out[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[6]~14_combout\ = (!\RAM|dado_out~17_combout\) # ((!\ROM|memROM~5_combout\ & \RAM|ram~550_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001010111111110000101011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~550_combout\,
	datad => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \RAM|dado_out[6]~14_combout\);

\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[6]~14_combout\))) # (\CPU|DECODER|saida~1_combout\ & (\ROM|memROM~5_combout\)))) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA|Add0~22\ ))
-- \CPU|ULA|Add0~26\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[6]~14_combout\))) # (\CPU|DECODER|saida~1_combout\ & (\ROM|memROM~5_combout\)))) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_dado_out[6]~14_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(6),
	cin => \CPU|ULA|Add0~22\,
	sumout => \CPU|ULA|Add0~25_sumout\,
	cout => \CPU|ULA|Add0~26\);

\CPU|MUX_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[6]~6_combout\ = ( \RAM|dado_out~17_combout\ & ( (!\ROM|memROM~5_combout\ & (\RAM|ram~550_combout\ & !\CPU|DECODER|saida~1_combout\)) # (\ROM|memROM~5_combout\ & ((\CPU|DECODER|saida~1_combout\))) ) ) # ( !\RAM|dado_out~17_combout\ & 
-- ( (!\CPU|DECODER|saida~1_combout\) # (\ROM|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101000010100101010111111111010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~550_combout\,
	datad => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datae => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[6]~6_combout\);

\CPU|REG_A|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~25_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[6]~6_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(6));

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~29_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~548_combout\);

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~549_combout\);

\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~549_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~548_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~548_combout\,
	datab => \RAM|ALT_INV_ram~549_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~550_combout\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = (!\ROM|memROM~5_combout\ & \RAM|ram~550_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~550_combout\,
	combout => \RAM|ram~551_combout\);

\RAM|dado_out[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[7]~15_combout\ = (!\RAM|dado_out~17_combout\) # ((!\ROM|memROM~5_combout\ & \RAM|ram~554_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001010111111110000101011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~554_combout\,
	datad => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \RAM|dado_out[7]~15_combout\);

\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|DECODER|saida~1_combout\ & ((\RAM|dado_out[7]~15_combout\))) # (\CPU|DECODER|saida~1_combout\ & (\ROM|memROM~7_combout\)))) ) + ( \CPU|REG_A|DOUT\(7) ) + ( \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \RAM|ALT_INV_dado_out[7]~15_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	cin => \CPU|ULA|Add0~26\,
	sumout => \CPU|ULA|Add0~29_sumout\);

\CPU|MUX_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[7]~7_combout\ = ( \CPU|DECODER|saida~1_combout\ & ( \RAM|dado_out~17_combout\ & ( \ROM|memROM~7_combout\ ) ) ) # ( !\CPU|DECODER|saida~1_combout\ & ( \RAM|dado_out~17_combout\ & ( (!\ROM|memROM~5_combout\ & \RAM|ram~554_combout\) ) 
-- ) ) # ( \CPU|DECODER|saida~1_combout\ & ( !\RAM|dado_out~17_combout\ & ( \ROM|memROM~7_combout\ ) ) ) # ( !\CPU|DECODER|saida~1_combout\ & ( !\RAM|dado_out~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010100000000110011000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~554_combout\,
	datae => \CPU|DECODER|ALT_INV_saida~1_combout\,
	dataf => \RAM|ALT_INV_dado_out~17_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[7]~7_combout\);

\CPU|REG_A|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~29_sumout\,
	asdata => \CPU|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => \CPU|DECODER|saida~2_combout\,
	ena => \CPU|DECODER|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(7));

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~552_combout\);

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~553_combout\);

\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~553_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~552_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~552_combout\,
	datab => \RAM|ALT_INV_ram~553_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~554_combout\);

\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = (!\ROM|memROM~5_combout\ & \RAM|ram~554_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~554_combout\,
	combout => \RAM|ram~555_combout\);

\decoderAddr|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderAddr|Equal7~1_combout\ = (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & \ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	combout => \decoderAddr|Equal7~1_combout\);

\RegLEDconj|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \decoderAddr|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(0));

\RegLEDconj|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \decoderAddr|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(1));

\RegLEDconj|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \decoderAddr|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(2));

\RegLEDconj|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \decoderAddr|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(3));

\RegLEDconj|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \decoderAddr|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(4));

\RegLEDconj|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \decoderAddr|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(5));

\RegLEDconj|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \decoderAddr|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(6));

\RegLEDconj|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \decoderAddr|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegLEDconj|DOUT\(7));

\decoderAddr|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderAddr|Equal7~3_combout\ = ( \CPU|PC|DOUT\(0) & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(1))))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100010001000100000000010100000101000100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \decoderAddr|Equal7~3_combout\);

\decoderAddr|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderAddr|Equal7~2_combout\ = ( \CPU|PC|DOUT\(0) & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(1)))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (\ROM|memROM~1_combout\ & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & 
-- \CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010100000001000000000000010000000101000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \decoderAddr|Equal7~2_combout\);

\FFLED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED8|DOUT~0_combout\ = (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & !\ROM|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	combout => \FFLED8|DOUT~0_combout\);

\FFLED8|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED8|DOUT~1_combout\ = ( \decoderAddr|Equal7~2_combout\ & ( \FFLED8|DOUT~0_combout\ & ( (!\CPU|DECODER|saida~0_combout\ & (\FFLED8|DOUT~q\)) # (\CPU|DECODER|saida~0_combout\ & ((!\decoderAddr|Equal7~3_combout\ & (\FFLED8|DOUT~q\)) # 
-- (\decoderAddr|Equal7~3_combout\ & ((\CPU|REG_A|DOUT\(0)))))) ) ) ) # ( !\decoderAddr|Equal7~2_combout\ & ( \FFLED8|DOUT~0_combout\ & ( \FFLED8|DOUT~q\ ) ) ) # ( \decoderAddr|Equal7~2_combout\ & ( !\FFLED8|DOUT~0_combout\ & ( \FFLED8|DOUT~q\ ) ) ) # ( 
-- !\decoderAddr|Equal7~2_combout\ & ( !\FFLED8|DOUT~0_combout\ & ( \FFLED8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFLED8|ALT_INV_DOUT~q\,
	datab => \CPU|REG_A|ALT_INV_DOUT\(0),
	datac => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datad => \decoderAddr|ALT_INV_Equal7~3_combout\,
	datae => \decoderAddr|ALT_INV_Equal7~2_combout\,
	dataf => \FFLED8|ALT_INV_DOUT~0_combout\,
	combout => \FFLED8|DOUT~1_combout\);

\FFLED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \FFLED8|DOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLED8|DOUT~q\);

\decoderAddr|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderAddr|Equal7~0_combout\ = (\ROM|memROM~2_combout\ & (\CPU|DECODER|saida~0_combout\ & (\decoderAddr|Equal7~3_combout\ & \decoderAddr|Equal7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datac => \decoderAddr|ALT_INV_Equal7~3_combout\,
	datad => \decoderAddr|ALT_INV_Equal7~2_combout\,
	combout => \decoderAddr|Equal7~0_combout\);

\FFLED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED9|DOUT~0_combout\ = (!\ROM|memROM~4_combout\ & (\FFLED9|DOUT~q\)) # (\ROM|memROM~4_combout\ & ((!\decoderAddr|Equal7~0_combout\ & (\FFLED9|DOUT~q\)) # (\decoderAddr|Equal7~0_combout\ & ((\CPU|REG_A|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100111001100110010011100110011001001110011001100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \FFLED9|ALT_INV_DOUT~q\,
	datac => \CPU|REG_A|ALT_INV_DOUT\(0),
	datad => \decoderAddr|ALT_INV_Equal7~0_combout\,
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

\KEY0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

\KEY1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

\KEY2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY2,
	o => \KEY2~input_o\);

\KEY3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY3,
	o => \KEY3~input_o\);

\FPGA_RESST~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESST,
	o => \FPGA_RESST~input_o\);

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
END structure;


