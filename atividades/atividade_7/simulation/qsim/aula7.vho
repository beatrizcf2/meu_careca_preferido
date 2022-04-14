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

-- DATE "04/14/2022 09:31:04"

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
	LED8 : OUT std_logic;
	LED9 : OUT std_logic;
	LEDconj : OUT std_logic_vector(7 DOWNTO 0);
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
SIGNAL ww_LED8 : std_logic;
SIGNAL ww_LED9 : std_logic;
SIGNAL ww_LEDconj : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_clovis : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
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
SIGNAL \LED8~output_o\ : std_logic;
SIGNAL \LED9~output_o\ : std_logic;
SIGNAL \LEDconj[0]~output_o\ : std_logic;
SIGNAL \LEDconj[1]~output_o\ : std_logic;
SIGNAL \LEDconj[2]~output_o\ : std_logic;
SIGNAL \LEDconj[3]~output_o\ : std_logic;
SIGNAL \LEDconj[4]~output_o\ : std_logic;
SIGNAL \LEDconj[5]~output_o\ : std_logic;
SIGNAL \LEDconj[6]~output_o\ : std_logic;
SIGNAL \LEDconj[7]~output_o\ : std_logic;
SIGNAL \clovis~input_o\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~18\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~22\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~26\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~30\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~2\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~6\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~10\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~14\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~1_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DECODER|saida~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~1_combout\ : std_logic;
SIGNAL \habLED8~0_combout\ : std_logic;
SIGNAL \habLED8~1_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|ram~591_combout\ : std_logic;
SIGNAL \RAM|ram~183_q\ : std_logic;
SIGNAL \RAM|ram~592_combout\ : std_logic;
SIGNAL \RAM|ram~175_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~593_combout\ : std_logic;
SIGNAL \RAM|ram~199_q\ : std_logic;
SIGNAL \RAM|ram~594_combout\ : std_logic;
SIGNAL \RAM|ram~191_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~595_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~596_combout\ : std_logic;
SIGNAL \RAM|ram~87_q\ : std_logic;
SIGNAL \RAM|ram~597_combout\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|ram~598_combout\ : std_logic;
SIGNAL \RAM|ram~103_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~599_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~600_combout\ : std_logic;
SIGNAL \RAM|ram~79_q\ : std_logic;
SIGNAL \RAM|ram~601_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~602_combout\ : std_logic;
SIGNAL \RAM|ram~95_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~603_combout\ : std_logic;
SIGNAL \RAM|ram~343_q\ : std_logic;
SIGNAL \RAM|ram~604_combout\ : std_logic;
SIGNAL \RAM|ram~359_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~605_combout\ : std_logic;
SIGNAL \RAM|ram~335_q\ : std_logic;
SIGNAL \RAM|ram~606_combout\ : std_logic;
SIGNAL \RAM|ram~351_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|dado_out~0_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~2\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \RAM|ram~184_q\ : std_logic;
SIGNAL \RAM|ram~176_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~200_q\ : std_logic;
SIGNAL \RAM|ram~192_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~88_q\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|ram~104_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~80_q\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~96_q\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~344_q\ : std_logic;
SIGNAL \RAM|ram~360_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~336_q\ : std_logic;
SIGNAL \RAM|ram~352_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \RAM|ram~185_q\ : std_logic;
SIGNAL \RAM|ram~177_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~201_q\ : std_logic;
SIGNAL \RAM|ram~193_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~89_q\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|ram~105_q\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~81_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~97_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~345_q\ : std_logic;
SIGNAL \RAM|ram~361_q\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|ram~337_q\ : std_logic;
SIGNAL \RAM|ram~353_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \RAM|ram~186_q\ : std_logic;
SIGNAL \RAM|ram~178_q\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~202_q\ : std_logic;
SIGNAL \RAM|ram~194_q\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~90_q\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|ram~106_q\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~82_q\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~98_q\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~346_q\ : std_logic;
SIGNAL \RAM|ram~362_q\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~338_q\ : std_logic;
SIGNAL \RAM|ram~354_q\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \RAM|ram~187_q\ : std_logic;
SIGNAL \RAM|ram~179_q\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~203_q\ : std_logic;
SIGNAL \RAM|ram~195_q\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~91_q\ : std_logic;
SIGNAL \RAM|ram~43_q\ : std_logic;
SIGNAL \RAM|ram~107_q\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~83_q\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~99_q\ : std_logic;
SIGNAL \RAM|ram~562_combout\ : std_logic;
SIGNAL \RAM|ram~347_q\ : std_logic;
SIGNAL \RAM|ram~363_q\ : std_logic;
SIGNAL \RAM|ram~563_combout\ : std_logic;
SIGNAL \RAM|ram~339_q\ : std_logic;
SIGNAL \RAM|ram~355_q\ : std_logic;
SIGNAL \RAM|ram~564_combout\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \RAM|ram~566_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \RAM|ram~188_q\ : std_logic;
SIGNAL \RAM|ram~180_q\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \RAM|ram~204_q\ : std_logic;
SIGNAL \RAM|ram~196_q\ : std_logic;
SIGNAL \RAM|ram~568_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~92_q\ : std_logic;
SIGNAL \RAM|ram~44_q\ : std_logic;
SIGNAL \RAM|ram~108_q\ : std_logic;
SIGNAL \RAM|ram~569_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~84_q\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~100_q\ : std_logic;
SIGNAL \RAM|ram~570_combout\ : std_logic;
SIGNAL \RAM|ram~348_q\ : std_logic;
SIGNAL \RAM|ram~364_q\ : std_logic;
SIGNAL \RAM|ram~571_combout\ : std_logic;
SIGNAL \RAM|ram~340_q\ : std_logic;
SIGNAL \RAM|ram~356_q\ : std_logic;
SIGNAL \RAM|ram~572_combout\ : std_logic;
SIGNAL \RAM|ram~573_combout\ : std_logic;
SIGNAL \RAM|ram~574_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \RAM|ram~189_q\ : std_logic;
SIGNAL \RAM|ram~181_q\ : std_logic;
SIGNAL \RAM|ram~575_combout\ : std_logic;
SIGNAL \RAM|ram~205_q\ : std_logic;
SIGNAL \RAM|ram~197_q\ : std_logic;
SIGNAL \RAM|ram~576_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~93_q\ : std_logic;
SIGNAL \RAM|ram~45_q\ : std_logic;
SIGNAL \RAM|ram~109_q\ : std_logic;
SIGNAL \RAM|ram~577_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~85_q\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~101_q\ : std_logic;
SIGNAL \RAM|ram~578_combout\ : std_logic;
SIGNAL \RAM|ram~349_q\ : std_logic;
SIGNAL \RAM|ram~365_q\ : std_logic;
SIGNAL \RAM|ram~579_combout\ : std_logic;
SIGNAL \RAM|ram~341_q\ : std_logic;
SIGNAL \RAM|ram~357_q\ : std_logic;
SIGNAL \RAM|ram~580_combout\ : std_logic;
SIGNAL \RAM|ram~581_combout\ : std_logic;
SIGNAL \RAM|ram~582_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \RAM|ram~190_q\ : std_logic;
SIGNAL \RAM|ram~182_q\ : std_logic;
SIGNAL \RAM|ram~583_combout\ : std_logic;
SIGNAL \RAM|ram~206_q\ : std_logic;
SIGNAL \RAM|ram~198_q\ : std_logic;
SIGNAL \RAM|ram~584_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~94_q\ : std_logic;
SIGNAL \RAM|ram~46_q\ : std_logic;
SIGNAL \RAM|ram~110_q\ : std_logic;
SIGNAL \RAM|ram~585_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~86_q\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~102_q\ : std_logic;
SIGNAL \RAM|ram~586_combout\ : std_logic;
SIGNAL \RAM|ram~350_q\ : std_logic;
SIGNAL \RAM|ram~366_q\ : std_logic;
SIGNAL \RAM|ram~587_combout\ : std_logic;
SIGNAL \RAM|ram~342_q\ : std_logic;
SIGNAL \RAM|ram~358_q\ : std_logic;
SIGNAL \RAM|ram~588_combout\ : std_logic;
SIGNAL \RAM|ram~589_combout\ : std_logic;
SIGNAL \RAM|ram~590_combout\ : std_logic;
SIGNAL \habLED8~2_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~q\ : std_logic;
SIGNAL \habLED9~0_combout\ : std_logic;
SIGNAL \FFLED9|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED9|DOUT~q\ : std_logic;
SIGNAL \habLEDconj~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FFLEDconj|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \ALT_INV_habLED8~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
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
SIGNAL \CPU|REG_A|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_habLED9~0_combout\ : std_logic;
SIGNAL \ALT_INV_habLED8~2_combout\ : std_logic;
SIGNAL \ALT_INV_habLED8~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~94_q\ : std_logic;

