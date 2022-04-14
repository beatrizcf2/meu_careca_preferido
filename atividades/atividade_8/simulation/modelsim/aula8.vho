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

-- DATE "04/14/2022 11:43:15"

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
-- endROM[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[5]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[8]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED8	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED9	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDconj[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDconj[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDconj[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDconj[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDconj[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDconj[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDconj[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDconj[7]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clovis	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \clovis~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~22\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~25_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~26\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~30\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~2\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~6\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~10\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~14\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~18\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~1_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DECODER|saida~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~1_combout\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \RAM|ram~63_q\ : std_logic;
SIGNAL \RAM|ram~566_combout\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~15feeder_combout\ : std_logic;
SIGNAL \RAM|ram~564_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~562_combout\ : std_logic;
SIGNAL \RAM|ram~55_q\ : std_logic;
SIGNAL \RAM|ram~563_combout\ : std_logic;
SIGNAL \RAM|ram~71_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|dado_out~0_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~2\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ram~24feeder_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~56feeder_combout\ : std_logic;
SIGNAL \RAM|ram~56_q\ : std_logic;
SIGNAL \RAM|ram~16feeder_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~48_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|ram~72feeder_combout\ : std_logic;
SIGNAL \RAM|ram~72_q\ : std_logic;
SIGNAL \RAM|ram~64_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \RAM|ram~49_q\ : std_logic;
SIGNAL \RAM|ram~65_q\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~57_q\ : std_logic;
SIGNAL \RAM|ram~73_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \RAM|ram~18feeder_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~26feeder_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~50_q\ : std_logic;
SIGNAL \RAM|ram~58_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|ram~66_q\ : std_logic;
SIGNAL \RAM|ram~74_q\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~75_q\ : std_logic;
SIGNAL \RAM|ram~59_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~43_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~51_q\ : std_logic;
SIGNAL \RAM|ram~67_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ram~44_q\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~68_q\ : std_logic;
SIGNAL \RAM|ram~76_q\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~60feeder_combout\ : std_logic;
SIGNAL \RAM|ram~60_q\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~52_q\ : std_logic;
SIGNAL \RAM|ram~20feeder_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|REG_A|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~45_q\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~61feeder_combout\ : std_logic;
SIGNAL \RAM|ram~61_q\ : std_logic;
SIGNAL \RAM|ram~77_q\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~53_q\ : std_logic;
SIGNAL \RAM|ram~69_q\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~62feeder_combout\ : std_logic;
SIGNAL \RAM|ram~62_q\ : std_logic;
SIGNAL \RAM|ram~54_q\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~70_q\ : std_logic;
SIGNAL \RAM|ram~78feeder_combout\ : std_logic;
SIGNAL \RAM|ram~78_q\ : std_logic;
SIGNAL \RAM|ram~38feeder_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~46_q\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \decoderLED|Equal7~0_combout\ : std_logic;
SIGNAL \decoderLED|Equal7~1_combout\ : std_logic;
SIGNAL \conversorHEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \RegHEX0|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \conversorHEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conversorHEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conversorHEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conversorHEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conversorHEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conversorHEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoderLED|Equal7~2_combout\ : std_logic;
SIGNAL \RegHEX1|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \conversorHEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conversorHEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conversorHEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conversorHEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conversorHEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conversorHEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conversorHEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoderLED|Equal7~3_combout\ : std_logic;
SIGNAL \conversorHEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conversorHEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conversorHEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conversorHEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conversorHEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conversorHEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conversorHEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoderLED|Equal7~4_combout\ : std_logic;
SIGNAL \conversorHEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conversorHEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conversorHEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conversorHEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conversorHEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conversorHEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conversorHEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoderLED|Equal7~5_combout\ : std_logic;
SIGNAL \conversorHEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \RegHEX4|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RegHEX4|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \conversorHEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conversorHEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conversorHEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conversorHEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conversorHEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conversorHEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \decoderLED|Equal7~6_combout\ : std_logic;
SIGNAL \conversorHEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conversorHEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conversorHEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conversorHEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conversorHEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conversorHEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conversorHEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \RegHEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RegHEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG_A|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegHEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegHEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegHEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegHEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegHEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegHEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegHEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegHEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CPU|REG_A|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \decoderLED|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \RegHEX5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegHEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegHEX4|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RegHEX4|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RegHEX1|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RegHEX0|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG_A|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG_A|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG_A|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~559_combout\ : std_logic;

BEGIN

endROM <= ww_endROM;
endRAM <= ww_endRAM;
valorDado <= ww_valorDado;
LED8 <= ww_LED8;
LED9 <= ww_LED9;
LEDconj <= ww_LEDconj;
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
\RegHEX3|ALT_INV_DOUT\(2) <= NOT \RegHEX3|DOUT\(2);
\RegHEX3|ALT_INV_DOUT\(1) <= NOT \RegHEX3|DOUT\(1);
\RegHEX3|ALT_INV_DOUT\(3) <= NOT \RegHEX3|DOUT\(3);
\RegHEX3|ALT_INV_DOUT\(0) <= NOT \RegHEX3|DOUT\(0);
\RegHEX2|ALT_INV_DOUT\(2) <= NOT \RegHEX2|DOUT\(2);
\RegHEX2|ALT_INV_DOUT\(1) <= NOT \RegHEX2|DOUT\(1);
\RegHEX2|ALT_INV_DOUT\(3) <= NOT \RegHEX2|DOUT\(3);
\RegHEX2|ALT_INV_DOUT\(0) <= NOT \RegHEX2|DOUT\(0);
\RegHEX1|ALT_INV_DOUT\(2) <= NOT \RegHEX1|DOUT\(2);
\RegHEX1|ALT_INV_DOUT\(1) <= NOT \RegHEX1|DOUT\(1);
\RegHEX1|ALT_INV_DOUT\(3) <= NOT \RegHEX1|DOUT\(3);
\RegHEX1|ALT_INV_DOUT\(0) <= NOT \RegHEX1|DOUT\(0);
\RegHEX0|ALT_INV_DOUT\(2) <= NOT \RegHEX0|DOUT\(2);
\RegHEX0|ALT_INV_DOUT\(1) <= NOT \RegHEX0|DOUT\(1);
\RegHEX0|ALT_INV_DOUT\(3) <= NOT \RegHEX0|DOUT\(3);
\RegHEX0|ALT_INV_DOUT\(0) <= NOT \RegHEX0|DOUT\(0);
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
\CPU|REG_A|ALT_INV_DOUT\(7) <= NOT \CPU|REG_A|DOUT\(7);
\CPU|REG_A|ALT_INV_DOUT\(6) <= NOT \CPU|REG_A|DOUT\(6);
\CPU|REG_A|ALT_INV_DOUT\(5) <= NOT \CPU|REG_A|DOUT\(5);
\CPU|REG_A|ALT_INV_DOUT\(4) <= NOT \CPU|REG_A|DOUT\(4);
\CPU|REG_A|ALT_INV_DOUT\(2) <= NOT \CPU|REG_A|DOUT\(2);
\CPU|REG_A|ALT_INV_DOUT\(1) <= NOT \CPU|REG_A|DOUT\(1);
\CPU|REG_A|ALT_INV_DOUT\(3) <= NOT \CPU|REG_A|DOUT\(3);
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
\decoderLED|ALT_INV_Equal7~0_combout\ <= NOT \decoderLED|Equal7~0_combout\;
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\RAM|ALT_INV_ram~70_q\ <= NOT \RAM|ram~70_q\;
\RAM|ALT_INV_ram~78_q\ <= NOT \RAM|ram~78_q\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~46_q\ <= NOT \RAM|ram~46_q\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~54_q\ <= NOT \RAM|ram~54_q\;
\RAM|ALT_INV_ram~62_q\ <= NOT \RAM|ram~62_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~69_q\ <= NOT \RAM|ram~69_q\;
\RAM|ALT_INV_ram~53_q\ <= NOT \RAM|ram~53_q\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~77_q\ <= NOT \RAM|ram~77_q\;
\RAM|ALT_INV_ram~61_q\ <= NOT \RAM|ram~61_q\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~45_q\ <= NOT \RAM|ram~45_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~68_q\ <= NOT \RAM|ram~68_q\;
\RAM|ALT_INV_ram~76_q\ <= NOT \RAM|ram~76_q\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~44_q\ <= NOT \RAM|ram~44_q\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~52_q\ <= NOT \RAM|ram~52_q\;
\RAM|ALT_INV_ram~60_q\ <= NOT \RAM|ram~60_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~67_q\ <= NOT \RAM|ram~67_q\;
\RAM|ALT_INV_ram~51_q\ <= NOT \RAM|ram~51_q\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~75_q\ <= NOT \RAM|ram~75_q\;
\RAM|ALT_INV_ram~59_q\ <= NOT \RAM|ram~59_q\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~43_q\ <= NOT \RAM|ram~43_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~66_q\ <= NOT \RAM|ram~66_q\;
\RAM|ALT_INV_ram~74_q\ <= NOT \RAM|ram~74_q\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~50_q\ <= NOT \RAM|ram~50_q\;
\RAM|ALT_INV_ram~58_q\ <= NOT \RAM|ram~58_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~65_q\ <= NOT \RAM|ram~65_q\;
\RAM|ALT_INV_ram~49_q\ <= NOT \RAM|ram~49_q\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~73_q\ <= NOT \RAM|ram~73_q\;
\RAM|ALT_INV_ram~57_q\ <= NOT \RAM|ram~57_q\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~64_q\ <= NOT \RAM|ram~64_q\;
\RAM|ALT_INV_ram~72_q\ <= NOT \RAM|ram~72_q\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~48_q\ <= NOT \RAM|ram~48_q\;
\RAM|ALT_INV_ram~56_q\ <= NOT \RAM|ram~56_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~63_q\ <= NOT \RAM|ram~63_q\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~71_q\ <= NOT \RAM|ram~71_q\;
\RAM|ALT_INV_ram~55_q\ <= NOT \RAM|ram~55_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\RegHEX5|ALT_INV_DOUT\(2) <= NOT \RegHEX5|DOUT\(2);
\RegHEX5|ALT_INV_DOUT\(1) <= NOT \RegHEX5|DOUT\(1);
\RegHEX5|ALT_INV_DOUT\(3) <= NOT \RegHEX5|DOUT\(3);
\RegHEX5|ALT_INV_DOUT\(0) <= NOT \RegHEX5|DOUT\(0);
\RegHEX4|ALT_INV_DOUT\(2) <= NOT \RegHEX4|DOUT\(2);
\RegHEX4|ALT_INV_DOUT\(1) <= NOT \RegHEX4|DOUT\(1);
\RegHEX4|ALT_INV_DOUT\(3) <= NOT \RegHEX4|DOUT\(3);
\RegHEX4|ALT_INV_DOUT\(0) <= NOT \RegHEX4|DOUT\(0);
\RegHEX4|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \RegHEX4|DOUT[1]~DUPLICATE_q\;
\RegHEX4|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \RegHEX4|DOUT[0]~DUPLICATE_q\;
\RegHEX1|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \RegHEX1|DOUT[1]~DUPLICATE_q\;
\RegHEX0|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \RegHEX0|DOUT[2]~DUPLICATE_q\;
\CPU|REG_A|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|REG_A|DOUT[6]~DUPLICATE_q\;
\CPU|REG_A|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|REG_A|DOUT[5]~DUPLICATE_q\;
\CPU|REG_A|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|REG_A|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\CPU|DECODER|ALT_INV_Equal1~1_combout\ <= NOT \CPU|DECODER|Equal1~1_combout\;
\RAM|ALT_INV_ram~559_combout\ <= NOT \RAM|ram~559_combout\;

-- Location: IOOBUF_X10_Y0_N93
\valorDado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~531_combout\,
	oe => \RAM|dado_out~0_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(0));

-- Location: IOOBUF_X11_Y0_N2
\valorDado[1]~output\ : cyclonev_io_obuf
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
	o => ww_valorDado(1));

-- Location: IOOBUF_X12_Y0_N36
\valorDado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~539_combout\,
	oe => \RAM|dado_out~0_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(2));

-- Location: IOOBUF_X10_Y0_N59
\valorDado[3]~output\ : cyclonev_io_obuf
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
	o => ww_valorDado(3));

-- Location: IOOBUF_X12_Y0_N53
\valorDado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~547_combout\,
	oe => \RAM|dado_out~0_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(4));

-- Location: IOOBUF_X10_Y0_N42
\valorDado[5]~output\ : cyclonev_io_obuf
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
	o => ww_valorDado(5));

-- Location: IOOBUF_X12_Y0_N2
\valorDado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~555_combout\,
	oe => \RAM|dado_out~0_combout\,
	devoe => ww_devoe,
	o => ww_valorDado(6));

-- Location: IOOBUF_X11_Y0_N53
\valorDado[7]~output\ : cyclonev_io_obuf
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
	o => ww_valorDado(7));

