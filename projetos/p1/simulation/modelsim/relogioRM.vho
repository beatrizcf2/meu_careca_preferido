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

-- DATE "05/08/2022 00:35:59"

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
	saidaBanco : BUFFER std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END contador;

-- Design Ports Information
-- endROM[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endROM[8]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[4]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRAM[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[0]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[6]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valorDado[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- saidaBanco[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaBanco[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaBanco[2]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaBanco[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaBanco[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaBanco[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaBanco[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaBanco[7]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saidaBanco : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
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
SIGNAL \CPU|PC_INC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~6\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~41_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|contador[0]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~42\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~37_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~38\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~65_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~66\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~33_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~34\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~45_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~46\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~9_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~10\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~13_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~14\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~17_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|contador[7]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~18\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~29_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~30\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~21_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Equal0~0_combout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~22\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~25_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~26\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~5_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Equal0~1_combout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~6\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~85_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|contador[12]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~86\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~81_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~82\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~77_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~78\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~73_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~74\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~69_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~70\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~1_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Equal0~3_combout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~2\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~49_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~50\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~53_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~54\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~57_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~58\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Add0~61_sumout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Equal0~2_combout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|Equal0~4_combout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|tick~0_combout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|tick~feeder_combout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|tick~q\ : std_logic;
SIGNAL \interfaceTempo1|registraUmSegundo|DOUT~feeder_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~2_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~10\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~14\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~18\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~22\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~26\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~30\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ADDR_507~0_combout\ : std_logic;
SIGNAL \ADDR_507~1_combout\ : std_logic;
SIGNAL \interfaceTempo1|registraUmSegundo|DOUT~q\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \CPU|DECODER|habBanco~0_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~1_combout\ : std_logic;
SIGNAL \habRESET~1_combout\ : std_logic;
SIGNAL \habRESET~0_combout\ : std_logic;
SIGNAL \habTempo~0_combout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~53_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|contador[0]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~54\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~9_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|contador[1]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~10\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~13_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~14\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~17_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~18\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~21_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~22\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~25_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~26\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~29_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~30\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~5_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~6\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~49_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~50\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~45_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~46\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~57_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~58\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~41_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~42\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~37_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~38\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~33_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~34\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~1_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Equal0~0_combout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~2\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~97_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~98\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~61_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~62\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~65_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~66\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~69_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|contador[19]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~70\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~73_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~74\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~77_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Equal0~2_combout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~78\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~81_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~82\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~85_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~86\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~89_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~90\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Add0~93_sumout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Equal0~3_combout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|contador[13]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Equal0~1_combout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|Equal0~4_combout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|tick~0_combout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|tick~q\ : std_logic;
SIGNAL \interfaceTempo0|registraUmSegundo|DOUT~feeder_combout\ : std_logic;
SIGNAL \interfaceTempo0|registraUmSegundo|DOUT~q\ : std_logic;
SIGNAL \RAM|dado_out[0]~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~3_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \bufferKEY2|saida[0]~0_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \habKEY0~0_combout\ : std_logic;
SIGNAL \bufferRESET|saida[0]~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \bufferKEY3|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|operacao~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal1~4_combout\ : std_logic;
SIGNAL \CPU|ULA|Equal1~0_combout\ : std_logic;
SIGNAL \habSWconj~0_combout\ : std_logic;
SIGNAL \habSWconj~1_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~45_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|contador[0]~feeder_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~46\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~41_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|contador[1]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~42\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~37_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~38\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~49_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|contador[3]~feeder_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~50\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~1_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|contador[4]~feeder_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~2\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~53_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~54\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~57_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~58\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~33_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Equal0~1_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~34\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~61_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~62\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~65_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~66\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~69_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~70\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~5_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~6\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~13_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|contador[12]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~14\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~17_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|contador[13]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~18\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~9_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Equal0~2_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|contador[15]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~10\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~29_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~30\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~25_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|contador[16]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~26\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Add0~21_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Equal0~0_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|Equal0~3_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|tick~0_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|tick~feeder_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|tick~q\ : std_logic;
SIGNAL \interfaceTempo2|registraUmSegundo|DOUT~feeder_combout\ : std_logic;
SIGNAL \interfaceTempo2|registraUmSegundo|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|dado_out[0]~8_combout\ : std_logic;
SIGNAL \bufferSW8|saida[1]~7_combout\ : std_logic;
SIGNAL \habKEY0~1_combout\ : std_logic;
SIGNAL \bufferSW8|saida[1]~8_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~5_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~7_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~20feeder_combout\ : std_logic;
SIGNAL \CPU|DECODER|operacao~1_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~36_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~20_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~28_combout\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~6_combout\ : std_logic;
SIGNAL \interfaceTempo2|registraUmSegundo|DOUT~q\ : std_logic;
SIGNAL \RAM|dado_out[0]~2_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \bufferSW8|saida[5]~13_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~2\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~21feeder_combout\ : std_logic;
SIGNAL \bufferSW8|saida[1]~16_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~21_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~29_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~581_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~577_combout\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \bufferSW8|saida[1]~9_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~22feeder_combout\ : std_logic;
SIGNAL \bufferSW8|saida[2]~17_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~22_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~30_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \bufferSW8|saida[2]~10_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~23feeder_combout\ : std_logic;
SIGNAL \bufferSW8|saida[3]~18_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~23_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~31_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~573_combout\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \bufferSW8|saida[3]~11_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~24feeder_combout\ : std_logic;
SIGNAL \bufferSW8|saida[4]~19_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~24_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~32_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~569_combout\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \bufferSW8|saida[4]~12_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~25feeder_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~25_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~33_combout\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \bufferSW8|saida[5]~20_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~6_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~26feeder_combout\ : std_logic;
SIGNAL \bufferSW8|saida[6]~21_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~26_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~34_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \bufferSW8|saida[6]~14_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~27feeder_combout\ : std_logic;
SIGNAL \bufferSW8|saida[7]~22_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~27_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~35_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \bufferSW8|saida[7]~15_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~4_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~5_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAGer|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~2_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \habKEY2~0_combout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~2\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~1_combout\ : std_logic;
SIGNAL \CPU|PC_INC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|dado_out~9_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~3_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~4_combout\ : std_logic;
SIGNAL \habHEX0~0_combout\ : std_logic;
SIGNAL \habHEX0~1_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED8|DOUT~q\ : std_logic;
SIGNAL \FFLED9|DOUT~0_combout\ : std_logic;
SIGNAL \FFLED9|DOUT~q\ : std_logic;
SIGNAL \habHEX0~2_combout\ : std_logic;
SIGNAL \HEX0_decoder|REG_4bits|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ : std_logic;
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
SIGNAL \CPU|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \HEX4_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX3_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \interfaceTempo0|baseTempo|contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \interfaceTempo1|baseTempo|contador\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \interfaceTempo2|baseTempo|contador\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \HEX2_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0_decoder|REG_4bits|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out~9_combout\ : std_logic;
SIGNAL \ALT_INV_habKEY0~1_combout\ : std_logic;
SIGNAL \ALT_INV_habRESET~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~6_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~5_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_tick~0_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|ALT_INV_tick~0_combout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~7_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_tick~q\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|ALT_INV_tick~q\ : std_logic;
SIGNAL \ALT_INV_ADDR_507~1_combout\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|ALT_INV_tick~q\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[7]~22_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[6]~21_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[5]~20_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[4]~19_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[3]~18_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[2]~17_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[1]~16_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_operacao~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_operacao~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \CPU|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~6_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX0~1_combout\ : std_logic;
SIGNAL \ALT_INV_habHEX0~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[7]~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[6]~14_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[5]~13_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[4]~12_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[3]~11_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[2]~10_combout\ : std_logic;
SIGNAL \interfaceTempo2|registraUmSegundo|ALT_INV_DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_contador[1]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_contador[15]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_contador[16]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_contador[13]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_contador[12]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|ALT_INV_contador[12]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|ALT_INV_contador[0]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|ALT_INV_contador[7]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo1|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|ALT_INV_contador[19]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|ALT_INV_contador[0]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|ALT_INV_contador[13]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo0|baseTempo|ALT_INV_contador[1]~DUPLICATE_q\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_contador\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \interfaceTempo1|baseTempo|ALT_INV_contador\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \interfaceTempo0|baseTempo|ALT_INV_contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \CPU|ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|PC_INC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~20_q\ : std_logic;
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
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \interfaceTempo2|baseTempo|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[1]~9_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~5_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[1]~8_combout\ : std_logic;
SIGNAL \bufferSW8|ALT_INV_saida[1]~7_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~3_combout\ : std_logic;
SIGNAL \bufferKEY3|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_ADDR_507~0_combout\ : std_logic;
SIGNAL \bufferKEY2|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_habKEY2~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~2_combout\ : std_logic;
SIGNAL \interfaceTempo2|registraUmSegundo|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_habSWconj~1_combout\ : std_logic;
SIGNAL \ALT_INV_habSWconj~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~1_combout\ : std_logic;
SIGNAL \interfaceTempo1|registraUmSegundo|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \interfaceTempo0|registraUmSegundo|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_habTempo~0_combout\ : std_logic;
SIGNAL \bufferRESET|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_habKEY0~0_combout\ : std_logic;
SIGNAL \ALT_INV_habRESET~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_habBanco~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \CPU|END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~1_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|FLAGer|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~35_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~34_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~33_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~32_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~31_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~30_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~29_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~28_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \HEX4_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX3_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0_decoder|REG_4bits|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);

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
saidaBanco <= ww_saidaBanco;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\RAM|ALT_INV_dado_out~9_combout\ <= NOT \RAM|dado_out~9_combout\;
\ALT_INV_habKEY0~1_combout\ <= NOT \habKEY0~1_combout\;
\ALT_INV_habRESET~1_combout\ <= NOT \habRESET~1_combout\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\CPU|FLAGer|ALT_INV_DOUT~6_combout\ <= NOT \CPU|FLAGer|DOUT~6_combout\;
\CPU|FLAGer|ALT_INV_DOUT~5_combout\ <= NOT \CPU|FLAGer|DOUT~5_combout\;
\CPU|FLAGer|ALT_INV_DOUT~4_combout\ <= NOT \CPU|FLAGer|DOUT~4_combout\;
\RAM|ALT_INV_dado_out[0]~8_combout\ <= NOT \RAM|dado_out[0]~8_combout\;
\interfaceTempo2|baseTempo|ALT_INV_tick~0_combout\ <= NOT \interfaceTempo2|baseTempo|tick~0_combout\;
\interfaceTempo2|baseTempo|ALT_INV_Equal0~3_combout\ <= NOT \interfaceTempo2|baseTempo|Equal0~3_combout\;
\interfaceTempo2|baseTempo|ALT_INV_Equal0~2_combout\ <= NOT \interfaceTempo2|baseTempo|Equal0~2_combout\;
\interfaceTempo2|baseTempo|ALT_INV_Equal0~1_combout\ <= NOT \interfaceTempo2|baseTempo|Equal0~1_combout\;
\interfaceTempo2|baseTempo|ALT_INV_Equal0~0_combout\ <= NOT \interfaceTempo2|baseTempo|Equal0~0_combout\;
\interfaceTempo1|baseTempo|ALT_INV_tick~0_combout\ <= NOT \interfaceTempo1|baseTempo|tick~0_combout\;
\interfaceTempo1|baseTempo|ALT_INV_Equal0~4_combout\ <= NOT \interfaceTempo1|baseTempo|Equal0~4_combout\;
\interfaceTempo1|baseTempo|ALT_INV_Equal0~3_combout\ <= NOT \interfaceTempo1|baseTempo|Equal0~3_combout\;
\interfaceTempo1|baseTempo|ALT_INV_Equal0~2_combout\ <= NOT \interfaceTempo1|baseTempo|Equal0~2_combout\;
\interfaceTempo1|baseTempo|ALT_INV_Equal0~1_combout\ <= NOT \interfaceTempo1|baseTempo|Equal0~1_combout\;
\interfaceTempo1|baseTempo|ALT_INV_Equal0~0_combout\ <= NOT \interfaceTempo1|baseTempo|Equal0~0_combout\;
\interfaceTempo0|baseTempo|ALT_INV_Equal0~4_combout\ <= NOT \interfaceTempo0|baseTempo|Equal0~4_combout\;
\interfaceTempo0|baseTempo|ALT_INV_Equal0~3_combout\ <= NOT \interfaceTempo0|baseTempo|Equal0~3_combout\;
\interfaceTempo0|baseTempo|ALT_INV_Equal0~2_combout\ <= NOT \interfaceTempo0|baseTempo|Equal0~2_combout\;
\interfaceTempo0|baseTempo|ALT_INV_Equal0~1_combout\ <= NOT \interfaceTempo0|baseTempo|Equal0~1_combout\;
\interfaceTempo0|baseTempo|ALT_INV_Equal0~0_combout\ <= NOT \interfaceTempo0|baseTempo|Equal0~0_combout\;
\RAM|ALT_INV_dado_out[0]~7_combout\ <= NOT \RAM|dado_out[0]~7_combout\;
\CPU|ULA|ALT_INV_Equal1~0_combout\ <= NOT \CPU|ULA|Equal1~0_combout\;
\interfaceTempo2|baseTempo|ALT_INV_tick~q\ <= NOT \interfaceTempo2|baseTempo|tick~q\;
\interfaceTempo1|baseTempo|ALT_INV_tick~q\ <= NOT \interfaceTempo1|baseTempo|tick~q\;
\ALT_INV_ADDR_507~1_combout\ <= NOT \ADDR_507~1_combout\;
\interfaceTempo0|baseTempo|ALT_INV_tick~q\ <= NOT \interfaceTempo0|baseTempo|tick~q\;
\CPU|FLAGer|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAGer|DOUT~2_combout\;
\CPU|FLAGer|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAGer|DOUT~1_combout\;
\CPU|FLAGer|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FLAGer|DOUT~0_combout\;
\bufferSW8|ALT_INV_saida[7]~22_combout\ <= NOT \bufferSW8|saida[7]~22_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[6]~6_combout\;
\bufferSW8|ALT_INV_saida[6]~21_combout\ <= NOT \bufferSW8|saida[6]~21_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[5]~5_combout\;
\bufferSW8|ALT_INV_saida[5]~20_combout\ <= NOT \bufferSW8|saida[5]~20_combout\;
\bufferSW8|ALT_INV_saida[4]~19_combout\ <= NOT \bufferSW8|saida[4]~19_combout\;
\bufferSW8|ALT_INV_saida[3]~18_combout\ <= NOT \bufferSW8|saida[3]~18_combout\;
\bufferSW8|ALT_INV_saida[2]~17_combout\ <= NOT \bufferSW8|saida[2]~17_combout\;
\bufferSW8|ALT_INV_saida[1]~16_combout\ <= NOT \bufferSW8|saida[1]~16_combout\;
\CPU|DECODER|ALT_INV_operacao~1_combout\ <= NOT \CPU|DECODER|operacao~1_combout\;
\CPU|DECODER|ALT_INV_operacao~0_combout\ <= NOT \CPU|DECODER|operacao~0_combout\;
\CPU|DECODER|ALT_INV_Equal1~4_combout\ <= NOT \CPU|DECODER|Equal1~4_combout\;
\CPU|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX_ULA|saida_MUX[0]~0_combout\;
\RAM|ALT_INV_dado_out[0]~6_combout\ <= NOT \RAM|dado_out[0]~6_combout\;
\CPU|DECODER|ALT_INV_Equal1~3_combout\ <= NOT \CPU|DECODER|Equal1~3_combout\;
\ALT_INV_habHEX0~1_combout\ <= NOT \habHEX0~1_combout\;
\ALT_INV_habHEX0~0_combout\ <= NOT \habHEX0~0_combout\;
\CPU|DECODER|ALT_INV_Equal1~2_combout\ <= NOT \CPU|DECODER|Equal1~2_combout\;
\bufferSW8|ALT_INV_saida[7]~15_combout\ <= NOT \bufferSW8|saida[7]~15_combout\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\bufferSW8|ALT_INV_saida[6]~14_combout\ <= NOT \bufferSW8|saida[6]~14_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\bufferSW8|ALT_INV_saida[5]~13_combout\ <= NOT \bufferSW8|saida[5]~13_combout\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\bufferSW8|ALT_INV_saida[4]~12_combout\ <= NOT \bufferSW8|saida[4]~12_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\bufferSW8|ALT_INV_saida[3]~11_combout\ <= NOT \bufferSW8|saida[3]~11_combout\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\bufferSW8|ALT_INV_saida[2]~10_combout\ <= NOT \bufferSW8|saida[2]~10_combout\;
\interfaceTempo2|registraUmSegundo|ALT_INV_DOUT~DUPLICATE_q\ <= NOT \interfaceTempo2|registraUmSegundo|DOUT~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\interfaceTempo2|baseTempo|ALT_INV_contador[1]~DUPLICATE_q\ <= NOT \interfaceTempo2|baseTempo|contador[1]~DUPLICATE_q\;
\interfaceTempo2|baseTempo|ALT_INV_contador[15]~DUPLICATE_q\ <= NOT \interfaceTempo2|baseTempo|contador[15]~DUPLICATE_q\;
\interfaceTempo2|baseTempo|ALT_INV_contador[16]~DUPLICATE_q\ <= NOT \interfaceTempo2|baseTempo|contador[16]~DUPLICATE_q\;
\interfaceTempo2|baseTempo|ALT_INV_contador[13]~DUPLICATE_q\ <= NOT \interfaceTempo2|baseTempo|contador[13]~DUPLICATE_q\;
\interfaceTempo2|baseTempo|ALT_INV_contador[12]~DUPLICATE_q\ <= NOT \interfaceTempo2|baseTempo|contador[12]~DUPLICATE_q\;
\interfaceTempo2|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\ <= NOT \interfaceTempo2|baseTempo|contador[11]~DUPLICATE_q\;
\interfaceTempo1|baseTempo|ALT_INV_contador[12]~DUPLICATE_q\ <= NOT \interfaceTempo1|baseTempo|contador[12]~DUPLICATE_q\;
\interfaceTempo1|baseTempo|ALT_INV_contador[0]~DUPLICATE_q\ <= NOT \interfaceTempo1|baseTempo|contador[0]~DUPLICATE_q\;
\interfaceTempo1|baseTempo|ALT_INV_contador[7]~DUPLICATE_q\ <= NOT \interfaceTempo1|baseTempo|contador[7]~DUPLICATE_q\;
\interfaceTempo1|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\ <= NOT \interfaceTempo1|baseTempo|contador[11]~DUPLICATE_q\;
\interfaceTempo0|baseTempo|ALT_INV_contador[19]~DUPLICATE_q\ <= NOT \interfaceTempo0|baseTempo|contador[19]~DUPLICATE_q\;
\interfaceTempo0|baseTempo|ALT_INV_contador[0]~DUPLICATE_q\ <= NOT \interfaceTempo0|baseTempo|contador[0]~DUPLICATE_q\;
\interfaceTempo0|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\ <= NOT \interfaceTempo0|baseTempo|contador[11]~DUPLICATE_q\;
\interfaceTempo0|baseTempo|ALT_INV_contador[13]~DUPLICATE_q\ <= NOT \interfaceTempo0|baseTempo|contador[13]~DUPLICATE_q\;
\interfaceTempo0|baseTempo|ALT_INV_contador[1]~DUPLICATE_q\ <= NOT \interfaceTempo0|baseTempo|contador[1]~DUPLICATE_q\;
\interfaceTempo2|baseTempo|ALT_INV_contador\(10) <= NOT \interfaceTempo2|baseTempo|contador\(10);
\interfaceTempo2|baseTempo|ALT_INV_contador\(9) <= NOT \interfaceTempo2|baseTempo|contador\(9);
\interfaceTempo2|baseTempo|ALT_INV_contador\(8) <= NOT \interfaceTempo2|baseTempo|contador\(8);
\interfaceTempo2|baseTempo|ALT_INV_contador\(6) <= NOT \interfaceTempo2|baseTempo|contador\(6);
\interfaceTempo2|baseTempo|ALT_INV_contador\(5) <= NOT \interfaceTempo2|baseTempo|contador\(5);
\interfaceTempo2|baseTempo|ALT_INV_contador\(3) <= NOT \interfaceTempo2|baseTempo|contador\(3);
\interfaceTempo2|baseTempo|ALT_INV_contador\(0) <= NOT \interfaceTempo2|baseTempo|contador\(0);
\interfaceTempo2|baseTempo|ALT_INV_contador\(1) <= NOT \interfaceTempo2|baseTempo|contador\(1);
\interfaceTempo2|baseTempo|ALT_INV_contador\(2) <= NOT \interfaceTempo2|baseTempo|contador\(2);
\interfaceTempo2|baseTempo|ALT_INV_contador\(7) <= NOT \interfaceTempo2|baseTempo|contador\(7);
\interfaceTempo2|baseTempo|ALT_INV_contador\(15) <= NOT \interfaceTempo2|baseTempo|contador\(15);
\interfaceTempo2|baseTempo|ALT_INV_contador\(16) <= NOT \interfaceTempo2|baseTempo|contador\(16);
\interfaceTempo2|baseTempo|ALT_INV_contador\(17) <= NOT \interfaceTempo2|baseTempo|contador\(17);
\interfaceTempo2|baseTempo|ALT_INV_contador\(13) <= NOT \interfaceTempo2|baseTempo|contador\(13);
\interfaceTempo2|baseTempo|ALT_INV_contador\(12) <= NOT \interfaceTempo2|baseTempo|contador\(12);
\interfaceTempo2|baseTempo|ALT_INV_contador\(14) <= NOT \interfaceTempo2|baseTempo|contador\(14);
\interfaceTempo2|baseTempo|ALT_INV_contador\(11) <= NOT \interfaceTempo2|baseTempo|contador\(11);
\interfaceTempo2|baseTempo|ALT_INV_contador\(4) <= NOT \interfaceTempo2|baseTempo|contador\(4);
\interfaceTempo1|baseTempo|ALT_INV_contador\(12) <= NOT \interfaceTempo1|baseTempo|contador\(12);
\interfaceTempo1|baseTempo|ALT_INV_contador\(13) <= NOT \interfaceTempo1|baseTempo|contador\(13);
\interfaceTempo1|baseTempo|ALT_INV_contador\(14) <= NOT \interfaceTempo1|baseTempo|contador\(14);
\interfaceTempo1|baseTempo|ALT_INV_contador\(15) <= NOT \interfaceTempo1|baseTempo|contador\(15);
\interfaceTempo1|baseTempo|ALT_INV_contador\(16) <= NOT \interfaceTempo1|baseTempo|contador\(16);
\interfaceTempo1|baseTempo|ALT_INV_contador\(2) <= NOT \interfaceTempo1|baseTempo|contador\(2);
\interfaceTempo1|baseTempo|ALT_INV_contador\(21) <= NOT \interfaceTempo1|baseTempo|contador\(21);
\interfaceTempo1|baseTempo|ALT_INV_contador\(20) <= NOT \interfaceTempo1|baseTempo|contador\(20);
\interfaceTempo1|baseTempo|ALT_INV_contador\(19) <= NOT \interfaceTempo1|baseTempo|contador\(19);
\interfaceTempo1|baseTempo|ALT_INV_contador\(18) <= NOT \interfaceTempo1|baseTempo|contador\(18);
\interfaceTempo1|baseTempo|ALT_INV_contador\(4) <= NOT \interfaceTempo1|baseTempo|contador\(4);
\interfaceTempo1|baseTempo|ALT_INV_contador\(0) <= NOT \interfaceTempo1|baseTempo|contador\(0);
\interfaceTempo1|baseTempo|ALT_INV_contador\(1) <= NOT \interfaceTempo1|baseTempo|contador\(1);
\interfaceTempo1|baseTempo|ALT_INV_contador\(3) <= NOT \interfaceTempo1|baseTempo|contador\(3);
\interfaceTempo1|baseTempo|ALT_INV_contador\(8) <= NOT \interfaceTempo1|baseTempo|contador\(8);
\interfaceTempo1|baseTempo|ALT_INV_contador\(10) <= NOT \interfaceTempo1|baseTempo|contador\(10);
\interfaceTempo1|baseTempo|ALT_INV_contador\(9) <= NOT \interfaceTempo1|baseTempo|contador\(9);
\interfaceTempo1|baseTempo|ALT_INV_contador\(7) <= NOT \interfaceTempo1|baseTempo|contador\(7);
\interfaceTempo1|baseTempo|ALT_INV_contador\(6) <= NOT \interfaceTempo1|baseTempo|contador\(6);
\interfaceTempo1|baseTempo|ALT_INV_contador\(5) <= NOT \interfaceTempo1|baseTempo|contador\(5);
\interfaceTempo1|baseTempo|ALT_INV_contador\(11) <= NOT \interfaceTempo1|baseTempo|contador\(11);
\interfaceTempo1|baseTempo|ALT_INV_contador\(17) <= NOT \interfaceTempo1|baseTempo|contador\(17);
\interfaceTempo0|baseTempo|ALT_INV_contador\(15) <= NOT \interfaceTempo0|baseTempo|contador\(15);
\interfaceTempo0|baseTempo|ALT_INV_contador\(24) <= NOT \interfaceTempo0|baseTempo|contador\(24);
\interfaceTempo0|baseTempo|ALT_INV_contador\(23) <= NOT \interfaceTempo0|baseTempo|contador\(23);
\interfaceTempo0|baseTempo|ALT_INV_contador\(22) <= NOT \interfaceTempo0|baseTempo|contador\(22);
\interfaceTempo0|baseTempo|ALT_INV_contador\(21) <= NOT \interfaceTempo0|baseTempo|contador\(21);
\interfaceTempo0|baseTempo|ALT_INV_contador\(20) <= NOT \interfaceTempo0|baseTempo|contador\(20);
\interfaceTempo0|baseTempo|ALT_INV_contador\(19) <= NOT \interfaceTempo0|baseTempo|contador\(19);
\interfaceTempo0|baseTempo|ALT_INV_contador\(18) <= NOT \interfaceTempo0|baseTempo|contador\(18);
\interfaceTempo0|baseTempo|ALT_INV_contador\(17) <= NOT \interfaceTempo0|baseTempo|contador\(17);
\interfaceTempo0|baseTempo|ALT_INV_contador\(16) <= NOT \interfaceTempo0|baseTempo|contador\(16);
\interfaceTempo0|baseTempo|ALT_INV_contador\(10) <= NOT \interfaceTempo0|baseTempo|contador\(10);
\interfaceTempo0|baseTempo|ALT_INV_contador\(0) <= NOT \interfaceTempo0|baseTempo|contador\(0);
\interfaceTempo0|baseTempo|ALT_INV_contador\(8) <= NOT \interfaceTempo0|baseTempo|contador\(8);
\interfaceTempo0|baseTempo|ALT_INV_contador\(9) <= NOT \interfaceTempo0|baseTempo|contador\(9);
\interfaceTempo0|baseTempo|ALT_INV_contador\(11) <= NOT \interfaceTempo0|baseTempo|contador\(11);
\interfaceTempo0|baseTempo|ALT_INV_contador\(12) <= NOT \interfaceTempo0|baseTempo|contador\(12);
\interfaceTempo0|baseTempo|ALT_INV_contador\(13) <= NOT \interfaceTempo0|baseTempo|contador\(13);
\interfaceTempo0|baseTempo|ALT_INV_contador\(6) <= NOT \interfaceTempo0|baseTempo|contador\(6);
\interfaceTempo0|baseTempo|ALT_INV_contador\(5) <= NOT \interfaceTempo0|baseTempo|contador\(5);
\interfaceTempo0|baseTempo|ALT_INV_contador\(4) <= NOT \interfaceTempo0|baseTempo|contador\(4);
\interfaceTempo0|baseTempo|ALT_INV_contador\(3) <= NOT \interfaceTempo0|baseTempo|contador\(3);
\interfaceTempo0|baseTempo|ALT_INV_contador\(2) <= NOT \interfaceTempo0|baseTempo|contador\(2);
\interfaceTempo0|baseTempo|ALT_INV_contador\(1) <= NOT \interfaceTempo0|baseTempo|contador\(1);
\interfaceTempo0|baseTempo|ALT_INV_contador\(7) <= NOT \interfaceTempo0|baseTempo|contador\(7);
\interfaceTempo0|baseTempo|ALT_INV_contador\(14) <= NOT \interfaceTempo0|baseTempo|contador\(14);
\CPU|ULA|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA|Add0~29_sumout\;
\CPU|ULA|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA|Add0~25_sumout\;
\CPU|ULA|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA|Add0~21_sumout\;
\CPU|ULA|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA|Add0~17_sumout\;
\CPU|ULA|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA|Add0~13_sumout\;
\CPU|ULA|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA|Add0~9_sumout\;
\CPU|ULA|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA|Add0~5_sumout\;
\CPU|ULA|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA|Add0~1_sumout\;
\CPU|PC_INC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|PC_INC|Add0~33_sumout\;
\CPU|PC_INC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|PC_INC|Add0~29_sumout\;
\CPU|PC_INC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|PC_INC|Add0~25_sumout\;
\CPU|PC_INC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|PC_INC|Add0~21_sumout\;
\CPU|PC_INC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|PC_INC|Add0~17_sumout\;
\CPU|PC_INC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|PC_INC|Add0~13_sumout\;
\CPU|PC_INC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|PC_INC|Add0~9_sumout\;
\CPU|PC_INC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|PC_INC|Add0~5_sumout\;
\CPU|PC_INC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|PC_INC|Add0~1_sumout\;
\CPU|BANCO_REG|ALT_INV_registrador~27_q\ <= NOT \CPU|BANCO_REG|registrador~27_q\;
\CPU|BANCO_REG|ALT_INV_registrador~26_q\ <= NOT \CPU|BANCO_REG|registrador~26_q\;
\CPU|BANCO_REG|ALT_INV_registrador~25_q\ <= NOT \CPU|BANCO_REG|registrador~25_q\;
\CPU|BANCO_REG|ALT_INV_registrador~24_q\ <= NOT \CPU|BANCO_REG|registrador~24_q\;
\CPU|BANCO_REG|ALT_INV_registrador~23_q\ <= NOT \CPU|BANCO_REG|registrador~23_q\;
\CPU|BANCO_REG|ALT_INV_registrador~22_q\ <= NOT \CPU|BANCO_REG|registrador~22_q\;
\CPU|BANCO_REG|ALT_INV_registrador~21_q\ <= NOT \CPU|BANCO_REG|registrador~21_q\;
\CPU|BANCO_REG|ALT_INV_registrador~20_q\ <= NOT \CPU|BANCO_REG|registrador~20_q\;
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
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\RAM|ALT_INV_ram~581_combout\ <= NOT \RAM|ram~581_combout\;
\RAM|ALT_INV_ram~577_combout\ <= NOT \RAM|ram~577_combout\;
\RAM|ALT_INV_ram~573_combout\ <= NOT \RAM|ram~573_combout\;
\RAM|ALT_INV_ram~569_combout\ <= NOT \RAM|ram~569_combout\;
\RAM|ALT_INV_ram~565_combout\ <= NOT \RAM|ram~565_combout\;
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\interfaceTempo2|baseTempo|ALT_INV_Add0~49_sumout\ <= NOT \interfaceTempo2|baseTempo|Add0~49_sumout\;
\interfaceTempo2|baseTempo|ALT_INV_Add0~45_sumout\ <= NOT \interfaceTempo2|baseTempo|Add0~45_sumout\;
\interfaceTempo2|baseTempo|ALT_INV_Add0~1_sumout\ <= NOT \interfaceTempo2|baseTempo|Add0~1_sumout\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\bufferSW8|ALT_INV_saida[1]~9_combout\ <= NOT \bufferSW8|saida[1]~9_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_dado_out[0]~5_combout\ <= NOT \RAM|dado_out[0]~5_combout\;
\bufferSW8|ALT_INV_saida[1]~8_combout\ <= NOT \bufferSW8|saida[1]~8_combout\;
\bufferSW8|ALT_INV_saida[1]~7_combout\ <= NOT \bufferSW8|saida[1]~7_combout\;
\RAM|ALT_INV_dado_out[0]~3_combout\ <= NOT \RAM|dado_out[0]~3_combout\;
\bufferKEY3|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY3|saida[0]~0_combout\;
\ALT_INV_ADDR_507~0_combout\ <= NOT \ADDR_507~0_combout\;
\bufferKEY2|ALT_INV_saida[0]~0_combout\ <= NOT \bufferKEY2|saida[0]~0_combout\;
\ALT_INV_habKEY2~0_combout\ <= NOT \habKEY2~0_combout\;
\RAM|ALT_INV_dado_out[0]~2_combout\ <= NOT \RAM|dado_out[0]~2_combout\;
\interfaceTempo2|registraUmSegundo|ALT_INV_DOUT~q\ <= NOT \interfaceTempo2|registraUmSegundo|DOUT~q\;
\ALT_INV_habSWconj~1_combout\ <= NOT \habSWconj~1_combout\;
\ALT_INV_habSWconj~0_combout\ <= NOT \habSWconj~0_combout\;
\RAM|ALT_INV_dado_out[0]~1_combout\ <= NOT \RAM|dado_out[0]~1_combout\;
\interfaceTempo1|registraUmSegundo|ALT_INV_DOUT~q\ <= NOT \interfaceTempo1|registraUmSegundo|DOUT~q\;
\interfaceTempo0|registraUmSegundo|ALT_INV_DOUT~q\ <= NOT \interfaceTempo0|registraUmSegundo|DOUT~q\;
\ALT_INV_habTempo~0_combout\ <= NOT \habTempo~0_combout\;
\bufferRESET|ALT_INV_saida[0]~0_combout\ <= NOT \bufferRESET|saida[0]~0_combout\;
\ALT_INV_habKEY0~0_combout\ <= NOT \habKEY0~0_combout\;
\ALT_INV_habRESET~0_combout\ <= NOT \habRESET~0_combout\;
\CPU|DECODER|ALT_INV_habBanco~0_combout\ <= NOT \CPU|DECODER|habBanco~0_combout\;
\CPU|DECODER|ALT_INV_Equal1~1_combout\ <= NOT \CPU|DECODER|Equal1~1_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|END_RETORNO|DOUT\(8);
\CPU|END_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|END_RETORNO|DOUT\(7);
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|END_RETORNO|DOUT\(6);
\CPU|END_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|END_RETORNO|DOUT\(5);
\CPU|END_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|END_RETORNO|DOUT\(4);
\CPU|PC|ALT_INV_DOUT[4]~2_combout\ <= NOT \CPU|PC|DOUT[4]~2_combout\;
\CPU|DECODER|ALT_INV_Equal1~0_combout\ <= NOT \CPU|DECODER|Equal1~0_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|END_RETORNO|DOUT\(3);
\CPU|END_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|END_RETORNO|DOUT\(2);
\CPU|END_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|END_RETORNO|DOUT\(1);
\CPU|END_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|END_RETORNO|DOUT\(0);
\CPU|PC|ALT_INV_DOUT[0]~1_combout\ <= NOT \CPU|PC|DOUT[0]~1_combout\;
\CPU|PC|ALT_INV_DOUT[0]~0_combout\ <= NOT \CPU|PC|DOUT[0]~0_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\CPU|FLAGer|ALT_INV_DOUT~q\ <= NOT \CPU|FLAGer|DOUT~q\;
\CPU|BANCO_REG|ALT_INV_registrador~35_combout\ <= NOT \CPU|BANCO_REG|registrador~35_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~34_combout\ <= NOT \CPU|BANCO_REG|registrador~34_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~33_combout\ <= NOT \CPU|BANCO_REG|registrador~33_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~32_combout\ <= NOT \CPU|BANCO_REG|registrador~32_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~31_combout\ <= NOT \CPU|BANCO_REG|registrador~31_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~30_combout\ <= NOT \CPU|BANCO_REG|registrador~30_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~29_combout\ <= NOT \CPU|BANCO_REG|registrador~29_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~28_combout\ <= NOT \CPU|BANCO_REG|registrador~28_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
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
\HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2) <= NOT \HEX0_decoder|REG_4bits|DOUT\(2);
\HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1) <= NOT \HEX0_decoder|REG_4bits|DOUT\(1);
\HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3) <= NOT \HEX0_decoder|REG_4bits|DOUT\(3);
\HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0) <= NOT \HEX0_decoder|REG_4bits|DOUT\(0);

-- Location: IOOBUF_X54_Y16_N22
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

-- Location: IOOBUF_X29_Y0_N53
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

-- Location: IOOBUF_X54_Y14_N96
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

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X32_Y45_N42
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

-- Location: IOOBUF_X38_Y45_N53
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

-- Location: IOOBUF_X38_Y45_N2
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

-- Location: IOOBUF_X25_Y0_N53
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

-- Location: IOOBUF_X54_Y15_N56
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N36
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

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X25_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N42
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

-- Location: IOOBUF_X32_Y45_N59
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

-- Location: IOOBUF_X32_Y45_N76
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

-- Location: IOOBUF_X24_Y0_N53
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

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X25_Y0_N36
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

-- Location: IOOBUF_X38_Y0_N2
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
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_endRAM(4));

-- Location: IOOBUF_X25_Y0_N2
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: IOOBUF_X50_Y0_N2
\saidaBanco[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|registrador~28_combout\,
	devoe => ww_devoe,
	o => ww_saidaBanco(0));

-- Location: IOOBUF_X44_Y45_N36
\saidaBanco[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|registrador~29_combout\,
	devoe => ww_devoe,
	o => ww_saidaBanco(1));

-- Location: IOOBUF_X24_Y0_N19
\saidaBanco[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|registrador~30_combout\,
	devoe => ww_devoe,
	o => ww_saidaBanco(2));

-- Location: IOOBUF_X54_Y14_N45
\saidaBanco[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|registrador~31_combout\,
	devoe => ww_devoe,
	o => ww_saidaBanco(3));

-- Location: IOOBUF_X23_Y0_N59
\saidaBanco[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|registrador~32_combout\,
	devoe => ww_devoe,
	o => ww_saidaBanco(4));

-- Location: IOOBUF_X19_Y0_N2
\saidaBanco[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|registrador~33_combout\,
	devoe => ww_devoe,
	o => ww_saidaBanco(5));

-- Location: IOOBUF_X23_Y0_N93
\saidaBanco[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|registrador~34_combout\,
	devoe => ww_devoe,
	o => ww_saidaBanco(6));

-- Location: IOOBUF_X22_Y0_N36
\saidaBanco[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|BANCO_REG|registrador~35_combout\,
	devoe => ww_devoe,
	o => ww_saidaBanco(7));

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

-- Location: LABCELL_X32_Y4_N30
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

-- Location: FF_X35_Y4_N40
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

-- Location: LABCELL_X32_Y4_N33
\CPU|PC_INC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|PC_INC|Add0~2\ ))
-- \CPU|PC_INC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|PC_INC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|PC_INC|Add0~2\,
	sumout => \CPU|PC_INC|Add0~5_sumout\,
	cout => \CPU|PC_INC|Add0~6\);