BEGIN

endROM <= ww_endROM;
endRAM <= ww_endRAM;
valorDado <= ww_valorDado;
LED8 <= ww_LED8;
LED9 <= ww_LED9;
LEDconj <= ww_LEDconj;
ww_CLOCK_50 <= CLOCK_50;
ww_clovis <= clovis;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~352_q\ <= NOT \RAM|ram~352_q\;
\RAM|ALT_INV_ram~336_q\ <= NOT \RAM|ram~336_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~360_q\ <= NOT \RAM|ram~360_q\;
\RAM|ALT_INV_ram~344_q\ <= NOT \RAM|ram~344_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~96_q\ <= NOT \RAM|ram~96_q\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~80_q\ <= NOT \RAM|ram~80_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~104_q\ <= NOT \RAM|ram~104_q\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\RAM|ALT_INV_ram~88_q\ <= NOT \RAM|ram~88_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~192_q\ <= NOT \RAM|ram~192_q\;
\RAM|ALT_INV_ram~200_q\ <= NOT \RAM|ram~200_q\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~176_q\ <= NOT \RAM|ram~176_q\;
\RAM|ALT_INV_ram~184_q\ <= NOT \RAM|ram~184_q\;
\ALT_INV_habLED8~0_combout\ <= NOT \habLED8~0_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~351_q\ <= NOT \RAM|ram~351_q\;
\RAM|ALT_INV_ram~335_q\ <= NOT \RAM|ram~335_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~359_q\ <= NOT \RAM|ram~359_q\;
\RAM|ALT_INV_ram~343_q\ <= NOT \RAM|ram~343_q\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~95_q\ <= NOT \RAM|ram~95_q\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~79_q\ <= NOT \RAM|ram~79_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~103_q\ <= NOT \RAM|ram~103_q\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\RAM|ALT_INV_ram~87_q\ <= NOT \RAM|ram~87_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~191_q\ <= NOT \RAM|ram~191_q\;
\RAM|ALT_INV_ram~199_q\ <= NOT \RAM|ram~199_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~175_q\ <= NOT \RAM|ram~175_q\;
\RAM|ALT_INV_ram~183_q\ <= NOT \RAM|ram~183_q\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
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
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~584_combout\ <= NOT \RAM|ram~584_combout\;
\RAM|ALT_INV_ram~198_q\ <= NOT \RAM|ram~198_q\;
\RAM|ALT_INV_ram~206_q\ <= NOT \RAM|ram~206_q\;
\RAM|ALT_INV_ram~583_combout\ <= NOT \RAM|ram~583_combout\;
\RAM|ALT_INV_ram~182_q\ <= NOT \RAM|ram~182_q\;
\RAM|ALT_INV_ram~190_q\ <= NOT \RAM|ram~190_q\;
\RAM|ALT_INV_ram~581_combout\ <= NOT \RAM|ram~581_combout\;
\RAM|ALT_INV_ram~580_combout\ <= NOT \RAM|ram~580_combout\;
\RAM|ALT_INV_ram~357_q\ <= NOT \RAM|ram~357_q\;
\RAM|ALT_INV_ram~341_q\ <= NOT \RAM|ram~341_q\;
\RAM|ALT_INV_ram~579_combout\ <= NOT \RAM|ram~579_combout\;
\RAM|ALT_INV_ram~365_q\ <= NOT \RAM|ram~365_q\;
\RAM|ALT_INV_ram~349_q\ <= NOT \RAM|ram~349_q\;
\RAM|ALT_INV_ram~578_combout\ <= NOT \RAM|ram~578_combout\;
\RAM|ALT_INV_ram~101_q\ <= NOT \RAM|ram~101_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~85_q\ <= NOT \RAM|ram~85_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~577_combout\ <= NOT \RAM|ram~577_combout\;
\RAM|ALT_INV_ram~109_q\ <= NOT \RAM|ram~109_q\;
\RAM|ALT_INV_ram~45_q\ <= NOT \RAM|ram~45_q\;
\RAM|ALT_INV_ram~93_q\ <= NOT \RAM|ram~93_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~576_combout\ <= NOT \RAM|ram~576_combout\;
\RAM|ALT_INV_ram~197_q\ <= NOT \RAM|ram~197_q\;
\RAM|ALT_INV_ram~205_q\ <= NOT \RAM|ram~205_q\;
\RAM|ALT_INV_ram~575_combout\ <= NOT \RAM|ram~575_combout\;
\RAM|ALT_INV_ram~181_q\ <= NOT \RAM|ram~181_q\;
\RAM|ALT_INV_ram~189_q\ <= NOT \RAM|ram~189_q\;
\RAM|ALT_INV_ram~573_combout\ <= NOT \RAM|ram~573_combout\;
\RAM|ALT_INV_ram~572_combout\ <= NOT \RAM|ram~572_combout\;
\RAM|ALT_INV_ram~356_q\ <= NOT \RAM|ram~356_q\;
\RAM|ALT_INV_ram~340_q\ <= NOT \RAM|ram~340_q\;
\RAM|ALT_INV_ram~571_combout\ <= NOT \RAM|ram~571_combout\;
\RAM|ALT_INV_ram~364_q\ <= NOT \RAM|ram~364_q\;
\RAM|ALT_INV_ram~348_q\ <= NOT \RAM|ram~348_q\;
\RAM|ALT_INV_ram~570_combout\ <= NOT \RAM|ram~570_combout\;
\RAM|ALT_INV_ram~100_q\ <= NOT \RAM|ram~100_q\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~84_q\ <= NOT \RAM|ram~84_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~569_combout\ <= NOT \RAM|ram~569_combout\;
\RAM|ALT_INV_ram~108_q\ <= NOT \RAM|ram~108_q\;
\RAM|ALT_INV_ram~44_q\ <= NOT \RAM|ram~44_q\;
\RAM|ALT_INV_ram~92_q\ <= NOT \RAM|ram~92_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~568_combout\ <= NOT \RAM|ram~568_combout\;
\RAM|ALT_INV_ram~196_q\ <= NOT \RAM|ram~196_q\;
\RAM|ALT_INV_ram~204_q\ <= NOT \RAM|ram~204_q\;
\RAM|ALT_INV_ram~567_combout\ <= NOT \RAM|ram~567_combout\;
\RAM|ALT_INV_ram~180_q\ <= NOT \RAM|ram~180_q\;
\RAM|ALT_INV_ram~188_q\ <= NOT \RAM|ram~188_q\;
\RAM|ALT_INV_ram~565_combout\ <= NOT \RAM|ram~565_combout\;
\RAM|ALT_INV_ram~564_combout\ <= NOT \RAM|ram~564_combout\;
\RAM|ALT_INV_ram~355_q\ <= NOT \RAM|ram~355_q\;
\RAM|ALT_INV_ram~339_q\ <= NOT \RAM|ram~339_q\;
\RAM|ALT_INV_ram~563_combout\ <= NOT \RAM|ram~563_combout\;
\RAM|ALT_INV_ram~363_q\ <= NOT \RAM|ram~363_q\;
\RAM|ALT_INV_ram~347_q\ <= NOT \RAM|ram~347_q\;
\RAM|ALT_INV_ram~562_combout\ <= NOT \RAM|ram~562_combout\;
\RAM|ALT_INV_ram~99_q\ <= NOT \RAM|ram~99_q\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~83_q\ <= NOT \RAM|ram~83_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\RAM|ALT_INV_ram~107_q\ <= NOT \RAM|ram~107_q\;
\RAM|ALT_INV_ram~43_q\ <= NOT \RAM|ram~43_q\;
\RAM|ALT_INV_ram~91_q\ <= NOT \RAM|ram~91_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~560_combout\ <= NOT \RAM|ram~560_combout\;
\RAM|ALT_INV_ram~195_q\ <= NOT \RAM|ram~195_q\;
\RAM|ALT_INV_ram~203_q\ <= NOT \RAM|ram~203_q\;
\RAM|ALT_INV_ram~559_combout\ <= NOT \RAM|ram~559_combout\;
\RAM|ALT_INV_ram~179_q\ <= NOT \RAM|ram~179_q\;
\RAM|ALT_INV_ram~187_q\ <= NOT \RAM|ram~187_q\;
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~354_q\ <= NOT \RAM|ram~354_q\;
\RAM|ALT_INV_ram~338_q\ <= NOT \RAM|ram~338_q\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\RAM|ALT_INV_ram~362_q\ <= NOT \RAM|ram~362_q\;
\RAM|ALT_INV_ram~346_q\ <= NOT \RAM|ram~346_q\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~98_q\ <= NOT \RAM|ram~98_q\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~82_q\ <= NOT \RAM|ram~82_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~106_q\ <= NOT \RAM|ram~106_q\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~90_q\ <= NOT \RAM|ram~90_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~194_q\ <= NOT \RAM|ram~194_q\;
\RAM|ALT_INV_ram~202_q\ <= NOT \RAM|ram~202_q\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~178_q\ <= NOT \RAM|ram~178_q\;
\RAM|ALT_INV_ram~186_q\ <= NOT \RAM|ram~186_q\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~353_q\ <= NOT \RAM|ram~353_q\;
\RAM|ALT_INV_ram~337_q\ <= NOT \RAM|ram~337_q\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~361_q\ <= NOT \RAM|ram~361_q\;
\RAM|ALT_INV_ram~345_q\ <= NOT \RAM|ram~345_q\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~97_q\ <= NOT \RAM|ram~97_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~81_q\ <= NOT \RAM|ram~81_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~105_q\ <= NOT \RAM|ram~105_q\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~89_q\ <= NOT \RAM|ram~89_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~193_q\ <= NOT \RAM|ram~193_q\;
\RAM|ALT_INV_ram~201_q\ <= NOT \RAM|ram~201_q\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~177_q\ <= NOT \RAM|ram~177_q\;
\RAM|ALT_INV_ram~185_q\ <= NOT \RAM|ram~185_q\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\CPU|DECODER|ALT_INV_Equal1~1_combout\ <= NOT \CPU|DECODER|Equal1~1_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\ALT_INV_habLED9~0_combout\ <= NOT \habLED9~0_combout\;
\ALT_INV_habLED8~2_combout\ <= NOT \habLED8~2_combout\;
\ALT_INV_habLED8~1_combout\ <= NOT \habLED8~1_combout\;
\RAM|ALT_INV_ram~589_combout\ <= NOT \RAM|ram~589_combout\;
\RAM|ALT_INV_ram~588_combout\ <= NOT \RAM|ram~588_combout\;
\RAM|ALT_INV_ram~358_q\ <= NOT \RAM|ram~358_q\;
\RAM|ALT_INV_ram~342_q\ <= NOT \RAM|ram~342_q\;
\RAM|ALT_INV_ram~587_combout\ <= NOT \RAM|ram~587_combout\;
\RAM|ALT_INV_ram~366_q\ <= NOT \RAM|ram~366_q\;
\RAM|ALT_INV_ram~350_q\ <= NOT \RAM|ram~350_q\;
\RAM|ALT_INV_ram~586_combout\ <= NOT \RAM|ram~586_combout\;
\RAM|ALT_INV_ram~102_q\ <= NOT \RAM|ram~102_q\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~86_q\ <= NOT \RAM|ram~86_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~585_combout\ <= NOT \RAM|ram~585_combout\;
\RAM|ALT_INV_ram~110_q\ <= NOT \RAM|ram~110_q\;
\RAM|ALT_INV_ram~46_q\ <= NOT \RAM|ram~46_q\;
\RAM|ALT_INV_ram~94_q\ <= NOT \RAM|ram~94_q\;