-- Location: IOOBUF_X14_Y0_N53
\endROM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[0]~DUPLICATE_q\,
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
	i => \CPU|PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_endROM(1));

-- Location: IOOBUF_X16_Y0_N93
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X18_Y0_N53
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

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X18_Y0_N19
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

-- Location: IOOBUF_X16_Y0_N42
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

-- Location: IOOBUF_X16_Y0_N76
\endRAM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(0));

-- Location: IOOBUF_X16_Y0_N59
\endRAM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(1));

-- Location: IOOBUF_X19_Y0_N19
\endRAM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~7_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(2));

-- Location: IOOBUF_X43_Y45_N53
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

-- Location: IOOBUF_X54_Y14_N96
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X16_Y45_N76
\LED8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED8);

-- Location: IOOBUF_X52_Y45_N53
\LED9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED9);

-- Location: IOOBUF_X12_Y45_N19
\LEDconj[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDconj(0));

-- Location: IOOBUF_X10_Y45_N19
\LEDconj[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDconj(1));

-- Location: IOOBUF_X32_Y45_N42
\LEDconj[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDconj(2));

-- Location: IOOBUF_X48_Y0_N42
\LEDconj[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDconj(3));

-- Location: IOOBUF_X43_Y45_N36
\LEDconj[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDconj(4));

-- Location: IOOBUF_X40_Y0_N42
\LEDconj[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDconj(5));

-- Location: IOOBUF_X54_Y19_N5
\LEDconj[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDconj(6));

-- Location: IOOBUF_X54_Y17_N39
\LEDconj[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDconj(7));

-- Location: IOOBUF_X23_Y0_N93
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X23_Y0_N59
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X22_Y0_N36
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X29_Y0_N19
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X23_Y0_N42
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X19_Y0_N2
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X19_Y0_N53
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X11_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X14_Y0_N19
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X11_Y0_N19
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X22_Y0_N19
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X22_Y0_N53
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X29_Y0_N2
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X34_Y0_N36
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X19_Y0_N36
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X14_Y0_N36
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X12_Y0_N19
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X29_Y0_N53
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X34_Y0_N2
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X36_Y0_N53
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X33_Y0_N93
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X25_Y0_N36
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X23_Y0_N76
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X33_Y0_N59
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X25_Y0_N19
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X38_Y0_N53
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X38_Y0_N36
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X36_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X33_Y0_N42
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X34_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X33_Y0_N76
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X29_Y0_N36
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N19
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X0_Y18_N96
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X24_Y0_N53
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X24_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X24_Y0_N36
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X25_Y0_N2
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X34_Y0_N53
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X24_Y0_N2
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X22_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conversorHEX5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X54_Y18_N61
\clovis~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clovis,
	o => \clovis~input_o\);

-- Location: CLKCTRL_G10
\clovis~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clovis~input_o\,
	outclk => \clovis~inputCLKENA0_outclk\);

-- Location: LABCELL_X17_Y5_N30
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

-- Location: MLABCELL_X18_Y5_N12
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X17_Y5_N45
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

-- Location: LABCELL_X17_Y5_N48
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

-- Location: LABCELL_X20_Y5_N18
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

-- Location: FF_X17_Y5_N41
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X17_Y5_N35
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~5_sumout\,
	asdata => \ROM|memROM~5_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y5_N18
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~6_combout\);

-- Location: MLABCELL_X18_Y5_N3
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~6_combout\ & \ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~7_combout\);

-- Location: FF_X17_Y5_N38
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~9_sumout\,
	asdata => \ROM|memROM~7_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X17_Y5_N32
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~1_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y5_N12
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( ((\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU|PC|DOUT[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X17_Y5_N3
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ $ (((\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & 
-- ((\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000011110000110000111111000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~10_combout\);

-- Location: LABCELL_X17_Y5_N0
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\) # ((!\CPU|PC|DOUT[1]~DUPLICATE_q\) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~12_combout\);

-- Location: FF_X17_Y5_N49
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X17_Y5_N52
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y5_N9
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & !\CPU|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~11_combout\);

-- Location: LABCELL_X16_Y5_N30
\CPU|DECODER|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~0_combout\ = ( \ROM|memROM~11_combout\ & ( (\ROM|memROM~13_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|Equal1~0_combout\);

-- Location: FF_X17_Y5_N50
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X17_Y5_N51
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

-- Location: FF_X17_Y5_N53
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X17_Y5_N54
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

-- Location: LABCELL_X16_Y5_N12
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT[3]~DUPLICATE_q\) ) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- \CPU|PC|DOUT[0]~DUPLICATE_q\ ) ) ) # ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & 
-- \CPU|PC|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010101010101010101010101010101010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~8_combout\);

-- Location: LABCELL_X16_Y5_N3
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \ROM|memROM~1_combout\ & ( (\ROM|memROM~8_combout\ & \ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~9_combout\);

-- Location: FF_X17_Y5_N55
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~33_sumout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X17_Y5_N9
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~2_combout\);

-- Location: MLABCELL_X18_Y5_N15
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~1_combout\ & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~3_combout\);

-- Location: FF_X17_Y5_N31
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~1_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X17_Y5_N33
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

-- Location: FF_X17_Y5_N34
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~5_sumout\,
	asdata => \ROM|memROM~5_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X17_Y5_N36
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

-- Location: FF_X17_Y5_N37
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~9_sumout\,
	asdata => \ROM|memROM~7_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X17_Y5_N39
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

-- Location: FF_X17_Y5_N40
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X17_Y5_N42
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

-- Location: FF_X17_Y5_N43
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: FF_X17_Y5_N46
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~21_sumout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: MLABCELL_X18_Y5_N6
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X17_Y5_N15
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (!\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~4_combout\);

-- Location: MLABCELL_X18_Y5_N24
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~1_combout\ & \ROM|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~5_combout\);

-- Location: MLABCELL_X18_Y5_N27
\CPU|DECODER|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~1_combout\ = ( \ROM|memROM~10_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~12_combout\ & \ROM|memROM~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER|Equal1~1_combout\);

-- Location: MLABCELL_X18_Y5_N0
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \ROM|memROM~0_combout\ & ( !\ROM|memROM~1_combout\ ) ) # ( !\ROM|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~14_combout\);

-- Location: MLABCELL_X18_Y5_N30
\CPU|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~34_cout\ = CARRY(( !\CPU|DECODER|Equal1~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	cin => GND,
	cout => \CPU|ULA|Add0~34_cout\);

-- Location: MLABCELL_X18_Y5_N33
\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( \CPU|REG_A|DOUT\(0) ) + ( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(8) & !\ROM|memROM~14_combout\)))) ) + ( \CPU|ULA|Add0~34_cout\ ))
-- \CPU|ULA|Add0~2\ = CARRY(( \CPU|REG_A|DOUT\(0) ) + ( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(8) & !\ROM|memROM~14_combout\)))) ) + ( \CPU|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \CPU|REG_A|ALT_INV_DOUT\(0),
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	cin => \CPU|ULA|Add0~34_cout\,
	sumout => \CPU|ULA|Add0~1_sumout\,
	cout => \CPU|ULA|Add0~2\);

-- Location: LABCELL_X16_Y5_N18
\CPU|DECODER|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~0_combout\ = ( \ROM|memROM~11_combout\ & ( (!\ROM|memROM~13_combout\ & (!\ROM|memROM~10_combout\ $ (\ROM|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|saida~0_combout\);

-- Location: LABCELL_X16_Y5_N42
\CPU|DECODER|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~1_combout\ = ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~10_combout\ $ (((\ROM|memROM~12_combout\) # (\ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000011000011111100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|saida~1_combout\);

-- Location: FF_X18_Y5_N34
\CPU|REG_A|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~1_sumout\,
	asdata => \ROM|memROM~3_combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(0));

-- Location: LABCELL_X17_Y5_N24
\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~1_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~8_combout\ & \ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~559_combout\);

-- Location: LABCELL_X17_Y5_N6
\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = ( \ROM|memROM~5_combout\ & ( (\ROM|memROM~7_combout\ & (\RAM|ram~559_combout\ & !\ROM|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \RAM|ALT_INV_ram~559_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~567_combout\);

-- Location: FF_X18_Y4_N29
\RAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~63_q\);

-- Location: LABCELL_X16_Y5_N33
\RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~566_combout\ = ( !\ROM|memROM~5_combout\ & ( (\ROM|memROM~7_combout\ & (\RAM|ram~559_combout\ & !\ROM|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~559_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~566_combout\);

-- Location: FF_X16_Y5_N38
\RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~47_q\);

-- Location: MLABCELL_X18_Y4_N27
\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( \RAM|ram~47_q\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~5_combout\) # (\RAM|ram~63_q\))) ) ) # ( !\RAM|ram~47_q\ & ( (\ROM|memROM~5_combout\ & (!\ROM|memROM~9_combout\ & \RAM|ram~63_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~63_q\,
	dataf => \RAM|ALT_INV_ram~47_q\,
	combout => \RAM|ram~530_combout\);

-- Location: MLABCELL_X18_Y4_N0
\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~559_combout\ & \ROM|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~559_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~560_combout\);

-- Location: FF_X18_Y4_N1
\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

-- Location: MLABCELL_X18_Y4_N57
\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~5_combout\ & ( (\ROM|memROM~3_combout\ & \RAM|ram~559_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \RAM|ALT_INV_ram~559_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~561_combout\);

-- Location: FF_X18_Y4_N44
\RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~39_q\);

-- Location: MLABCELL_X18_Y4_N42
\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~5_combout\ & (\RAM|ram~23_q\)) # (\ROM|memROM~5_combout\ & ((\RAM|ram~39_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~23_q\,
	datad => \RAM|ALT_INV_ram~39_q\,
	combout => \RAM|ram~527_combout\);

-- Location: MLABCELL_X18_Y6_N15
\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~5_combout\ & ( (\RAM|ram~559_combout\ & !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~559_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~565_combout\);

-- Location: FF_X18_Y6_N47
\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

-- Location: LABCELL_X19_Y4_N21
\RAM|ram~15feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~15feeder_combout\ = ( \CPU|REG_A|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(0),
	combout => \RAM|ram~15feeder_combout\);

-- Location: LABCELL_X19_Y4_N54
\RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~564_combout\ = ( !\ROM|memROM~5_combout\ & ( \RAM|ram~559_combout\ & ( (!\ROM|memROM~3_combout\ & !\ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \RAM|ALT_INV_ram~559_combout\,
	combout => \RAM|ram~564_combout\);

-- Location: FF_X19_Y4_N22
\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \RAM|ram~15feeder_combout\,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: MLABCELL_X18_Y6_N45
\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \RAM|ram~15_q\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~5_combout\) # (\RAM|ram~31_q\))) ) ) # ( !\RAM|ram~15_q\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~5_combout\ & \RAM|ram~31_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~31_q\,
	dataf => \RAM|ALT_INV_ram~15_q\,
	combout => \RAM|ram~529_combout\);

-- Location: MLABCELL_X18_Y3_N9
\RAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~562_combout\ = ( !\ROM|memROM~5_combout\ & ( \ROM|memROM~3_combout\ & ( (\RAM|ram~559_combout\ & \ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~559_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~562_combout\);

-- Location: FF_X18_Y3_N44
\RAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~55_q\);

-- Location: MLABCELL_X18_Y6_N51
\RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~563_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~5_combout\ & ( (\RAM|ram~559_combout\ & \ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~559_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~563_combout\);

-- Location: FF_X18_Y6_N50
\RAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~71_q\);

-- Location: MLABCELL_X18_Y6_N18
\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~5_combout\ & (\RAM|ram~55_q\)) # (\ROM|memROM~5_combout\ & ((\RAM|ram~71_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000000000000001000111010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~55_q\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~71_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~528_combout\);

-- Location: MLABCELL_X18_Y4_N6
\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~7_combout\ & ( \RAM|ram~528_combout\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~7_combout\ & ( \RAM|ram~530_combout\ ) ) ) # ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~7_combout\ & ( 
-- \RAM|ram~527_combout\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~529_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~530_combout\,
	datab => \RAM|ALT_INV_ram~527_combout\,
	datac => \RAM|ALT_INV_ram~529_combout\,
	datad => \RAM|ALT_INV_ram~528_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~531_combout\);

-- Location: LABCELL_X16_Y5_N0
\RAM|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~0_combout\ = ( \ROM|memROM~11_combout\ & ( (!\ROM|memROM~8_combout\ & (\ROM|memROM~10_combout\ & ((\ROM|memROM~12_combout\) # (\ROM|memROM~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000011000000010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|dado_out~0_combout\);

-- Location: FF_X18_Y5_N37
\CPU|REG_A|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~9_sumout\,
	asdata => \ROM|memROM~5_combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(1));

-- Location: MLABCELL_X18_Y5_N21
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~15_combout\);

-- Location: MLABCELL_X18_Y5_N36
\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( \CPU|REG_A|DOUT\(1) ) + ( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~15_combout\)))) ) + ( \CPU|ULA|Add0~2\ ))
-- \CPU|ULA|Add0~10\ = CARRY(( \CPU|REG_A|DOUT\(1) ) + ( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~15_combout\)))) ) + ( \CPU|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	cin => \CPU|ULA|Add0~2\,
	sumout => \CPU|ULA|Add0~9_sumout\,
	cout => \CPU|ULA|Add0~10\);