-- Location: LABCELL_X32_Y4_N36
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

-- Location: FF_X35_Y4_N31
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

-- Location: FF_X35_Y4_N38
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

-- Location: LABCELL_X35_Y5_N33
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0) & \ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~3_combout\);

-- Location: FF_X32_Y4_N37
\CPU|END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~9_sumout\,
	ena => \habKEY2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(2));

-- Location: LABCELL_X35_Y4_N42
\CPU|MUX_DESVIO|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\ = ( \CPU|PC|DOUT[0]~1_combout\ & ( (\CPU|PC|DOUT[0]~0_combout\ & \ROM|memROM~3_combout\) ) ) # ( !\CPU|PC|DOUT[0]~1_combout\ & ( (!\CPU|PC|DOUT[0]~0_combout\ & (\CPU|PC_INC|Add0~9_sumout\)) # 
-- (\CPU|PC|DOUT[0]~0_combout\ & ((\CPU|END_RETORNO|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC_INC|ALT_INV_Add0~9_sumout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[2]~2_combout\);

-- Location: FF_X35_Y4_N43
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

-- Location: FF_X35_Y4_N34
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

-- Location: LABCELL_X35_Y3_N30
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(3) & ( (\ROM|memROM~0_combout\ & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(1))))) ) ) ) # ( 
-- \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(5) & (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000110000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~12_combout\);

-- Location: LABCELL_X35_Y3_N12
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \ROM|memROM~0_combout\ & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(5) $ (!\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( \ROM|memROM~0_combout\ & ( !\CPU|PC|DOUT\(3) & ( 
-- (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~11_combout\);

-- Location: MLABCELL_X34_Y3_N27
\CPU|DECODER|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~0_combout\ = ( \ROM|memROM~11_combout\ & ( (\ROM|memROM~12_combout\ & (!\ROM|memROM~9_combout\ & !\ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|Equal1~0_combout\);

-- Location: FF_X35_Y4_N44
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

-- Location: LABCELL_X35_Y4_N3
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \ROM|memROM~0_combout\ & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(5)) # (!\CPU|PC|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( \ROM|memROM~0_combout\ & ( !\CPU|PC|DOUT\(2) & ( 
-- (\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(5) & ((\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010110000000000000000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~1_combout\);

-- Location: MLABCELL_X34_Y4_N51
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(0)))))) ) ) ) # ( 
-- !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000101010100000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~2_combout\);

-- Location: MLABCELL_X28_Y5_N30
\interfaceTempo1|baseTempo|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~41_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \interfaceTempo1|baseTempo|Add0~42\ = CARRY(( \interfaceTempo1|baseTempo|contador[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo1|baseTempo|ALT_INV_contador[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \interfaceTempo1|baseTempo|Add0~41_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~42\);

-- Location: FF_X28_Y5_N31
\interfaceTempo1|baseTempo|contador[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~41_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador[0]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y5_N33
\interfaceTempo1|baseTempo|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~37_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(1) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~42\ ))
-- \interfaceTempo1|baseTempo|Add0~38\ = CARRY(( \interfaceTempo1|baseTempo|contador\(1) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceTempo1|baseTempo|ALT_INV_contador\(1),
	cin => \interfaceTempo1|baseTempo|Add0~42\,
	sumout => \interfaceTempo1|baseTempo|Add0~37_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~38\);

-- Location: FF_X28_Y5_N35
\interfaceTempo1|baseTempo|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~37_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(1));

-- Location: MLABCELL_X28_Y5_N36
\interfaceTempo1|baseTempo|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~65_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(2) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~38\ ))
-- \interfaceTempo1|baseTempo|Add0~66\ = CARRY(( \interfaceTempo1|baseTempo|contador\(2) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo1|baseTempo|ALT_INV_contador\(2),
	cin => \interfaceTempo1|baseTempo|Add0~38\,
	sumout => \interfaceTempo1|baseTempo|Add0~65_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~66\);

-- Location: FF_X28_Y5_N38
\interfaceTempo1|baseTempo|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~65_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(2));

-- Location: MLABCELL_X28_Y5_N39
\interfaceTempo1|baseTempo|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~33_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(3) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~66\ ))
-- \interfaceTempo1|baseTempo|Add0~34\ = CARRY(( \interfaceTempo1|baseTempo|contador\(3) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo1|baseTempo|ALT_INV_contador\(3),
	cin => \interfaceTempo1|baseTempo|Add0~66\,
	sumout => \interfaceTempo1|baseTempo|Add0~33_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~34\);

-- Location: FF_X28_Y5_N41
\interfaceTempo1|baseTempo|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~33_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(3));

-- Location: MLABCELL_X28_Y5_N42
\interfaceTempo1|baseTempo|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~45_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(4) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~34\ ))
-- \interfaceTempo1|baseTempo|Add0~46\ = CARRY(( \interfaceTempo1|baseTempo|contador\(4) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo1|baseTempo|ALT_INV_contador\(4),
	cin => \interfaceTempo1|baseTempo|Add0~34\,
	sumout => \interfaceTempo1|baseTempo|Add0~45_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~46\);

-- Location: FF_X28_Y5_N43
\interfaceTempo1|baseTempo|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~45_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(4));

-- Location: MLABCELL_X28_Y5_N45
\interfaceTempo1|baseTempo|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~9_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(5) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~46\ ))
-- \interfaceTempo1|baseTempo|Add0~10\ = CARRY(( \interfaceTempo1|baseTempo|contador\(5) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo1|baseTempo|ALT_INV_contador\(5),
	cin => \interfaceTempo1|baseTempo|Add0~46\,
	sumout => \interfaceTempo1|baseTempo|Add0~9_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~10\);

-- Location: FF_X28_Y5_N47
\interfaceTempo1|baseTempo|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~9_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(5));

-- Location: MLABCELL_X28_Y5_N48
\interfaceTempo1|baseTempo|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~13_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(6) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~10\ ))
-- \interfaceTempo1|baseTempo|Add0~14\ = CARRY(( \interfaceTempo1|baseTempo|contador\(6) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo1|baseTempo|ALT_INV_contador\(6),
	cin => \interfaceTempo1|baseTempo|Add0~10\,
	sumout => \interfaceTempo1|baseTempo|Add0~13_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~14\);

-- Location: FF_X28_Y5_N50
\interfaceTempo1|baseTempo|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~13_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(6));

-- Location: MLABCELL_X28_Y5_N51
\interfaceTempo1|baseTempo|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~17_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador[7]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~14\ ))
-- \interfaceTempo1|baseTempo|Add0~18\ = CARRY(( \interfaceTempo1|baseTempo|contador[7]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo1|baseTempo|ALT_INV_contador[7]~DUPLICATE_q\,
	cin => \interfaceTempo1|baseTempo|Add0~14\,
	sumout => \interfaceTempo1|baseTempo|Add0~17_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~18\);

-- Location: FF_X28_Y5_N52
\interfaceTempo1|baseTempo|contador[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~17_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador[7]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y5_N54
\interfaceTempo1|baseTempo|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~29_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(8) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~18\ ))
-- \interfaceTempo1|baseTempo|Add0~30\ = CARRY(( \interfaceTempo1|baseTempo|contador\(8) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo1|baseTempo|ALT_INV_contador\(8),
	cin => \interfaceTempo1|baseTempo|Add0~18\,
	sumout => \interfaceTempo1|baseTempo|Add0~29_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~30\);

-- Location: FF_X28_Y5_N56
\interfaceTempo1|baseTempo|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~29_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(8));

-- Location: MLABCELL_X28_Y5_N57
\interfaceTempo1|baseTempo|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~21_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(9) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~30\ ))
-- \interfaceTempo1|baseTempo|Add0~22\ = CARRY(( \interfaceTempo1|baseTempo|contador\(9) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo1|baseTempo|ALT_INV_contador\(9),
	cin => \interfaceTempo1|baseTempo|Add0~30\,
	sumout => \interfaceTempo1|baseTempo|Add0~21_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~22\);

-- Location: FF_X28_Y5_N59
\interfaceTempo1|baseTempo|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~21_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(9));

-- Location: FF_X28_Y5_N53
\interfaceTempo1|baseTempo|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~17_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(7));

-- Location: MLABCELL_X28_Y5_N0
\interfaceTempo1|baseTempo|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Equal0~0_combout\ = ( \interfaceTempo1|baseTempo|contador\(5) & ( \interfaceTempo1|baseTempo|contador\(7) & ( (!\interfaceTempo1|baseTempo|contador\(6) & !\interfaceTempo1|baseTempo|contador\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo1|baseTempo|ALT_INV_contador\(6),
	datad => \interfaceTempo1|baseTempo|ALT_INV_contador\(9),
	datae => \interfaceTempo1|baseTempo|ALT_INV_contador\(5),
	dataf => \interfaceTempo1|baseTempo|ALT_INV_contador\(7),
	combout => \interfaceTempo1|baseTempo|Equal0~0_combout\);

-- Location: FF_X28_Y4_N5
\interfaceTempo1|baseTempo|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~5_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(11));

-- Location: MLABCELL_X28_Y4_N0
\interfaceTempo1|baseTempo|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~25_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(10) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~22\ ))
-- \interfaceTempo1|baseTempo|Add0~26\ = CARRY(( \interfaceTempo1|baseTempo|contador\(10) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo1|baseTempo|ALT_INV_contador\(10),
	cin => \interfaceTempo1|baseTempo|Add0~22\,
	sumout => \interfaceTempo1|baseTempo|Add0~25_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~26\);

-- Location: FF_X28_Y4_N2
\interfaceTempo1|baseTempo|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~25_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(10));

-- Location: MLABCELL_X28_Y4_N3
\interfaceTempo1|baseTempo|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~5_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(11) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~26\ ))
-- \interfaceTempo1|baseTempo|Add0~6\ = CARRY(( \interfaceTempo1|baseTempo|contador\(11) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo1|baseTempo|ALT_INV_contador\(11),
	cin => \interfaceTempo1|baseTempo|Add0~26\,
	sumout => \interfaceTempo1|baseTempo|Add0~5_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~6\);

-- Location: FF_X28_Y4_N4
\interfaceTempo1|baseTempo|contador[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~5_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador[11]~DUPLICATE_q\);

-- Location: FF_X28_Y5_N32
\interfaceTempo1|baseTempo|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~41_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(0));