\valorDado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~534_combout\,
	oe => \RAM|dado_out~0_combout\,
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
	i => \RAM|ram~542_combout\,
	oe => \RAM|dado_out~0_combout\,
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
	i => \RAM|ram~550_combout\,
	oe => \RAM|dado_out~0_combout\,
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
	i => \RAM|ram~558_combout\,
	oe => \RAM|dado_out~0_combout\,
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
	i => \RAM|ram~566_combout\,
	oe => \RAM|dado_out~0_combout\,
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
	i => \RAM|ram~574_combout\,
	oe => \RAM|dado_out~0_combout\,
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
	i => \RAM|ram~582_combout\,
	oe => \RAM|dado_out~0_combout\,
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
	i => \RAM|ram~590_combout\,
	oe => \RAM|dado_out~0_combout\,
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
	i => \ROM|memROM~7_combout\,
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
	i => \ROM|memROM~6_combout\,
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
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => \endRAM[5]~output_o\);

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
	o => \LED8~output_o\);

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
	o => \LED9~output_o\);

\LEDconj[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FFLEDconj|DOUT\(0),
	devoe => ww_devoe,
	o => \LEDconj[0]~output_o\);

\LEDconj[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FFLEDconj|DOUT\(1),
	devoe => ww_devoe,
	o => \LEDconj[1]~output_o\);