-- Location: FF_X18_Y5_N38
\CPU|REG_A|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~9_sumout\,
	asdata => \ROM|memROM~5_combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y4_N30
\RAM|ram~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~24feeder_combout\ = ( \CPU|REG_A|DOUT[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \RAM|ram~24feeder_combout\);

-- Location: FF_X18_Y4_N31
\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \RAM|ram~24feeder_combout\,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

-- Location: MLABCELL_X18_Y3_N39
\RAM|ram~56feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~56feeder_combout\ = ( \CPU|REG_A|DOUT[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \RAM|ram~56feeder_combout\);

-- Location: FF_X18_Y3_N40
\RAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \RAM|ram~56feeder_combout\,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~56_q\);

-- Location: LABCELL_X19_Y4_N48
\RAM|ram~16feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~16feeder_combout\ = ( \CPU|REG_A|DOUT[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \RAM|ram~16feeder_combout\);

-- Location: FF_X19_Y4_N50
\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \RAM|ram~16feeder_combout\,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: FF_X16_Y5_N17
\RAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~48_q\);

-- Location: LABCELL_X19_Y4_N27
\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \ROM|memROM~3_combout\ & ( \RAM|ram~48_q\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~24_q\)) # (\ROM|memROM~7_combout\ & ((\RAM|ram~56_q\))) ) ) ) # ( !\ROM|memROM~3_combout\ & ( \RAM|ram~48_q\ & ( (\RAM|ram~16_q\) # 
-- (\ROM|memROM~7_combout\) ) ) ) # ( \ROM|memROM~3_combout\ & ( !\RAM|ram~48_q\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~24_q\)) # (\ROM|memROM~7_combout\ & ((\RAM|ram~56_q\))) ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\RAM|ram~48_q\ & ( 
-- (!\ROM|memROM~7_combout\ & \RAM|ram~16_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datab => \RAM|ALT_INV_ram~56_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_ram~16_q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \RAM|ALT_INV_ram~48_q\,
	combout => \RAM|ram~532_combout\);

-- Location: FF_X18_Y6_N22
\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

-- Location: FF_X18_Y4_N22
\RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~40_q\);

-- Location: MLABCELL_X18_Y6_N27
\RAM|ram~72feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~72feeder_combout\ = ( \CPU|REG_A|DOUT[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \RAM|ram~72feeder_combout\);

-- Location: FF_X18_Y6_N28
\RAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \RAM|ram~72feeder_combout\,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~72_q\);

-- Location: FF_X17_Y5_N22
\RAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~64_q\);

-- Location: LABCELL_X16_Y5_N24
\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \ROM|memROM~3_combout\ & ( \RAM|ram~64_q\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~40_q\)) # (\ROM|memROM~7_combout\ & ((\RAM|ram~72_q\))) ) ) ) # ( !\ROM|memROM~3_combout\ & ( \RAM|ram~64_q\ & ( (\ROM|memROM~7_combout\) # 
-- (\RAM|ram~32_q\) ) ) ) # ( \ROM|memROM~3_combout\ & ( !\RAM|ram~64_q\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~40_q\)) # (\ROM|memROM~7_combout\ & ((\RAM|ram~72_q\))) ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\RAM|ram~64_q\ & ( (\RAM|ram~32_q\ & 
-- !\ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000011111101110111011101110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~32_q\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~40_q\,
	datad => \RAM|ALT_INV_ram~72_q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \RAM|ALT_INV_ram~64_q\,
	combout => \RAM|ram~533_combout\);

-- Location: LABCELL_X16_Y5_N39
\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \RAM|ram~533_combout\ & ( (!\ROM|memROM~9_combout\ & ((\RAM|ram~532_combout\) # (\ROM|memROM~5_combout\))) ) ) # ( !\RAM|ram~533_combout\ & ( (!\ROM|memROM~5_combout\ & (\RAM|ram~532_combout\ & !\ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~532_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~533_combout\,
	combout => \RAM|ram~534_combout\);

-- Location: LABCELL_X19_Y5_N30
\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~16_combout\);

-- Location: MLABCELL_X18_Y5_N39
\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( \CPU|REG_A|DOUT\(2) ) + ( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~16_combout\)))) ) + ( \CPU|ULA|Add0~10\ ))
-- \CPU|ULA|Add0~14\ = CARRY(( \CPU|REG_A|DOUT\(2) ) + ( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & \ROM|memROM~16_combout\)))) ) + ( \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	cin => \CPU|ULA|Add0~10\,
	sumout => \CPU|ULA|Add0~13_sumout\,
	cout => \CPU|ULA|Add0~14\);

-- Location: FF_X18_Y5_N40
\CPU|REG_A|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~13_sumout\,
	asdata => \ROM|memROM~7_combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(2));

-- Location: FF_X16_Y5_N11
\RAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~49_q\);

-- Location: FF_X16_Y5_N23
\RAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~65_q\);

-- Location: LABCELL_X16_Y5_N21
\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \ROM|memROM~5_combout\ & ( (!\ROM|memROM~9_combout\ & \RAM|ram~65_q\) ) ) # ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~9_combout\ & \RAM|ram~49_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~49_q\,
	datad => \RAM|ALT_INV_ram~65_q\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~538_combout\);

-- Location: FF_X18_Y4_N38
\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

-- Location: FF_X18_Y4_N50
\RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~41_q\);

-- Location: MLABCELL_X18_Y4_N48
\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~5_combout\ & (\RAM|ram~25_q\)) # (\ROM|memROM~5_combout\ & ((\RAM|ram~41_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~25_q\,
	datad => \RAM|ALT_INV_ram~41_q\,
	combout => \RAM|ram~535_combout\);

-- Location: FF_X18_Y3_N46
\RAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~57_q\);

-- Location: FF_X18_Y6_N11
\RAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~73_q\);

-- Location: MLABCELL_X18_Y6_N9
\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~5_combout\ & (\RAM|ram~57_q\)) # (\ROM|memROM~5_combout\ & ((\RAM|ram~73_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~57_q\,
	datad => \RAM|ALT_INV_ram~73_q\,
	combout => \RAM|ram~536_combout\);

-- Location: FF_X19_Y4_N13
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: FF_X18_Y6_N38
\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

-- Location: MLABCELL_X18_Y6_N36
\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~5_combout\ & (\RAM|ram~17_q\)) # (\ROM|memROM~5_combout\ & ((\RAM|ram~33_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~17_q\,
	datad => \RAM|ALT_INV_ram~33_q\,
	combout => \RAM|ram~537_combout\);

-- Location: MLABCELL_X18_Y4_N12
\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \RAM|ram~536_combout\ & ( \RAM|ram~537_combout\ & ( (!\ROM|memROM~7_combout\ & (((!\ROM|memROM~3_combout\) # (\RAM|ram~535_combout\)))) # (\ROM|memROM~7_combout\ & (((\ROM|memROM~3_combout\)) # (\RAM|ram~538_combout\))) ) ) ) # ( 
-- !\RAM|ram~536_combout\ & ( \RAM|ram~537_combout\ & ( (!\ROM|memROM~7_combout\ & (((!\ROM|memROM~3_combout\) # (\RAM|ram~535_combout\)))) # (\ROM|memROM~7_combout\ & (\RAM|ram~538_combout\ & ((!\ROM|memROM~3_combout\)))) ) ) ) # ( \RAM|ram~536_combout\ & ( 
-- !\RAM|ram~537_combout\ & ( (!\ROM|memROM~7_combout\ & (((\RAM|ram~535_combout\ & \ROM|memROM~3_combout\)))) # (\ROM|memROM~7_combout\ & (((\ROM|memROM~3_combout\)) # (\RAM|ram~538_combout\))) ) ) ) # ( !\RAM|ram~536_combout\ & ( !\RAM|ram~537_combout\ & ( 
-- (!\ROM|memROM~7_combout\ & (((\RAM|ram~535_combout\ & \ROM|memROM~3_combout\)))) # (\ROM|memROM~7_combout\ & (\RAM|ram~538_combout\ & ((!\ROM|memROM~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \RAM|ALT_INV_ram~538_combout\,
	datac => \RAM|ALT_INV_ram~535_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \RAM|ALT_INV_ram~536_combout\,
	dataf => \RAM|ALT_INV_ram~537_combout\,
	combout => \RAM|ram~539_combout\);

-- Location: MLABCELL_X18_Y5_N42
\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( \CPU|REG_A|DOUT\(3) ) + ( !\CPU|DECODER|Equal1~1_combout\ ) + ( \CPU|ULA|Add0~14\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( \CPU|REG_A|DOUT\(3) ) + ( !\CPU|DECODER|Equal1~1_combout\ ) + ( \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(3),
	cin => \CPU|ULA|Add0~14\,
	sumout => \CPU|ULA|Add0~5_sumout\,
	cout => \CPU|ULA|Add0~6\);

-- Location: FF_X18_Y5_N44
\CPU|REG_A|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~5_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(3));

-- Location: LABCELL_X19_Y4_N45
\RAM|ram~18feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~18feeder_combout\ = ( \CPU|REG_A|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	combout => \RAM|ram~18feeder_combout\);

-- Location: FF_X19_Y4_N46
\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \RAM|ram~18feeder_combout\,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: MLABCELL_X18_Y4_N33
\RAM|ram~26feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~26feeder_combout\ = ( \CPU|REG_A|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(3),
	combout => \RAM|ram~26feeder_combout\);

-- Location: FF_X18_Y4_N34
\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \RAM|ram~26feeder_combout\,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

-- Location: FF_X16_Y5_N8
\RAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~50_q\);

-- Location: FF_X18_Y3_N37
\RAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~58_q\);

-- Location: LABCELL_X16_Y5_N6
\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \RAM|ram~50_q\ & ( \RAM|ram~58_q\ & ( ((!\ROM|memROM~3_combout\ & (\RAM|ram~18_q\)) # (\ROM|memROM~3_combout\ & ((\RAM|ram~26_q\)))) # (\ROM|memROM~7_combout\) ) ) ) # ( !\RAM|ram~50_q\ & ( \RAM|ram~58_q\ & ( 
-- (!\ROM|memROM~3_combout\ & (\RAM|ram~18_q\ & (!\ROM|memROM~7_combout\))) # (\ROM|memROM~3_combout\ & (((\RAM|ram~26_q\) # (\ROM|memROM~7_combout\)))) ) ) ) # ( \RAM|ram~50_q\ & ( !\RAM|ram~58_q\ & ( (!\ROM|memROM~3_combout\ & (((\ROM|memROM~7_combout\)) # 
-- (\RAM|ram~18_q\))) # (\ROM|memROM~3_combout\ & (((!\ROM|memROM~7_combout\ & \RAM|ram~26_q\)))) ) ) ) # ( !\RAM|ram~50_q\ & ( !\RAM|ram~58_q\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~3_combout\ & (\RAM|ram~18_q\)) # (\ROM|memROM~3_combout\ & 
-- ((\RAM|ram~26_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_ram~26_q\,
	datae => \RAM|ALT_INV_ram~50_q\,
	dataf => \RAM|ALT_INV_ram~58_q\,
	combout => \RAM|ram~540_combout\);

-- Location: FF_X18_Y6_N17
\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

-- Location: FF_X18_Y4_N58
\RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~42_q\);

-- Location: FF_X17_Y6_N50
\RAM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~66_q\);

-- Location: FF_X18_Y6_N53
\RAM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~74_q\);

-- Location: LABCELL_X17_Y6_N48
\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \RAM|ram~66_q\ & ( \RAM|ram~74_q\ & ( ((!\ROM|memROM~3_combout\ & (\RAM|ram~34_q\)) # (\ROM|memROM~3_combout\ & ((\RAM|ram~42_q\)))) # (\ROM|memROM~7_combout\) ) ) ) # ( !\RAM|ram~66_q\ & ( \RAM|ram~74_q\ & ( 
-- (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~3_combout\ & (\RAM|ram~34_q\)) # (\ROM|memROM~3_combout\ & ((\RAM|ram~42_q\))))) # (\ROM|memROM~7_combout\ & (\ROM|memROM~3_combout\)) ) ) ) # ( \RAM|ram~66_q\ & ( !\RAM|ram~74_q\ & ( (!\ROM|memROM~7_combout\ & 
-- ((!\ROM|memROM~3_combout\ & (\RAM|ram~34_q\)) # (\ROM|memROM~3_combout\ & ((\RAM|ram~42_q\))))) # (\ROM|memROM~7_combout\ & (!\ROM|memROM~3_combout\)) ) ) ) # ( !\RAM|ram~66_q\ & ( !\RAM|ram~74_q\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~3_combout\ & 
-- (\RAM|ram~34_q\)) # (\ROM|memROM~3_combout\ & ((\RAM|ram~42_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \RAM|ALT_INV_ram~34_q\,
	datad => \RAM|ALT_INV_ram~42_q\,
	datae => \RAM|ALT_INV_ram~66_q\,
	dataf => \RAM|ALT_INV_ram~74_q\,
	combout => \RAM|ram~541_combout\);

-- Location: LABCELL_X20_Y5_N51
\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \RAM|ram~541_combout\ & ( (!\ROM|memROM~9_combout\ & ((\RAM|ram~540_combout\) # (\ROM|memROM~5_combout\))) ) ) # ( !\RAM|ram~541_combout\ & ( (!\ROM|memROM~5_combout\ & (!\ROM|memROM~9_combout\ & \RAM|ram~540_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~540_combout\,
	dataf => \RAM|ALT_INV_ram~541_combout\,
	combout => \RAM|ram~542_combout\);

-- Location: MLABCELL_X18_Y5_N45
\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( \CPU|REG_A|DOUT\(4) ) + ( !\CPU|DECODER|Equal1~1_combout\ ) + ( \CPU|ULA|Add0~6\ ))
-- \CPU|ULA|Add0~18\ = CARRY(( \CPU|REG_A|DOUT\(4) ) + ( !\CPU|DECODER|Equal1~1_combout\ ) + ( \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(4),
	cin => \CPU|ULA|Add0~6\,
	sumout => \CPU|ULA|Add0~17_sumout\,
	cout => \CPU|ULA|Add0~18\);

-- Location: FF_X18_Y5_N46
\CPU|REG_A|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(4));

-- Location: FF_X18_Y6_N41
\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

-- Location: FF_X19_Y4_N55
\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

-- Location: MLABCELL_X18_Y6_N39
\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( \RAM|ram~19_q\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~5_combout\) # (\RAM|ram~35_q\))) ) ) # ( !\RAM|ram~19_q\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~5_combout\ & \RAM|ram~35_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~35_q\,
	dataf => \RAM|ALT_INV_ram~19_q\,
	combout => \RAM|ram~545_combout\);

-- Location: FF_X18_Y6_N8
\RAM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~75_q\);

-- Location: FF_X18_Y3_N31
\RAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~59_q\);

-- Location: MLABCELL_X18_Y6_N6
\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( \RAM|ram~59_q\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~5_combout\) # (\RAM|ram~75_q\))) ) ) # ( !\RAM|ram~59_q\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~5_combout\ & \RAM|ram~75_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~75_q\,
	dataf => \RAM|ALT_INV_ram~59_q\,
	combout => \RAM|ram~544_combout\);

-- Location: FF_X18_Y4_N47
\RAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~43_q\);

-- Location: FF_X18_Y4_N35
\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

-- Location: MLABCELL_X18_Y4_N45
\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( \RAM|ram~27_q\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~5_combout\) # (\RAM|ram~43_q\))) ) ) # ( !\RAM|ram~27_q\ & ( (\ROM|memROM~5_combout\ & (!\ROM|memROM~9_combout\ & \RAM|ram~43_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~43_q\,
	dataf => \RAM|ALT_INV_ram~27_q\,
	combout => \RAM|ram~543_combout\);

-- Location: FF_X16_Y5_N59
\RAM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~51_q\);

-- Location: FF_X16_Y5_N47
\RAM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~67_q\);

-- Location: LABCELL_X16_Y5_N45
\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \ROM|memROM~5_combout\ & ( (!\ROM|memROM~9_combout\ & \RAM|ram~67_q\) ) ) # ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~9_combout\ & \RAM|ram~51_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~51_q\,
	datad => \RAM|ALT_INV_ram~67_q\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~546_combout\);