-- Location: MLABCELL_X28_Y5_N18
\interfaceTempo1|baseTempo|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Equal0~1_combout\ = ( !\interfaceTempo1|baseTempo|contador\(4) & ( \interfaceTempo1|baseTempo|contador\(10) & ( (!\interfaceTempo1|baseTempo|contador\(1) & (!\interfaceTempo1|baseTempo|contador\(3) & 
-- (\interfaceTempo1|baseTempo|contador\(8) & !\interfaceTempo1|baseTempo|contador\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceTempo1|baseTempo|ALT_INV_contador\(1),
	datab => \interfaceTempo1|baseTempo|ALT_INV_contador\(3),
	datac => \interfaceTempo1|baseTempo|ALT_INV_contador\(8),
	datad => \interfaceTempo1|baseTempo|ALT_INV_contador\(0),
	datae => \interfaceTempo1|baseTempo|ALT_INV_contador\(4),
	dataf => \interfaceTempo1|baseTempo|ALT_INV_contador\(10),
	combout => \interfaceTempo1|baseTempo|Equal0~1_combout\);

-- Location: MLABCELL_X28_Y4_N6
\interfaceTempo1|baseTempo|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~85_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador[12]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~6\ ))
-- \interfaceTempo1|baseTempo|Add0~86\ = CARRY(( \interfaceTempo1|baseTempo|contador[12]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceTempo1|baseTempo|ALT_INV_contador[12]~DUPLICATE_q\,
	cin => \interfaceTempo1|baseTempo|Add0~6\,
	sumout => \interfaceTempo1|baseTempo|Add0~85_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~86\);

-- Location: FF_X28_Y4_N8
\interfaceTempo1|baseTempo|contador[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~85_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador[12]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N9
\interfaceTempo1|baseTempo|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~81_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(13) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~86\ ))
-- \interfaceTempo1|baseTempo|Add0~82\ = CARRY(( \interfaceTempo1|baseTempo|contador\(13) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo1|baseTempo|ALT_INV_contador\(13),
	cin => \interfaceTempo1|baseTempo|Add0~86\,
	sumout => \interfaceTempo1|baseTempo|Add0~81_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~82\);

-- Location: FF_X28_Y4_N11
\interfaceTempo1|baseTempo|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~81_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(13));

-- Location: MLABCELL_X28_Y4_N12
\interfaceTempo1|baseTempo|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~77_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(14) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~82\ ))
-- \interfaceTempo1|baseTempo|Add0~78\ = CARRY(( \interfaceTempo1|baseTempo|contador\(14) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceTempo1|baseTempo|ALT_INV_contador\(14),
	cin => \interfaceTempo1|baseTempo|Add0~82\,
	sumout => \interfaceTempo1|baseTempo|Add0~77_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~78\);

-- Location: FF_X28_Y4_N14
\interfaceTempo1|baseTempo|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~77_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(14));

-- Location: MLABCELL_X28_Y4_N15
\interfaceTempo1|baseTempo|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~73_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(15) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~78\ ))
-- \interfaceTempo1|baseTempo|Add0~74\ = CARRY(( \interfaceTempo1|baseTempo|contador\(15) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo1|baseTempo|ALT_INV_contador\(15),
	cin => \interfaceTempo1|baseTempo|Add0~78\,
	sumout => \interfaceTempo1|baseTempo|Add0~73_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~74\);

-- Location: FF_X28_Y4_N17
\interfaceTempo1|baseTempo|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~73_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(15));

-- Location: MLABCELL_X28_Y4_N18
\interfaceTempo1|baseTempo|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~69_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(16) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~74\ ))
-- \interfaceTempo1|baseTempo|Add0~70\ = CARRY(( \interfaceTempo1|baseTempo|contador\(16) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo1|baseTempo|ALT_INV_contador\(16),
	cin => \interfaceTempo1|baseTempo|Add0~74\,
	sumout => \interfaceTempo1|baseTempo|Add0~69_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~70\);

-- Location: FF_X28_Y4_N20
\interfaceTempo1|baseTempo|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~69_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(16));

-- Location: MLABCELL_X28_Y4_N21
\interfaceTempo1|baseTempo|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~1_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(17) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~70\ ))
-- \interfaceTempo1|baseTempo|Add0~2\ = CARRY(( \interfaceTempo1|baseTempo|contador\(17) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo1|baseTempo|ALT_INV_contador\(17),
	cin => \interfaceTempo1|baseTempo|Add0~70\,
	sumout => \interfaceTempo1|baseTempo|Add0~1_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~2\);

-- Location: FF_X28_Y4_N22
\interfaceTempo1|baseTempo|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~1_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(17));

-- Location: FF_X28_Y4_N7
\interfaceTempo1|baseTempo|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~85_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(12));

-- Location: MLABCELL_X28_Y4_N36
\interfaceTempo1|baseTempo|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Equal0~3_combout\ = ( !\interfaceTempo1|baseTempo|contador\(12) & ( \interfaceTempo1|baseTempo|contador\(13) & ( (!\interfaceTempo1|baseTempo|contador\(14) & (!\interfaceTempo1|baseTempo|contador\(16) & 
-- !\interfaceTempo1|baseTempo|contador\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceTempo1|baseTempo|ALT_INV_contador\(14),
	datac => \interfaceTempo1|baseTempo|ALT_INV_contador\(16),
	datad => \interfaceTempo1|baseTempo|ALT_INV_contador\(15),
	datae => \interfaceTempo1|baseTempo|ALT_INV_contador\(12),
	dataf => \interfaceTempo1|baseTempo|ALT_INV_contador\(13),
	combout => \interfaceTempo1|baseTempo|Equal0~3_combout\);

-- Location: MLABCELL_X28_Y4_N24
\interfaceTempo1|baseTempo|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~49_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(18) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~2\ ))
-- \interfaceTempo1|baseTempo|Add0~50\ = CARRY(( \interfaceTempo1|baseTempo|contador\(18) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo1|baseTempo|ALT_INV_contador\(18),
	cin => \interfaceTempo1|baseTempo|Add0~2\,
	sumout => \interfaceTempo1|baseTempo|Add0~49_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~50\);

-- Location: FF_X28_Y4_N26
\interfaceTempo1|baseTempo|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~49_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(18));

-- Location: MLABCELL_X28_Y4_N27
\interfaceTempo1|baseTempo|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~53_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(19) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~50\ ))
-- \interfaceTempo1|baseTempo|Add0~54\ = CARRY(( \interfaceTempo1|baseTempo|contador\(19) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo1|baseTempo|ALT_INV_contador\(19),
	cin => \interfaceTempo1|baseTempo|Add0~50\,
	sumout => \interfaceTempo1|baseTempo|Add0~53_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~54\);

-- Location: FF_X28_Y4_N29
\interfaceTempo1|baseTempo|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~53_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(19));

-- Location: MLABCELL_X28_Y4_N30
\interfaceTempo1|baseTempo|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~57_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(20) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~54\ ))
-- \interfaceTempo1|baseTempo|Add0~58\ = CARRY(( \interfaceTempo1|baseTempo|contador\(20) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo1|baseTempo|ALT_INV_contador\(20),
	cin => \interfaceTempo1|baseTempo|Add0~54\,
	sumout => \interfaceTempo1|baseTempo|Add0~57_sumout\,
	cout => \interfaceTempo1|baseTempo|Add0~58\);

-- Location: FF_X28_Y4_N31
\interfaceTempo1|baseTempo|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~57_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(20));

-- Location: MLABCELL_X28_Y4_N33
\interfaceTempo1|baseTempo|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Add0~61_sumout\ = SUM(( \interfaceTempo1|baseTempo|contador\(21) ) + ( GND ) + ( \interfaceTempo1|baseTempo|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceTempo1|baseTempo|ALT_INV_contador\(21),
	cin => \interfaceTempo1|baseTempo|Add0~58\,
	sumout => \interfaceTempo1|baseTempo|Add0~61_sumout\);

-- Location: FF_X28_Y4_N35
\interfaceTempo1|baseTempo|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo1|baseTempo|Add0~61_sumout\,
	sclr => \interfaceTempo1|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|contador\(21));

-- Location: MLABCELL_X28_Y5_N24
\interfaceTempo1|baseTempo|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Equal0~2_combout\ = ( !\interfaceTempo1|baseTempo|contador\(19) & ( \interfaceTempo1|baseTempo|contador\(18) & ( (\interfaceTempo1|baseTempo|contador\(21) & (!\interfaceTempo1|baseTempo|contador\(2) & 
-- !\interfaceTempo1|baseTempo|contador\(20))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceTempo1|baseTempo|ALT_INV_contador\(21),
	datac => \interfaceTempo1|baseTempo|ALT_INV_contador\(2),
	datad => \interfaceTempo1|baseTempo|ALT_INV_contador\(20),
	datae => \interfaceTempo1|baseTempo|ALT_INV_contador\(19),
	dataf => \interfaceTempo1|baseTempo|ALT_INV_contador\(18),
	combout => \interfaceTempo1|baseTempo|Equal0~2_combout\);

-- Location: MLABCELL_X28_Y5_N6
\interfaceTempo1|baseTempo|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|Equal0~4_combout\ = ( \interfaceTempo1|baseTempo|Equal0~3_combout\ & ( \interfaceTempo1|baseTempo|Equal0~2_combout\ & ( (\interfaceTempo1|baseTempo|Equal0~0_combout\ & (!\interfaceTempo1|baseTempo|contador[11]~DUPLICATE_q\ & 
-- (\interfaceTempo1|baseTempo|Equal0~1_combout\ & \interfaceTempo1|baseTempo|contador\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceTempo1|baseTempo|ALT_INV_Equal0~0_combout\,
	datab => \interfaceTempo1|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\,
	datac => \interfaceTempo1|baseTempo|ALT_INV_Equal0~1_combout\,
	datad => \interfaceTempo1|baseTempo|ALT_INV_contador\(17),
	datae => \interfaceTempo1|baseTempo|ALT_INV_Equal0~3_combout\,
	dataf => \interfaceTempo1|baseTempo|ALT_INV_Equal0~2_combout\,
	combout => \interfaceTempo1|baseTempo|Equal0~4_combout\);

-- Location: MLABCELL_X37_Y4_N12
\interfaceTempo1|baseTempo|tick~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|tick~0_combout\ = ( \interfaceTempo1|baseTempo|tick~q\ & ( !\interfaceTempo1|baseTempo|Equal0~4_combout\ ) ) # ( !\interfaceTempo1|baseTempo|tick~q\ & ( \interfaceTempo1|baseTempo|Equal0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo1|baseTempo|ALT_INV_Equal0~4_combout\,
	dataf => \interfaceTempo1|baseTempo|ALT_INV_tick~q\,
	combout => \interfaceTempo1|baseTempo|tick~0_combout\);

-- Location: MLABCELL_X37_Y4_N18
\interfaceTempo1|baseTempo|tick~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|baseTempo|tick~feeder_combout\ = ( \interfaceTempo1|baseTempo|tick~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceTempo1|baseTempo|ALT_INV_tick~0_combout\,
	combout => \interfaceTempo1|baseTempo|tick~feeder_combout\);

-- Location: FF_X37_Y4_N20
\interfaceTempo1|baseTempo|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceTempo1|baseTempo|tick~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|baseTempo|tick~q\);

-- Location: MLABCELL_X37_Y4_N33
\interfaceTempo1|registraUmSegundo|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo1|registraUmSegundo|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \interfaceTempo1|registraUmSegundo|DOUT~feeder_combout\);

-- Location: LABCELL_X36_Y4_N48
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ $ (!\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X36_Y4_N0
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \ROM|memROM~13_combout\ & ( (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~14_combout\);

-- Location: LABCELL_X36_Y4_N36
\CPU|DECODER|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~2_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|PC|DOUT[5]~DUPLICATE_q\ & 
-- ((\CPU|PC|DOUT[2]~DUPLICATE_q\))))) ) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100100001001000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|DECODER|Equal1~2_combout\);

-- Location: LABCELL_X35_Y4_N15
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(5)))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~15_combout\);

-- Location: LABCELL_X36_Y4_N51
\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( \ROM|memROM~15_combout\ & ( (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~16_combout\);

-- Location: FF_X36_Y4_N19
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

-- Location: LABCELL_X32_Y4_N39
\CPU|PC_INC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~10\ ))
-- \CPU|PC_INC|Add0~14\ = CARRY(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|PC_INC|Add0~10\,
	sumout => \CPU|PC_INC|Add0~13_sumout\,
	cout => \CPU|PC_INC|Add0~14\);

-- Location: LABCELL_X32_Y4_N42
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

-- Location: FF_X32_Y4_N44
\CPU|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~17_sumout\,
	ena => \habKEY2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(4));

-- Location: LABCELL_X35_Y4_N24
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X36_Y4_N45
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X36_Y4_N30
\CPU|MUX_DESVIO|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\ = ( \ROM|memROM~6_combout\ & ( (!\CPU|PC|DOUT[4]~2_combout\ & (((\CPU|PC_INC|Add0~17_sumout\)))) # (\CPU|PC|DOUT[4]~2_combout\ & ((!\CPU|DECODER|Equal1~0_combout\) # ((\CPU|END_RETORNO|DOUT\(4))))) ) ) # ( 
-- !\ROM|memROM~6_combout\ & ( (!\CPU|PC|DOUT[4]~2_combout\ & (((\CPU|PC_INC|Add0~17_sumout\)))) # (\CPU|PC|DOUT[4]~2_combout\ & (\CPU|DECODER|Equal1~0_combout\ & ((\CPU|END_RETORNO|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[4]~2_combout\,
	datac => \CPU|PC_INC|ALT_INV_Add0~17_sumout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(4),
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[4]~4_combout\);

-- Location: FF_X36_Y4_N31
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

-- Location: LABCELL_X32_Y4_N45
\CPU|PC_INC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|PC_INC|Add0~18\ ))
-- \CPU|PC_INC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|PC_INC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|PC_INC|Add0~18\,
	sumout => \CPU|PC_INC|Add0~21_sumout\,
	cout => \CPU|PC_INC|Add0~22\);

-- Location: LABCELL_X32_Y4_N48
\CPU|PC_INC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|PC_INC|Add0~22\ ))
-- \CPU|PC_INC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|PC_INC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|PC_INC|Add0~22\,
	sumout => \CPU|PC_INC|Add0~25_sumout\,
	cout => \CPU|PC_INC|Add0~26\);

-- Location: FF_X32_Y4_N49
\CPU|END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~25_sumout\,
	ena => \habKEY2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(6));

-- Location: LABCELL_X36_Y4_N18
\CPU|MUX_DESVIO|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\ = ( \CPU|PC_INC|Add0~25_sumout\ & ( (!\CPU|PC|DOUT[0]~1_combout\ & ((!\CPU|PC|DOUT[0]~0_combout\) # ((\CPU|END_RETORNO|DOUT\(6))))) # (\CPU|PC|DOUT[0]~1_combout\ & (\CPU|PC|DOUT[0]~0_combout\ & 
-- ((\ROM|memROM~14_combout\)))) ) ) # ( !\CPU|PC_INC|Add0~25_sumout\ & ( (\CPU|PC|DOUT[0]~0_combout\ & ((!\CPU|PC|DOUT[0]~1_combout\ & (\CPU|END_RETORNO|DOUT\(6))) # (\CPU|PC|DOUT[0]~1_combout\ & ((\ROM|memROM~14_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001110001010100110111000101010011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \CPU|PC_INC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[6]~6_combout\);

-- Location: FF_X36_Y4_N20
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

-- Location: FF_X36_Y4_N34
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

-- Location: LABCELL_X32_Y4_N51
\CPU|PC_INC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|PC_INC|Add0~26\ ))
-- \CPU|PC_INC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|PC_INC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|PC_INC|Add0~26\,
	sumout => \CPU|PC_INC|Add0~29_sumout\,
	cout => \CPU|PC_INC|Add0~30\);

-- Location: LABCELL_X32_Y4_N54
\CPU|PC_INC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC_INC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|PC_INC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \CPU|PC_INC|Add0~30\,
	sumout => \CPU|PC_INC|Add0~33_sumout\);

-- Location: FF_X32_Y4_N55
\CPU|END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~33_sumout\,
	ena => \habKEY2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(8));

-- Location: LABCELL_X36_Y4_N21
\CPU|MUX_DESVIO|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\ = ( \ROM|memROM~16_combout\ & ( (!\CPU|PC|DOUT[0]~1_combout\ & ((!\CPU|PC|DOUT[0]~0_combout\ & ((\CPU|PC_INC|Add0~33_sumout\))) # (\CPU|PC|DOUT[0]~0_combout\ & (\CPU|END_RETORNO|DOUT\(8))))) # 
-- (\CPU|PC|DOUT[0]~1_combout\ & (\CPU|PC|DOUT[0]~0_combout\)) ) ) # ( !\ROM|memROM~16_combout\ & ( (!\CPU|PC|DOUT[0]~1_combout\ & ((!\CPU|PC|DOUT[0]~0_combout\ & ((\CPU|PC_INC|Add0~33_sumout\))) # (\CPU|PC|DOUT[0]~0_combout\ & (\CPU|END_RETORNO|DOUT\(8))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000010011100110110001001110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(8),
	datad => \CPU|PC_INC|ALT_INV_Add0~33_sumout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[8]~8_combout\);

-- Location: FF_X36_Y4_N22
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
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
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: FF_X36_Y4_N32
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

-- Location: LABCELL_X35_Y4_N54
\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~17_combout\);

-- Location: LABCELL_X36_Y4_N12
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \ROM|memROM~17_combout\ & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & !\CPU|PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \ROM|memROM~4_combout\);

-- Location: LABCELL_X35_Y4_N9
\ADDR_507~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_507~0_combout\ = ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(0) & (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ADDR_507~0_combout\);

-- Location: LABCELL_X36_Y4_N24
\ADDR_507~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDR_507~1_combout\ = ( \ROM|memROM~6_combout\ & ( \ADDR_507~0_combout\ & ( (\ROM|memROM~14_combout\ & (\CPU|DECODER|Equal1~2_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ALT_INV_ADDR_507~0_combout\,
	combout => \ADDR_507~1_combout\);

-- Location: FF_X37_Y4_N35
\interfaceTempo1|registraUmSegundo|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \interfaceTempo1|baseTempo|tick~q\,
	d => \interfaceTempo1|registraUmSegundo|DOUT~feeder_combout\,
	clrn => \ALT_INV_ADDR_507~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo1|registraUmSegundo|DOUT~q\);

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

-- Location: MLABCELL_X34_Y4_N36
\CPU|DECODER|habBanco~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|habBanco~0_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))))) 
-- ) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000001000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|DECODER|habBanco~0_combout\);

-- Location: LABCELL_X35_Y4_N48
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \ROM|memROM~0_combout\ & ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT\(2)))) ) ) ) # ( \ROM|memROM~0_combout\ & ( 
-- !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000010000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~7_combout\);

-- Location: LABCELL_X35_Y5_N30
\CPU|DECODER|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~1_combout\ = ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & \CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \CPU|DECODER|Equal1~1_combout\);

-- Location: LABCELL_X35_Y4_N18
\habRESET~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habRESET~1_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \habRESET~1_combout\);

-- Location: LABCELL_X36_Y4_N15
\habRESET~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habRESET~0_combout\ = ( !\CPU|PC|DOUT\(3) & ( \habRESET~1_combout\ & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & !\CPU|PC|DOUT[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ALT_INV_habRESET~1_combout\,
	combout => \habRESET~0_combout\);

-- Location: LABCELL_X35_Y5_N36
\habTempo~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habTempo~0_combout\ = ( \habRESET~0_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~1_combout\ & ((\CPU|DECODER|Equal1~1_combout\) # (\CPU|DECODER|habBanco~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_habBanco~0_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datae => \ALT_INV_habRESET~0_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \habTempo~0_combout\);

-- Location: LABCELL_X36_Y3_N30
\interfaceTempo0|baseTempo|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~53_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \interfaceTempo0|baseTempo|Add0~54\ = CARRY(( \interfaceTempo0|baseTempo|contador[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo0|baseTempo|ALT_INV_contador[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \interfaceTempo0|baseTempo|Add0~53_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~54\);

-- Location: FF_X36_Y3_N31
\interfaceTempo0|baseTempo|contador[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~53_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador[0]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N33
\interfaceTempo0|baseTempo|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~9_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador[1]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~54\ ))
-- \interfaceTempo0|baseTempo|Add0~10\ = CARRY(( \interfaceTempo0|baseTempo|contador[1]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador[1]~DUPLICATE_q\,
	cin => \interfaceTempo0|baseTempo|Add0~54\,
	sumout => \interfaceTempo0|baseTempo|Add0~9_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~10\);

-- Location: FF_X36_Y3_N34
\interfaceTempo0|baseTempo|contador[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~9_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador[1]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N36
\interfaceTempo0|baseTempo|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~13_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(2) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~10\ ))
-- \interfaceTempo0|baseTempo|Add0~14\ = CARRY(( \interfaceTempo0|baseTempo|contador\(2) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador\(2),
	cin => \interfaceTempo0|baseTempo|Add0~10\,
	sumout => \interfaceTempo0|baseTempo|Add0~13_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~14\);

-- Location: FF_X36_Y3_N38
\interfaceTempo0|baseTempo|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~13_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(2));

-- Location: LABCELL_X36_Y3_N39
\interfaceTempo0|baseTempo|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~17_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(3) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~14\ ))
-- \interfaceTempo0|baseTempo|Add0~18\ = CARRY(( \interfaceTempo0|baseTempo|contador\(3) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo0|baseTempo|ALT_INV_contador\(3),
	cin => \interfaceTempo0|baseTempo|Add0~14\,
	sumout => \interfaceTempo0|baseTempo|Add0~17_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~18\);

-- Location: FF_X36_Y3_N41
\interfaceTempo0|baseTempo|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~17_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(3));

-- Location: LABCELL_X36_Y3_N42
\interfaceTempo0|baseTempo|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~21_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(4) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~18\ ))
-- \interfaceTempo0|baseTempo|Add0~22\ = CARRY(( \interfaceTempo0|baseTempo|contador\(4) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador\(4),
	cin => \interfaceTempo0|baseTempo|Add0~18\,
	sumout => \interfaceTempo0|baseTempo|Add0~21_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~22\);

-- Location: FF_X36_Y3_N43
\interfaceTempo0|baseTempo|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~21_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(4));

-- Location: LABCELL_X36_Y3_N45
\interfaceTempo0|baseTempo|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~25_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(5) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~22\ ))
-- \interfaceTempo0|baseTempo|Add0~26\ = CARRY(( \interfaceTempo0|baseTempo|contador\(5) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador\(5),
	cin => \interfaceTempo0|baseTempo|Add0~22\,
	sumout => \interfaceTempo0|baseTempo|Add0~25_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~26\);

-- Location: FF_X36_Y3_N47
\interfaceTempo0|baseTempo|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~25_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(5));

-- Location: LABCELL_X36_Y3_N48
\interfaceTempo0|baseTempo|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~29_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(6) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~26\ ))
-- \interfaceTempo0|baseTempo|Add0~30\ = CARRY(( \interfaceTempo0|baseTempo|contador\(6) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo0|baseTempo|ALT_INV_contador\(6),
	cin => \interfaceTempo0|baseTempo|Add0~26\,
	sumout => \interfaceTempo0|baseTempo|Add0~29_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~30\);

-- Location: FF_X36_Y3_N50
\interfaceTempo0|baseTempo|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~29_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(6));

-- Location: LABCELL_X36_Y3_N51
\interfaceTempo0|baseTempo|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~5_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(7) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~30\ ))
-- \interfaceTempo0|baseTempo|Add0~6\ = CARRY(( \interfaceTempo0|baseTempo|contador\(7) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador\(7),
	cin => \interfaceTempo0|baseTempo|Add0~30\,
	sumout => \interfaceTempo0|baseTempo|Add0~5_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~6\);

-- Location: FF_X36_Y3_N52
\interfaceTempo0|baseTempo|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~5_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(7));

-- Location: LABCELL_X36_Y3_N54
\interfaceTempo0|baseTempo|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~49_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(8) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~6\ ))
-- \interfaceTempo0|baseTempo|Add0~50\ = CARRY(( \interfaceTempo0|baseTempo|contador\(8) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador\(8),
	cin => \interfaceTempo0|baseTempo|Add0~6\,
	sumout => \interfaceTempo0|baseTempo|Add0~49_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~50\);

-- Location: FF_X36_Y3_N56
\interfaceTempo0|baseTempo|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~49_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(8));

-- Location: LABCELL_X36_Y3_N57
\interfaceTempo0|baseTempo|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~45_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(9) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~50\ ))
-- \interfaceTempo0|baseTempo|Add0~46\ = CARRY(( \interfaceTempo0|baseTempo|contador\(9) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador\(9),
	cin => \interfaceTempo0|baseTempo|Add0~50\,
	sumout => \interfaceTempo0|baseTempo|Add0~45_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~46\);

-- Location: FF_X36_Y3_N59
\interfaceTempo0|baseTempo|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~45_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(9));