\LEDconj[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FFLEDconj|DOUT\(2),
	devoe => ww_devoe,
	o => \LEDconj[2]~output_o\);

\LEDconj[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FFLEDconj|DOUT\(3),
	devoe => ww_devoe,
	o => \LEDconj[3]~output_o\);

\LEDconj[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FFLEDconj|DOUT\(4),
	devoe => ww_devoe,
	o => \LEDconj[4]~output_o\);

\LEDconj[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FFLEDconj|DOUT\(5),
	devoe => ww_devoe,
	o => \LEDconj[5]~output_o\);

\LEDconj[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FFLEDconj|DOUT\(6),
	devoe => ww_devoe,
	o => \LEDconj[6]~output_o\);

\LEDconj[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FFLEDconj|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDconj[7]~output_o\);

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

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \ROM|memROM~5_combout\ & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) )

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
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(2)))))

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
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))

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
	combout => \ROM|memROM~10_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3)))))

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
	combout => \ROM|memROM~11_combout\);

\CPU|DECODER|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~0_combout\ = (\ROM|memROM~5_combout\ & (!\ROM|memROM~9_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|Equal1~0_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~21_sumout\,
	asdata => \ROM|memROM~8_combout\,
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

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \ROM|memROM~5_combout\ & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) )

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
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~25_sumout\,
	asdata => \ROM|memROM~6_combout\,
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
	asdata => \ROM|memROM~8_combout\,
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

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1)))))

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
	combout => \ROM|memROM~15_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~15_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

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

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~2_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~1_sumout\,
	asdata => \ROM|memROM~2_combout\,
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
-- \ROM|memROM~4_combout\ = (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
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
	asdata => \ROM|memROM~6_combout\,
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

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & \ROM|memROM~5_combout\)))

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
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~7_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~13_sumout\,
	asdata => \ROM|memROM~7_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|PC_INC|Add0~17_sumout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

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
	combout => \ROM|memROM~5_combout\);

\CPU|DECODER|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~1_combout\ = (\ROM|memROM~5_combout\ & (\ROM|memROM~9_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|Equal1~1_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (!\ROM|memROM~0_combout\) # (!\ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~13_combout\);

\CPU|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~34_cout\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	cin => GND,
	cout => \CPU|ULA|Add0~34_cout\);

\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(7) & !\ROM|memROM~13_combout\)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA|Add0~34_cout\ ))
-- \CPU|ULA|Add0~2\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(7) & !\ROM|memROM~13_combout\)))) ) + ( \CPU|REG_A|DOUT\(0) ) + ( \CPU|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	cin => \CPU|ULA|Add0~34_cout\,
	sumout => \CPU|ULA|Add0~1_sumout\,
	cout => \CPU|ULA|Add0~2\);