-- Location: MLABCELL_X18_Y4_N18
\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( \ROM|memROM~3_combout\ & ( \RAM|ram~546_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM|ram~543_combout\))) # (\ROM|memROM~7_combout\ & (\RAM|ram~544_combout\)) ) ) ) # ( !\ROM|memROM~3_combout\ & ( \RAM|ram~546_combout\ & ( 
-- (\ROM|memROM~7_combout\) # (\RAM|ram~545_combout\) ) ) ) # ( \ROM|memROM~3_combout\ & ( !\RAM|ram~546_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM|ram~543_combout\))) # (\ROM|memROM~7_combout\ & (\RAM|ram~544_combout\)) ) ) ) # ( !\ROM|memROM~3_combout\ 
-- & ( !\RAM|ram~546_combout\ & ( (\RAM|ram~545_combout\ & !\ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~545_combout\,
	datab => \RAM|ALT_INV_ram~544_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_ram~543_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \RAM|ALT_INV_ram~546_combout\,
	combout => \RAM|ram~547_combout\);

-- Location: FF_X18_Y5_N50
\CPU|REG_A|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~21_sumout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(5));

-- Location: LABCELL_X16_Y5_N36
\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~17_combout\);

-- Location: MLABCELL_X18_Y5_N48
\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( \CPU|REG_A|DOUT\(5) ) + ( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(8) & \ROM|memROM~17_combout\)))) ) + ( \CPU|ULA|Add0~18\ ))
-- \CPU|ULA|Add0~22\ = CARRY(( \CPU|REG_A|DOUT\(5) ) + ( !\CPU|DECODER|Equal1~1_combout\ $ (((!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(8) & \ROM|memROM~17_combout\)))) ) + ( \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \CPU|REG_A|ALT_INV_DOUT\(5),
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	cin => \CPU|ULA|Add0~18\,
	sumout => \CPU|ULA|Add0~21_sumout\,
	cout => \CPU|ULA|Add0~22\);

-- Location: FF_X18_Y5_N49
\CPU|REG_A|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~21_sumout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X18_Y4_N19
\RAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~44_q\);

-- Location: FF_X18_Y6_N14
\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

-- Location: FF_X18_Y6_N2
\RAM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~68_q\);

-- Location: FF_X18_Y6_N32
\RAM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~76_q\);

-- Location: MLABCELL_X18_Y6_N0
\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( \RAM|ram~68_q\ & ( \RAM|ram~76_q\ & ( ((!\ROM|memROM~3_combout\ & ((\RAM|ram~36_q\))) # (\ROM|memROM~3_combout\ & (\RAM|ram~44_q\))) # (\ROM|memROM~7_combout\) ) ) ) # ( !\RAM|ram~68_q\ & ( \RAM|ram~76_q\ & ( 
-- (!\ROM|memROM~3_combout\ & (((!\ROM|memROM~7_combout\ & \RAM|ram~36_q\)))) # (\ROM|memROM~3_combout\ & (((\ROM|memROM~7_combout\)) # (\RAM|ram~44_q\))) ) ) ) # ( \RAM|ram~68_q\ & ( !\RAM|ram~76_q\ & ( (!\ROM|memROM~3_combout\ & (((\RAM|ram~36_q\) # 
-- (\ROM|memROM~7_combout\)))) # (\ROM|memROM~3_combout\ & (\RAM|ram~44_q\ & (!\ROM|memROM~7_combout\))) ) ) ) # ( !\RAM|ram~68_q\ & ( !\RAM|ram~76_q\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~3_combout\ & ((\RAM|ram~36_q\))) # (\ROM|memROM~3_combout\ & 
-- (\RAM|ram~44_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000010101101101010001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \RAM|ALT_INV_ram~44_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_ram~36_q\,
	datae => \RAM|ALT_INV_ram~68_q\,
	dataf => \RAM|ALT_INV_ram~76_q\,
	combout => \RAM|ram~549_combout\);

-- Location: MLABCELL_X18_Y3_N33
\RAM|ram~60feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~60feeder_combout\ = ( \CPU|REG_A|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(5),
	combout => \RAM|ram~60feeder_combout\);

-- Location: FF_X18_Y3_N35
\RAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \RAM|ram~60feeder_combout\,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~60_q\);

-- Location: FF_X18_Y4_N16
\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

-- Location: FF_X16_Y5_N50
\RAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~52_q\);

-- Location: LABCELL_X19_Y4_N36
\RAM|ram~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~20feeder_combout\ = ( \CPU|REG_A|DOUT[5]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \RAM|ram~20feeder_combout\);

-- Location: FF_X19_Y4_N38
\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \RAM|ram~20feeder_combout\,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

-- Location: LABCELL_X16_Y5_N48
\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( \RAM|ram~52_q\ & ( \RAM|ram~20_q\ & ( (!\ROM|memROM~3_combout\) # ((!\ROM|memROM~7_combout\ & ((\RAM|ram~28_q\))) # (\ROM|memROM~7_combout\ & (\RAM|ram~60_q\))) ) ) ) # ( !\RAM|ram~52_q\ & ( \RAM|ram~20_q\ & ( 
-- (!\ROM|memROM~7_combout\ & (((!\ROM|memROM~3_combout\) # (\RAM|ram~28_q\)))) # (\ROM|memROM~7_combout\ & (\RAM|ram~60_q\ & ((\ROM|memROM~3_combout\)))) ) ) ) # ( \RAM|ram~52_q\ & ( !\RAM|ram~20_q\ & ( (!\ROM|memROM~7_combout\ & (((\RAM|ram~28_q\ & 
-- \ROM|memROM~3_combout\)))) # (\ROM|memROM~7_combout\ & (((!\ROM|memROM~3_combout\)) # (\RAM|ram~60_q\))) ) ) ) # ( !\RAM|ram~52_q\ & ( !\RAM|ram~20_q\ & ( (\ROM|memROM~3_combout\ & ((!\ROM|memROM~7_combout\ & ((\RAM|ram~28_q\))) # (\ROM|memROM~7_combout\ 
-- & (\RAM|ram~60_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \RAM|ALT_INV_ram~60_q\,
	datac => \RAM|ALT_INV_ram~28_q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \RAM|ALT_INV_ram~52_q\,
	dataf => \RAM|ALT_INV_ram~20_q\,
	combout => \RAM|ram~548_combout\);

-- Location: LABCELL_X17_Y4_N24
\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \RAM|ram~548_combout\ & ( \ROM|memROM~5_combout\ & ( (!\ROM|memROM~9_combout\ & \RAM|ram~549_combout\) ) ) ) # ( !\RAM|ram~548_combout\ & ( \ROM|memROM~5_combout\ & ( (!\ROM|memROM~9_combout\ & \RAM|ram~549_combout\) ) ) ) # ( 
-- \RAM|ram~548_combout\ & ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~549_combout\,
	datae => \RAM|ALT_INV_ram~548_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~550_combout\);

-- Location: FF_X18_Y5_N53
\CPU|REG_A|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(6));

-- Location: MLABCELL_X18_Y5_N51
\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( \CPU|REG_A|DOUT\(6) ) + ( !\CPU|DECODER|Equal1~1_combout\ ) + ( \CPU|ULA|Add0~22\ ))
-- \CPU|ULA|Add0~26\ = CARRY(( \CPU|REG_A|DOUT\(6) ) + ( !\CPU|DECODER|Equal1~1_combout\ ) + ( \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(6),
	cin => \CPU|ULA|Add0~22\,
	sumout => \CPU|ULA|Add0~25_sumout\,
	cout => \CPU|ULA|Add0~26\);

-- Location: FF_X18_Y5_N52
\CPU|REG_A|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X18_Y4_N41
\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

-- Location: FF_X18_Y4_N53
\RAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~45_q\);

-- Location: MLABCELL_X18_Y4_N51
\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~5_combout\ & (\RAM|ram~29_q\)) # (\ROM|memROM~5_combout\ & ((\RAM|ram~45_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~29_q\,
	datad => \RAM|ALT_INV_ram~45_q\,
	combout => \RAM|ram~551_combout\);

-- Location: FF_X19_Y4_N58
\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