-- Location: LABCELL_X36_Y2_N0
\interfaceTempo0|baseTempo|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~57_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(10) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~46\ ))
-- \interfaceTempo0|baseTempo|Add0~58\ = CARRY(( \interfaceTempo0|baseTempo|contador\(10) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador\(10),
	cin => \interfaceTempo0|baseTempo|Add0~46\,
	sumout => \interfaceTempo0|baseTempo|Add0~57_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~58\);

-- Location: FF_X36_Y2_N2
\interfaceTempo0|baseTempo|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~57_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(10));

-- Location: LABCELL_X36_Y2_N3
\interfaceTempo0|baseTempo|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~41_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(11) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~58\ ))
-- \interfaceTempo0|baseTempo|Add0~42\ = CARRY(( \interfaceTempo0|baseTempo|contador\(11) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador\(11),
	cin => \interfaceTempo0|baseTempo|Add0~58\,
	sumout => \interfaceTempo0|baseTempo|Add0~41_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~42\);

-- Location: FF_X36_Y2_N5
\interfaceTempo0|baseTempo|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~41_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(11));

-- Location: LABCELL_X36_Y2_N6
\interfaceTempo0|baseTempo|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~37_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(12) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~42\ ))
-- \interfaceTempo0|baseTempo|Add0~38\ = CARRY(( \interfaceTempo0|baseTempo|contador\(12) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceTempo0|baseTempo|ALT_INV_contador\(12),
	cin => \interfaceTempo0|baseTempo|Add0~42\,
	sumout => \interfaceTempo0|baseTempo|Add0~37_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~38\);

-- Location: FF_X36_Y2_N8
\interfaceTempo0|baseTempo|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~37_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(12));

-- Location: LABCELL_X36_Y2_N9
\interfaceTempo0|baseTempo|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~33_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(13) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~38\ ))
-- \interfaceTempo0|baseTempo|Add0~34\ = CARRY(( \interfaceTempo0|baseTempo|contador\(13) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo0|baseTempo|ALT_INV_contador\(13),
	cin => \interfaceTempo0|baseTempo|Add0~38\,
	sumout => \interfaceTempo0|baseTempo|Add0~33_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~34\);

-- Location: FF_X36_Y2_N11
\interfaceTempo0|baseTempo|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~33_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(13));

-- Location: LABCELL_X36_Y2_N12
\interfaceTempo0|baseTempo|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~1_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(14) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~34\ ))
-- \interfaceTempo0|baseTempo|Add0~2\ = CARRY(( \interfaceTempo0|baseTempo|contador\(14) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceTempo0|baseTempo|ALT_INV_contador\(14),
	cin => \interfaceTempo0|baseTempo|Add0~34\,
	sumout => \interfaceTempo0|baseTempo|Add0~1_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~2\);

-- Location: FF_X36_Y2_N14
\interfaceTempo0|baseTempo|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~1_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(14));

-- Location: FF_X36_Y3_N35
\interfaceTempo0|baseTempo|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~9_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(1));

-- Location: LABCELL_X36_Y3_N24
\interfaceTempo0|baseTempo|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Equal0~0_combout\ = ( !\interfaceTempo0|baseTempo|contador\(5) & ( \interfaceTempo0|baseTempo|contador\(6) & ( (!\interfaceTempo0|baseTempo|contador\(1) & (!\interfaceTempo0|baseTempo|contador\(4) & 
-- (!\interfaceTempo0|baseTempo|contador\(2) & !\interfaceTempo0|baseTempo|contador\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceTempo0|baseTempo|ALT_INV_contador\(1),
	datab => \interfaceTempo0|baseTempo|ALT_INV_contador\(4),
	datac => \interfaceTempo0|baseTempo|ALT_INV_contador\(2),
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador\(3),
	datae => \interfaceTempo0|baseTempo|ALT_INV_contador\(5),
	dataf => \interfaceTempo0|baseTempo|ALT_INV_contador\(6),
	combout => \interfaceTempo0|baseTempo|Equal0~0_combout\);

-- Location: LABCELL_X36_Y2_N15
\interfaceTempo0|baseTempo|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~97_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(15) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~2\ ))
-- \interfaceTempo0|baseTempo|Add0~98\ = CARRY(( \interfaceTempo0|baseTempo|contador\(15) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo0|baseTempo|ALT_INV_contador\(15),
	cin => \interfaceTempo0|baseTempo|Add0~2\,
	sumout => \interfaceTempo0|baseTempo|Add0~97_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~98\);

-- Location: FF_X36_Y2_N17
\interfaceTempo0|baseTempo|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~97_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(15));

-- Location: LABCELL_X36_Y2_N18
\interfaceTempo0|baseTempo|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~61_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(16) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~98\ ))
-- \interfaceTempo0|baseTempo|Add0~62\ = CARRY(( \interfaceTempo0|baseTempo|contador\(16) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo0|baseTempo|ALT_INV_contador\(16),
	cin => \interfaceTempo0|baseTempo|Add0~98\,
	sumout => \interfaceTempo0|baseTempo|Add0~61_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~62\);

-- Location: FF_X36_Y2_N20
\interfaceTempo0|baseTempo|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~61_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(16));

-- Location: LABCELL_X36_Y2_N21
\interfaceTempo0|baseTempo|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~65_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(17) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~62\ ))
-- \interfaceTempo0|baseTempo|Add0~66\ = CARRY(( \interfaceTempo0|baseTempo|contador\(17) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador\(17),
	cin => \interfaceTempo0|baseTempo|Add0~62\,
	sumout => \interfaceTempo0|baseTempo|Add0~65_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~66\);

-- Location: FF_X36_Y2_N23
\interfaceTempo0|baseTempo|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~65_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(17));

-- Location: LABCELL_X36_Y2_N24
\interfaceTempo0|baseTempo|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~69_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(18) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~66\ ))
-- \interfaceTempo0|baseTempo|Add0~70\ = CARRY(( \interfaceTempo0|baseTempo|contador\(18) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo0|baseTempo|ALT_INV_contador\(18),
	cin => \interfaceTempo0|baseTempo|Add0~66\,
	sumout => \interfaceTempo0|baseTempo|Add0~69_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~70\);

-- Location: FF_X36_Y2_N26
\interfaceTempo0|baseTempo|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~69_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(18));

-- Location: FF_X36_Y2_N29
\interfaceTempo0|baseTempo|contador[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~73_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador[19]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N27
\interfaceTempo0|baseTempo|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~73_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador[19]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~70\ ))
-- \interfaceTempo0|baseTempo|Add0~74\ = CARRY(( \interfaceTempo0|baseTempo|contador[19]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador[19]~DUPLICATE_q\,
	cin => \interfaceTempo0|baseTempo|Add0~70\,
	sumout => \interfaceTempo0|baseTempo|Add0~73_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~74\);

-- Location: FF_X36_Y2_N28
\interfaceTempo0|baseTempo|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~73_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(19));

-- Location: LABCELL_X36_Y2_N30
\interfaceTempo0|baseTempo|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~77_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(20) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~74\ ))
-- \interfaceTempo0|baseTempo|Add0~78\ = CARRY(( \interfaceTempo0|baseTempo|contador\(20) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceTempo0|baseTempo|ALT_INV_contador\(20),
	cin => \interfaceTempo0|baseTempo|Add0~74\,
	sumout => \interfaceTempo0|baseTempo|Add0~77_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~78\);

-- Location: FF_X36_Y2_N32
\interfaceTempo0|baseTempo|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~77_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(20));

-- Location: LABCELL_X36_Y2_N51
\interfaceTempo0|baseTempo|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Equal0~2_combout\ = ( !\interfaceTempo0|baseTempo|contador\(10) & ( \interfaceTempo0|baseTempo|contador\(16) & ( (\interfaceTempo0|baseTempo|contador\(18) & (\interfaceTempo0|baseTempo|contador\(19) & 
-- (\interfaceTempo0|baseTempo|contador\(20) & !\interfaceTempo0|baseTempo|contador\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceTempo0|baseTempo|ALT_INV_contador\(18),
	datab => \interfaceTempo0|baseTempo|ALT_INV_contador\(19),
	datac => \interfaceTempo0|baseTempo|ALT_INV_contador\(20),
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador\(17),
	datae => \interfaceTempo0|baseTempo|ALT_INV_contador\(10),
	dataf => \interfaceTempo0|baseTempo|ALT_INV_contador\(16),
	combout => \interfaceTempo0|baseTempo|Equal0~2_combout\);

-- Location: LABCELL_X36_Y2_N33
\interfaceTempo0|baseTempo|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~81_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(21) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~78\ ))
-- \interfaceTempo0|baseTempo|Add0~82\ = CARRY(( \interfaceTempo0|baseTempo|contador\(21) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceTempo0|baseTempo|ALT_INV_contador\(21),
	cin => \interfaceTempo0|baseTempo|Add0~78\,
	sumout => \interfaceTempo0|baseTempo|Add0~81_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~82\);

-- Location: FF_X36_Y2_N35
\interfaceTempo0|baseTempo|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~81_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(21));

-- Location: LABCELL_X36_Y2_N36
\interfaceTempo0|baseTempo|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~85_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(22) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~82\ ))
-- \interfaceTempo0|baseTempo|Add0~86\ = CARRY(( \interfaceTempo0|baseTempo|contador\(22) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo0|baseTempo|ALT_INV_contador\(22),
	cin => \interfaceTempo0|baseTempo|Add0~82\,
	sumout => \interfaceTempo0|baseTempo|Add0~85_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~86\);

-- Location: FF_X36_Y2_N38
\interfaceTempo0|baseTempo|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~85_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(22));

-- Location: LABCELL_X36_Y2_N39
\interfaceTempo0|baseTempo|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~89_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(23) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~86\ ))
-- \interfaceTempo0|baseTempo|Add0~90\ = CARRY(( \interfaceTempo0|baseTempo|contador\(23) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo0|baseTempo|ALT_INV_contador\(23),
	cin => \interfaceTempo0|baseTempo|Add0~86\,
	sumout => \interfaceTempo0|baseTempo|Add0~89_sumout\,
	cout => \interfaceTempo0|baseTempo|Add0~90\);

-- Location: FF_X36_Y2_N41
\interfaceTempo0|baseTempo|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~89_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(23));

-- Location: LABCELL_X36_Y2_N42
\interfaceTempo0|baseTempo|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Add0~93_sumout\ = SUM(( \interfaceTempo0|baseTempo|contador\(24) ) + ( GND ) + ( \interfaceTempo0|baseTempo|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceTempo0|baseTempo|ALT_INV_contador\(24),
	cin => \interfaceTempo0|baseTempo|Add0~90\,
	sumout => \interfaceTempo0|baseTempo|Add0~93_sumout\);

-- Location: FF_X36_Y2_N44
\interfaceTempo0|baseTempo|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~93_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(24));