\CPU|DECODER|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~0_combout\ = (\ROM|memROM~5_combout\ & (!\ROM|memROM~11_combout\ & (!\ROM|memROM~9_combout\ $ (\ROM|memROM~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100000000010000010000000001000001000000000100000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|saida~0_combout\);

\CPU|DECODER|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~1_combout\ = (\ROM|memROM~5_combout\ & (!\ROM|memROM~9_combout\ $ (((\ROM|memROM~11_combout\) # (\ROM|memROM~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100010001010000010001000101000001000100010100000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|saida~1_combout\);

\CPU|REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|ULA|Add0~1_sumout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(0));

\habLED8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLED8~0_combout\ = ( \ROM|memROM~5_combout\ & ( (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010100000000000000000000000000000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \habLED8~0_combout\);

\habLED8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLED8~1_combout\ = (\ROM|memROM~5_combout\ & (!\ROM|memROM~9_combout\ & (\ROM|memROM~10_combout\ & !\ROM|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \habLED8~1_combout\);

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = (!\ROM|memROM~12_combout\ & (!\habLED8~0_combout\ & \habLED8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ALT_INV_habLED8~0_combout\,
	datac => \ALT_INV_habLED8~1_combout\,
	combout => \RAM|process_0~0_combout\);

\RAM|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~591_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~6_combout\ & (!\ROM|memROM~4_combout\ & \ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~591_combout\);

\RAM|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~183_q\);

\RAM|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~592_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~6_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~592_combout\);

\RAM|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~175_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~183_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~175_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~183_q\,
	datab => \RAM|ALT_INV_ram~175_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~593_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~6_combout\ & (\ROM|memROM~4_combout\ & \ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~593_combout\);

\RAM|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~199_q\);

\RAM|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~594_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~6_combout\ & (\ROM|memROM~4_combout\ & !\ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~594_combout\);

\RAM|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~191_q\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~199_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~191_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~199_q\,
	datab => \RAM|ALT_INV_ram~191_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~595_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ & (!\ROM|memROM~4_combout\ & \ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~595_combout\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~596_combout\ = ( \ROM|memROM~2_combout\ & ( \RAM|process_0~0_combout\ & ( (\CPU|PC|DOUT\(1) & (\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~596_combout\);

\RAM|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~87_q\);

\RAM|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~597_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ & (\ROM|memROM~4_combout\ & \ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~597_combout\);

\RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~39_q\);

\RAM|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~598_combout\ = ( \ROM|memROM~2_combout\ & ( \RAM|process_0~0_combout\ & ( (\CPU|PC|DOUT\(1) & (\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~598_combout\);

\RAM|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~103_q\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~103_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~39_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~87_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datab => \RAM|ALT_INV_ram~87_q\,
	datac => \RAM|ALT_INV_ram~39_q\,
	datad => \RAM|ALT_INV_ram~103_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~599_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~599_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~600_combout\ = ( !\ROM|memROM~2_combout\ & ( \RAM|process_0~0_combout\ & ( (\CPU|PC|DOUT\(1) & (\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~600_combout\);

\RAM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~79_q\);

\RAM|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~601_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ & (\ROM|memROM~4_combout\ & !\ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~601_combout\);

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~602_combout\ = ( !\ROM|memROM~2_combout\ & ( \RAM|process_0~0_combout\ & ( (\CPU|PC|DOUT\(1) & (\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~602_combout\);

\RAM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~95_q\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~95_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~31_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~79_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~15_q\ ) ) )

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
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~530_combout\);

\RAM|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~603_combout\ = ( \ROM|memROM~2_combout\ & ( \RAM|process_0~0_combout\ & ( (!\CPU|PC|DOUT\(1) & (\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~603_combout\);

\RAM|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~343_q\);

\RAM|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~604_combout\ = ( \ROM|memROM~2_combout\ & ( \RAM|process_0~0_combout\ & ( (!\CPU|PC|DOUT\(1) & (\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~604_combout\);

\RAM|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~359_q\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~359_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~343_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~343_q\,
	datad => \RAM|ALT_INV_ram~359_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~605_combout\ = ( !\ROM|memROM~2_combout\ & ( \RAM|process_0~0_combout\ & ( (!\CPU|PC|DOUT\(1) & (\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~605_combout\);

\RAM|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~335_q\);

\RAM|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~606_combout\ = ( !\ROM|memROM~2_combout\ & ( \RAM|process_0~0_combout\ & ( (!\CPU|PC|DOUT\(1) & (\ROM|memROM~7_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~606_combout\);

\RAM|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \RAM|ram~606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~351_q\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~351_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~335_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~335_q\,
	datad => \RAM|ALT_INV_ram~351_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~532_combout\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~531_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~532_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( 
-- \RAM|ram~529_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~530_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~529_combout\,
	datab => \RAM|ALT_INV_ram~530_combout\,
	datac => \RAM|ALT_INV_ram~531_combout\,
	datad => \RAM|ALT_INV_ram~532_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \ROM|memROM~6_combout\ & ( \RAM|ram~533_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~527_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~528_combout\))))) ) ) ) # ( !\ROM|memROM~6_combout\ & ( 
-- \RAM|ram~533_combout\ ) ) # ( \ROM|memROM~6_combout\ & ( !\RAM|ram~533_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~527_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~528_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000011000011111111111111110101000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datab => \RAM|ALT_INV_ram~528_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_ram~533_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~0_combout\ = ( !\ROM|memROM~12_combout\ & ( !\habLED8~0_combout\ & ( (\ROM|memROM~5_combout\ & (\ROM|memROM~9_combout\ & ((\ROM|memROM~11_combout\) # (\ROM|memROM~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ALT_INV_habLED8~0_combout\,
	combout => \RAM|dado_out~0_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~14_combout\);

\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(7) & \ROM|memROM~14_combout\)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA|Add0~2\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(7) & \ROM|memROM~14_combout\)))) ) + ( \CPU|REG_A|DOUT\(1) ) + ( \CPU|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \ROM|ALT_INV_memROM~14_combout\,
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
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(1));

\RAM|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~184_q\);

\RAM|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~176_q\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~184_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~176_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~184_q\,
	datab => \RAM|ALT_INV_ram~176_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~200_q\);

\RAM|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~192_q\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~200_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~192_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~200_q\,
	datab => \RAM|ALT_INV_ram~192_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~88_q\);

\RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~40_q\);

\RAM|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~104_q\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~104_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~40_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~88_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datab => \RAM|ALT_INV_ram~88_q\,
	datac => \RAM|ALT_INV_ram~40_q\,
	datad => \RAM|ALT_INV_ram~104_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~80_q\);

\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

\RAM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~96_q\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~96_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~32_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~80_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datab => \RAM|ALT_INV_ram~80_q\,
	datac => \RAM|ALT_INV_ram~32_q\,
	datad => \RAM|ALT_INV_ram~96_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~538_combout\);

\RAM|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~344_q\);

\RAM|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~360_q\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~360_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~344_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~344_q\,
	datad => \RAM|ALT_INV_ram~360_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~336_q\);

\RAM|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \RAM|ram~606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~352_q\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~352_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~336_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~336_q\,
	datad => \RAM|ALT_INV_ram~352_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~540_combout\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~539_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~540_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( 
-- \RAM|ram~537_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~538_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~537_combout\,
	datab => \RAM|ALT_INV_ram~538_combout\,
	datac => \RAM|ALT_INV_ram~539_combout\,
	datad => \RAM|ALT_INV_ram~540_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \ROM|memROM~6_combout\ & ( \RAM|ram~541_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~535_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~536_combout\))))) ) ) ) # ( !\ROM|memROM~6_combout\ & ( 
-- \RAM|ram~541_combout\ ) ) # ( \ROM|memROM~6_combout\ & ( !\RAM|ram~541_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~535_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~536_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000011000011111111111111110101000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~535_combout\,
	datab => \RAM|ALT_INV_ram~536_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_ram~541_combout\,
	combout => \RAM|ram~542_combout\);