-- Location: FF_X18_Y6_N44
\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

-- Location: MLABCELL_X18_Y6_N42
\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( \ROM|memROM~5_combout\ & ( (!\ROM|memROM~9_combout\ & \RAM|ram~37_q\) ) ) # ( !\ROM|memROM~5_combout\ & ( (!\ROM|memROM~9_combout\ & \RAM|ram~21_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~21_q\,
	datad => \RAM|ALT_INV_ram~37_q\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \RAM|ram~553_combout\);

-- Location: MLABCELL_X18_Y3_N12
\RAM|ram~61feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~61feeder_combout\ = ( \CPU|REG_A|DOUT[6]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \RAM|ram~61feeder_combout\);

-- Location: FF_X18_Y3_N13
\RAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \RAM|ram~61feeder_combout\,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~61_q\);

-- Location: FF_X18_Y6_N35
\RAM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~77_q\);

-- Location: MLABCELL_X18_Y6_N33
\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( \RAM|ram~77_q\ & ( (!\ROM|memROM~9_combout\ & ((\RAM|ram~61_q\) # (\ROM|memROM~5_combout\))) ) ) # ( !\RAM|ram~77_q\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~5_combout\ & \RAM|ram~61_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000001010100010101000001000000010000010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~61_q\,
	datae => \RAM|ALT_INV_ram~77_q\,
	combout => \RAM|ram~552_combout\);

-- Location: FF_X16_Y5_N53
\RAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~53_q\);

-- Location: FF_X17_Y5_N11
\RAM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~69_q\);

-- Location: MLABCELL_X18_Y4_N24
\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~5_combout\ & (\RAM|ram~53_q\)) # (\ROM|memROM~5_combout\ & ((\RAM|ram~69_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~53_q\,
	datad => \RAM|ALT_INV_ram~69_q\,
	combout => \RAM|ram~554_combout\);