-- Location: LABCELL_X36_Y2_N54
\interfaceTempo0|baseTempo|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Equal0~3_combout\ = ( \interfaceTempo0|baseTempo|contador\(22) & ( !\interfaceTempo0|baseTempo|contador\(15) & ( (!\interfaceTempo0|baseTempo|contador\(23) & (\interfaceTempo0|baseTempo|contador\(21) & 
-- \interfaceTempo0|baseTempo|contador\(24))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \interfaceTempo0|baseTempo|ALT_INV_contador\(23),
	datac => \interfaceTempo0|baseTempo|ALT_INV_contador\(21),
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador\(24),
	datae => \interfaceTempo0|baseTempo|ALT_INV_contador\(22),
	dataf => \interfaceTempo0|baseTempo|ALT_INV_contador\(15),
	combout => \interfaceTempo0|baseTempo|Equal0~3_combout\);

-- Location: FF_X36_Y3_N32
\interfaceTempo0|baseTempo|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~53_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador\(0));

-- Location: FF_X36_Y2_N4
\interfaceTempo0|baseTempo|contador[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~41_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador[11]~DUPLICATE_q\);

-- Location: FF_X36_Y2_N10
\interfaceTempo0|baseTempo|contador[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo0|baseTempo|Add0~33_sumout\,
	sclr => \interfaceTempo0|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|contador[13]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N9
\interfaceTempo0|baseTempo|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Equal0~1_combout\ = ( \interfaceTempo0|baseTempo|contador[13]~DUPLICATE_q\ & ( \interfaceTempo0|baseTempo|contador\(12) & ( (!\interfaceTempo0|baseTempo|contador\(8) & (!\interfaceTempo0|baseTempo|contador\(0) & 
-- (!\interfaceTempo0|baseTempo|contador\(9) & \interfaceTempo0|baseTempo|contador[11]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceTempo0|baseTempo|ALT_INV_contador\(8),
	datab => \interfaceTempo0|baseTempo|ALT_INV_contador\(0),
	datac => \interfaceTempo0|baseTempo|ALT_INV_contador\(9),
	datad => \interfaceTempo0|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\,
	datae => \interfaceTempo0|baseTempo|ALT_INV_contador[13]~DUPLICATE_q\,
	dataf => \interfaceTempo0|baseTempo|ALT_INV_contador\(12),
	combout => \interfaceTempo0|baseTempo|Equal0~1_combout\);

-- Location: LABCELL_X36_Y3_N12
\interfaceTempo0|baseTempo|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|Equal0~4_combout\ = ( \interfaceTempo0|baseTempo|Equal0~3_combout\ & ( \interfaceTempo0|baseTempo|Equal0~1_combout\ & ( (\interfaceTempo0|baseTempo|contador\(14) & (!\interfaceTempo0|baseTempo|contador\(7) & 
-- (\interfaceTempo0|baseTempo|Equal0~0_combout\ & \interfaceTempo0|baseTempo|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceTempo0|baseTempo|ALT_INV_contador\(14),
	datab => \interfaceTempo0|baseTempo|ALT_INV_contador\(7),
	datac => \interfaceTempo0|baseTempo|ALT_INV_Equal0~0_combout\,
	datad => \interfaceTempo0|baseTempo|ALT_INV_Equal0~2_combout\,
	datae => \interfaceTempo0|baseTempo|ALT_INV_Equal0~3_combout\,
	dataf => \interfaceTempo0|baseTempo|ALT_INV_Equal0~1_combout\,
	combout => \interfaceTempo0|baseTempo|Equal0~4_combout\);

-- Location: LABCELL_X35_Y4_N45
\interfaceTempo0|baseTempo|tick~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|baseTempo|tick~0_combout\ = ( \interfaceTempo0|baseTempo|tick~q\ & ( !\interfaceTempo0|baseTempo|Equal0~4_combout\ ) ) # ( !\interfaceTempo0|baseTempo|tick~q\ & ( \interfaceTempo0|baseTempo|Equal0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo0|baseTempo|ALT_INV_Equal0~4_combout\,
	dataf => \interfaceTempo0|baseTempo|ALT_INV_tick~q\,
	combout => \interfaceTempo0|baseTempo|tick~0_combout\);

-- Location: FF_X35_Y4_N29
\interfaceTempo0|baseTempo|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \interfaceTempo0|baseTempo|tick~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|baseTempo|tick~q\);

-- Location: LABCELL_X36_Y4_N3
\interfaceTempo0|registraUmSegundo|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo0|registraUmSegundo|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \interfaceTempo0|registraUmSegundo|DOUT~feeder_combout\);

-- Location: FF_X36_Y4_N4
\interfaceTempo0|registraUmSegundo|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \interfaceTempo0|baseTempo|tick~q\,
	d => \interfaceTempo0|registraUmSegundo|DOUT~feeder_combout\,
	clrn => \ALT_INV_ADDR_507~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo0|registraUmSegundo|DOUT~q\);

-- Location: LABCELL_X35_Y5_N18
\RAM|dado_out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~1_combout\ = ( \habTempo~0_combout\ & ( \interfaceTempo0|registraUmSegundo|DOUT~q\ & ( (\ROM|memROM~2_combout\ & (!\interfaceTempo1|registraUmSegundo|DOUT~q\ & (\SW[9]~input_o\ & !\SW[8]~input_o\))) ) ) ) # ( \habTempo~0_combout\ & ( 
-- !\interfaceTempo0|registraUmSegundo|DOUT~q\ & ( (\ROM|memROM~2_combout\ & (!\SW[8]~input_o\ & ((!\interfaceTempo1|registraUmSegundo|DOUT~q\) # (!\SW[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \interfaceTempo1|registraUmSegundo|ALT_INV_DOUT~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	datae => \ALT_INV_habTempo~0_combout\,
	dataf => \interfaceTempo0|registraUmSegundo|ALT_INV_DOUT~q\,
	combout => \RAM|dado_out[0]~1_combout\);

-- Location: LABCELL_X35_Y3_N36
\CPU|DECODER|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~3_combout\ = ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~11_combout\ & \ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODER|Equal1~3_combout\);

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

-- Location: LABCELL_X35_Y5_N48
\bufferKEY2|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY2|saida[0]~0_combout\ = ( \KEY[2]~input_o\ & ( \habKEY2~0_combout\ & ( (\habRESET~0_combout\ & (!\ROM|memROM~3_combout\ & ((\CPU|DECODER|habBanco~0_combout\) # (\CPU|DECODER|Equal1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habRESET~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|DECODER|ALT_INV_habBanco~0_combout\,
	datae => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_habKEY2~0_combout\,
	combout => \bufferKEY2|saida[0]~0_combout\);

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

-- Location: MLABCELL_X34_Y4_N24
\habKEY0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habKEY0~0_combout\ = ( \CPU|PC|DOUT\(2) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \habKEY0~0_combout\);

-- Location: LABCELL_X35_Y5_N42
\bufferRESET|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferRESET|saida[0]~0_combout\ = ( \CPU|DECODER|habBanco~0_combout\ & ( \habKEY0~0_combout\ & ( (\habRESET~0_combout\ & (\FPGA_RESET_N~input_o\ & \ROM|memROM~3_combout\)) ) ) ) # ( !\CPU|DECODER|habBanco~0_combout\ & ( \habKEY0~0_combout\ & ( 
-- (\habRESET~0_combout\ & (\FPGA_RESET_N~input_o\ & (\ROM|memROM~3_combout\ & \CPU|DECODER|Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habRESET~0_combout\,
	datab => \ALT_INV_FPGA_RESET_N~input_o\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datae => \CPU|DECODER|ALT_INV_habBanco~0_combout\,
	dataf => \ALT_INV_habKEY0~0_combout\,
	combout => \bufferRESET|saida[0]~0_combout\);

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

-- Location: LABCELL_X35_Y5_N51
\bufferKEY3|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferKEY3|saida[0]~0_combout\ = ( \KEY[3]~input_o\ & ( \ADDR_507~0_combout\ & ( (\habRESET~0_combout\ & (!\ROM|memROM~3_combout\ & ((\CPU|DECODER|habBanco~0_combout\) # (\CPU|DECODER|Equal1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habRESET~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \CPU|DECODER|ALT_INV_habBanco~0_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_ADDR_507~0_combout\,
	combout => \bufferKEY3|saida[0]~0_combout\);

-- Location: LABCELL_X35_Y3_N6
\CPU|DECODER|operacao~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|operacao~0_combout\ = ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~9_combout\ & (!\ROM|memROM~11_combout\ & !\ROM|memROM~10_combout\)) ) ) # ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~11_combout\ & 
-- !\ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|DECODER|operacao~0_combout\);

-- Location: LABCELL_X35_Y3_N39
\CPU|DECODER|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal1~4_combout\ = ( !\ROM|memROM~11_combout\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~12_combout\ & !\ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|Equal1~4_combout\);

-- Location: LABCELL_X36_Y5_N27
\CPU|ULA|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Equal1~0_combout\ = ( \CPU|DECODER|Equal1~4_combout\ & ( !\CPU|DECODER|operacao~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODER|ALT_INV_operacao~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	combout => \CPU|ULA|Equal1~0_combout\);

-- Location: LABCELL_X36_Y4_N57
\habSWconj~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habSWconj~0_combout\ = ( !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((\CPU|PC|DOUT[2]~DUPLICATE_q\) # (\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( 
-- !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT[0]~DUPLICATE_q\)) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (\ROM|memROM~0_combout\ & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010000000000000011000000010011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \habSWconj~0_combout\);

-- Location: LABCELL_X35_Y5_N12
\habSWconj~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habSWconj~1_combout\ = ( !\ROM|memROM~3_combout\ & ( (\habRESET~0_combout\ & (!\habSWconj~0_combout\ & ((\CPU|DECODER|habBanco~0_combout\) # (\CPU|DECODER|Equal1~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habRESET~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_habSWconj~0_combout\,
	datad => \CPU|DECODER|ALT_INV_habBanco~0_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \habSWconj~1_combout\);

-- Location: LABCELL_X36_Y6_N0
\interfaceTempo2|baseTempo|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~45_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador\(0) ) + ( VCC ) + ( !VCC ))
-- \interfaceTempo2|baseTempo|Add0~46\ = CARRY(( \interfaceTempo2|baseTempo|contador\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo2|baseTempo|ALT_INV_contador\(0),
	cin => GND,
	sumout => \interfaceTempo2|baseTempo|Add0~45_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~46\);

-- Location: MLABCELL_X37_Y6_N54
\interfaceTempo2|baseTempo|contador[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|contador[0]~feeder_combout\ = ( \interfaceTempo2|baseTempo|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceTempo2|baseTempo|ALT_INV_Add0~45_sumout\,
	combout => \interfaceTempo2|baseTempo|contador[0]~feeder_combout\);

-- Location: FF_X37_Y6_N56
\interfaceTempo2|baseTempo|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|contador[0]~feeder_combout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(0));

-- Location: LABCELL_X36_Y6_N3
\interfaceTempo2|baseTempo|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~41_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador[1]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~46\ ))
-- \interfaceTempo2|baseTempo|Add0~42\ = CARRY(( \interfaceTempo2|baseTempo|contador[1]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo2|baseTempo|ALT_INV_contador[1]~DUPLICATE_q\,
	cin => \interfaceTempo2|baseTempo|Add0~46\,
	sumout => \interfaceTempo2|baseTempo|Add0~41_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~42\);

-- Location: FF_X36_Y6_N5
\interfaceTempo2|baseTempo|contador[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~41_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador[1]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y6_N6
\interfaceTempo2|baseTempo|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~37_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador\(2) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~42\ ))
-- \interfaceTempo2|baseTempo|Add0~38\ = CARRY(( \interfaceTempo2|baseTempo|contador\(2) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo2|baseTempo|ALT_INV_contador\(2),
	cin => \interfaceTempo2|baseTempo|Add0~42\,
	sumout => \interfaceTempo2|baseTempo|Add0~37_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~38\);

-- Location: FF_X37_Y6_N23
\interfaceTempo2|baseTempo|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceTempo2|baseTempo|Add0~37_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(2));

-- Location: LABCELL_X36_Y6_N9
\interfaceTempo2|baseTempo|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~49_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador\(3) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~38\ ))
-- \interfaceTempo2|baseTempo|Add0~50\ = CARRY(( \interfaceTempo2|baseTempo|contador\(3) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo2|baseTempo|ALT_INV_contador\(3),
	cin => \interfaceTempo2|baseTempo|Add0~38\,
	sumout => \interfaceTempo2|baseTempo|Add0~49_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~50\);

-- Location: MLABCELL_X37_Y6_N6
\interfaceTempo2|baseTempo|contador[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|contador[3]~feeder_combout\ = ( \interfaceTempo2|baseTempo|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceTempo2|baseTempo|ALT_INV_Add0~49_sumout\,
	combout => \interfaceTempo2|baseTempo|contador[3]~feeder_combout\);

-- Location: FF_X37_Y6_N8
\interfaceTempo2|baseTempo|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|contador[3]~feeder_combout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(3));

-- Location: LABCELL_X36_Y6_N12
\interfaceTempo2|baseTempo|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~1_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador\(4) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~50\ ))
-- \interfaceTempo2|baseTempo|Add0~2\ = CARRY(( \interfaceTempo2|baseTempo|contador\(4) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo2|baseTempo|ALT_INV_contador\(4),
	cin => \interfaceTempo2|baseTempo|Add0~50\,
	sumout => \interfaceTempo2|baseTempo|Add0~1_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~2\);

-- Location: MLABCELL_X37_Y6_N0
\interfaceTempo2|baseTempo|contador[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|contador[4]~feeder_combout\ = ( \interfaceTempo2|baseTempo|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceTempo2|baseTempo|ALT_INV_Add0~1_sumout\,
	combout => \interfaceTempo2|baseTempo|contador[4]~feeder_combout\);

-- Location: FF_X37_Y6_N2
\interfaceTempo2|baseTempo|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|contador[4]~feeder_combout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(4));

-- Location: FF_X36_Y6_N4
\interfaceTempo2|baseTempo|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~41_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(1));

-- Location: LABCELL_X36_Y6_N15
\interfaceTempo2|baseTempo|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~53_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador\(5) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~2\ ))
-- \interfaceTempo2|baseTempo|Add0~54\ = CARRY(( \interfaceTempo2|baseTempo|contador\(5) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo2|baseTempo|ALT_INV_contador\(5),
	cin => \interfaceTempo2|baseTempo|Add0~2\,
	sumout => \interfaceTempo2|baseTempo|Add0~53_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~54\);

-- Location: FF_X36_Y6_N17
\interfaceTempo2|baseTempo|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~53_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(5));

-- Location: LABCELL_X36_Y6_N18
\interfaceTempo2|baseTempo|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~57_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador\(6) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~54\ ))
-- \interfaceTempo2|baseTempo|Add0~58\ = CARRY(( \interfaceTempo2|baseTempo|contador\(6) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo2|baseTempo|ALT_INV_contador\(6),
	cin => \interfaceTempo2|baseTempo|Add0~54\,
	sumout => \interfaceTempo2|baseTempo|Add0~57_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~58\);

-- Location: FF_X36_Y6_N20
\interfaceTempo2|baseTempo|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~57_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(6));

-- Location: LABCELL_X36_Y6_N21
\interfaceTempo2|baseTempo|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~33_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador\(7) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~58\ ))
-- \interfaceTempo2|baseTempo|Add0~34\ = CARRY(( \interfaceTempo2|baseTempo|contador\(7) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo2|baseTempo|ALT_INV_contador\(7),
	cin => \interfaceTempo2|baseTempo|Add0~58\,
	sumout => \interfaceTempo2|baseTempo|Add0~33_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~34\);

-- Location: FF_X37_Y6_N17
\interfaceTempo2|baseTempo|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \interfaceTempo2|baseTempo|Add0~33_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(7));

-- Location: MLABCELL_X37_Y6_N39
\interfaceTempo2|baseTempo|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Equal0~1_combout\ = ( !\interfaceTempo2|baseTempo|contador\(2) & ( \interfaceTempo2|baseTempo|contador\(7) & ( (!\interfaceTempo2|baseTempo|contador\(0) & (!\interfaceTempo2|baseTempo|contador\(3) & 
-- !\interfaceTempo2|baseTempo|contador\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceTempo2|baseTempo|ALT_INV_contador\(0),
	datab => \interfaceTempo2|baseTempo|ALT_INV_contador\(3),
	datac => \interfaceTempo2|baseTempo|ALT_INV_contador\(1),
	datae => \interfaceTempo2|baseTempo|ALT_INV_contador\(2),
	dataf => \interfaceTempo2|baseTempo|ALT_INV_contador\(7),
	combout => \interfaceTempo2|baseTempo|Equal0~1_combout\);

-- Location: LABCELL_X36_Y6_N24
\interfaceTempo2|baseTempo|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~61_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador\(8) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~34\ ))
-- \interfaceTempo2|baseTempo|Add0~62\ = CARRY(( \interfaceTempo2|baseTempo|contador\(8) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo2|baseTempo|ALT_INV_contador\(8),
	cin => \interfaceTempo2|baseTempo|Add0~34\,
	sumout => \interfaceTempo2|baseTempo|Add0~61_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~62\);

-- Location: FF_X36_Y6_N26
\interfaceTempo2|baseTempo|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~61_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(8));

-- Location: LABCELL_X36_Y6_N27
\interfaceTempo2|baseTempo|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~65_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador\(9) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~62\ ))
-- \interfaceTempo2|baseTempo|Add0~66\ = CARRY(( \interfaceTempo2|baseTempo|contador\(9) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo2|baseTempo|ALT_INV_contador\(9),
	cin => \interfaceTempo2|baseTempo|Add0~62\,
	sumout => \interfaceTempo2|baseTempo|Add0~65_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~66\);

-- Location: FF_X36_Y6_N29
\interfaceTempo2|baseTempo|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~65_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(9));

-- Location: LABCELL_X36_Y6_N30
\interfaceTempo2|baseTempo|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~69_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador\(10) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~66\ ))
-- \interfaceTempo2|baseTempo|Add0~70\ = CARRY(( \interfaceTempo2|baseTempo|contador\(10) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo2|baseTempo|ALT_INV_contador\(10),
	cin => \interfaceTempo2|baseTempo|Add0~66\,
	sumout => \interfaceTempo2|baseTempo|Add0~69_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~70\);

-- Location: FF_X36_Y6_N31
\interfaceTempo2|baseTempo|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~69_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(10));

-- Location: LABCELL_X36_Y6_N33
\interfaceTempo2|baseTempo|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~5_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador[11]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~70\ ))
-- \interfaceTempo2|baseTempo|Add0~6\ = CARRY(( \interfaceTempo2|baseTempo|contador[11]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceTempo2|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\,
	cin => \interfaceTempo2|baseTempo|Add0~70\,
	sumout => \interfaceTempo2|baseTempo|Add0~5_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~6\);

-- Location: FF_X36_Y6_N35
\interfaceTempo2|baseTempo|contador[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~5_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador[11]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y6_N36
\interfaceTempo2|baseTempo|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~13_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador[12]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~6\ ))
-- \interfaceTempo2|baseTempo|Add0~14\ = CARRY(( \interfaceTempo2|baseTempo|contador[12]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo2|baseTempo|ALT_INV_contador[12]~DUPLICATE_q\,
	cin => \interfaceTempo2|baseTempo|Add0~6\,
	sumout => \interfaceTempo2|baseTempo|Add0~13_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~14\);

-- Location: FF_X36_Y6_N38
\interfaceTempo2|baseTempo|contador[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~13_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador[12]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y6_N39
\interfaceTempo2|baseTempo|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~17_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador[13]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~14\ ))
-- \interfaceTempo2|baseTempo|Add0~18\ = CARRY(( \interfaceTempo2|baseTempo|contador[13]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo2|baseTempo|ALT_INV_contador[13]~DUPLICATE_q\,
	cin => \interfaceTempo2|baseTempo|Add0~14\,
	sumout => \interfaceTempo2|baseTempo|Add0~17_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~18\);

-- Location: FF_X36_Y6_N41
\interfaceTempo2|baseTempo|contador[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~17_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador[13]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y6_N42
\interfaceTempo2|baseTempo|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~9_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador\(14) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~18\ ))
-- \interfaceTempo2|baseTempo|Add0~10\ = CARRY(( \interfaceTempo2|baseTempo|contador\(14) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceTempo2|baseTempo|ALT_INV_contador\(14),
	cin => \interfaceTempo2|baseTempo|Add0~18\,
	sumout => \interfaceTempo2|baseTempo|Add0~9_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~10\);

-- Location: FF_X36_Y6_N43
\interfaceTempo2|baseTempo|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~9_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(14));

-- Location: LABCELL_X36_Y6_N54
\interfaceTempo2|baseTempo|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Equal0~2_combout\ = ( !\interfaceTempo2|baseTempo|contador\(9) & ( !\interfaceTempo2|baseTempo|contador\(8) & ( (!\interfaceTempo2|baseTempo|contador\(6) & (!\interfaceTempo2|baseTempo|contador\(10) & 
-- !\interfaceTempo2|baseTempo|contador\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceTempo2|baseTempo|ALT_INV_contador\(6),
	datac => \interfaceTempo2|baseTempo|ALT_INV_contador\(10),
	datad => \interfaceTempo2|baseTempo|ALT_INV_contador\(5),
	datae => \interfaceTempo2|baseTempo|ALT_INV_contador\(9),
	dataf => \interfaceTempo2|baseTempo|ALT_INV_contador\(8),
	combout => \interfaceTempo2|baseTempo|Equal0~2_combout\);

-- Location: FF_X36_Y6_N34
\interfaceTempo2|baseTempo|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~5_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(11));

-- Location: FF_X36_Y6_N37
\interfaceTempo2|baseTempo|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~13_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(12));

-- Location: FF_X36_Y6_N47
\interfaceTempo2|baseTempo|contador[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~29_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador[15]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y6_N45
\interfaceTempo2|baseTempo|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~29_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador[15]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~10\ ))
-- \interfaceTempo2|baseTempo|Add0~30\ = CARRY(( \interfaceTempo2|baseTempo|contador[15]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo2|baseTempo|ALT_INV_contador[15]~DUPLICATE_q\,
	cin => \interfaceTempo2|baseTempo|Add0~10\,
	sumout => \interfaceTempo2|baseTempo|Add0~29_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~30\);

-- Location: FF_X36_Y6_N46
\interfaceTempo2|baseTempo|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~29_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(15));

-- Location: LABCELL_X36_Y6_N48
\interfaceTempo2|baseTempo|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~25_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador[16]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~30\ ))
-- \interfaceTempo2|baseTempo|Add0~26\ = CARRY(( \interfaceTempo2|baseTempo|contador[16]~DUPLICATE_q\ ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo2|baseTempo|ALT_INV_contador[16]~DUPLICATE_q\,
	cin => \interfaceTempo2|baseTempo|Add0~30\,
	sumout => \interfaceTempo2|baseTempo|Add0~25_sumout\,
	cout => \interfaceTempo2|baseTempo|Add0~26\);

-- Location: FF_X36_Y6_N50
\interfaceTempo2|baseTempo|contador[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~25_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador[16]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y6_N51
\interfaceTempo2|baseTempo|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Add0~21_sumout\ = SUM(( \interfaceTempo2|baseTempo|contador\(17) ) + ( GND ) + ( \interfaceTempo2|baseTempo|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \interfaceTempo2|baseTempo|ALT_INV_contador\(17),
	cin => \interfaceTempo2|baseTempo|Add0~26\,
	sumout => \interfaceTempo2|baseTempo|Add0~21_sumout\);

-- Location: FF_X36_Y6_N52
\interfaceTempo2|baseTempo|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~21_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(17));

-- Location: FF_X36_Y6_N49
\interfaceTempo2|baseTempo|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~25_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(16));

-- Location: FF_X36_Y6_N40
\interfaceTempo2|baseTempo|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \interfaceTempo2|baseTempo|Add0~17_sumout\,
	sclr => \interfaceTempo2|baseTempo|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|contador\(13));

-- Location: MLABCELL_X37_Y6_N30
\interfaceTempo2|baseTempo|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Equal0~0_combout\ = ( \interfaceTempo2|baseTempo|contador\(16) & ( !\interfaceTempo2|baseTempo|contador\(13) & ( (\interfaceTempo2|baseTempo|contador\(12) & (\interfaceTempo2|baseTempo|contador\(15) & 
-- \interfaceTempo2|baseTempo|contador\(17))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceTempo2|baseTempo|ALT_INV_contador\(12),
	datac => \interfaceTempo2|baseTempo|ALT_INV_contador\(15),
	datad => \interfaceTempo2|baseTempo|ALT_INV_contador\(17),
	datae => \interfaceTempo2|baseTempo|ALT_INV_contador\(16),
	dataf => \interfaceTempo2|baseTempo|ALT_INV_contador\(13),
	combout => \interfaceTempo2|baseTempo|Equal0~0_combout\);

-- Location: MLABCELL_X37_Y6_N45
\interfaceTempo2|baseTempo|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|Equal0~3_combout\ = ( !\interfaceTempo2|baseTempo|contador\(11) & ( \interfaceTempo2|baseTempo|Equal0~0_combout\ & ( (\interfaceTempo2|baseTempo|contador\(4) & (\interfaceTempo2|baseTempo|Equal0~1_combout\ & 
-- (\interfaceTempo2|baseTempo|contador\(14) & \interfaceTempo2|baseTempo|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceTempo2|baseTempo|ALT_INV_contador\(4),
	datab => \interfaceTempo2|baseTempo|ALT_INV_Equal0~1_combout\,
	datac => \interfaceTempo2|baseTempo|ALT_INV_contador\(14),
	datad => \interfaceTempo2|baseTempo|ALT_INV_Equal0~2_combout\,
	datae => \interfaceTempo2|baseTempo|ALT_INV_contador\(11),
	dataf => \interfaceTempo2|baseTempo|ALT_INV_Equal0~0_combout\,
	combout => \interfaceTempo2|baseTempo|Equal0~3_combout\);

-- Location: MLABCELL_X37_Y6_N24
\interfaceTempo2|baseTempo|tick~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|tick~0_combout\ = ( !\interfaceTempo2|baseTempo|Equal0~3_combout\ & ( \interfaceTempo2|baseTempo|tick~q\ ) ) # ( \interfaceTempo2|baseTempo|Equal0~3_combout\ & ( !\interfaceTempo2|baseTempo|tick~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \interfaceTempo2|baseTempo|ALT_INV_Equal0~3_combout\,
	dataf => \interfaceTempo2|baseTempo|ALT_INV_tick~q\,
	combout => \interfaceTempo2|baseTempo|tick~0_combout\);

-- Location: MLABCELL_X37_Y6_N51
\interfaceTempo2|baseTempo|tick~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|baseTempo|tick~feeder_combout\ = ( \interfaceTempo2|baseTempo|tick~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \interfaceTempo2|baseTempo|ALT_INV_tick~0_combout\,
	combout => \interfaceTempo2|baseTempo|tick~feeder_combout\);

-- Location: FF_X37_Y6_N53
\interfaceTempo2|baseTempo|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceTempo2|baseTempo|tick~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|baseTempo|tick~q\);

-- Location: LABCELL_X35_Y5_N9
\interfaceTempo2|registraUmSegundo|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceTempo2|registraUmSegundo|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \interfaceTempo2|registraUmSegundo|DOUT~feeder_combout\);

-- Location: FF_X35_Y5_N10
\interfaceTempo2|registraUmSegundo|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \interfaceTempo2|baseTempo|tick~q\,
	d => \interfaceTempo2|registraUmSegundo|DOUT~feeder_combout\,
	clrn => \ALT_INV_ADDR_507~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|registraUmSegundo|DOUT~DUPLICATE_q\);

-- Location: LABCELL_X35_Y5_N6
\RAM|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~8_combout\ = ( \interfaceTempo2|registraUmSegundo|DOUT~DUPLICATE_q\ & ( (!\ROM|memROM~2_combout\ & (!\SW[8]~input_o\ & ((\habTempo~0_combout\)))) # (\ROM|memROM~2_combout\ & (((\habSWconj~1_combout\)))) ) ) # ( 
-- !\interfaceTempo2|registraUmSegundo|DOUT~DUPLICATE_q\ & ( (!\ROM|memROM~2_combout\ & (!\SW[8]~input_o\ & ((\habTempo~0_combout\)))) # (\ROM|memROM~2_combout\ & (((\SW[8]~input_o\ & \habTempo~0_combout\)) # (\habSWconj~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110100111000000111010011100000011101000110000001110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_habSWconj~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ALT_INV_habTempo~0_combout\,
	dataf => \interfaceTempo2|registraUmSegundo|ALT_INV_DOUT~DUPLICATE_q\,
	combout => \RAM|dado_out[0]~8_combout\);

-- Location: LABCELL_X35_Y5_N15
\bufferSW8|saida[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[1]~7_combout\ = ( \habKEY0~0_combout\ & ( (\habRESET~0_combout\ & ((\CPU|DECODER|habBanco~0_combout\) # (\CPU|DECODER|Equal1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	datac => \CPU|DECODER|ALT_INV_habBanco~0_combout\,
	datad => \ALT_INV_habRESET~0_combout\,
	dataf => \ALT_INV_habKEY0~0_combout\,
	combout => \bufferSW8|saida[1]~7_combout\);

-- Location: LABCELL_X35_Y4_N6
\habKEY0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habKEY0~1_combout\ = ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \habKEY0~1_combout\);

-- Location: MLABCELL_X34_Y4_N30
\bufferSW8|saida[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[1]~8_combout\ = ( \ROM|memROM~1_combout\ & ( \habKEY0~1_combout\ & ( (!\ROM|memROM~2_combout\ & (((!\ROM|memROM~7_combout\)))) # (\ROM|memROM~2_combout\ & ((!\SW[9]~input_o\) # ((!\SW[8]~input_o\) # (\ROM|memROM~7_combout\)))) ) ) ) # ( 
-- !\ROM|memROM~1_combout\ & ( \habKEY0~1_combout\ & ( \ROM|memROM~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ALT_INV_habKEY0~1_combout\,
	combout => \bufferSW8|saida[1]~8_combout\);

-- Location: LABCELL_X35_Y5_N27
\RAM|dado_out[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~5_combout\ = ( \bufferSW8|saida[1]~8_combout\ ) # ( !\bufferSW8|saida[1]~8_combout\ & ( (\RAM|dado_out~9_combout\) # (\bufferSW8|saida[1]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	datad => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	combout => \RAM|dado_out[0]~5_combout\);

-- Location: LABCELL_X35_Y5_N57
\RAM|dado_out[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~7_combout\ = ( \RAM|dado_out[0]~6_combout\ & ( \RAM|dado_out[0]~1_combout\ & ( !\RAM|dado_out[0]~5_combout\ ) ) ) # ( !\RAM|dado_out[0]~6_combout\ & ( \RAM|dado_out[0]~1_combout\ & ( !\RAM|dado_out[0]~5_combout\ ) ) ) # ( 
-- \RAM|dado_out[0]~6_combout\ & ( !\RAM|dado_out[0]~1_combout\ & ( (!\RAM|dado_out[0]~8_combout\) # ((!\RAM|dado_out[0]~5_combout\) # ((\ROM|memROM~2_combout\ & \SW[9]~input_o\))) ) ) ) # ( !\RAM|dado_out[0]~6_combout\ & ( !\RAM|dado_out[0]~1_combout\ & ( 
-- !\RAM|dado_out[0]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111100110111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \RAM|ALT_INV_dado_out[0]~5_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~6_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~1_combout\,
	combout => \RAM|dado_out[0]~7_combout\);

-- Location: LABCELL_X36_Y5_N30
\CPU|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~34_cout\ = CARRY(( VCC ) + ( (!\CPU|DECODER|Equal1~4_combout\) # (\CPU|DECODER|operacao~0_combout\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_operacao~0_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	cin => GND,
	cout => \CPU|ULA|Add0~34_cout\);

-- Location: LABCELL_X36_Y5_N33
\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\RAM|dado_out[0]~7_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~1_combout\)))) ) + ( \CPU|BANCO_REG|registrador~28_combout\ ) + ( 
-- \CPU|ULA|Add0~34_cout\ ))
-- \CPU|ULA|Add0~2\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\RAM|dado_out[0]~7_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~1_combout\)))) ) + ( \CPU|BANCO_REG|registrador~28_combout\ ) + ( 
-- \CPU|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~7_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~28_combout\,
	cin => \CPU|ULA|Add0~34_cout\,
	sumout => \CPU|ULA|Add0~1_sumout\,
	cout => \CPU|ULA|Add0~2\);

-- Location: MLABCELL_X37_Y5_N39
\CPU|BANCO_REG|registrador~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~20feeder_combout\ = ( \CPU|ULA|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	combout => \CPU|BANCO_REG|registrador~20feeder_combout\);

-- Location: LABCELL_X35_Y3_N42
\CPU|DECODER|operacao~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|operacao~1_combout\ = ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~11_combout\ & ( (!\CPU|DECODER|operacao~0_combout\ & (!\CPU|DECODER|Equal1~4_combout\ & (!\ROM|memROM~9_combout\ & !\ROM|memROM~12_combout\))) ) ) ) # ( !\ROM|memROM~10_combout\ 
-- & ( !\ROM|memROM~11_combout\ & ( (!\CPU|DECODER|operacao~0_combout\ & (!\CPU|DECODER|Equal1~4_combout\ & (\ROM|memROM~9_combout\ & !\ROM|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_operacao~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~4_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|operacao~1_combout\);

-- Location: LABCELL_X35_Y4_N21
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~8_combout\);

-- Location: MLABCELL_X37_Y5_N27
\CPU|BANCO_REG|registrador~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~36_combout\ = ( \CPU|DECODER|habBanco~0_combout\ & ( (!\ROM|memROM~8_combout\ & (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(3))) ) ) # ( !\CPU|DECODER|habBanco~0_combout\ & ( (\CPU|DECODER|Equal1~3_combout\ & 
-- (!\ROM|memROM~8_combout\ & (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|DECODER|ALT_INV_habBanco~0_combout\,
	combout => \CPU|BANCO_REG|registrador~36_combout\);

-- Location: FF_X37_Y5_N40
\CPU|BANCO_REG|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~20feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[0]~0_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~20_q\);

-- Location: LABCELL_X32_Y5_N36
\CPU|BANCO_REG|registrador~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~28_combout\ = ( !\ROM|memROM~8_combout\ & ( (\CPU|BANCO_REG|registrador~20_q\ & (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|BANCO_REG|ALT_INV_registrador~20_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|BANCO_REG|registrador~28_combout\);

-- Location: MLABCELL_X34_Y4_N42
\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( \CPU|PC|DOUT\(2) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~548_combout\);

-- Location: FF_X35_Y5_N47
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
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

-- Location: LABCELL_X35_Y5_N3
\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( !\ROM|memROM~3_combout\ & ( (\RAM|ram~23_q\ & !\ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~23_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~543_combout\);

-- Location: LABCELL_X35_Y3_N0
\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( 
-- (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~546_combout\);

-- Location: FF_X35_Y4_N2
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
	ena => \RAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

-- Location: LABCELL_X35_Y3_N18
\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( !\CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~547_combout\);

-- Location: FF_X36_Y4_N56
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
	ena => \RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: LABCELL_X35_Y4_N57
\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( \ROM|memROM~2_combout\ & ( (\RAM|ram~31_q\ & !\ROM|memROM~4_combout\) ) ) # ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~4_combout\ & \RAM|ram~15_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~31_q\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~15_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~544_combout\);

-- Location: MLABCELL_X34_Y5_N36
\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~3_combout\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~1_combout\)) ) ) ) # ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~3_combout\ & ( (\ROM|memROM~7_combout\ & 
-- \ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~1_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111000000000000000000111100000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~545_combout\);

-- Location: LABCELL_X35_Y5_N24
\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \RAM|ram~545_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~1_combout\ & ((\RAM|ram~544_combout\))) # (\ROM|memROM~1_combout\ & (\RAM|ram~543_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~543_combout\,
	datad => \RAM|ALT_INV_ram~544_combout\,
	dataf => \RAM|ALT_INV_ram~545_combout\,
	combout => \RAM|ram~527_combout\);

-- Location: LABCELL_X35_Y5_N0
\RAM|dado_out[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~6_combout\ = ( \RAM|ram~527_combout\ & ( (!\bufferKEY2|saida[0]~0_combout\ & (!\bufferRESET|saida[0]~0_combout\ & !\bufferKEY3|saida[0]~0_combout\)) ) ) # ( !\RAM|ram~527_combout\ & ( (!\bufferKEY2|saida[0]~0_combout\ & 
-- (!\bufferRESET|saida[0]~0_combout\ & (!\bufferKEY3|saida[0]~0_combout\ & !\RAM|dado_out~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bufferKEY2|ALT_INV_saida[0]~0_combout\,
	datab => \bufferRESET|ALT_INV_saida[0]~0_combout\,
	datac => \bufferKEY3|ALT_INV_saida[0]~0_combout\,
	datad => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \RAM|ALT_INV_ram~527_combout\,
	combout => \RAM|dado_out[0]~6_combout\);

-- Location: FF_X35_Y5_N11
\interfaceTempo2|registraUmSegundo|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \interfaceTempo2|baseTempo|tick~q\,
	d => \interfaceTempo2|registraUmSegundo|DOUT~feeder_combout\,
	clrn => \ALT_INV_ADDR_507~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceTempo2|registraUmSegundo|DOUT~q\);

-- Location: MLABCELL_X34_Y3_N30
\RAM|dado_out[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~2_combout\ = ( \habSWconj~1_combout\ & ( \ROM|memROM~2_combout\ & ( !\SW[9]~input_o\ ) ) ) # ( !\habSWconj~1_combout\ & ( \ROM|memROM~2_combout\ & ( (\SW[8]~input_o\ & (!\interfaceTempo2|registraUmSegundo|DOUT~q\ & (\habTempo~0_combout\ & 
-- !\SW[9]~input_o\))) ) ) ) # ( \habSWconj~1_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\SW[8]~input_o\ & \habTempo~0_combout\) ) ) ) # ( !\habSWconj~1_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\SW[8]~input_o\ & \habTempo~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000100000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \interfaceTempo2|registraUmSegundo|ALT_INV_DOUT~q\,
	datac => \ALT_INV_habTempo~0_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \ALT_INV_habSWconj~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|dado_out[0]~2_combout\);

-- Location: MLABCELL_X37_Y5_N30
\CPU|MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[0]~0_combout\ = ( \RAM|dado_out[0]~5_combout\ & ( \RAM|dado_out[0]~2_combout\ & ( (\ROM|memROM~1_combout\ & \CPU|DECODER|Equal1~3_combout\) ) ) ) # ( !\RAM|dado_out[0]~5_combout\ & ( \RAM|dado_out[0]~2_combout\ & ( 
-- (!\CPU|DECODER|Equal1~3_combout\) # (\ROM|memROM~1_combout\) ) ) ) # ( \RAM|dado_out[0]~5_combout\ & ( !\RAM|dado_out[0]~2_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & (((!\RAM|dado_out[0]~1_combout\ & \RAM|dado_out[0]~6_combout\)))) # 
-- (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~1_combout\)) ) ) ) # ( !\RAM|dado_out[0]~5_combout\ & ( !\RAM|dado_out[0]~2_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\) # (\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101000001011100010111110101111101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~1_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~6_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~5_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~2_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X35_Y6_N42
\bufferSW8|saida[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[5]~13_combout\ = ( \RAM|ram~538_combout\ & ( (!\bufferSW8|saida[1]~7_combout\ & !\bufferSW8|saida[1]~8_combout\) ) ) # ( !\RAM|ram~538_combout\ & ( (!\RAM|dado_out~9_combout\ & (!\bufferSW8|saida[1]~7_combout\ & 
-- !\bufferSW8|saida[1]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~9_combout\,
	datac => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	dataf => \RAM|ALT_INV_ram~538_combout\,
	combout => \bufferSW8|saida[5]~13_combout\);

-- Location: LABCELL_X36_Y5_N36
\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[1]~9_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|BANCO_REG|registrador~29_combout\ ) + ( 
-- \CPU|ULA|Add0~2\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[1]~9_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~2_combout\)))) ) + ( \CPU|BANCO_REG|registrador~29_combout\ ) + ( 
-- \CPU|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~9_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~29_combout\,
	cin => \CPU|ULA|Add0~2\,
	sumout => \CPU|ULA|Add0~5_sumout\,
	cout => \CPU|ULA|Add0~6\);