\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (\ROM|memROM~6_combout\) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA|Add0~6\ ))
-- \CPU|ULA|Add0~10\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ $ (\ROM|memROM~6_combout\) ) + ( \CPU|REG_A|DOUT\(2) ) + ( \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
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
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(2));

\RAM|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~185_q\);

\RAM|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~177_q\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~185_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~177_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~185_q\,
	datab => \RAM|ALT_INV_ram~177_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~543_combout\);

\RAM|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~201_q\);

\RAM|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~193_q\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~201_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~193_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~201_q\,
	datab => \RAM|ALT_INV_ram~193_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~544_combout\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~89_q\);

\RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~41_q\);

\RAM|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~105_q\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~105_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~41_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~89_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~25_q\,
	datab => \RAM|ALT_INV_ram~89_q\,
	datac => \RAM|ALT_INV_ram~41_q\,
	datad => \RAM|ALT_INV_ram~105_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~545_combout\);

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~599_combout\,
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
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~600_combout\,
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
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~601_combout\,
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
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~97_q\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~97_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~33_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~81_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~17_q\ ) ) )

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
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~345_q\);

\RAM|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~361_q\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~361_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~345_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~345_q\,
	datad => \RAM|ALT_INV_ram~361_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~547_combout\);

\RAM|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~337_q\);

\RAM|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \RAM|ram~606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~353_q\);

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~353_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~337_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~337_q\,
	datad => \RAM|ALT_INV_ram~353_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~548_combout\);

\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~547_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~548_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( 
-- \RAM|ram~545_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~546_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~545_combout\,
	datab => \RAM|ALT_INV_ram~546_combout\,
	datac => \RAM|ALT_INV_ram~547_combout\,
	datad => \RAM|ALT_INV_ram~548_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~549_combout\);

\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \ROM|memROM~6_combout\ & ( \RAM|ram~549_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~543_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~544_combout\))))) ) ) ) # ( !\ROM|memROM~6_combout\ & ( 
-- \RAM|ram~549_combout\ ) ) # ( \ROM|memROM~6_combout\ & ( !\RAM|ram~549_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~543_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~544_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000011000011111111111111110101000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~543_combout\,
	datab => \RAM|ALT_INV_ram~544_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_ram~549_combout\,
	combout => \RAM|ram~550_combout\);

\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (\ROM|memROM~7_combout\) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA|Add0~10\ ))
-- \CPU|ULA|Add0~14\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ $ (\ROM|memROM~7_combout\) ) + ( \CPU|REG_A|DOUT\(3) ) + ( \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
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
	asdata => \ROM|memROM~7_combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(3));

\RAM|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~186_q\);

\RAM|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~178_q\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~186_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~178_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~186_q\,
	datab => \RAM|ALT_INV_ram~178_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~551_combout\);

\RAM|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~202_q\);

\RAM|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~194_q\);

\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~202_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~194_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~202_q\,
	datab => \RAM|ALT_INV_ram~194_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~552_combout\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~90_q\);

\RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~42_q\);

\RAM|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~106_q\);

\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~106_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~42_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~90_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~26_q\,
	datab => \RAM|ALT_INV_ram~90_q\,
	datac => \RAM|ALT_INV_ram~42_q\,
	datad => \RAM|ALT_INV_ram~106_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~553_combout\);

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~82_q\);

\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

\RAM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~98_q\);

\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~98_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~34_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~82_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datab => \RAM|ALT_INV_ram~82_q\,
	datac => \RAM|ALT_INV_ram~34_q\,
	datad => \RAM|ALT_INV_ram~98_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~554_combout\);

\RAM|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~346_q\);

\RAM|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~362_q\);

\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~362_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~346_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~346_q\,
	datad => \RAM|ALT_INV_ram~362_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~555_combout\);

\RAM|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~338_q\);

\RAM|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \RAM|ram~606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~354_q\);

\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~354_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~338_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~338_q\,
	datad => \RAM|ALT_INV_ram~354_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~556_combout\);

\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~555_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~556_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( 
-- \RAM|ram~553_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~554_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~553_combout\,
	datab => \RAM|ALT_INV_ram~554_combout\,
	datac => \RAM|ALT_INV_ram~555_combout\,
	datad => \RAM|ALT_INV_ram~556_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~557_combout\);

\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = ( \ROM|memROM~6_combout\ & ( \RAM|ram~557_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~551_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~552_combout\))))) ) ) ) # ( !\ROM|memROM~6_combout\ & ( 
-- \RAM|ram~557_combout\ ) ) # ( \ROM|memROM~6_combout\ & ( !\RAM|ram~557_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~551_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~552_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000011000011111111111111110101000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~551_combout\,
	datab => \RAM|ALT_INV_ram~552_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_ram~557_combout\,
	combout => \RAM|ram~558_combout\);

\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (\ROM|memROM~6_combout\) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA|Add0~14\ ))
-- \CPU|ULA|Add0~18\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ $ (\ROM|memROM~6_combout\) ) + ( \CPU|REG_A|DOUT\(4) ) + ( \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
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
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(4));

\RAM|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~187_q\);

\RAM|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~179_q\);

\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~187_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~179_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~187_q\,
	datab => \RAM|ALT_INV_ram~179_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~559_combout\);

\RAM|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~203_q\);

\RAM|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~195_q\);

\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~203_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~195_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~203_q\,
	datab => \RAM|ALT_INV_ram~195_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~560_combout\);

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~91_q\);

\RAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~43_q\);

\RAM|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~107_q\);

\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~107_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~43_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~91_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~27_q\,
	datab => \RAM|ALT_INV_ram~91_q\,
	datac => \RAM|ALT_INV_ram~43_q\,
	datad => \RAM|ALT_INV_ram~107_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~561_combout\);

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~83_q\);

\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

\RAM|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~99_q\);

\RAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~562_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~99_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~35_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~83_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datab => \RAM|ALT_INV_ram~83_q\,
	datac => \RAM|ALT_INV_ram~35_q\,
	datad => \RAM|ALT_INV_ram~99_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~562_combout\);

\RAM|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~347_q\);

\RAM|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~363_q\);

\RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~563_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~363_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~347_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~347_q\,
	datad => \RAM|ALT_INV_ram~363_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~563_combout\);

\RAM|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~339_q\);

\RAM|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \RAM|ram~606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~355_q\);

\RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~564_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~355_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~339_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~339_q\,
	datad => \RAM|ALT_INV_ram~355_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~564_combout\);