-- Location: MLABCELL_X18_Y4_N36
\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( \RAM|ram~552_combout\ & ( \RAM|ram~554_combout\ & ( ((!\ROM|memROM~3_combout\ & ((\RAM|ram~553_combout\))) # (\ROM|memROM~3_combout\ & (\RAM|ram~551_combout\))) # (\ROM|memROM~7_combout\) ) ) ) # ( !\RAM|ram~552_combout\ & ( 
-- \RAM|ram~554_combout\ & ( (!\ROM|memROM~3_combout\ & (((\RAM|ram~553_combout\) # (\ROM|memROM~7_combout\)))) # (\ROM|memROM~3_combout\ & (\RAM|ram~551_combout\ & (!\ROM|memROM~7_combout\))) ) ) ) # ( \RAM|ram~552_combout\ & ( !\RAM|ram~554_combout\ & ( 
-- (!\ROM|memROM~3_combout\ & (((!\ROM|memROM~7_combout\ & \RAM|ram~553_combout\)))) # (\ROM|memROM~3_combout\ & (((\ROM|memROM~7_combout\)) # (\RAM|ram~551_combout\))) ) ) ) # ( !\RAM|ram~552_combout\ & ( !\RAM|ram~554_combout\ & ( (!\ROM|memROM~7_combout\ 
-- & ((!\ROM|memROM~3_combout\ & ((\RAM|ram~553_combout\))) # (\ROM|memROM~3_combout\ & (\RAM|ram~551_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~551_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_ram~553_combout\,
	datae => \RAM|ALT_INV_ram~552_combout\,
	dataf => \RAM|ALT_INV_ram~554_combout\,
	combout => \RAM|ram~555_combout\);

-- Location: MLABCELL_X18_Y5_N54
\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( \CPU|REG_A|DOUT\(7) ) + ( !\CPU|DECODER|Equal1~1_combout\ ) + ( \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datad => \CPU|REG_A|ALT_INV_DOUT\(7),
	cin => \CPU|ULA|Add0~26\,
	sumout => \CPU|ULA|Add0~29_sumout\);

-- Location: FF_X18_Y5_N56
\CPU|REG_A|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|saida~0_combout\,
	ena => \CPU|DECODER|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_A|DOUT\(7));

-- Location: FF_X18_Y4_N4
\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

-- Location: MLABCELL_X18_Y3_N15
\RAM|ram~62feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~62feeder_combout\ = ( \CPU|REG_A|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	combout => \RAM|ram~62feeder_combout\);

-- Location: FF_X18_Y3_N16
\RAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \RAM|ram~62feeder_combout\,
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~62_q\);

-- Location: FF_X16_Y5_N56
\RAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~54_q\);

-- Location: FF_X19_Y4_N10
\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

-- Location: LABCELL_X16_Y5_N54
\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( \RAM|ram~54_q\ & ( \RAM|ram~22_q\ & ( (!\ROM|memROM~3_combout\) # ((!\ROM|memROM~7_combout\ & (\RAM|ram~30_q\)) # (\ROM|memROM~7_combout\ & ((\RAM|ram~62_q\)))) ) ) ) # ( !\RAM|ram~54_q\ & ( \RAM|ram~22_q\ & ( 
-- (!\ROM|memROM~7_combout\ & (((!\ROM|memROM~3_combout\)) # (\RAM|ram~30_q\))) # (\ROM|memROM~7_combout\ & (((\RAM|ram~62_q\ & \ROM|memROM~3_combout\)))) ) ) ) # ( \RAM|ram~54_q\ & ( !\RAM|ram~22_q\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~30_q\ & 
-- ((\ROM|memROM~3_combout\)))) # (\ROM|memROM~7_combout\ & (((!\ROM|memROM~3_combout\) # (\RAM|ram~62_q\)))) ) ) ) # ( !\RAM|ram~54_q\ & ( !\RAM|ram~22_q\ & ( (\ROM|memROM~3_combout\ & ((!\ROM|memROM~7_combout\ & (\RAM|ram~30_q\)) # (\ROM|memROM~7_combout\ 
-- & ((\RAM|ram~62_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datab => \RAM|ALT_INV_ram~62_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \RAM|ALT_INV_ram~54_q\,
	dataf => \RAM|ALT_INV_ram~22_q\,
	combout => \RAM|ram~556_combout\);

-- Location: FF_X17_Y5_N7
\RAM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~70_q\);

-- Location: MLABCELL_X18_Y6_N24
\RAM|ram~78feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~78feeder_combout\ = ( \CPU|REG_A|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	combout => \RAM|ram~78feeder_combout\);

-- Location: FF_X18_Y6_N26
\RAM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \RAM|ram~78feeder_combout\,
	ena => \RAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~78_q\);

-- Location: MLABCELL_X18_Y6_N54
\RAM|ram~38feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~38feeder_combout\ = ( \CPU|REG_A|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REG_A|ALT_INV_DOUT\(7),
	combout => \RAM|ram~38feeder_combout\);

-- Location: FF_X18_Y6_N55
\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \RAM|ram~38feeder_combout\,
	ena => \RAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

-- Location: FF_X18_Y4_N10
\RAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~46_q\);

-- Location: LABCELL_X17_Y6_N30
\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~7_combout\ & ( \RAM|ram~78_q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~7_combout\ & ( \RAM|ram~70_q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~46_q\ 
-- ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~70_q\,
	datab => \RAM|ALT_INV_ram~78_q\,
	datac => \RAM|ALT_INV_ram~38_q\,
	datad => \RAM|ALT_INV_ram~46_q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~557_combout\);

-- Location: LABCELL_X17_Y4_N54
\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = ( \RAM|ram~557_combout\ & ( (!\ROM|memROM~9_combout\ & ((\ROM|memROM~5_combout\) # (\RAM|ram~556_combout\))) ) ) # ( !\RAM|ram~557_combout\ & ( (\RAM|ram~556_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~556_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~557_combout\,
	combout => \RAM|ram~558_combout\);

-- Location: FF_X17_Y5_N44
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X17_Y5_N47
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~21_sumout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DECODER|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y5_N18
\decoderLED|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderLED|Equal7~0_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~1_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~12_combout\ & \ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \decoderLED|Equal7~0_combout\);

-- Location: MLABCELL_X18_Y3_N0
\decoderLED|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderLED|Equal7~1_combout\ = ( !\ROM|memROM~5_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~7_combout\ & \decoderLED|Equal7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \decoderLED|ALT_INV_Equal7~0_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \decoderLED|Equal7~1_combout\);

-- Location: FF_X18_Y3_N5
\RegHEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \decoderLED|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX0|DOUT\(3));

-- Location: FF_X18_Y3_N2
\RegHEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderLED|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX0|DOUT\(1));

-- Location: FF_X18_Y3_N7
\RegHEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \decoderLED|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX0|DOUT\(2));

-- Location: FF_X18_Y3_N20
\RegHEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \decoderLED|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX0|DOUT\(0));

-- Location: MLABCELL_X18_Y3_N24
\conversorHEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX0|rascSaida7seg[0]~0_combout\ = ( \RegHEX0|DOUT\(0) & ( (!\RegHEX0|DOUT\(3) & (!\RegHEX0|DOUT\(1) & !\RegHEX0|DOUT\(2))) # (\RegHEX0|DOUT\(3) & (!\RegHEX0|DOUT\(1) $ (!\RegHEX0|DOUT\(2)))) ) ) # ( !\RegHEX0|DOUT\(0) & ( (!\RegHEX0|DOUT\(3) & 
-- (!\RegHEX0|DOUT\(1) & \RegHEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010010100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX0|ALT_INV_DOUT\(3),
	datab => \RegHEX0|ALT_INV_DOUT\(1),
	datac => \RegHEX0|ALT_INV_DOUT\(2),
	dataf => \RegHEX0|ALT_INV_DOUT\(0),
	combout => \conversorHEX0|rascSaida7seg[0]~0_combout\);

-- Location: FF_X18_Y3_N8
\RegHEX0|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \decoderLED|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX0|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y3_N27
\conversorHEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX0|rascSaida7seg[1]~1_combout\ = ( \RegHEX0|DOUT\(0) & ( (!\RegHEX0|DOUT\(3) & (!\RegHEX0|DOUT\(1) & \RegHEX0|DOUT[2]~DUPLICATE_q\)) # (\RegHEX0|DOUT\(3) & (\RegHEX0|DOUT\(1))) ) ) # ( !\RegHEX0|DOUT\(0) & ( (\RegHEX0|DOUT[2]~DUPLICATE_q\ & 
-- ((\RegHEX0|DOUT\(1)) # (\RegHEX0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX0|ALT_INV_DOUT\(3),
	datab => \RegHEX0|ALT_INV_DOUT\(1),
	datac => \RegHEX0|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \RegHEX0|ALT_INV_DOUT\(0),
	combout => \conversorHEX0|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X18_Y3_N54
\conversorHEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX0|rascSaida7seg[2]~2_combout\ = ( \RegHEX0|DOUT[2]~DUPLICATE_q\ & ( (\RegHEX0|DOUT\(3) & ((!\RegHEX0|DOUT\(0)) # (\RegHEX0|DOUT\(1)))) ) ) # ( !\RegHEX0|DOUT[2]~DUPLICATE_q\ & ( (!\RegHEX0|DOUT\(3) & (\RegHEX0|DOUT\(1) & !\RegHEX0|DOUT\(0))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX0|ALT_INV_DOUT\(3),
	datab => \RegHEX0|ALT_INV_DOUT\(1),
	datac => \RegHEX0|ALT_INV_DOUT\(0),
	dataf => \RegHEX0|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \conversorHEX0|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X18_Y3_N57
\conversorHEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX0|rascSaida7seg[3]~3_combout\ = ( \RegHEX0|DOUT\(0) & ( (!\RegHEX0|DOUT\(1) & (!\RegHEX0|DOUT\(3) & !\RegHEX0|DOUT[2]~DUPLICATE_q\)) # (\RegHEX0|DOUT\(1) & ((\RegHEX0|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\RegHEX0|DOUT\(0) & ( (!\RegHEX0|DOUT\(3) 
-- & (!\RegHEX0|DOUT\(1) & \RegHEX0|DOUT[2]~DUPLICATE_q\)) # (\RegHEX0|DOUT\(3) & (\RegHEX0|DOUT\(1) & !\RegHEX0|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX0|ALT_INV_DOUT\(3),
	datab => \RegHEX0|ALT_INV_DOUT\(1),
	datac => \RegHEX0|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \RegHEX0|ALT_INV_DOUT\(0),
	combout => \conversorHEX0|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X18_Y3_N21
\conversorHEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX0|rascSaida7seg[4]~4_combout\ = ( \RegHEX0|DOUT\(0) & ( (!\RegHEX0|DOUT\(3)) # ((!\RegHEX0|DOUT\(1) & !\RegHEX0|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\RegHEX0|DOUT\(0) & ( (!\RegHEX0|DOUT\(3) & (!\RegHEX0|DOUT\(1) & \RegHEX0|DOUT[2]~DUPLICATE_q\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX0|ALT_INV_DOUT\(3),
	datab => \RegHEX0|ALT_INV_DOUT\(1),
	datac => \RegHEX0|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \RegHEX0|ALT_INV_DOUT\(0),
	combout => \conversorHEX0|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X18_Y3_N51
\conversorHEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX0|rascSaida7seg[5]~5_combout\ = ( \RegHEX0|DOUT\(0) & ( !\RegHEX0|DOUT\(3) $ (((!\RegHEX0|DOUT\(1) & \RegHEX0|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\RegHEX0|DOUT\(0) & ( (!\RegHEX0|DOUT\(3) & (\RegHEX0|DOUT\(1) & !\RegHEX0|DOUT[2]~DUPLICATE_q\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010100110101001101010011010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX0|ALT_INV_DOUT\(3),
	datab => \RegHEX0|ALT_INV_DOUT\(1),
	datac => \RegHEX0|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \RegHEX0|ALT_INV_DOUT\(0),
	combout => \conversorHEX0|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X18_Y3_N48
\conversorHEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX0|rascSaida7seg[6]~6_combout\ = ( \RegHEX0|DOUT[2]~DUPLICATE_q\ & ( (!\RegHEX0|DOUT\(3) & (\RegHEX0|DOUT\(1) & \RegHEX0|DOUT\(0))) # (\RegHEX0|DOUT\(3) & (!\RegHEX0|DOUT\(1) & !\RegHEX0|DOUT\(0))) ) ) # ( !\RegHEX0|DOUT[2]~DUPLICATE_q\ & ( 
-- (!\RegHEX0|DOUT\(3) & !\RegHEX0|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100001000010010000100100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX0|ALT_INV_DOUT\(3),
	datab => \RegHEX0|ALT_INV_DOUT\(1),
	datac => \RegHEX0|ALT_INV_DOUT\(0),
	dataf => \RegHEX0|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \conversorHEX0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X19_Y5_N6
\decoderLED|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderLED|Equal7~2_combout\ = ( \ROM|memROM~3_combout\ & ( \decoderLED|Equal7~0_combout\ & ( (!\ROM|memROM~7_combout\ & !\ROM|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \decoderLED|ALT_INV_Equal7~0_combout\,
	combout => \decoderLED|Equal7~2_combout\);

-- Location: FF_X19_Y5_N40
\RegHEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \decoderLED|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX1|DOUT\(3));

-- Location: FF_X19_Y5_N10
\RegHEX1|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \decoderLED|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX1|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X18_Y5_N26
\RegHEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \decoderLED|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX1|DOUT\(0));

-- Location: FF_X19_Y5_N8
\RegHEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \decoderLED|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX1|DOUT\(2));

-- Location: LABCELL_X17_Y3_N15
\conversorHEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX1|rascSaida7seg[0]~0_combout\ = ( \RegHEX1|DOUT\(0) & ( \RegHEX1|DOUT\(2) & ( (\RegHEX1|DOUT\(3) & !\RegHEX1|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\RegHEX1|DOUT\(0) & ( \RegHEX1|DOUT\(2) & ( (!\RegHEX1|DOUT\(3) & !\RegHEX1|DOUT[1]~DUPLICATE_q\) ) 
-- ) ) # ( \RegHEX1|DOUT\(0) & ( !\RegHEX1|DOUT\(2) & ( !\RegHEX1|DOUT\(3) $ (\RegHEX1|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010110100000101000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX1|ALT_INV_DOUT\(3),
	datac => \RegHEX1|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \RegHEX1|ALT_INV_DOUT\(0),
	dataf => \RegHEX1|ALT_INV_DOUT\(2),
	combout => \conversorHEX1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X17_Y3_N18
\conversorHEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX1|rascSaida7seg[1]~1_combout\ = ( \RegHEX1|DOUT\(0) & ( \RegHEX1|DOUT\(2) & ( !\RegHEX1|DOUT[1]~DUPLICATE_q\ $ (\RegHEX1|DOUT\(3)) ) ) ) # ( !\RegHEX1|DOUT\(0) & ( \RegHEX1|DOUT\(2) & ( (\RegHEX1|DOUT\(3)) # (\RegHEX1|DOUT[1]~DUPLICATE_q\) ) 
-- ) ) # ( \RegHEX1|DOUT\(0) & ( !\RegHEX1|DOUT\(2) & ( (\RegHEX1|DOUT[1]~DUPLICATE_q\ & \RegHEX1|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100111111001111111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegHEX1|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \RegHEX1|ALT_INV_DOUT\(3),
	datae => \RegHEX1|ALT_INV_DOUT\(0),
	dataf => \RegHEX1|ALT_INV_DOUT\(2),
	combout => \conversorHEX1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X17_Y3_N27
\conversorHEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX1|rascSaida7seg[2]~2_combout\ = ( \RegHEX1|DOUT\(0) & ( \RegHEX1|DOUT\(2) & ( (\RegHEX1|DOUT\(3) & \RegHEX1|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\RegHEX1|DOUT\(0) & ( \RegHEX1|DOUT\(2) & ( \RegHEX1|DOUT\(3) ) ) ) # ( !\RegHEX1|DOUT\(0) & ( 
-- !\RegHEX1|DOUT\(2) & ( (!\RegHEX1|DOUT\(3) & \RegHEX1|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000001010101010101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX1|ALT_INV_DOUT\(3),
	datac => \RegHEX1|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \RegHEX1|ALT_INV_DOUT\(0),
	dataf => \RegHEX1|ALT_INV_DOUT\(2),
	combout => \conversorHEX1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X17_Y3_N57
\conversorHEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX1|rascSaida7seg[3]~3_combout\ = ( \RegHEX1|DOUT\(0) & ( \RegHEX1|DOUT\(2) & ( \RegHEX1|DOUT[1]~DUPLICATE_q\ ) ) ) # ( !\RegHEX1|DOUT\(0) & ( \RegHEX1|DOUT\(2) & ( (!\RegHEX1|DOUT\(3) & !\RegHEX1|DOUT[1]~DUPLICATE_q\) ) ) ) # ( 
-- \RegHEX1|DOUT\(0) & ( !\RegHEX1|DOUT\(2) & ( (!\RegHEX1|DOUT\(3) & !\RegHEX1|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\RegHEX1|DOUT\(0) & ( !\RegHEX1|DOUT\(2) & ( (\RegHEX1|DOUT\(3) & \RegHEX1|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101000001010000010100000101000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX1|ALT_INV_DOUT\(3),
	datac => \RegHEX1|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \RegHEX1|ALT_INV_DOUT\(0),
	dataf => \RegHEX1|ALT_INV_DOUT\(2),
	combout => \conversorHEX1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X17_Y3_N36
\conversorHEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX1|rascSaida7seg[4]~4_combout\ = ( \RegHEX1|DOUT\(0) & ( \RegHEX1|DOUT\(2) & ( !\RegHEX1|DOUT\(3) ) ) ) # ( !\RegHEX1|DOUT\(0) & ( \RegHEX1|DOUT\(2) & ( (!\RegHEX1|DOUT[1]~DUPLICATE_q\ & !\RegHEX1|DOUT\(3)) ) ) ) # ( \RegHEX1|DOUT\(0) & ( 
-- !\RegHEX1|DOUT\(2) & ( (!\RegHEX1|DOUT[1]~DUPLICATE_q\) # (!\RegHEX1|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110011000000110000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegHEX1|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \RegHEX1|ALT_INV_DOUT\(3),
	datae => \RegHEX1|ALT_INV_DOUT\(0),
	dataf => \RegHEX1|ALT_INV_DOUT\(2),
	combout => \conversorHEX1|rascSaida7seg[4]~4_combout\);

-- Location: FF_X19_Y5_N11
\RegHEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \decoderLED|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX1|DOUT\(1));

-- Location: LABCELL_X19_Y5_N51
\conversorHEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX1|rascSaida7seg[5]~5_combout\ = ( \RegHEX1|DOUT\(2) & ( (\RegHEX1|DOUT\(0) & (!\RegHEX1|DOUT\(3) $ (!\RegHEX1|DOUT\(1)))) ) ) # ( !\RegHEX1|DOUT\(2) & ( (!\RegHEX1|DOUT\(3) & ((\RegHEX1|DOUT\(0)) # (\RegHEX1|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX1|ALT_INV_DOUT\(3),
	datac => \RegHEX1|ALT_INV_DOUT\(1),
	datad => \RegHEX1|ALT_INV_DOUT\(0),
	dataf => \RegHEX1|ALT_INV_DOUT\(2),
	combout => \conversorHEX1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X19_Y5_N21
\conversorHEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX1|rascSaida7seg[6]~6_combout\ = ( \RegHEX1|DOUT\(3) & ( (\RegHEX1|DOUT\(2) & (!\RegHEX1|DOUT\(1) & !\RegHEX1|DOUT\(0))) ) ) # ( !\RegHEX1|DOUT\(3) & ( (!\RegHEX1|DOUT\(2) & (!\RegHEX1|DOUT\(1))) # (\RegHEX1|DOUT\(2) & (\RegHEX1|DOUT\(1) & 
-- \RegHEX1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100101101000001010010101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX1|ALT_INV_DOUT\(2),
	datac => \RegHEX1|ALT_INV_DOUT\(1),
	datad => \RegHEX1|ALT_INV_DOUT\(0),
	dataf => \RegHEX1|ALT_INV_DOUT\(3),
	combout => \conversorHEX1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X19_Y5_N42
\decoderLED|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderLED|Equal7~3_combout\ = ( !\ROM|memROM~3_combout\ & ( \decoderLED|Equal7~0_combout\ & ( (!\ROM|memROM~7_combout\ & \ROM|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \decoderLED|ALT_INV_Equal7~0_combout\,
	combout => \decoderLED|Equal7~3_combout\);

-- Location: FF_X19_Y5_N17
\RegHEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \decoderLED|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX2|DOUT\(0));

-- Location: FF_X19_Y5_N13
\RegHEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \decoderLED|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX2|DOUT\(1));

-- Location: FF_X19_Y5_N44
\RegHEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \decoderLED|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX2|DOUT\(2));

-- Location: FF_X19_Y5_N46
\RegHEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \decoderLED|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX2|DOUT\(3));

-- Location: LABCELL_X17_Y3_N42
\conversorHEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX2|rascSaida7seg[0]~0_combout\ = ( \RegHEX2|DOUT\(3) & ( (\RegHEX2|DOUT\(0) & (!\RegHEX2|DOUT\(1) $ (!\RegHEX2|DOUT\(2)))) ) ) # ( !\RegHEX2|DOUT\(3) & ( (!\RegHEX2|DOUT\(1) & (!\RegHEX2|DOUT\(0) $ (!\RegHEX2|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000000100010100010001000100100010000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX2|ALT_INV_DOUT\(0),
	datab => \RegHEX2|ALT_INV_DOUT\(1),
	datad => \RegHEX2|ALT_INV_DOUT\(2),
	datae => \RegHEX2|ALT_INV_DOUT\(3),
	combout => \conversorHEX2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X17_Y3_N3
\conversorHEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX2|rascSaida7seg[1]~1_combout\ = ( \RegHEX2|DOUT\(3) & ( (!\RegHEX2|DOUT\(0) & (\RegHEX2|DOUT\(2))) # (\RegHEX2|DOUT\(0) & ((\RegHEX2|DOUT\(1)))) ) ) # ( !\RegHEX2|DOUT\(3) & ( (\RegHEX2|DOUT\(2) & (!\RegHEX2|DOUT\(1) $ (!\RegHEX2|DOUT\(0)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000001100110000111100000011001100000011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegHEX2|ALT_INV_DOUT\(2),
	datac => \RegHEX2|ALT_INV_DOUT\(1),
	datad => \RegHEX2|ALT_INV_DOUT\(0),
	datae => \RegHEX2|ALT_INV_DOUT\(3),
	combout => \conversorHEX2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X17_Y3_N6
\conversorHEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX2|rascSaida7seg[2]~2_combout\ = ( \RegHEX2|DOUT\(3) & ( (\RegHEX2|DOUT\(2) & ((!\RegHEX2|DOUT\(0)) # (\RegHEX2|DOUT\(1)))) ) ) # ( !\RegHEX2|DOUT\(3) & ( (!\RegHEX2|DOUT\(0) & (\RegHEX2|DOUT\(1) & !\RegHEX2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000000000001011101100100010000000000000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX2|ALT_INV_DOUT\(0),
	datab => \RegHEX2|ALT_INV_DOUT\(1),
	datad => \RegHEX2|ALT_INV_DOUT\(2),
	datae => \RegHEX2|ALT_INV_DOUT\(3),
	combout => \conversorHEX2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X19_Y5_N24
\conversorHEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX2|rascSaida7seg[3]~3_combout\ = ( \RegHEX2|DOUT\(1) & ( (!\RegHEX2|DOUT\(0) & (!\RegHEX2|DOUT\(2) & \RegHEX2|DOUT\(3))) # (\RegHEX2|DOUT\(0) & (\RegHEX2|DOUT\(2))) ) ) # ( !\RegHEX2|DOUT\(1) & ( (!\RegHEX2|DOUT\(3) & (!\RegHEX2|DOUT\(0) $ 
-- (!\RegHEX2|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000000011110000110000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegHEX2|ALT_INV_DOUT\(0),
	datac => \RegHEX2|ALT_INV_DOUT\(2),
	datad => \RegHEX2|ALT_INV_DOUT\(3),
	dataf => \RegHEX2|ALT_INV_DOUT\(1),
	combout => \conversorHEX2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X17_Y3_N48
\conversorHEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX2|rascSaida7seg[4]~4_combout\ = ( \RegHEX2|DOUT\(3) & ( (\RegHEX2|DOUT\(0) & (!\RegHEX2|DOUT\(1) & !\RegHEX2|DOUT\(2))) ) ) # ( !\RegHEX2|DOUT\(3) & ( ((!\RegHEX2|DOUT\(1) & \RegHEX2|DOUT\(2))) # (\RegHEX2|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111011101010001000000000001010101110111010100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX2|ALT_INV_DOUT\(0),
	datab => \RegHEX2|ALT_INV_DOUT\(1),
	datad => \RegHEX2|ALT_INV_DOUT\(2),
	datae => \RegHEX2|ALT_INV_DOUT\(3),
	combout => \conversorHEX2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X19_Y5_N36
\conversorHEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX2|rascSaida7seg[5]~5_combout\ = ( \RegHEX2|DOUT\(3) & ( \RegHEX2|DOUT\(0) & ( (!\RegHEX2|DOUT\(1) & \RegHEX2|DOUT\(2)) ) ) ) # ( !\RegHEX2|DOUT\(3) & ( \RegHEX2|DOUT\(0) & ( (!\RegHEX2|DOUT\(2)) # (\RegHEX2|DOUT\(1)) ) ) ) # ( 
-- !\RegHEX2|DOUT\(3) & ( !\RegHEX2|DOUT\(0) & ( (\RegHEX2|DOUT\(1) & !\RegHEX2|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011110011111100110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegHEX2|ALT_INV_DOUT\(1),
	datac => \RegHEX2|ALT_INV_DOUT\(2),
	datae => \RegHEX2|ALT_INV_DOUT\(3),
	dataf => \RegHEX2|ALT_INV_DOUT\(0),
	combout => \conversorHEX2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X19_Y5_N48
\conversorHEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX2|rascSaida7seg[6]~6_combout\ = ( \RegHEX2|DOUT\(0) & ( (!\RegHEX2|DOUT\(3) & (!\RegHEX2|DOUT\(1) $ (\RegHEX2|DOUT\(2)))) ) ) # ( !\RegHEX2|DOUT\(0) & ( (!\RegHEX2|DOUT\(1) & (!\RegHEX2|DOUT\(2) $ (\RegHEX2|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegHEX2|ALT_INV_DOUT\(1),
	datac => \RegHEX2|ALT_INV_DOUT\(2),
	datad => \RegHEX2|ALT_INV_DOUT\(3),
	dataf => \RegHEX2|ALT_INV_DOUT\(0),
	combout => \conversorHEX2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X20_Y5_N33
\decoderLED|Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderLED|Equal7~4_combout\ = ( \decoderLED|Equal7~0_combout\ & ( !\ROM|memROM~7_combout\ & ( (\ROM|memROM~5_combout\ & \ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \decoderLED|ALT_INV_Equal7~0_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \decoderLED|Equal7~4_combout\);

-- Location: FF_X20_Y5_N32
\RegHEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \decoderLED|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX3|DOUT\(3));

-- Location: FF_X20_Y5_N35
\RegHEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderLED|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX3|DOUT\(1));

-- Location: FF_X20_Y5_N38
\RegHEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \decoderLED|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX3|DOUT\(2));

-- Location: FF_X20_Y5_N14
\RegHEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \decoderLED|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX3|DOUT\(0));

-- Location: LABCELL_X20_Y5_N42
\conversorHEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX3|rascSaida7seg[0]~0_combout\ = ( \RegHEX3|DOUT\(0) & ( (!\RegHEX3|DOUT\(3) & (!\RegHEX3|DOUT\(1) & !\RegHEX3|DOUT\(2))) # (\RegHEX3|DOUT\(3) & (!\RegHEX3|DOUT\(1) $ (!\RegHEX3|DOUT\(2)))) ) ) # ( !\RegHEX3|DOUT\(0) & ( (!\RegHEX3|DOUT\(3) & 
-- (!\RegHEX3|DOUT\(1) & \RegHEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011001100001100001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegHEX3|ALT_INV_DOUT\(3),
	datac => \RegHEX3|ALT_INV_DOUT\(1),
	datad => \RegHEX3|ALT_INV_DOUT\(2),
	dataf => \RegHEX3|ALT_INV_DOUT\(0),
	combout => \conversorHEX3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X20_Y5_N27
\conversorHEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX3|rascSaida7seg[1]~1_combout\ = ( \RegHEX3|DOUT\(3) & ( (!\RegHEX3|DOUT\(0) & ((\RegHEX3|DOUT\(2)))) # (\RegHEX3|DOUT\(0) & (\RegHEX3|DOUT\(1))) ) ) # ( !\RegHEX3|DOUT\(3) & ( (\RegHEX3|DOUT\(2) & (!\RegHEX3|DOUT\(1) $ (!\RegHEX3|DOUT\(0)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX3|ALT_INV_DOUT\(1),
	datab => \RegHEX3|ALT_INV_DOUT\(0),
	datad => \RegHEX3|ALT_INV_DOUT\(2),
	dataf => \RegHEX3|ALT_INV_DOUT\(3),
	combout => \conversorHEX3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X20_Y5_N9
\conversorHEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX3|rascSaida7seg[2]~2_combout\ = ( \RegHEX3|DOUT\(2) & ( (\RegHEX3|DOUT\(3) & ((!\RegHEX3|DOUT\(0)) # (\RegHEX3|DOUT\(1)))) ) ) # ( !\RegHEX3|DOUT\(2) & ( (\RegHEX3|DOUT\(1) & (!\RegHEX3|DOUT\(3) & !\RegHEX3|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000001100010011000101000000010000000011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX3|ALT_INV_DOUT\(1),
	datab => \RegHEX3|ALT_INV_DOUT\(3),
	datac => \RegHEX3|ALT_INV_DOUT\(0),
	datae => \RegHEX3|ALT_INV_DOUT\(2),
	combout => \conversorHEX3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X20_Y5_N48
\conversorHEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX3|rascSaida7seg[3]~3_combout\ = ( \RegHEX3|DOUT\(0) & ( (!\RegHEX3|DOUT\(1) & (!\RegHEX3|DOUT\(3) & !\RegHEX3|DOUT\(2))) # (\RegHEX3|DOUT\(1) & ((\RegHEX3|DOUT\(2)))) ) ) # ( !\RegHEX3|DOUT\(0) & ( (!\RegHEX3|DOUT\(3) & (!\RegHEX3|DOUT\(1) & 
-- \RegHEX3|DOUT\(2))) # (\RegHEX3|DOUT\(3) & (\RegHEX3|DOUT\(1) & !\RegHEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegHEX3|ALT_INV_DOUT\(3),
	datac => \RegHEX3|ALT_INV_DOUT\(1),
	datad => \RegHEX3|ALT_INV_DOUT\(2),
	dataf => \RegHEX3|ALT_INV_DOUT\(0),
	combout => \conversorHEX3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X20_Y5_N39
\conversorHEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX3|rascSaida7seg[4]~4_combout\ = ( \RegHEX3|DOUT\(2) & ( (!\RegHEX3|DOUT\(3) & ((!\RegHEX3|DOUT\(1)) # (\RegHEX3|DOUT\(0)))) ) ) # ( !\RegHEX3|DOUT\(2) & ( (\RegHEX3|DOUT\(0) & ((!\RegHEX3|DOUT\(1)) # (!\RegHEX3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010101100001011000000110010001100101011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX3|ALT_INV_DOUT\(1),
	datab => \RegHEX3|ALT_INV_DOUT\(0),
	datac => \RegHEX3|ALT_INV_DOUT\(3),
	datae => \RegHEX3|ALT_INV_DOUT\(2),
	combout => \conversorHEX3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X20_Y5_N15
\conversorHEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX3|rascSaida7seg[5]~5_combout\ = ( \RegHEX3|DOUT\(2) & ( (\RegHEX3|DOUT\(0) & (!\RegHEX3|DOUT\(1) $ (!\RegHEX3|DOUT\(3)))) ) ) # ( !\RegHEX3|DOUT\(2) & ( (!\RegHEX3|DOUT\(3) & ((\RegHEX3|DOUT\(0)) # (\RegHEX3|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100000001100000011001001100010011000000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX3|ALT_INV_DOUT\(1),
	datab => \RegHEX3|ALT_INV_DOUT\(3),
	datac => \RegHEX3|ALT_INV_DOUT\(0),
	datae => \RegHEX3|ALT_INV_DOUT\(2),
	combout => \conversorHEX3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X20_Y5_N24
\conversorHEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX3|rascSaida7seg[6]~6_combout\ = ( \RegHEX3|DOUT\(3) & ( (!\RegHEX3|DOUT\(1) & (!\RegHEX3|DOUT\(0) & \RegHEX3|DOUT\(2))) ) ) # ( !\RegHEX3|DOUT\(3) & ( (!\RegHEX3|DOUT\(1) & ((!\RegHEX3|DOUT\(2)))) # (\RegHEX3|DOUT\(1) & (\RegHEX3|DOUT\(0) & 
-- \RegHEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000110100001101000011010000100001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX3|ALT_INV_DOUT\(1),
	datab => \RegHEX3|ALT_INV_DOUT\(0),
	datac => \RegHEX3|ALT_INV_DOUT\(2),
	dataf => \RegHEX3|ALT_INV_DOUT\(3),
	combout => \conversorHEX3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X19_Y5_N18
\decoderLED|Equal7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderLED|Equal7~5_combout\ = ( \decoderLED|Equal7~0_combout\ & ( (!\ROM|memROM~5_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \decoderLED|ALT_INV_Equal7~0_combout\,
	combout => \decoderLED|Equal7~5_combout\);

-- Location: FF_X20_Y5_N58
\RegHEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \decoderLED|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX4|DOUT\(3));

-- Location: FF_X20_Y5_N8
\RegHEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \decoderLED|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX4|DOUT\(0));

-- Location: FF_X20_Y5_N5
\RegHEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderLED|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX4|DOUT\(1));

-- Location: FF_X20_Y5_N2
\RegHEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \decoderLED|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX4|DOUT\(2));

-- Location: LABCELL_X20_Y5_N0
\conversorHEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX4|rascSaida7seg[0]~0_combout\ = ( \RegHEX4|DOUT\(2) & ( (!\RegHEX4|DOUT\(1) & (!\RegHEX4|DOUT\(3) $ (\RegHEX4|DOUT\(0)))) ) ) # ( !\RegHEX4|DOUT\(2) & ( (\RegHEX4|DOUT\(0) & (!\RegHEX4|DOUT\(3) $ (\RegHEX4|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001100100001001000000100001001000011001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX4|ALT_INV_DOUT\(3),
	datab => \RegHEX4|ALT_INV_DOUT\(0),
	datac => \RegHEX4|ALT_INV_DOUT\(1),
	datae => \RegHEX4|ALT_INV_DOUT\(2),
	combout => \conversorHEX4|rascSaida7seg[0]~0_combout\);

-- Location: FF_X20_Y5_N4
\RegHEX4|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \decoderLED|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX4|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X20_Y5_N7
\RegHEX4|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \decoderLED|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX4|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y4_N51
\conversorHEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX4|rascSaida7seg[1]~1_combout\ = ( \RegHEX4|DOUT[0]~DUPLICATE_q\ & ( (!\RegHEX4|DOUT[1]~DUPLICATE_q\ & (\RegHEX4|DOUT\(2) & !\RegHEX4|DOUT\(3))) # (\RegHEX4|DOUT[1]~DUPLICATE_q\ & ((\RegHEX4|DOUT\(3)))) ) ) # ( !\RegHEX4|DOUT[0]~DUPLICATE_q\ & 
-- ( (\RegHEX4|DOUT\(2) & ((\RegHEX4|DOUT\(3)) # (\RegHEX4|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \RegHEX4|ALT_INV_DOUT\(2),
	datac => \RegHEX4|ALT_INV_DOUT\(3),
	dataf => \RegHEX4|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \conversorHEX4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X17_Y4_N9
\conversorHEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX4|rascSaida7seg[2]~2_combout\ = ( \RegHEX4|DOUT[0]~DUPLICATE_q\ & ( (\RegHEX4|DOUT[1]~DUPLICATE_q\ & (\RegHEX4|DOUT\(2) & \RegHEX4|DOUT\(3))) ) ) # ( !\RegHEX4|DOUT[0]~DUPLICATE_q\ & ( (!\RegHEX4|DOUT\(2) & (\RegHEX4|DOUT[1]~DUPLICATE_q\ & 
-- !\RegHEX4|DOUT\(3))) # (\RegHEX4|DOUT\(2) & ((\RegHEX4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \RegHEX4|ALT_INV_DOUT\(2),
	datac => \RegHEX4|ALT_INV_DOUT\(3),
	dataf => \RegHEX4|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \conversorHEX4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X20_Y5_N54
\conversorHEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX4|rascSaida7seg[3]~3_combout\ = ( \RegHEX4|DOUT\(2) & ( \RegHEX4|DOUT\(3) & ( (\RegHEX4|DOUT\(0) & \RegHEX4|DOUT\(1)) ) ) ) # ( !\RegHEX4|DOUT\(2) & ( \RegHEX4|DOUT\(3) & ( (!\RegHEX4|DOUT\(0) & \RegHEX4|DOUT\(1)) ) ) ) # ( \RegHEX4|DOUT\(2) 
-- & ( !\RegHEX4|DOUT\(3) & ( !\RegHEX4|DOUT\(0) $ (\RegHEX4|DOUT\(1)) ) ) ) # ( !\RegHEX4|DOUT\(2) & ( !\RegHEX4|DOUT\(3) & ( (\RegHEX4|DOUT\(0) & !\RegHEX4|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000111100001100001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegHEX4|ALT_INV_DOUT\(0),
	datac => \RegHEX4|ALT_INV_DOUT\(1),
	datae => \RegHEX4|ALT_INV_DOUT\(2),
	dataf => \RegHEX4|ALT_INV_DOUT\(3),
	combout => \conversorHEX4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X20_Y5_N45
\conversorHEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX4|rascSaida7seg[4]~4_combout\ = ( \RegHEX4|DOUT\(3) & ( (!\RegHEX4|DOUT\(1) & (\RegHEX4|DOUT\(0) & !\RegHEX4|DOUT\(2))) ) ) # ( !\RegHEX4|DOUT\(3) & ( ((!\RegHEX4|DOUT\(1) & \RegHEX4|DOUT\(2))) # (\RegHEX4|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011111010111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX4|ALT_INV_DOUT\(1),
	datac => \RegHEX4|ALT_INV_DOUT\(0),
	datad => \RegHEX4|ALT_INV_DOUT\(2),
	dataf => \RegHEX4|ALT_INV_DOUT\(3),
	combout => \conversorHEX4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X17_Y4_N12
\conversorHEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX4|rascSaida7seg[5]~5_combout\ = ( \RegHEX4|DOUT\(3) & ( (\RegHEX4|DOUT[0]~DUPLICATE_q\ & (\RegHEX4|DOUT\(2) & !\RegHEX4|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\RegHEX4|DOUT\(3) & ( (!\RegHEX4|DOUT[0]~DUPLICATE_q\ & (!\RegHEX4|DOUT\(2) & 
-- \RegHEX4|DOUT[1]~DUPLICATE_q\)) # (\RegHEX4|DOUT[0]~DUPLICATE_q\ & ((!\RegHEX4|DOUT\(2)) # (\RegHEX4|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX4|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \RegHEX4|ALT_INV_DOUT\(2),
	datac => \RegHEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \RegHEX4|ALT_INV_DOUT\(3),
	combout => \conversorHEX4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X17_Y4_N30
\conversorHEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX4|rascSaida7seg[6]~6_combout\ = ( \RegHEX4|DOUT\(3) & ( (!\RegHEX4|DOUT[0]~DUPLICATE_q\ & (\RegHEX4|DOUT\(2) & !\RegHEX4|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\RegHEX4|DOUT\(3) & ( (!\RegHEX4|DOUT\(2) & ((!\RegHEX4|DOUT[1]~DUPLICATE_q\))) # 
-- (\RegHEX4|DOUT\(2) & (\RegHEX4|DOUT[0]~DUPLICATE_q\ & \RegHEX4|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111000001110000011100000100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX4|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \RegHEX4|ALT_INV_DOUT\(2),
	datac => \RegHEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \RegHEX4|ALT_INV_DOUT\(3),
	combout => \conversorHEX4|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X19_Y5_N3
\decoderLED|Equal7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderLED|Equal7~6_combout\ = ( \ROM|memROM~7_combout\ & ( \decoderLED|Equal7~0_combout\ & ( (\ROM|memROM~3_combout\ & !\ROM|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \decoderLED|ALT_INV_Equal7~0_combout\,
	combout => \decoderLED|Equal7~6_combout\);

-- Location: FF_X19_Y5_N1
\RegHEX5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(3),
	sload => VCC,
	ena => \decoderLED|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX5|DOUT\(3));

-- Location: FF_X19_Y5_N59
\RegHEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(0),
	sload => VCC,
	ena => \decoderLED|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX5|DOUT\(0));

-- Location: FF_X19_Y5_N34
\RegHEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(1),
	sload => VCC,
	ena => \decoderLED|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX5|DOUT\(1));

-- Location: FF_X19_Y5_N5
\RegHEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clovis~inputCLKENA0_outclk\,
	asdata => \CPU|REG_A|DOUT\(2),
	sload => VCC,
	ena => \decoderLED|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegHEX5|DOUT\(2));

-- Location: LABCELL_X19_Y3_N24
\conversorHEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX5|rascSaida7seg[0]~0_combout\ = ( !\RegHEX5|DOUT\(1) & ( \RegHEX5|DOUT\(2) & ( !\RegHEX5|DOUT\(3) $ (\RegHEX5|DOUT\(0)) ) ) ) # ( \RegHEX5|DOUT\(1) & ( !\RegHEX5|DOUT\(2) & ( (\RegHEX5|DOUT\(3) & \RegHEX5|DOUT\(0)) ) ) ) # ( 
-- !\RegHEX5|DOUT\(1) & ( !\RegHEX5|DOUT\(2) & ( (!\RegHEX5|DOUT\(3) & \RegHEX5|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000001010000010110100101101001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX5|ALT_INV_DOUT\(3),
	datac => \RegHEX5|ALT_INV_DOUT\(0),
	datae => \RegHEX5|ALT_INV_DOUT\(1),
	dataf => \RegHEX5|ALT_INV_DOUT\(2),
	combout => \conversorHEX5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X19_Y3_N21
\conversorHEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX5|rascSaida7seg[1]~1_combout\ = ( \RegHEX5|DOUT\(1) & ( \RegHEX5|DOUT\(0) & ( \RegHEX5|DOUT\(3) ) ) ) # ( !\RegHEX5|DOUT\(1) & ( \RegHEX5|DOUT\(0) & ( (!\RegHEX5|DOUT\(3) & \RegHEX5|DOUT\(2)) ) ) ) # ( \RegHEX5|DOUT\(1) & ( !\RegHEX5|DOUT\(0) 
-- & ( \RegHEX5|DOUT\(2) ) ) ) # ( !\RegHEX5|DOUT\(1) & ( !\RegHEX5|DOUT\(0) & ( (\RegHEX5|DOUT\(3) & \RegHEX5|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000001111111100000000101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX5|ALT_INV_DOUT\(3),
	datad => \RegHEX5|ALT_INV_DOUT\(2),
	datae => \RegHEX5|ALT_INV_DOUT\(1),
	dataf => \RegHEX5|ALT_INV_DOUT\(0),
	combout => \conversorHEX5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X19_Y5_N27
\conversorHEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX5|rascSaida7seg[2]~2_combout\ = ( \RegHEX5|DOUT\(0) & ( (\RegHEX5|DOUT\(1) & (\RegHEX5|DOUT\(3) & \RegHEX5|DOUT\(2))) ) ) # ( !\RegHEX5|DOUT\(0) & ( (!\RegHEX5|DOUT\(3) & (\RegHEX5|DOUT\(1) & !\RegHEX5|DOUT\(2))) # (\RegHEX5|DOUT\(3) & 
-- ((\RegHEX5|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX5|ALT_INV_DOUT\(1),
	datac => \RegHEX5|ALT_INV_DOUT\(3),
	datad => \RegHEX5|ALT_INV_DOUT\(2),
	dataf => \RegHEX5|ALT_INV_DOUT\(0),
	combout => \conversorHEX5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X19_Y5_N57
\conversorHEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX5|rascSaida7seg[3]~3_combout\ = ( \RegHEX5|DOUT\(3) & ( (\RegHEX5|DOUT\(1) & (!\RegHEX5|DOUT\(2) $ (\RegHEX5|DOUT\(0)))) ) ) # ( !\RegHEX5|DOUT\(3) & ( (!\RegHEX5|DOUT\(2) & (!\RegHEX5|DOUT\(1) & \RegHEX5|DOUT\(0))) # (\RegHEX5|DOUT\(2) & 
-- (!\RegHEX5|DOUT\(1) $ (\RegHEX5|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX5|ALT_INV_DOUT\(2),
	datac => \RegHEX5|ALT_INV_DOUT\(1),
	datad => \RegHEX5|ALT_INV_DOUT\(0),
	dataf => \RegHEX5|ALT_INV_DOUT\(3),
	combout => \conversorHEX5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X19_Y3_N51
\conversorHEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX5|rascSaida7seg[4]~4_combout\ = ( \RegHEX5|DOUT\(1) & ( \RegHEX5|DOUT\(0) & ( !\RegHEX5|DOUT\(3) ) ) ) # ( !\RegHEX5|DOUT\(1) & ( \RegHEX5|DOUT\(0) & ( (!\RegHEX5|DOUT\(3)) # (!\RegHEX5|DOUT\(2)) ) ) ) # ( !\RegHEX5|DOUT\(1) & ( 
-- !\RegHEX5|DOUT\(0) & ( (!\RegHEX5|DOUT\(3) & \RegHEX5|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000011111111101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX5|ALT_INV_DOUT\(3),
	datad => \RegHEX5|ALT_INV_DOUT\(2),
	datae => \RegHEX5|ALT_INV_DOUT\(1),
	dataf => \RegHEX5|ALT_INV_DOUT\(0),
	combout => \conversorHEX5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X19_Y3_N9
\conversorHEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX5|rascSaida7seg[5]~5_combout\ = ( \RegHEX5|DOUT\(1) & ( \RegHEX5|DOUT\(0) & ( !\RegHEX5|DOUT\(3) ) ) ) # ( !\RegHEX5|DOUT\(1) & ( \RegHEX5|DOUT\(0) & ( !\RegHEX5|DOUT\(3) $ (\RegHEX5|DOUT\(2)) ) ) ) # ( \RegHEX5|DOUT\(1) & ( 
-- !\RegHEX5|DOUT\(0) & ( (!\RegHEX5|DOUT\(3) & !\RegHEX5|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000010101010010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegHEX5|ALT_INV_DOUT\(3),
	datad => \RegHEX5|ALT_INV_DOUT\(2),
	datae => \RegHEX5|ALT_INV_DOUT\(1),
	dataf => \RegHEX5|ALT_INV_DOUT\(0),
	combout => \conversorHEX5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X19_Y5_N54
\conversorHEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conversorHEX5|rascSaida7seg[6]~6_combout\ = ( \RegHEX5|DOUT\(0) & ( (!\RegHEX5|DOUT\(3) & (!\RegHEX5|DOUT\(2) $ (\RegHEX5|DOUT\(1)))) ) ) # ( !\RegHEX5|DOUT\(0) & ( (!\RegHEX5|DOUT\(1) & (!\RegHEX5|DOUT\(3) $ (\RegHEX5|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegHEX5|ALT_INV_DOUT\(3),
	datac => \RegHEX5|ALT_INV_DOUT\(2),
	datad => \RegHEX5|ALT_INV_DOUT\(1),
	dataf => \RegHEX5|ALT_INV_DOUT\(0),
	combout => \conversorHEX5|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X54_Y16_N4
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