-- Location: MLABCELL_X37_Y5_N57
\CPU|BANCO_REG|registrador~21feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~21feeder_combout\ = ( \CPU|ULA|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	combout => \CPU|BANCO_REG|registrador~21feeder_combout\);

-- Location: MLABCELL_X37_Y5_N24
\bufferSW8|saida[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[1]~16_combout\ = ( \RAM|dado_out~9_combout\ & ( !\RAM|ram~528_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~528_combout\,
	dataf => \RAM|ALT_INV_dado_out~9_combout\,
	combout => \bufferSW8|saida[1]~16_combout\);

-- Location: MLABCELL_X37_Y5_N54
\CPU|MUX_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[1]~1_combout\ = ( \bufferSW8|saida[1]~16_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & (!\RAM|dado_out~9_combout\ & (!\bufferSW8|saida[1]~8_combout\ & !\bufferSW8|saida[1]~7_combout\))) ) ) # ( !\bufferSW8|saida[1]~16_combout\ & ( 
-- (!\CPU|DECODER|Equal1~3_combout\ & (!\bufferSW8|saida[1]~8_combout\ & !\bufferSW8|saida[1]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \RAM|ALT_INV_dado_out~9_combout\,
	datac => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	dataf => \bufferSW8|ALT_INV_saida[1]~16_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[1]~1_combout\);

-- Location: FF_X37_Y5_N58
\CPU|BANCO_REG|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~21feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[1]~1_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~21_q\);

-- Location: LABCELL_X35_Y6_N30
\CPU|BANCO_REG|registrador~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~29_combout\ = ( \CPU|BANCO_REG|registrador~21_q\ & ( (!\ROM|memROM~8_combout\ & (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~21_q\,
	combout => \CPU|BANCO_REG|registrador~29_combout\);

-- Location: FF_X35_Y6_N23
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
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

-- Location: FF_X35_Y6_N2
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
	ena => \RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: LABCELL_X35_Y6_N3
\RAM|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~581_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~4_combout\ & ((!\ROM|memROM~1_combout\ & ((\RAM|ram~16_q\))) # (\ROM|memROM~1_combout\ & (\RAM|ram~24_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \RAM|ALT_INV_ram~16_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~581_combout\);

-- Location: FF_X35_Y6_N7
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
	ena => \RAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

-- Location: LABCELL_X35_Y6_N9
\RAM|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~577_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~1_combout\ & \RAM|ram~32_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \RAM|ALT_INV_ram~32_q\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~577_combout\);

-- Location: MLABCELL_X34_Y5_N42
\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \RAM|ram~577_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM|ram~581_combout\) # (\ROM|memROM~2_combout\))) ) ) # ( !\RAM|ram~577_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~581_combout\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~581_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \RAM|ALT_INV_ram~577_combout\,
	combout => \RAM|ram~528_combout\);

-- Location: MLABCELL_X34_Y5_N48
\bufferSW8|saida[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[1]~9_combout\ = ( \RAM|ram~528_combout\ & ( (!\bufferSW8|saida[1]~8_combout\ & !\bufferSW8|saida[1]~7_combout\) ) ) # ( !\RAM|ram~528_combout\ & ( (!\bufferSW8|saida[1]~8_combout\ & (!\RAM|dado_out~9_combout\ & 
-- !\bufferSW8|saida[1]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	datac => \RAM|ALT_INV_dado_out~9_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	dataf => \RAM|ALT_INV_ram~528_combout\,
	combout => \bufferSW8|saida[1]~9_combout\);

-- Location: LABCELL_X36_Y5_N39
\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[2]~10_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~3_combout\)))) ) + ( \CPU|BANCO_REG|registrador~30_combout\ ) + ( 
-- \CPU|ULA|Add0~6\ ))
-- \CPU|ULA|Add0~10\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[2]~10_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~3_combout\)))) ) + ( \CPU|BANCO_REG|registrador~30_combout\ ) + ( 
-- \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \bufferSW8|ALT_INV_saida[2]~10_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~30_combout\,
	cin => \CPU|ULA|Add0~6\,
	sumout => \CPU|ULA|Add0~9_sumout\,
	cout => \CPU|ULA|Add0~10\);

-- Location: MLABCELL_X37_Y5_N51
\CPU|BANCO_REG|registrador~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~22feeder_combout\ = ( \CPU|ULA|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~9_sumout\,
	combout => \CPU|BANCO_REG|registrador~22feeder_combout\);

-- Location: MLABCELL_X37_Y4_N51
\bufferSW8|saida[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[2]~17_combout\ = ( \RAM|dado_out~9_combout\ & ( !\RAM|ram~531_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \RAM|ALT_INV_ram~531_combout\,
	combout => \bufferSW8|saida[2]~17_combout\);

-- Location: MLABCELL_X37_Y5_N9
\CPU|MUX_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[2]~2_combout\ = ( \bufferSW8|saida[2]~17_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & (!\bufferSW8|saida[1]~8_combout\ & (!\RAM|dado_out~9_combout\ & !\bufferSW8|saida[1]~7_combout\))) ) ) # ( !\bufferSW8|saida[2]~17_combout\ & ( 
-- (!\CPU|DECODER|Equal1~3_combout\ & (!\bufferSW8|saida[1]~8_combout\ & !\bufferSW8|saida[1]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	datac => \RAM|ALT_INV_dado_out~9_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	dataf => \bufferSW8|ALT_INV_saida[2]~17_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[2]~2_combout\);

-- Location: FF_X37_Y5_N52
\CPU|BANCO_REG|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~22feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[2]~2_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~22_q\);

-- Location: LABCELL_X32_Y5_N33
\CPU|BANCO_REG|registrador~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~30_combout\ = ( !\ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|BANCO_REG|registrador~22_q\ & \ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|BANCO_REG|ALT_INV_registrador~22_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|BANCO_REG|registrador~30_combout\);

-- Location: FF_X34_Y5_N31
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
	ena => \RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: FF_X34_Y5_N55
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
	ena => \RAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

-- Location: FF_X34_Y5_N14
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
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

-- Location: MLABCELL_X34_Y5_N12
\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \ROM|memROM~1_combout\ & ( (!\ROM|memROM~2_combout\ & \RAM|ram~25_q\) ) ) # ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~17_q\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~33_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datab => \RAM|ALT_INV_ram~33_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~25_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~529_combout\);

-- Location: MLABCELL_X34_Y5_N33
\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( \RAM|ram~529_combout\ & ( (!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_ram~529_combout\,
	combout => \RAM|ram~530_combout\);

-- Location: MLABCELL_X34_Y5_N54
\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \RAM|ram~530_combout\ & ( (!\ROM|memROM~7_combout\ & !\ROM|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \RAM|ALT_INV_ram~530_combout\,
	combout => \RAM|ram~531_combout\);

-- Location: MLABCELL_X34_Y5_N0
\bufferSW8|saida[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[2]~10_combout\ = ( \RAM|ram~531_combout\ & ( !\bufferSW8|saida[1]~8_combout\ & ( !\bufferSW8|saida[1]~7_combout\ ) ) ) # ( !\RAM|ram~531_combout\ & ( !\bufferSW8|saida[1]~8_combout\ & ( (!\bufferSW8|saida[1]~7_combout\ & 
-- !\RAM|dado_out~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	datad => \RAM|ALT_INV_dado_out~9_combout\,
	datae => \RAM|ALT_INV_ram~531_combout\,
	dataf => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	combout => \bufferSW8|saida[2]~10_combout\);

-- Location: LABCELL_X36_Y5_N42
\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[3]~11_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|BANCO_REG|registrador~31_combout\ ) + ( 
-- \CPU|ULA|Add0~10\ ))
-- \CPU|ULA|Add0~14\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[3]~11_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~4_combout\)))) ) + ( \CPU|BANCO_REG|registrador~31_combout\ ) + ( 
-- \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \bufferSW8|ALT_INV_saida[3]~11_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~31_combout\,
	cin => \CPU|ULA|Add0~10\,
	sumout => \CPU|ULA|Add0~13_sumout\,
	cout => \CPU|ULA|Add0~14\);

-- Location: MLABCELL_X37_Y5_N6
\CPU|BANCO_REG|registrador~23feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~23feeder_combout\ = ( \CPU|ULA|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~13_sumout\,
	combout => \CPU|BANCO_REG|registrador~23feeder_combout\);

-- Location: MLABCELL_X34_Y5_N27
\bufferSW8|saida[3]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[3]~18_combout\ = ( !\RAM|ram~534_combout\ & ( \RAM|dado_out~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \RAM|ALT_INV_ram~534_combout\,
	combout => \bufferSW8|saida[3]~18_combout\);

-- Location: MLABCELL_X37_Y5_N18
\CPU|MUX_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[3]~3_combout\ = ( \ROM|memROM~4_combout\ & ( \bufferSW8|saida[3]~18_combout\ & ( ((!\bufferSW8|saida[1]~7_combout\ & (!\bufferSW8|saida[1]~8_combout\ & !\RAM|dado_out~9_combout\))) # (\CPU|DECODER|Equal1~3_combout\) ) ) ) # ( 
-- !\ROM|memROM~4_combout\ & ( \bufferSW8|saida[3]~18_combout\ & ( (!\bufferSW8|saida[1]~7_combout\ & (!\bufferSW8|saida[1]~8_combout\ & (!\CPU|DECODER|Equal1~3_combout\ & !\RAM|dado_out~9_combout\))) ) ) ) # ( \ROM|memROM~4_combout\ & ( 
-- !\bufferSW8|saida[3]~18_combout\ & ( ((!\bufferSW8|saida[1]~7_combout\ & !\bufferSW8|saida[1]~8_combout\)) # (\CPU|DECODER|Equal1~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bufferSW8|saida[3]~18_combout\ & ( (!\bufferSW8|saida[1]~7_combout\ & 
-- (!\bufferSW8|saida[1]~8_combout\ & !\CPU|DECODER|Equal1~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100011111000111110000000000000001000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	datab => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datad => \RAM|ALT_INV_dado_out~9_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bufferSW8|ALT_INV_saida[3]~18_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[3]~3_combout\);

-- Location: FF_X37_Y5_N8
\CPU|BANCO_REG|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~23feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[3]~3_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~23_q\);

-- Location: MLABCELL_X37_Y4_N9
\CPU|BANCO_REG|registrador~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~31_combout\ = ( \ROM|memROM~0_combout\ & ( \CPU|BANCO_REG|registrador~23_q\ & ( (!\CPU|PC|DOUT\(3) & !\ROM|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~23_q\,
	combout => \CPU|BANCO_REG|registrador~31_combout\);

-- Location: FF_X34_Y5_N5
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
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

-- Location: MLABCELL_X34_Y5_N21
\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( !\ROM|memROM~3_combout\ & ( (\RAM|ram~26_q\ & !\ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~26_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~533_combout\);

-- Location: FF_X34_Y5_N41
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
	ena => \RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: FF_X34_Y5_N53
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
	ena => \RAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

-- Location: MLABCELL_X34_Y5_N51
\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~2_combout\ & (\RAM|ram~18_q\)) # (\ROM|memROM~2_combout\ & ((\RAM|ram~34_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~18_q\,
	datad => \RAM|ALT_INV_ram~34_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~532_combout\);

-- Location: MLABCELL_X34_Y5_N30
\RAM|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~573_combout\ = ( \RAM|ram~532_combout\ & ( (!\ROM|memROM~4_combout\ & ((!\ROM|memROM~1_combout\) # (\RAM|ram~533_combout\))) ) ) # ( !\RAM|ram~532_combout\ & ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~4_combout\ & \RAM|ram~533_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \RAM|ALT_INV_ram~533_combout\,
	dataf => \RAM|ALT_INV_ram~532_combout\,
	combout => \RAM|ram~573_combout\);

-- Location: MLABCELL_X34_Y5_N15
\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \RAM|ram~573_combout\ & ( (!\ROM|memROM~6_combout\ & !\ROM|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \RAM|ALT_INV_ram~573_combout\,
	combout => \RAM|ram~534_combout\);

-- Location: MLABCELL_X34_Y5_N57
\bufferSW8|saida[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[3]~11_combout\ = ( \RAM|ram~534_combout\ & ( (!\bufferSW8|saida[1]~8_combout\ & !\bufferSW8|saida[1]~7_combout\) ) ) # ( !\RAM|ram~534_combout\ & ( (!\bufferSW8|saida[1]~8_combout\ & (!\RAM|dado_out~9_combout\ & 
-- !\bufferSW8|saida[1]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	datac => \RAM|ALT_INV_dado_out~9_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	dataf => \RAM|ALT_INV_ram~534_combout\,
	combout => \bufferSW8|saida[3]~11_combout\);

-- Location: LABCELL_X36_Y5_N45
\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[4]~12_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~6_combout\)))) ) + ( \CPU|BANCO_REG|registrador~32_combout\ ) + ( 
-- \CPU|ULA|Add0~14\ ))
-- \CPU|ULA|Add0~18\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[4]~12_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~6_combout\)))) ) + ( \CPU|BANCO_REG|registrador~32_combout\ ) + ( 
-- \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \bufferSW8|ALT_INV_saida[4]~12_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~32_combout\,
	cin => \CPU|ULA|Add0~14\,
	sumout => \CPU|ULA|Add0~17_sumout\,
	cout => \CPU|ULA|Add0~18\);

-- Location: MLABCELL_X37_Y5_N12
\CPU|BANCO_REG|registrador~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~24feeder_combout\ = ( \CPU|ULA|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	combout => \CPU|BANCO_REG|registrador~24feeder_combout\);

-- Location: MLABCELL_X37_Y5_N42
\bufferSW8|saida[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[4]~19_combout\ = (\RAM|dado_out~9_combout\ & !\RAM|ram~535_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~9_combout\,
	datad => \RAM|ALT_INV_ram~535_combout\,
	combout => \bufferSW8|saida[4]~19_combout\);

-- Location: MLABCELL_X37_Y5_N36
\CPU|MUX_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[4]~4_combout\ = ( \bufferSW8|saida[4]~19_combout\ & ( (!\CPU|DECODER|Equal1~3_combout\ & (!\RAM|dado_out~9_combout\ & (!\bufferSW8|saida[1]~8_combout\ & !\bufferSW8|saida[1]~7_combout\))) ) ) # ( !\bufferSW8|saida[4]~19_combout\ & ( 
-- (!\CPU|DECODER|Equal1~3_combout\ & (!\bufferSW8|saida[1]~8_combout\ & !\bufferSW8|saida[1]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datab => \RAM|ALT_INV_dado_out~9_combout\,
	datac => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	dataf => \bufferSW8|ALT_INV_saida[4]~19_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[4]~4_combout\);

-- Location: FF_X37_Y5_N14
\CPU|BANCO_REG|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~24feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[4]~4_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~24_q\);

-- Location: MLABCELL_X37_Y4_N24
\CPU|BANCO_REG|registrador~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~32_combout\ = ( !\ROM|memROM~8_combout\ & ( \CPU|BANCO_REG|registrador~24_q\ & ( (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~24_q\,
	combout => \CPU|BANCO_REG|registrador~32_combout\);

-- Location: FF_X34_Y5_N47
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
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

-- Location: MLABCELL_X34_Y5_N45
\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & \RAM|ram~27_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~27_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~565_combout\);

-- Location: FF_X34_Y5_N22
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
	ena => \RAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

-- Location: FF_X34_Y5_N7
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
	ena => \RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

-- Location: MLABCELL_X34_Y5_N9
\RAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~569_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~4_combout\ & (\RAM|ram~35_q\ & !\ROM|memROM~6_combout\)) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~6_combout\ & \RAM|ram~19_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \RAM|ALT_INV_ram~35_q\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~19_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~569_combout\);

-- Location: MLABCELL_X34_Y5_N24
\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \RAM|ram~569_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~1_combout\) # (\RAM|ram~565_combout\))) ) ) # ( !\RAM|ram~569_combout\ & ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~7_combout\ & \RAM|ram~565_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_ram~565_combout\,
	dataf => \RAM|ALT_INV_ram~569_combout\,
	combout => \RAM|ram~535_combout\);

-- Location: MLABCELL_X34_Y5_N18
\bufferSW8|saida[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[4]~12_combout\ = ( \RAM|ram~535_combout\ & ( (!\bufferSW8|saida[1]~8_combout\ & !\bufferSW8|saida[1]~7_combout\) ) ) # ( !\RAM|ram~535_combout\ & ( (!\bufferSW8|saida[1]~8_combout\ & (!\RAM|dado_out~9_combout\ & 
-- !\bufferSW8|saida[1]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	datac => \RAM|ALT_INV_dado_out~9_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	dataf => \RAM|ALT_INV_ram~535_combout\,
	combout => \bufferSW8|saida[4]~12_combout\);

-- Location: LABCELL_X36_Y5_N48
\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[5]~13_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~7_combout\)))) ) + ( \CPU|BANCO_REG|registrador~33_combout\ ) + ( 
-- \CPU|ULA|Add0~18\ ))
-- \CPU|ULA|Add0~22\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[5]~13_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~7_combout\)))) ) + ( \CPU|BANCO_REG|registrador~33_combout\ ) + ( 
-- \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \bufferSW8|ALT_INV_saida[5]~13_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~33_combout\,
	cin => \CPU|ULA|Add0~18\,
	sumout => \CPU|ULA|Add0~21_sumout\,
	cout => \CPU|ULA|Add0~22\);

-- Location: MLABCELL_X37_Y5_N45
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

-- Location: FF_X37_Y5_N47
\CPU|BANCO_REG|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~25feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[5]~5_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~25_q\);

-- Location: MLABCELL_X37_Y4_N15
\CPU|BANCO_REG|registrador~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~33_combout\ = ( \CPU|BANCO_REG|registrador~25_q\ & ( (!\CPU|PC|DOUT\(3) & (!\ROM|memROM~8_combout\ & \ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~25_q\,
	combout => \CPU|BANCO_REG|registrador~33_combout\);

-- Location: FF_X35_Y6_N41
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
	ena => \RAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

-- Location: LABCELL_X35_Y6_N57
\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~4_combout\ & \RAM|ram~36_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~36_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~536_combout\);

-- Location: LABCELL_X35_Y6_N24
\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~6_combout\ & \RAM|ram~536_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~536_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~537_combout\);

-- Location: FF_X35_Y6_N14
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
	ena => \RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

-- Location: FF_X35_Y6_N53
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
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

-- Location: LABCELL_X35_Y6_N12
\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( \RAM|ram~20_q\ & ( \RAM|ram~28_q\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~3_combout\)) ) ) ) # ( !\RAM|ram~20_q\ & ( \RAM|ram~28_q\ & ( (!\ROM|memROM~6_combout\ & (\ROM|memROM~1_combout\ & 
-- (!\ROM|memROM~4_combout\ & !\ROM|memROM~3_combout\))) ) ) ) # ( \RAM|ram~20_q\ & ( !\RAM|ram~28_q\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~1_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \RAM|ALT_INV_ram~20_q\,
	dataf => \RAM|ALT_INV_ram~28_q\,
	combout => \RAM|ram~561_combout\);

-- Location: LABCELL_X35_Y6_N33
\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \RAM|ram~561_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~2_combout\) # (\RAM|ram~537_combout\))) ) ) # ( !\RAM|ram~561_combout\ & ( (\RAM|ram~537_combout\ & (\ROM|memROM~2_combout\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~537_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \RAM|ALT_INV_ram~561_combout\,
	combout => \RAM|ram~538_combout\);

-- Location: LABCELL_X35_Y6_N39
\bufferSW8|saida[5]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[5]~20_combout\ = ( !\RAM|ram~538_combout\ & ( \RAM|dado_out~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \RAM|ALT_INV_ram~538_combout\,
	combout => \bufferSW8|saida[5]~20_combout\);

-- Location: LABCELL_X35_Y6_N36
\CPU|MUX_ULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[5]~5_combout\ = ( \bufferSW8|saida[5]~20_combout\ & ( (!\RAM|dado_out~9_combout\ & (!\bufferSW8|saida[1]~7_combout\ & (!\CPU|DECODER|Equal1~3_combout\ & !\bufferSW8|saida[1]~8_combout\))) ) ) # ( !\bufferSW8|saida[5]~20_combout\ & ( 
-- (!\bufferSW8|saida[1]~7_combout\ & (!\CPU|DECODER|Equal1~3_combout\ & !\bufferSW8|saida[1]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~9_combout\,
	datab => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	dataf => \bufferSW8|ALT_INV_saida[5]~20_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[5]~5_combout\);

-- Location: MLABCELL_X37_Y5_N15
\CPU|FLAGer|DOUT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~6_combout\ = ( !\CPU|MUX_ULA|saida_MUX[5]~5_combout\ & ( !\CPU|MUX_ULA|saida_MUX[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUX_ULA|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|FLAGer|DOUT~6_combout\);

-- Location: LABCELL_X36_Y5_N12
\CPU|FLAGer|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~2_combout\ = ( \bufferSW8|saida[4]~12_combout\ & ( \CPU|DECODER|Equal1~1_combout\ & ( (!\CPU|DECODER|operacao~1_combout\) # (\CPU|DECODER|Equal1~3_combout\) ) ) ) # ( !\bufferSW8|saida[4]~12_combout\ & ( \CPU|DECODER|Equal1~1_combout\ & ( 
-- (!\CPU|DECODER|operacao~1_combout\) # (((!\bufferSW8|saida[1]~9_combout\ & !\bufferSW8|saida[2]~10_combout\)) # (\CPU|DECODER|Equal1~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bufferSW8|ALT_INV_saida[1]~9_combout\,
	datab => \bufferSW8|ALT_INV_saida[2]~10_combout\,
	datac => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datae => \bufferSW8|ALT_INV_saida[4]~12_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	combout => \CPU|FLAGer|DOUT~2_combout\);

-- Location: LABCELL_X36_Y5_N3
\CPU|FLAGer|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~0_combout\ = ( !\CPU|DECODER|Equal1~1_combout\ & ( \CPU|FLAGer|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FLAGer|ALT_INV_DOUT~q\,
	dataf => \CPU|DECODER|ALT_INV_Equal1~1_combout\,
	combout => \CPU|FLAGer|DOUT~0_combout\);

-- Location: LABCELL_X36_Y5_N51
\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[6]~14_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~14_combout\)))) ) + ( \CPU|BANCO_REG|registrador~34_combout\ ) + ( 
-- \CPU|ULA|Add0~22\ ))
-- \CPU|ULA|Add0~26\ = CARRY(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[6]~14_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~14_combout\)))) ) + ( \CPU|BANCO_REG|registrador~34_combout\ ) + ( 
-- \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \bufferSW8|ALT_INV_saida[6]~14_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~34_combout\,
	cin => \CPU|ULA|Add0~22\,
	sumout => \CPU|ULA|Add0~25_sumout\,
	cout => \CPU|ULA|Add0~26\);