\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~563_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~564_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( 
-- \RAM|ram~561_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~562_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~561_combout\,
	datab => \RAM|ALT_INV_ram~562_combout\,
	datac => \RAM|ALT_INV_ram~563_combout\,
	datad => \RAM|ALT_INV_ram~564_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~565_combout\);

\RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~566_combout\ = ( \ROM|memROM~6_combout\ & ( \RAM|ram~565_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~559_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~560_combout\))))) ) ) ) # ( !\ROM|memROM~6_combout\ & ( 
-- \RAM|ram~565_combout\ ) ) # ( \ROM|memROM~6_combout\ & ( !\RAM|ram~565_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~559_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~560_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000011000011111111111111110101000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~559_combout\,
	datab => \RAM|ALT_INV_ram~560_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_ram~565_combout\,
	combout => \RAM|ram~566_combout\);

\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (\ROM|memROM~8_combout\) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA|Add0~18\ ))
-- \CPU|ULA|Add0~22\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ $ (\ROM|memROM~8_combout\) ) + ( \CPU|REG_A|DOUT\(5) ) + ( \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
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
	asdata => \ROM|memROM~8_combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(5));

\RAM|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~188_q\);

\RAM|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~180_q\);

\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~188_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~180_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~188_q\,
	datab => \RAM|ALT_INV_ram~180_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~567_combout\);

\RAM|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~204_q\);

\RAM|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~196_q\);

\RAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~568_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~204_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~196_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~204_q\,
	datab => \RAM|ALT_INV_ram~196_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~568_combout\);

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~92_q\);

\RAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~44_q\);

\RAM|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~108_q\);

\RAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~569_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~108_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~44_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~92_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datab => \RAM|ALT_INV_ram~92_q\,
	datac => \RAM|ALT_INV_ram~44_q\,
	datad => \RAM|ALT_INV_ram~108_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~569_combout\);

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~84_q\);

\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

\RAM|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~100_q\);

\RAM|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~570_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~100_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~36_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~84_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datab => \RAM|ALT_INV_ram~84_q\,
	datac => \RAM|ALT_INV_ram~36_q\,
	datad => \RAM|ALT_INV_ram~100_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~570_combout\);

\RAM|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~348_q\);

\RAM|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~364_q\);

\RAM|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~571_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~364_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~348_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~348_q\,
	datad => \RAM|ALT_INV_ram~364_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~571_combout\);

\RAM|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~340_q\);

\RAM|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \RAM|ram~606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~356_q\);

\RAM|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~572_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~356_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~340_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~340_q\,
	datad => \RAM|ALT_INV_ram~356_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~572_combout\);

\RAM|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~573_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~571_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~572_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( 
-- \RAM|ram~569_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~570_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~569_combout\,
	datab => \RAM|ALT_INV_ram~570_combout\,
	datac => \RAM|ALT_INV_ram~571_combout\,
	datad => \RAM|ALT_INV_ram~572_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~573_combout\);

\RAM|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~574_combout\ = ( \ROM|memROM~6_combout\ & ( \RAM|ram~573_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~567_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~568_combout\))))) ) ) ) # ( !\ROM|memROM~6_combout\ & ( 
-- \RAM|ram~573_combout\ ) ) # ( \ROM|memROM~6_combout\ & ( !\RAM|ram~573_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~567_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~568_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000011000011111111111111110101000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~567_combout\,
	datab => \RAM|ALT_INV_ram~568_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_ram~573_combout\,
	combout => \RAM|ram~574_combout\);

\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( !\CPU|DECODER|Equal1~1_combout\ $ (\ROM|memROM~6_combout\) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA|Add0~22\ ))
-- \CPU|ULA|Add0~26\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ $ (\ROM|memROM~6_combout\) ) + ( \CPU|REG_A|DOUT\(6) ) + ( \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
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
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(6));

\RAM|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~189_q\);

\RAM|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~181_q\);

\RAM|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~575_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~189_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~181_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~189_q\,
	datab => \RAM|ALT_INV_ram~181_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~575_combout\);

\RAM|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~205_q\);

\RAM|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~197_q\);

\RAM|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~576_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~205_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~197_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~205_q\,
	datab => \RAM|ALT_INV_ram~197_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~576_combout\);

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~93_q\);

\RAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~45_q\);

\RAM|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~109_q\);

\RAM|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~577_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~109_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~45_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~93_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~29_q\,
	datab => \RAM|ALT_INV_ram~93_q\,
	datac => \RAM|ALT_INV_ram~45_q\,
	datad => \RAM|ALT_INV_ram~109_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~577_combout\);

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~85_q\);

\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

\RAM|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~101_q\);

\RAM|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~578_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~101_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~37_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~85_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datab => \RAM|ALT_INV_ram~85_q\,
	datac => \RAM|ALT_INV_ram~37_q\,
	datad => \RAM|ALT_INV_ram~101_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~578_combout\);

\RAM|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~349_q\);

\RAM|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~365_q\);

\RAM|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~579_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~365_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~349_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~349_q\,
	datad => \RAM|ALT_INV_ram~365_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~579_combout\);

\RAM|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~341_q\);

\RAM|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \RAM|ram~606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~357_q\);

\RAM|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~580_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~357_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~341_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~341_q\,
	datad => \RAM|ALT_INV_ram~357_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~580_combout\);

\RAM|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~581_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~579_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~580_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( 
-- \RAM|ram~577_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~578_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~577_combout\,
	datab => \RAM|ALT_INV_ram~578_combout\,
	datac => \RAM|ALT_INV_ram~579_combout\,
	datad => \RAM|ALT_INV_ram~580_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~581_combout\);

\RAM|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~582_combout\ = ( \ROM|memROM~6_combout\ & ( \RAM|ram~581_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~575_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~576_combout\))))) ) ) ) # ( !\ROM|memROM~6_combout\ & ( 
-- \RAM|ram~581_combout\ ) ) # ( \ROM|memROM~6_combout\ & ( !\RAM|ram~581_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~575_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~576_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000011000011111111111111110101000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~575_combout\,
	datab => \RAM|ALT_INV_ram~576_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_ram~581_combout\,
	combout => \RAM|ram~582_combout\);

\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( !\ROM|memROM~8_combout\ $ (\CPU|DECODER|Equal1~1_combout\) ) + ( \CPU|REG_A|DOUT\(7) ) + ( \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
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
	asdata => \ROM|memROM~8_combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(7));

\RAM|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~591_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~190_q\);

\RAM|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~182_q\);