-- Location: LABCELL_X36_Y5_N24
\CPU|BANCO_REG|registrador~26feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~26feeder_combout\ = ( \CPU|ULA|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~25_sumout\,
	combout => \CPU|BANCO_REG|registrador~26feeder_combout\);

-- Location: MLABCELL_X34_Y4_N0
\bufferSW8|saida[6]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[6]~21_combout\ = ( \RAM|dado_out~9_combout\ & ( !\RAM|ram~541_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~541_combout\,
	dataf => \RAM|ALT_INV_dado_out~9_combout\,
	combout => \bufferSW8|saida[6]~21_combout\);

-- Location: MLABCELL_X37_Y5_N21
\CPU|MUX_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[6]~6_combout\ = ( \ROM|memROM~14_combout\ & ( \bufferSW8|saida[6]~21_combout\ & ( ((!\bufferSW8|saida[1]~7_combout\ & (!\bufferSW8|saida[1]~8_combout\ & !\RAM|dado_out~9_combout\))) # (\CPU|DECODER|Equal1~3_combout\) ) ) ) # ( 
-- !\ROM|memROM~14_combout\ & ( \bufferSW8|saida[6]~21_combout\ & ( (!\bufferSW8|saida[1]~7_combout\ & (!\bufferSW8|saida[1]~8_combout\ & (!\RAM|dado_out~9_combout\ & !\CPU|DECODER|Equal1~3_combout\))) ) ) ) # ( \ROM|memROM~14_combout\ & ( 
-- !\bufferSW8|saida[6]~21_combout\ & ( ((!\bufferSW8|saida[1]~7_combout\ & !\bufferSW8|saida[1]~8_combout\)) # (\CPU|DECODER|Equal1~3_combout\) ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\bufferSW8|saida[6]~21_combout\ & ( (!\bufferSW8|saida[1]~7_combout\ & 
-- (!\bufferSW8|saida[1]~8_combout\ & !\CPU|DECODER|Equal1~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010001111111110000000000000001000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	datab => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	datac => \RAM|ALT_INV_dado_out~9_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \bufferSW8|ALT_INV_saida[6]~21_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[6]~6_combout\);

-- Location: FF_X36_Y5_N25
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

-- Location: LABCELL_X32_Y5_N0
\CPU|BANCO_REG|registrador~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~34_combout\ = ( \CPU|BANCO_REG|registrador~26_q\ & ( !\ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \ROM|memROM~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~26_q\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|BANCO_REG|registrador~34_combout\);

-- Location: FF_X34_Y4_N29
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
	ena => \RAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

-- Location: FF_X34_Y4_N50
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
	ena => \RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

-- Location: MLABCELL_X34_Y4_N21
\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM|ram~37_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~37_q\,
	datad => \RAM|ALT_INV_ram~21_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~539_combout\);

-- Location: FF_X34_Y4_N47
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
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

-- Location: MLABCELL_X34_Y4_N9
\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( !\ROM|memROM~2_combout\ & ( (\RAM|ram~29_q\ & !\ROM|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~29_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~540_combout\);

-- Location: MLABCELL_X34_Y4_N3
\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( \RAM|ram~540_combout\ & ( (!\ROM|memROM~4_combout\ & ((\RAM|ram~539_combout\) # (\ROM|memROM~1_combout\))) ) ) # ( !\RAM|ram~540_combout\ & ( (!\ROM|memROM~1_combout\ & (!\ROM|memROM~4_combout\ & \RAM|ram~539_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~539_combout\,
	dataf => \RAM|ALT_INV_ram~540_combout\,
	combout => \RAM|ram~557_combout\);

-- Location: MLABCELL_X34_Y4_N54
\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \RAM|ram~557_combout\ & ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datae => \RAM|ALT_INV_ram~557_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~541_combout\);

-- Location: MLABCELL_X37_Y5_N48
\bufferSW8|saida[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[6]~14_combout\ = ( \RAM|ram~541_combout\ & ( (!\bufferSW8|saida[1]~7_combout\ & !\bufferSW8|saida[1]~8_combout\) ) ) # ( !\RAM|ram~541_combout\ & ( (!\RAM|dado_out~9_combout\ & (!\bufferSW8|saida[1]~7_combout\ & 
-- !\bufferSW8|saida[1]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_dado_out~9_combout\,
	datac => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	datad => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	dataf => \RAM|ALT_INV_ram~541_combout\,
	combout => \bufferSW8|saida[6]~14_combout\);

-- Location: LABCELL_X36_Y5_N54
\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( !\CPU|ULA|Equal1~0_combout\ $ (((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[7]~15_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~6_combout\)))) ) + ( \CPU|BANCO_REG|registrador~35_combout\ ) + ( 
-- \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datac => \CPU|ULA|ALT_INV_Equal1~0_combout\,
	datad => \bufferSW8|ALT_INV_saida[7]~15_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~35_combout\,
	cin => \CPU|ULA|Add0~26\,
	sumout => \CPU|ULA|Add0~29_sumout\);

-- Location: MLABCELL_X37_Y5_N0
\CPU|BANCO_REG|registrador~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~27feeder_combout\ = ( \CPU|ULA|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA|ALT_INV_Add0~29_sumout\,
	combout => \CPU|BANCO_REG|registrador~27feeder_combout\);

-- Location: LABCELL_X35_Y6_N51
\bufferSW8|saida[7]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[7]~22_combout\ = ( !\RAM|ram~542_combout\ & ( \RAM|dado_out~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~9_combout\,
	dataf => \RAM|ALT_INV_ram~542_combout\,
	combout => \bufferSW8|saida[7]~22_combout\);

-- Location: MLABCELL_X37_Y5_N3
\CPU|MUX_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ULA|saida_MUX[7]~7_combout\ = ( \bufferSW8|saida[7]~22_combout\ & ( (!\bufferSW8|saida[1]~7_combout\ & (!\RAM|dado_out~9_combout\ & (!\bufferSW8|saida[1]~8_combout\ & !\CPU|DECODER|Equal1~3_combout\))) ) ) # ( !\bufferSW8|saida[7]~22_combout\ & ( 
-- (!\bufferSW8|saida[1]~7_combout\ & (!\bufferSW8|saida[1]~8_combout\ & !\CPU|DECODER|Equal1~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	datab => \RAM|ALT_INV_dado_out~9_combout\,
	datac => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	dataf => \bufferSW8|ALT_INV_saida[7]~22_combout\,
	combout => \CPU|MUX_ULA|saida_MUX[7]~7_combout\);

-- Location: FF_X37_Y5_N1
\CPU|BANCO_REG|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|BANCO_REG|registrador~27feeder_combout\,
	asdata => \CPU|MUX_ULA|saida_MUX[7]~7_combout\,
	sload => \CPU|DECODER|operacao~1_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~27_q\);

-- Location: LABCELL_X35_Y6_N45
\CPU|BANCO_REG|registrador~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~35_combout\ = ( \CPU|BANCO_REG|registrador~27_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\ROM|memROM~8_combout\ & \ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~27_q\,
	combout => \CPU|BANCO_REG|registrador~35_combout\);

-- Location: FF_X35_Y6_N11
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
	ena => \RAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

-- Location: LABCELL_X35_Y6_N27
\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~3_combout\ & (\RAM|ram~38_q\ & !\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \RAM|ALT_INV_ram~38_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~549_combout\);

-- Location: FF_X35_Y6_N17
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
	ena => \RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

-- Location: FF_X35_Y6_N20
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
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

-- Location: LABCELL_X35_Y6_N15
\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( \RAM|ram~22_q\ & ( \RAM|ram~30_q\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\)) ) ) ) # ( !\RAM|ram~22_q\ & ( \RAM|ram~30_q\ & ( (!\ROM|memROM~6_combout\ & (\ROM|memROM~1_combout\ & 
-- (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) ) ) # ( \RAM|ram~22_q\ & ( !\RAM|ram~30_q\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~1_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_ram~22_q\,
	dataf => \RAM|ALT_INV_ram~30_q\,
	combout => \RAM|ram~553_combout\);

-- Location: LABCELL_X35_Y6_N48
\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \RAM|ram~553_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~2_combout\) # (\RAM|ram~549_combout\))) ) ) # ( !\RAM|ram~553_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM|ram~549_combout\ & \ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~549_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~553_combout\,
	combout => \RAM|ram~542_combout\);

-- Location: LABCELL_X35_Y6_N18
\bufferSW8|saida[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \bufferSW8|saida[7]~15_combout\ = ( !\bufferSW8|saida[1]~8_combout\ & ( \RAM|ram~542_combout\ & ( !\bufferSW8|saida[1]~7_combout\ ) ) ) # ( !\bufferSW8|saida[1]~8_combout\ & ( !\RAM|ram~542_combout\ & ( (!\RAM|dado_out~9_combout\ & 
-- !\bufferSW8|saida[1]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~9_combout\,
	datac => \bufferSW8|ALT_INV_saida[1]~7_combout\,
	datae => \bufferSW8|ALT_INV_saida[1]~8_combout\,
	dataf => \RAM|ALT_INV_ram~542_combout\,
	combout => \bufferSW8|saida[7]~15_combout\);

-- Location: LABCELL_X35_Y6_N54
\CPU|FLAGer|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~1_combout\ = ( \bufferSW8|saida[7]~15_combout\ & ( (\CPU|DECODER|operacao~1_combout\ & ((!\CPU|DECODER|Equal1~3_combout\) # (\ROM|memROM~4_combout\))) ) ) # ( !\bufferSW8|saida[7]~15_combout\ & ( (\CPU|DECODER|operacao~1_combout\ & 
-- ((!\CPU|DECODER|Equal1~3_combout\ & ((\bufferSW8|saida[3]~11_combout\))) # (\CPU|DECODER|Equal1~3_combout\ & (\ROM|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000000010101000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~3_combout\,
	datad => \bufferSW8|ALT_INV_saida[3]~11_combout\,
	dataf => \bufferSW8|ALT_INV_saida[7]~15_combout\,
	combout => \CPU|FLAGer|DOUT~1_combout\);

-- Location: LABCELL_X36_Y5_N18
\CPU|FLAGer|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~4_combout\ = ( !\CPU|ULA|Add0~21_sumout\ & ( !\CPU|ULA|Add0~29_sumout\ & ( (!\CPU|ULA|Add0~9_sumout\ & (!\CPU|ULA|Add0~25_sumout\ & (!\CPU|ULA|Add0~13_sumout\ & !\CPU|ULA|Add0~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Add0~9_sumout\,
	datab => \CPU|ULA|ALT_INV_Add0~25_sumout\,
	datac => \CPU|ULA|ALT_INV_Add0~13_sumout\,
	datad => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	datae => \CPU|ULA|ALT_INV_Add0~21_sumout\,
	dataf => \CPU|ULA|ALT_INV_Add0~29_sumout\,
	combout => \CPU|FLAGer|DOUT~4_combout\);

-- Location: LABCELL_X36_Y5_N0
\CPU|FLAGer|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~5_combout\ = ( \CPU|ULA|Add0~1_sumout\ & ( (\CPU|DECODER|operacao~1_combout\ & !\CPU|MUX_ULA|saida_MUX[6]~6_combout\) ) ) # ( !\CPU|ULA|Add0~1_sumout\ & ( (!\CPU|DECODER|operacao~1_combout\ & (!\CPU|ULA|Add0~5_sumout\ & 
-- (\CPU|FLAGer|DOUT~4_combout\))) # (\CPU|DECODER|operacao~1_combout\ & (((!\CPU|MUX_ULA|saida_MUX[6]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100001000001110110000100000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	datab => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datac => \CPU|FLAGer|ALT_INV_DOUT~4_combout\,
	datad => \CPU|MUX_ULA|ALT_INV_saida_MUX[6]~6_combout\,
	dataf => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	combout => \CPU|FLAGer|DOUT~5_combout\);

-- Location: LABCELL_X36_Y5_N6
\CPU|FLAGer|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAGer|DOUT~3_combout\ = ( \CPU|FLAGer|DOUT~1_combout\ & ( \CPU|FLAGer|DOUT~5_combout\ & ( \CPU|FLAGer|DOUT~0_combout\ ) ) ) # ( !\CPU|FLAGer|DOUT~1_combout\ & ( \CPU|FLAGer|DOUT~5_combout\ & ( ((\CPU|FLAGer|DOUT~2_combout\ & 
-- ((!\CPU|DECODER|operacao~1_combout\) # (\CPU|FLAGer|DOUT~6_combout\)))) # (\CPU|FLAGer|DOUT~0_combout\) ) ) ) # ( \CPU|FLAGer|DOUT~1_combout\ & ( !\CPU|FLAGer|DOUT~5_combout\ & ( \CPU|FLAGer|DOUT~0_combout\ ) ) ) # ( !\CPU|FLAGer|DOUT~1_combout\ & ( 
-- !\CPU|FLAGer|DOUT~5_combout\ & ( \CPU|FLAGer|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111111000111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FLAGer|ALT_INV_DOUT~6_combout\,
	datab => \CPU|FLAGer|ALT_INV_DOUT~2_combout\,
	datac => \CPU|FLAGer|ALT_INV_DOUT~0_combout\,
	datad => \CPU|DECODER|ALT_INV_operacao~1_combout\,
	datae => \CPU|FLAGer|ALT_INV_DOUT~1_combout\,
	dataf => \CPU|FLAGer|ALT_INV_DOUT~5_combout\,
	combout => \CPU|FLAGer|DOUT~3_combout\);

-- Location: FF_X36_Y5_N8
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

-- Location: LABCELL_X35_Y3_N24
\CPU|PC|DOUT[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[4]~2_combout\ = ( \ROM|memROM~11_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ $ (!\ROM|memROM~9_combout\))) ) ) # ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & 
-- ((!\ROM|memROM~9_combout\) # (\CPU|FLAGer|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010001000100000001000100101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|FLAGer|ALT_INV_DOUT~q\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|PC|DOUT[4]~2_combout\);

-- Location: FF_X32_Y4_N52
\CPU|END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~29_sumout\,
	ena => \habKEY2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(7));

-- Location: LABCELL_X36_Y4_N33
\CPU|MUX_DESVIO|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\ = ( \CPU|END_RETORNO|DOUT\(7) & ( (!\CPU|PC|DOUT[4]~2_combout\ & (((\CPU|PC_INC|Add0~29_sumout\)))) # (\CPU|PC|DOUT[4]~2_combout\ & (((\ROM|memROM~6_combout\)) # (\CPU|DECODER|Equal1~0_combout\))) ) ) # ( 
-- !\CPU|END_RETORNO|DOUT\(7) & ( (!\CPU|PC|DOUT[4]~2_combout\ & (((\CPU|PC_INC|Add0~29_sumout\)))) # (\CPU|PC|DOUT[4]~2_combout\ & (!\CPU|DECODER|Equal1~0_combout\ & ((\ROM|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[4]~2_combout\,
	datac => \CPU|PC_INC|ALT_INV_Add0~29_sumout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \CPU|END_RETORNO|ALT_INV_DOUT\(7),
	combout => \CPU|MUX_DESVIO|saida_MUX[7]~7_combout\);

-- Location: FF_X36_Y4_N35
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

-- Location: FF_X36_Y4_N23
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

-- Location: LABCELL_X36_Y4_N42
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|PC|DOUT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X36_Y4_N6
\habKEY2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habKEY2~0_combout\ = ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \habKEY2~0_combout\);

-- Location: FF_X32_Y4_N31
\CPU|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~1_sumout\,
	ena => \habKEY2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(0));

-- Location: LABCELL_X35_Y4_N39
\CPU|MUX_DESVIO|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\ = ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT[0]~1_combout\ & ((!\CPU|PC|DOUT[0]~0_combout\ & (\CPU|PC_INC|Add0~1_sumout\)) # (\CPU|PC|DOUT[0]~0_combout\ & ((\CPU|END_RETORNO|DOUT\(0)))))) # 
-- (\CPU|PC|DOUT[0]~1_combout\ & (\CPU|PC|DOUT[0]~0_combout\)) ) ) # ( !\ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT[0]~1_combout\ & ((!\CPU|PC|DOUT[0]~0_combout\ & (\CPU|PC_INC|Add0~1_sumout\)) # (\CPU|PC|DOUT[0]~0_combout\ & ((\CPU|END_RETORNO|DOUT\(0)))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000011001001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \CPU|PC_INC|ALT_INV_Add0~1_sumout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(0),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[0]~0_combout\);

-- Location: FF_X35_Y4_N41
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

-- Location: FF_X32_Y4_N34
\CPU|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~5_sumout\,
	ena => \habKEY2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(1));

-- Location: LABCELL_X35_Y4_N36
\CPU|MUX_DESVIO|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\ = ( \ROM|memROM~2_combout\ & ( (!\CPU|PC|DOUT[0]~1_combout\ & ((!\CPU|PC|DOUT[0]~0_combout\ & (\CPU|PC_INC|Add0~5_sumout\)) # (\CPU|PC|DOUT[0]~0_combout\ & ((\CPU|END_RETORNO|DOUT\(1)))))) # 
-- (\CPU|PC|DOUT[0]~1_combout\ & (\CPU|PC|DOUT[0]~0_combout\)) ) ) # ( !\ROM|memROM~2_combout\ & ( (!\CPU|PC|DOUT[0]~1_combout\ & ((!\CPU|PC|DOUT[0]~0_combout\ & (\CPU|PC_INC|Add0~5_sumout\)) # (\CPU|PC|DOUT[0]~0_combout\ & ((\CPU|END_RETORNO|DOUT\(1)))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000011001001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \CPU|PC_INC|ALT_INV_Add0~5_sumout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[1]~1_combout\);

-- Location: FF_X35_Y4_N37
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

-- Location: LABCELL_X35_Y3_N54
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \ROM|memROM~0_combout\ & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( \ROM|memROM~0_combout\ & ( !\CPU|PC|DOUT\(3) & ( 
-- (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\) # ((!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT[0]~DUPLICATE_q\)))) # (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & 
-- ((\CPU|PC|DOUT[2]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110101001010100000000000000001000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~10_combout\);

-- Location: LABCELL_X35_Y3_N27
\CPU|PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[0]~0_combout\ = ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~10_combout\ & (!\ROM|memROM~12_combout\ & (\ROM|memROM~11_combout\))) # (\ROM|memROM~10_combout\ & (\ROM|memROM~12_combout\ & (!\ROM|memROM~11_combout\ & \CPU|FLAGer|DOUT~q\))) ) ) # 
-- ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ $ (!\ROM|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000001000000110000000100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \CPU|FLAGer|ALT_INV_DOUT~q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|PC|DOUT[0]~0_combout\);

-- Location: FF_X32_Y4_N46
\CPU|END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~21_sumout\,
	ena => \habKEY2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(5));

-- Location: LABCELL_X35_Y4_N30
\CPU|MUX_DESVIO|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\ = ( \ROM|memROM~7_combout\ & ( (!\CPU|PC|DOUT[0]~1_combout\ & ((!\CPU|PC|DOUT[0]~0_combout\ & ((\CPU|PC_INC|Add0~21_sumout\))) # (\CPU|PC|DOUT[0]~0_combout\ & (\CPU|END_RETORNO|DOUT\(5))))) # 
-- (\CPU|PC|DOUT[0]~1_combout\ & (\CPU|PC|DOUT[0]~0_combout\)) ) ) # ( !\ROM|memROM~7_combout\ & ( (!\CPU|PC|DOUT[0]~1_combout\ & ((!\CPU|PC|DOUT[0]~0_combout\ & ((\CPU|PC_INC|Add0~21_sumout\))) # (\CPU|PC|DOUT[0]~0_combout\ & (\CPU|END_RETORNO|DOUT\(5))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000010011100110110001001110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(5),
	datad => \CPU|PC_INC|ALT_INV_Add0~21_sumout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[5]~5_combout\);

-- Location: FF_X35_Y4_N32
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

-- Location: LABCELL_X35_Y3_N48
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \ROM|memROM~0_combout\ & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) ) # ( \ROM|memROM~0_combout\ & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(5) & 
-- (!\CPU|PC|DOUT[0]~DUPLICATE_q\ $ (((!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT[2]~DUPLICATE_q\))))) # (\CPU|PC|DOUT\(5) & (((\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110011011010100000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

-- Location: LABCELL_X35_Y3_N9
\CPU|PC|DOUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[0]~1_combout\ = ( \ROM|memROM~10_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~12_combout\ & ((!\ROM|memROM~9_combout\) # (\CPU|FLAGer|DOUT~q\)))) ) ) # ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~9_combout\ & (\ROM|memROM~11_combout\ 
-- & !\ROM|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000001000000011000000100000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \CPU|FLAGer|ALT_INV_DOUT~q\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|PC|DOUT[0]~1_combout\);

-- Location: FF_X32_Y4_N40
\CPU|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|PC_INC|Add0~13_sumout\,
	ena => \habKEY2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(3));

-- Location: LABCELL_X35_Y4_N33
\CPU|MUX_DESVIO|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\ = ( \CPU|PC_INC|Add0~13_sumout\ & ( (!\CPU|PC|DOUT[0]~1_combout\ & ((!\CPU|PC|DOUT[0]~0_combout\) # ((\CPU|END_RETORNO|DOUT\(3))))) # (\CPU|PC|DOUT[0]~1_combout\ & (\CPU|PC|DOUT[0]~0_combout\ & 
-- (\ROM|memROM~4_combout\))) ) ) # ( !\CPU|PC_INC|Add0~13_sumout\ & ( (\CPU|PC|DOUT[0]~0_combout\ & ((!\CPU|PC|DOUT[0]~1_combout\ & ((\CPU|END_RETORNO|DOUT\(3)))) # (\CPU|PC|DOUT[0]~1_combout\ & (\ROM|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001110001001101010111000100110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(3),
	dataf => \CPU|PC_INC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX_DESVIO|saida_MUX[3]~3_combout\);

-- Location: FF_X35_Y4_N35
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

-- Location: MLABCELL_X34_Y4_N12
\RAM|dado_out~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~9_combout\ = ( \CPU|PC|DOUT\(2) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(5))) # (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0) & 
-- !\CPU|PC|DOUT\(5))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|dado_out~9_combout\);

-- Location: MLABCELL_X34_Y3_N12
\RAM|dado_out[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~3_combout\ = ( !\bufferKEY2|saida[0]~0_combout\ & ( !\bufferKEY3|saida[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bufferKEY3|ALT_INV_saida[0]~0_combout\,
	dataf => \bufferKEY2|ALT_INV_saida[0]~0_combout\,
	combout => \RAM|dado_out[0]~3_combout\);

-- Location: MLABCELL_X34_Y3_N6
\RAM|dado_out[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~4_combout\ = ( !\bufferRESET|saida[0]~0_combout\ & ( !\RAM|dado_out[0]~2_combout\ & ( (!\RAM|dado_out[0]~1_combout\ & (\RAM|dado_out[0]~3_combout\ & ((!\RAM|dado_out~9_combout\) # (\RAM|ram~527_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~9_combout\,
	datab => \RAM|ALT_INV_ram~527_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~1_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~3_combout\,
	datae => \bufferRESET|ALT_INV_saida[0]~0_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~2_combout\,
	combout => \RAM|dado_out[0]~4_combout\);

-- Location: MLABCELL_X34_Y4_N6
\habHEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~0_combout\ = ( !\ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~13_combout\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \habHEX0~0_combout\);

-- Location: LABCELL_X35_Y2_N45
\habHEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~1_combout\ = ( !\ROM|memROM~3_combout\ & ( (\CPU|DECODER|Equal1~2_combout\ & \habHEX0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_habHEX0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \habHEX0~1_combout\);

-- Location: LABCELL_X35_Y2_N12
\FFLED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED8|DOUT~0_combout\ = ( \FFLED8|DOUT~q\ & ( \ROM|memROM~1_combout\ & ( ((!\habHEX0~1_combout\) # ((\CPU|BANCO_REG|registrador~28_combout\) # (\ROM|memROM~2_combout\))) # (\ROM|memROM~7_combout\) ) ) ) # ( !\FFLED8|DOUT~q\ & ( \ROM|memROM~1_combout\ & 
-- ( (!\ROM|memROM~7_combout\ & (\habHEX0~1_combout\ & (!\ROM|memROM~2_combout\ & \CPU|BANCO_REG|registrador~28_combout\))) ) ) ) # ( \FFLED8|DOUT~q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000001000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ALT_INV_habHEX0~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~28_combout\,
	datae => \FFLED8|ALT_INV_DOUT~q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \FFLED8|DOUT~0_combout\);

-- Location: FF_X35_Y2_N13
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

-- Location: LABCELL_X35_Y2_N42
\FFLED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFLED9|DOUT~0_combout\ = ( \habSWconj~0_combout\ & ( \FFLED9|DOUT~q\ ) ) # ( !\habSWconj~0_combout\ & ( (!\ROM|memROM~2_combout\ & (((\FFLED9|DOUT~q\)))) # (\ROM|memROM~2_combout\ & ((!\habHEX0~1_combout\ & ((\FFLED9|DOUT~q\))) # (\habHEX0~1_combout\ & 
-- (\CPU|BANCO_REG|registrador~28_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ALT_INV_habHEX0~1_combout\,
	datac => \CPU|BANCO_REG|ALT_INV_registrador~28_combout\,
	datad => \FFLED9|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_habSWconj~0_combout\,
	combout => \FFLED9|DOUT~0_combout\);

-- Location: FF_X35_Y2_N43
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

-- Location: LABCELL_X35_Y2_N18
\habHEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX0~2_combout\ = ( \CPU|DECODER|Equal1~2_combout\ & ( !\ROM|memROM~3_combout\ & ( (\habHEX0~0_combout\ & \habKEY0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_habHEX0~0_combout\,
	datac => \ALT_INV_habKEY0~0_combout\,
	datae => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \habHEX0~2_combout\);

-- Location: FF_X45_Y2_N5
\HEX0_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~30_combout\,
	sload => VCC,
	ena => \habHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(2));

-- Location: FF_X45_Y2_N14
\HEX0_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~28_combout\,
	sload => VCC,
	ena => \habHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(0));

-- Location: MLABCELL_X45_Y2_N0
\HEX0_decoder|REG_4bits|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|REG_4bits|DOUT[1]~feeder_combout\ = ( \CPU|BANCO_REG|registrador~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~29_combout\,
	combout => \HEX0_decoder|REG_4bits|DOUT[1]~feeder_combout\);

-- Location: FF_X45_Y2_N2
\HEX0_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \HEX0_decoder|REG_4bits|DOUT[1]~feeder_combout\,
	ena => \habHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(1));

-- Location: FF_X45_Y2_N44
\HEX0_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~31_combout\,
	sload => VCC,
	ena => \habHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0_decoder|REG_4bits|DOUT\(3));

-- Location: MLABCELL_X45_Y2_N21
\HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(3) & ( (\HEX0_decoder|REG_4bits|DOUT\(0) & (!\HEX0_decoder|REG_4bits|DOUT\(2) $ (!\HEX0_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX0_decoder|REG_4bits|DOUT\(1) & (!\HEX0_decoder|REG_4bits|DOUT\(2) $ (!\HEX0_decoder|REG_4bits|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X45_Y2_N18
\HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(3) & ( (!\HEX0_decoder|REG_4bits|DOUT\(0) & (\HEX0_decoder|REG_4bits|DOUT\(2))) # (\HEX0_decoder|REG_4bits|DOUT\(0) & ((\HEX0_decoder|REG_4bits|DOUT\(1)))) ) ) # ( 
-- !\HEX0_decoder|REG_4bits|DOUT\(3) & ( (\HEX0_decoder|REG_4bits|DOUT\(2) & (!\HEX0_decoder|REG_4bits|DOUT\(0) $ (!\HEX0_decoder|REG_4bits|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y2_N24
\HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( \HEX0_decoder|REG_4bits|DOUT\(3) & ( \HEX0_decoder|REG_4bits|DOUT\(2) ) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(1) & ( \HEX0_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX0_decoder|REG_4bits|DOUT\(0) & \HEX0_decoder|REG_4bits|DOUT\(2)) ) ) ) # ( \HEX0_decoder|REG_4bits|DOUT\(1) & ( !\HEX0_decoder|REG_4bits|DOUT\(3) & ( (!\HEX0_decoder|REG_4bits|DOUT\(0) & !\HEX0_decoder|REG_4bits|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000001100000011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datae => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y2_N30
\HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(3) & ( (\HEX0_decoder|REG_4bits|DOUT\(1) & (!\HEX0_decoder|REG_4bits|DOUT\(2) $ (\HEX0_decoder|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX0_decoder|REG_4bits|DOUT\(2) & (\HEX0_decoder|REG_4bits|DOUT\(0) & !\HEX0_decoder|REG_4bits|DOUT\(1))) # (\HEX0_decoder|REG_4bits|DOUT\(2) & (!\HEX0_decoder|REG_4bits|DOUT\(0) $ (\HEX0_decoder|REG_4bits|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X45_Y2_N36
\HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(3) & ( (!\HEX0_decoder|REG_4bits|DOUT\(2) & (\HEX0_decoder|REG_4bits|DOUT\(0) & !\HEX0_decoder|REG_4bits|DOUT\(1))) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(3) & ( 
-- ((\HEX0_decoder|REG_4bits|DOUT\(2) & !\HEX0_decoder|REG_4bits|DOUT\(1))) # (\HEX0_decoder|REG_4bits|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011011100110111001100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datac => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X45_Y2_N39
\HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(3) & ( (\HEX0_decoder|REG_4bits|DOUT\(2) & (\HEX0_decoder|REG_4bits|DOUT\(0) & !\HEX0_decoder|REG_4bits|DOUT\(1))) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX0_decoder|REG_4bits|DOUT\(2) & ((\HEX0_decoder|REG_4bits|DOUT\(1)) # (\HEX0_decoder|REG_4bits|DOUT\(0)))) # (\HEX0_decoder|REG_4bits|DOUT\(2) & (\HEX0_decoder|REG_4bits|DOUT\(0) & \HEX0_decoder|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010111011001000101011101100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y2_N33
\HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX0_decoder|REG_4bits|DOUT\(3) & ( (\HEX0_decoder|REG_4bits|DOUT\(2) & (!\HEX0_decoder|REG_4bits|DOUT\(0) & !\HEX0_decoder|REG_4bits|DOUT\(1))) ) ) # ( !\HEX0_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX0_decoder|REG_4bits|DOUT\(2) & ((!\HEX0_decoder|REG_4bits|DOUT\(1)))) # (\HEX0_decoder|REG_4bits|DOUT\(2) & (\HEX0_decoder|REG_4bits|DOUT\(0) & \HEX0_decoder|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000010001101010100001000101000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datad => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX0_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX0_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y4_N12
\habHEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX2~0_combout\ = ( !\ROM|memROM~3_combout\ & ( (\CPU|DECODER|Equal1~2_combout\ & (\habKEY2~0_combout\ & \habHEX0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datac => \ALT_INV_habKEY2~0_combout\,
	datad => \ALT_INV_habHEX0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \habHEX2~0_combout\);

-- Location: FF_X35_Y2_N50
\HEX2_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~28_combout\,
	sload => VCC,
	ena => \habHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(0));

-- Location: FF_X35_Y2_N8
\HEX2_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~30_combout\,
	sload => VCC,
	ena => \habHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(2));

-- Location: FF_X35_Y2_N59
\HEX2_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~31_combout\,
	sload => VCC,
	ena => \habHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(3));

-- Location: FF_X35_Y2_N41
\HEX2_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~29_combout\,
	sload => VCC,
	ena => \habHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2_decoder|REG_4bits|DOUT\(1));

-- Location: LABCELL_X35_Y2_N27
\HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( (\HEX2_decoder|REG_4bits|DOUT\(0) & (!\HEX2_decoder|REG_4bits|DOUT\(2) & \HEX2_decoder|REG_4bits|DOUT\(3))) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(1) & ( 
-- (!\HEX2_decoder|REG_4bits|DOUT\(0) & (\HEX2_decoder|REG_4bits|DOUT\(2) & !\HEX2_decoder|REG_4bits|DOUT\(3))) # (\HEX2_decoder|REG_4bits|DOUT\(0) & (!\HEX2_decoder|REG_4bits|DOUT\(2) $ (\HEX2_decoder|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X35_Y2_N24
\HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(1) & ( (!\HEX2_decoder|REG_4bits|DOUT\(0) & (\HEX2_decoder|REG_4bits|DOUT\(2))) # (\HEX2_decoder|REG_4bits|DOUT\(0) & ((\HEX2_decoder|REG_4bits|DOUT\(3)))) ) ) # ( 
-- !\HEX2_decoder|REG_4bits|DOUT\(1) & ( (\HEX2_decoder|REG_4bits|DOUT\(2) & (!\HEX2_decoder|REG_4bits|DOUT\(0) $ (!\HEX2_decoder|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X35_Y2_N51
\HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( (\HEX2_decoder|REG_4bits|DOUT\(3) & ((!\HEX2_decoder|REG_4bits|DOUT\(0)) # (\HEX2_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(2) & ( 
-- (!\HEX2_decoder|REG_4bits|DOUT\(0) & (!\HEX2_decoder|REG_4bits|DOUT\(3) & \HEX2_decoder|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X35_Y2_N9
\HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( (!\HEX2_decoder|REG_4bits|DOUT\(0) & (!\HEX2_decoder|REG_4bits|DOUT\(3) & !\HEX2_decoder|REG_4bits|DOUT\(1))) # (\HEX2_decoder|REG_4bits|DOUT\(0) & 
-- ((\HEX2_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(2) & ( (!\HEX2_decoder|REG_4bits|DOUT\(0) & (\HEX2_decoder|REG_4bits|DOUT\(3) & \HEX2_decoder|REG_4bits|DOUT\(1))) # (\HEX2_decoder|REG_4bits|DOUT\(0) & 
-- (!\HEX2_decoder|REG_4bits|DOUT\(3) & !\HEX2_decoder|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X35_Y2_N33
\HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( !\HEX2_decoder|REG_4bits|DOUT\(3) & ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( (!\HEX2_decoder|REG_4bits|DOUT\(1)) # (\HEX2_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( \HEX2_decoder|REG_4bits|DOUT\(3) & ( 
-- !\HEX2_decoder|REG_4bits|DOUT\(2) & ( (!\HEX2_decoder|REG_4bits|DOUT\(1) & \HEX2_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(3) & ( !\HEX2_decoder|REG_4bits|DOUT\(2) & ( \HEX2_decoder|REG_4bits|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111000011110000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datae => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X35_Y2_N0
\HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(3) & ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( (!\HEX2_decoder|REG_4bits|DOUT\(1) & \HEX2_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(3) & ( 
-- \HEX2_decoder|REG_4bits|DOUT\(2) & ( (\HEX2_decoder|REG_4bits|DOUT\(1) & \HEX2_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(3) & ( !\HEX2_decoder|REG_4bits|DOUT\(2) & ( (\HEX2_decoder|REG_4bits|DOUT\(0)) # 
-- (\HEX2_decoder|REG_4bits|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000000000000000000000011000000110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datae => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X35_Y2_N54
\HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX2_decoder|REG_4bits|DOUT\(3) & ( \HEX2_decoder|REG_4bits|DOUT\(2) & ( (!\HEX2_decoder|REG_4bits|DOUT\(0) & !\HEX2_decoder|REG_4bits|DOUT\(1)) ) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(3) & ( 
-- \HEX2_decoder|REG_4bits|DOUT\(2) & ( (\HEX2_decoder|REG_4bits|DOUT\(0) & \HEX2_decoder|REG_4bits|DOUT\(1)) ) ) ) # ( !\HEX2_decoder|REG_4bits|DOUT\(3) & ( !\HEX2_decoder|REG_4bits|DOUT\(2) & ( !\HEX2_decoder|REG_4bits|DOUT\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000010001000100011000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datae => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX2_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX2_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y2_N27
\habHEX3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX3~0_combout\ = ( \ADDR_507~0_combout\ & ( !\ROM|memROM~3_combout\ & ( (\habHEX0~0_combout\ & \CPU|DECODER|Equal1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_habHEX0~0_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	datae => \ALT_INV_ADDR_507~0_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \habHEX3~0_combout\);

-- Location: FF_X45_Y2_N29
\HEX3_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~28_combout\,
	sload => VCC,
	ena => \habHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_decoder|REG_4bits|DOUT\(0));

-- Location: FF_X45_Y2_N11
\HEX3_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~29_combout\,
	sload => VCC,
	ena => \habHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_decoder|REG_4bits|DOUT\(1));

-- Location: FF_X45_Y2_N8
\HEX3_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~31_combout\,
	sload => VCC,
	ena => \habHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_decoder|REG_4bits|DOUT\(3));

-- Location: FF_X45_Y2_N50
\HEX3_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~30_combout\,
	sload => VCC,
	ena => \habHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX3_decoder|REG_4bits|DOUT\(2));

-- Location: MLABCELL_X45_Y2_N51
\HEX3_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX3_decoder|REG_4bits|DOUT\(2) & ( (!\HEX3_decoder|REG_4bits|DOUT\(1) & (!\HEX3_decoder|REG_4bits|DOUT\(0) $ (\HEX3_decoder|REG_4bits|DOUT\(3)))) ) ) # ( !\HEX3_decoder|REG_4bits|DOUT\(2) & ( 
-- (\HEX3_decoder|REG_4bits|DOUT\(0) & (!\HEX3_decoder|REG_4bits|DOUT\(1) $ (\HEX3_decoder|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000110000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	dataf => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X45_Y2_N54
\HEX3_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX3_decoder|REG_4bits|DOUT\(1) & ( (!\HEX3_decoder|REG_4bits|DOUT\(0) & ((\HEX3_decoder|REG_4bits|DOUT\(2)))) # (\HEX3_decoder|REG_4bits|DOUT\(0) & (\HEX3_decoder|REG_4bits|DOUT\(3))) ) ) # ( 
-- !\HEX3_decoder|REG_4bits|DOUT\(1) & ( (\HEX3_decoder|REG_4bits|DOUT\(2) & (!\HEX3_decoder|REG_4bits|DOUT\(0) $ (!\HEX3_decoder|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y2_N57
\HEX3_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX3_decoder|REG_4bits|DOUT\(2) & ( (\HEX3_decoder|REG_4bits|DOUT\(3) & ((!\HEX3_decoder|REG_4bits|DOUT\(0)) # (\HEX3_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX3_decoder|REG_4bits|DOUT\(2) & ( 
-- (!\HEX3_decoder|REG_4bits|DOUT\(0) & (!\HEX3_decoder|REG_4bits|DOUT\(3) & \HEX3_decoder|REG_4bits|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y2_N15
\HEX3_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX3_decoder|REG_4bits|DOUT\(0) & ( \HEX3_decoder|REG_4bits|DOUT\(3) & ( (\HEX3_decoder|REG_4bits|DOUT\(2) & \HEX3_decoder|REG_4bits|DOUT\(1)) ) ) ) # ( !\HEX3_decoder|REG_4bits|DOUT\(0) & ( 
-- \HEX3_decoder|REG_4bits|DOUT\(3) & ( (!\HEX3_decoder|REG_4bits|DOUT\(2) & \HEX3_decoder|REG_4bits|DOUT\(1)) ) ) ) # ( \HEX3_decoder|REG_4bits|DOUT\(0) & ( !\HEX3_decoder|REG_4bits|DOUT\(3) & ( !\HEX3_decoder|REG_4bits|DOUT\(2) $ 
-- (\HEX3_decoder|REG_4bits|DOUT\(1)) ) ) ) # ( !\HEX3_decoder|REG_4bits|DOUT\(0) & ( !\HEX3_decoder|REG_4bits|DOUT\(3) & ( (\HEX3_decoder|REG_4bits|DOUT\(2) & !\HEX3_decoder|REG_4bits|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101001011010010100001010000010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datae => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X45_Y2_N45
\HEX3_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX3_decoder|REG_4bits|DOUT\(0) & ( \HEX3_decoder|REG_4bits|DOUT\(3) & ( (!\HEX3_decoder|REG_4bits|DOUT\(2) & !\HEX3_decoder|REG_4bits|DOUT\(1)) ) ) ) # ( \HEX3_decoder|REG_4bits|DOUT\(0) & ( 
-- !\HEX3_decoder|REG_4bits|DOUT\(3) ) ) # ( !\HEX3_decoder|REG_4bits|DOUT\(0) & ( !\HEX3_decoder|REG_4bits|DOUT\(3) & ( (\HEX3_decoder|REG_4bits|DOUT\(2) & !\HEX3_decoder|REG_4bits|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111111111111111100000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datac => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datae => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X45_Y2_N9
\HEX3_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( !\HEX3_decoder|REG_4bits|DOUT\(1) & ( \HEX3_decoder|REG_4bits|DOUT\(3) & ( (\HEX3_decoder|REG_4bits|DOUT\(2) & \HEX3_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( \HEX3_decoder|REG_4bits|DOUT\(1) & ( 
-- !\HEX3_decoder|REG_4bits|DOUT\(3) & ( (!\HEX3_decoder|REG_4bits|DOUT\(2)) # (\HEX3_decoder|REG_4bits|DOUT\(0)) ) ) ) # ( !\HEX3_decoder|REG_4bits|DOUT\(1) & ( !\HEX3_decoder|REG_4bits|DOUT\(3) & ( (!\HEX3_decoder|REG_4bits|DOUT\(2) & 
-- \HEX3_decoder|REG_4bits|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010101010101111111100000000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datae => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	dataf => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y2_N48
\HEX3_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX3_decoder|REG_4bits|DOUT\(3) & ( (!\HEX3_decoder|REG_4bits|DOUT\(0) & (!\HEX3_decoder|REG_4bits|DOUT\(1) & \HEX3_decoder|REG_4bits|DOUT\(2))) ) ) # ( !\HEX3_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX3_decoder|REG_4bits|DOUT\(1) & ((!\HEX3_decoder|REG_4bits|DOUT\(2)))) # (\HEX3_decoder|REG_4bits|DOUT\(1) & (\HEX3_decoder|REG_4bits|DOUT\(0) & \HEX3_decoder|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000010001110011000001000100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datad => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(2),
	dataf => \HEX3_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX3_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y2_N36
\habHEX4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habHEX4~0_combout\ = ( \CPU|DECODER|Equal1~2_combout\ & ( \ROM|memROM~3_combout\ & ( (\habHEX0~0_combout\ & \habKEY0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_habHEX0~0_combout\,
	datac => \ALT_INV_habKEY0~0_combout\,
	datae => \CPU|DECODER|ALT_INV_Equal1~2_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \habHEX4~0_combout\);

-- Location: FF_X41_Y2_N38
\HEX4_decoder|REG_4bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~28_combout\,
	sload => VCC,
	ena => \habHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_decoder|REG_4bits|DOUT\(0));

-- Location: FF_X35_Y2_N4
\HEX4_decoder|REG_4bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~29_combout\,
	sload => VCC,
	ena => \habHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_decoder|REG_4bits|DOUT\(1));

-- Location: FF_X41_Y2_N56
\HEX4_decoder|REG_4bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~30_combout\,
	sload => VCC,
	ena => \habHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_decoder|REG_4bits|DOUT\(2));

-- Location: FF_X35_Y2_N31
\HEX4_decoder|REG_4bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|BANCO_REG|registrador~31_combout\,
	sload => VCC,
	ena => \habHEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX4_decoder|REG_4bits|DOUT\(3));

-- Location: LABCELL_X41_Y2_N48
\HEX4_decoder|DECODER_7seg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\ = ( \HEX4_decoder|REG_4bits|DOUT\(3) & ( (\HEX4_decoder|REG_4bits|DOUT\(0) & (!\HEX4_decoder|REG_4bits|DOUT\(1) $ (!\HEX4_decoder|REG_4bits|DOUT\(2)))) ) ) # ( !\HEX4_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX4_decoder|REG_4bits|DOUT\(1) & (!\HEX4_decoder|REG_4bits|DOUT\(0) $ (!\HEX4_decoder|REG_4bits|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000000101000001010001001000010010000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datae => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X41_Y2_N45
\HEX4_decoder|DECODER_7seg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\ = ( \HEX4_decoder|REG_4bits|DOUT\(0) & ( (!\HEX4_decoder|REG_4bits|DOUT\(1) & (\HEX4_decoder|REG_4bits|DOUT\(2) & !\HEX4_decoder|REG_4bits|DOUT\(3))) # (\HEX4_decoder|REG_4bits|DOUT\(1) & 
-- ((\HEX4_decoder|REG_4bits|DOUT\(3)))) ) ) # ( !\HEX4_decoder|REG_4bits|DOUT\(0) & ( (\HEX4_decoder|REG_4bits|DOUT\(2) & ((\HEX4_decoder|REG_4bits|DOUT\(3)) # (\HEX4_decoder|REG_4bits|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101010000110100001100010101000101010100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X41_Y2_N24
\HEX4_decoder|DECODER_7seg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\ = ( \HEX4_decoder|REG_4bits|DOUT\(3) & ( (\HEX4_decoder|REG_4bits|DOUT\(2) & ((!\HEX4_decoder|REG_4bits|DOUT\(0)) # (\HEX4_decoder|REG_4bits|DOUT\(1)))) ) ) # ( !\HEX4_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX4_decoder|REG_4bits|DOUT\(0) & (\HEX4_decoder|REG_4bits|DOUT\(1) & !\HEX4_decoder|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000010110000101100100000001000000000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datae => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X41_Y2_N33
\HEX4_decoder|DECODER_7seg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\ = ( \HEX4_decoder|REG_4bits|DOUT\(0) & ( (!\HEX4_decoder|REG_4bits|DOUT\(2) & (!\HEX4_decoder|REG_4bits|DOUT\(1) & !\HEX4_decoder|REG_4bits|DOUT\(3))) # (\HEX4_decoder|REG_4bits|DOUT\(2) & 
-- (\HEX4_decoder|REG_4bits|DOUT\(1))) ) ) # ( !\HEX4_decoder|REG_4bits|DOUT\(0) & ( (!\HEX4_decoder|REG_4bits|DOUT\(2) & (\HEX4_decoder|REG_4bits|DOUT\(1) & \HEX4_decoder|REG_4bits|DOUT\(3))) # (\HEX4_decoder|REG_4bits|DOUT\(2) & 
-- (!\HEX4_decoder|REG_4bits|DOUT\(1) & !\HEX4_decoder|REG_4bits|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010100100011001000101000010010000101001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datae => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X41_Y2_N0
\HEX4_decoder|DECODER_7seg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\ = ( \HEX4_decoder|REG_4bits|DOUT\(1) & ( (!\HEX4_decoder|REG_4bits|DOUT\(3) & \HEX4_decoder|REG_4bits|DOUT\(0)) ) ) # ( !\HEX4_decoder|REG_4bits|DOUT\(1) & ( (!\HEX4_decoder|REG_4bits|DOUT\(2) & 
-- ((\HEX4_decoder|REG_4bits|DOUT\(0)))) # (\HEX4_decoder|REG_4bits|DOUT\(2) & (!\HEX4_decoder|REG_4bits|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X41_Y2_N3
\HEX4_decoder|DECODER_7seg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\ = ( \HEX4_decoder|REG_4bits|DOUT\(1) & ( (!\HEX4_decoder|REG_4bits|DOUT\(3) & ((!\HEX4_decoder|REG_4bits|DOUT\(2)) # (\HEX4_decoder|REG_4bits|DOUT\(0)))) ) ) # ( !\HEX4_decoder|REG_4bits|DOUT\(1) & ( 
-- (\HEX4_decoder|REG_4bits|DOUT\(0) & (!\HEX4_decoder|REG_4bits|DOUT\(2) $ (\HEX4_decoder|REG_4bits|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100110001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	datad => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	dataf => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X41_Y2_N18
\HEX4_decoder|DECODER_7seg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\ = ( \HEX4_decoder|REG_4bits|DOUT\(3) & ( (!\HEX4_decoder|REG_4bits|DOUT\(0) & (!\HEX4_decoder|REG_4bits|DOUT\(1) & \HEX4_decoder|REG_4bits|DOUT\(2))) ) ) # ( !\HEX4_decoder|REG_4bits|DOUT\(3) & ( 
-- (!\HEX4_decoder|REG_4bits|DOUT\(1) & ((!\HEX4_decoder|REG_4bits|DOUT\(2)))) # (\HEX4_decoder|REG_4bits|DOUT\(1) & (\HEX4_decoder|REG_4bits|DOUT\(0) & \HEX4_decoder|REG_4bits|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111000001000010000000100011000001110000010000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(0),
	datab => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(1),
	datac => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(2),
	datae => \HEX4_decoder|REG_4bits|ALT_INV_DOUT\(3),
	combout => \HEX4_decoder|DECODER_7seg|rascSaida7seg[6]~6_combout\);

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

-- Location: MLABCELL_X45_Y7_N3
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