\RAM|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~583_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~190_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~182_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~190_q\,
	datab => \RAM|ALT_INV_ram~182_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~583_combout\);

\RAM|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~206_q\);

\RAM|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~198_q\);

\RAM|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~584_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~206_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~198_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~206_q\,
	datab => \RAM|ALT_INV_ram~198_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~584_combout\);

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~94_q\);

\RAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~46_q\);

\RAM|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~110_q\);

\RAM|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~585_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~110_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~46_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~94_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datab => \RAM|ALT_INV_ram~94_q\,
	datac => \RAM|ALT_INV_ram~46_q\,
	datad => \RAM|ALT_INV_ram~110_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~585_combout\);

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~599_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~86_q\);

\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

\RAM|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~102_q\);

\RAM|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~586_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~102_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~38_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~86_q\ 
-- ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datab => \RAM|ALT_INV_ram~86_q\,
	datac => \RAM|ALT_INV_ram~38_q\,
	datad => \RAM|ALT_INV_ram~102_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~586_combout\);

\RAM|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~350_q\);

\RAM|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~366_q\);

\RAM|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~587_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~366_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~350_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~350_q\,
	datad => \RAM|ALT_INV_ram~366_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~587_combout\);

\RAM|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~342_q\);

\RAM|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \RAM|ram~606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~358_q\);

\RAM|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~588_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM|ram~358_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM|ram~342_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~342_q\,
	datad => \RAM|ALT_INV_ram~358_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~588_combout\);

\RAM|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~589_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~587_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~8_combout\ & ( \RAM|ram~588_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( 
-- \RAM|ram~585_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~8_combout\ & ( \RAM|ram~586_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~585_combout\,
	datab => \RAM|ALT_INV_ram~586_combout\,
	datac => \RAM|ALT_INV_ram~587_combout\,
	datad => \RAM|ALT_INV_ram~588_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~589_combout\);

\RAM|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~590_combout\ = ( \ROM|memROM~6_combout\ & ( \RAM|ram~589_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~583_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~584_combout\))))) ) ) ) # ( !\ROM|memROM~6_combout\ & ( 
-- \RAM|ram~589_combout\ ) ) # ( \ROM|memROM~6_combout\ & ( !\RAM|ram~589_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~4_combout\ & (\RAM|ram~583_combout\)) # (\ROM|memROM~4_combout\ & ((\RAM|ram~584_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000011000011111111111111110101000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~583_combout\,
	datab => \RAM|ALT_INV_ram~584_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_ram~589_combout\,
	combout => \RAM|ram~590_combout\);

\habLED8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLED8~2_combout\ = (!\ROM|memROM~2_combout\ & (\ROM|memROM~12_combout\ & (!\habLED8~0_combout\ & \habLED8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ALT_INV_habLED8~0_combout\,
	datad => \ALT_INV_habLED8~1_combout\,
	combout => \habLED8~2_combout\);

\FFLED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED8|DOUT~0_combout\ = (!\ROM|memROM~4_combout\ & (\FFLED8|DOUT~q\)) # (\ROM|memROM~4_combout\ & ((!\habLED8~2_combout\ & (\FFLED8|DOUT~q\)) # (\habLED8~2_combout\ & ((\CPU|REG_A|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100111001100110010011100110011001001110011001100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \FFLED8|ALT_INV_DOUT~q\,
	datac => \CPU|REG_A|ALT_INV_DOUT\(0),
	datad => \ALT_INV_habLED8~2_combout\,
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
-- \habLED9~0_combout\ = ( !\ROM|memROM~3_combout\ & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	combout => \habLED9~0_combout\);

\FFLED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED9|DOUT~0_combout\ = ( \habLED8~1_combout\ & ( \habLED9~0_combout\ & ( (!\ROM|memROM~12_combout\ & (\FFLED9|DOUT~q\)) # (\ROM|memROM~12_combout\ & ((!\habLED8~0_combout\ & ((\CPU|REG_A|DOUT\(0)))) # (\habLED8~0_combout\ & (\FFLED9|DOUT~q\)))) ) ) ) # 
-- ( !\habLED8~1_combout\ & ( \habLED9~0_combout\ & ( \FFLED9|DOUT~q\ ) ) ) # ( \habLED8~1_combout\ & ( !\habLED9~0_combout\ & ( \FFLED9|DOUT~q\ ) ) ) # ( !\habLED8~1_combout\ & ( !\habLED9~0_combout\ & ( \FFLED9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010100010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FFLED9|ALT_INV_DOUT~q\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ALT_INV_habLED8~0_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(0),
	datae => \ALT_INV_habLED8~1_combout\,
	dataf => \ALT_INV_habLED9~0_combout\,
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

\habLEDconj~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habLEDconj~0_combout\ = ( \habLED8~1_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (\ROM|memROM~12_combout\ & !\habLED8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ALT_INV_habLED8~0_combout\,
	datae => \ALT_INV_habLED8~1_combout\,
	combout => \habLEDconj~0_combout\);

\FFLEDconj|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(0),
	ena => \habLEDconj~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLEDconj|DOUT\(0));

\FFLEDconj|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(1),
	ena => \habLEDconj~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLEDconj|DOUT\(1));

\FFLEDconj|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(2),
	ena => \habLEDconj~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLEDconj|DOUT\(2));

\FFLEDconj|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(3),
	ena => \habLEDconj~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLEDconj|DOUT\(3));

\FFLEDconj|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(4),
	ena => \habLEDconj~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLEDconj|DOUT\(4));

\FFLEDconj|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(5),
	ena => \habLEDconj~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLEDconj|DOUT\(5));

\FFLEDconj|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(6),
	ena => \habLEDconj~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLEDconj|DOUT\(6));

\FFLEDconj|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~input_o\,
	d => \CPU|REG_A|DOUT\(7),
	ena => \habLEDconj~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFLEDconj|DOUT\(7));

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

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

ww_LED8 <= \LED8~output_o\;

ww_LED9 <= \LED9~output_o\;

ww_LEDconj(0) <= \LEDconj[0]~output_o\;

ww_LEDconj(1) <= \LEDconj[1]~output_o\;

ww_LEDconj(2) <= \LEDconj[2]~output_o\;

ww_LEDconj(3) <= \LEDconj[3]~output_o\;

ww_LEDconj(4) <= \LEDconj[4]~output_o\;

ww_LEDconj(5) <= \LEDconj[5]~output_o\;

ww_LEDconj(6) <= \LEDconj[6]~output_o\;

ww_LEDconj(7) <= \LEDconj[7]~output_o\;
END structure;


