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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/18/2022 14:48:56"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Washing_Machine IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END Washing_Machine;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Washing_Machine IS
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
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \washingMachineFSM|prog_num[3]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Inputsregister|p2Out~q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Inputsregister|p3Out~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Inputsregister|p1Out~q\ : std_logic;
SIGNAL \washingMachineFSM|s_nextState~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Inputsregister|start_stop_Out~feeder_combout\ : std_logic;
SIGNAL \Inputsregister|start_stop_Out~q\ : std_logic;
SIGNAL \washingMachineFSM|Selector9~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debounce_reset|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debounce_reset|s_dirtyIn~q\ : std_logic;
SIGNAL \debounce_reset|s_previousIn~q\ : std_logic;
SIGNAL \debounce_reset|Add0~0_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~11\ : std_logic;
SIGNAL \debounce_reset|Add0~12_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~13\ : std_logic;
SIGNAL \debounce_reset|Add0~14_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~15\ : std_logic;
SIGNAL \debounce_reset|Add0~16_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~17\ : std_logic;
SIGNAL \debounce_reset|Add0~18_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~19\ : std_logic;
SIGNAL \debounce_reset|Add0~20_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~21\ : std_logic;
SIGNAL \debounce_reset|Add0~22_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~23\ : std_logic;
SIGNAL \debounce_reset|Add0~24_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~25\ : std_logic;
SIGNAL \debounce_reset|Add0~26_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~27\ : std_logic;
SIGNAL \debounce_reset|Add0~28_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~29\ : std_logic;
SIGNAL \debounce_reset|Add0~30_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~31\ : std_logic;
SIGNAL \debounce_reset|Add0~32_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~33\ : std_logic;
SIGNAL \debounce_reset|Add0~34_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~35\ : std_logic;
SIGNAL \debounce_reset|Add0~36_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~37\ : std_logic;
SIGNAL \debounce_reset|Add0~38_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~39\ : std_logic;
SIGNAL \debounce_reset|Add0~40_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[6]~2_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~4_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~5_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~6_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~1_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~2_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~3_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~7_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~41\ : std_logic;
SIGNAL \debounce_reset|Add0~43\ : std_logic;
SIGNAL \debounce_reset|Add0~44_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[6]~3_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~42_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debounce_reset|LessThan0~0_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt[6]~0_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~1\ : std_logic;
SIGNAL \debounce_reset|Add0~2_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~3\ : std_logic;
SIGNAL \debounce_reset|Add0~4_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~5\ : std_logic;
SIGNAL \debounce_reset|Add0~6_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~7\ : std_logic;
SIGNAL \debounce_reset|Add0~8_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debounce_reset|Add0~9\ : std_logic;
SIGNAL \debounce_reset|Add0~10_combout\ : std_logic;
SIGNAL \debounce_reset|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debounce_reset|s_pulsedOut~q\ : std_logic;
SIGNAL \washingMachineFSM|Selector5~0_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~23_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.FMeter_agua1~q\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~28_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.Aux2~q\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~25_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.FEnxaguar1~q\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~29_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.Aux3~q\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~20_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.FRemocao_agua1~q\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~30_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.Aux4~q\ : std_logic;
SIGNAL \washingMachineFSM|Selector9~2_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~24_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.FMeter_agua2~q\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~33_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.Aux5~q\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~26_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.FEnxaguar2~q\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~34_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.Aux6~q\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~21_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.FRemocao_agua2~q\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~35_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.Aux7~q\ : std_logic;
SIGNAL \washingMachineFSM|WideOr0~3_combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr0~4_combout\ : std_logic;
SIGNAL \washingMachineFSM|Selector7~0_combout\ : std_logic;
SIGNAL \washingMachineFSM|Selector7~1_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~27_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.FSpin~q\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~36_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.Aux8~q\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~22_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.FRemocao_agua3~q\ : std_logic;
SIGNAL \washingMachineFSM|WideOr0~2_combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr0~5_combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr0~11_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~32_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.Aux9~q\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~37_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.FEspera~q\ : std_logic;
SIGNAL \washingMachineFSM|WideOr0~1_combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr0~0_combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr0~12_combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr0~6_combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr0~8_combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr0~9_combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr0~7_combout\ : std_logic;
SIGNAL \washingMachineFSM|sync_proc~18_combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr0~10_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_stateChanged~0_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_stateChanged~q\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[0]~26_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[20]~28_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[0]~27\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[1]~29_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[1]~30\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[2]~31_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[2]~32\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[3]~33_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[3]~34\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[4]~35_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[4]~36\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[5]~37_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[5]~38\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[6]~39_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[6]~40\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[7]~41_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[7]~42\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[8]~43_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[8]~44\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[9]~45_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[9]~46\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[10]~47_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[10]~48\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[11]~49_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[11]~50\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[12]~51_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[12]~52\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[13]~53_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[13]~54\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[14]~55_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[14]~56\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[15]~57_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[15]~58\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[16]~59_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[16]~60\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[17]~61_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[17]~62\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[18]~63_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[18]~64\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[19]~65_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[19]~66\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[20]~67_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[20]~68\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[21]~69_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[21]~70\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[22]~71_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[22]~72\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[23]~73_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[23]~74\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[24]~75_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[24]~76\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt[25]~77_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|Equal0~7_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|Equal0~5_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|Equal0~6_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|Equal0~1_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|Equal0~3_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|Equal0~0_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|Equal0~2_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|Equal0~4_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|Equal0~8_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|pulse~0_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|pulse~q\ : std_logic;
SIGNAL \TimerAuxfsm|s_cntZero~0_combout\ : std_logic;
SIGNAL \TimerAuxfsm|s_counter[2]~0_combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr1~0_combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr9~combout\ : std_logic;
SIGNAL \TimerAuxfsm|s_counter~10_combout\ : std_logic;
SIGNAL \TimerAuxfsm|s_counter~11_combout\ : std_logic;
SIGNAL \TimerAuxfsm|Add0~1_combout\ : std_logic;
SIGNAL \TimerAuxfsm|Add0~0_combout\ : std_logic;
SIGNAL \TimerAuxfsm|Add0~3_combout\ : std_logic;
SIGNAL \TimerAuxfsm|Add0~4_combout\ : std_logic;
SIGNAL \TimerAuxfsm|s_counter[1]~8_combout\ : std_logic;
SIGNAL \TimerAuxfsm|s_counter[1]~9_combout\ : std_logic;
SIGNAL \TimerAuxfsm|Add0~2_combout\ : std_logic;
SIGNAL \TimerAuxfsm|s_counter[2]~6_combout\ : std_logic;
SIGNAL \TimerAuxfsm|s_counter[2]~7_combout\ : std_logic;
SIGNAL \TimerAuxfsm|s_counter[3]~4_combout\ : std_logic;
SIGNAL \TimerAuxfsm|s_counter[3]~3_combout\ : std_logic;
SIGNAL \TimerAuxfsm|s_counter[3]~2_combout\ : std_logic;
SIGNAL \TimerAuxfsm|s_counter[3]~1_combout\ : std_logic;
SIGNAL \TimerAuxfsm|s_counter[3]~5_combout\ : std_logic;
SIGNAL \TimerAuxfsm|Equal0~0_combout\ : std_logic;
SIGNAL \TimerAuxfsm|s_cntZero~1_combout\ : std_logic;
SIGNAL \TimerAuxfsm|s_cntZero~q\ : std_logic;
SIGNAL \washingMachineFSM|Selector4~0_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState~31_combout\ : std_logic;
SIGNAL \washingMachineFSM|s_currentState.Finit~q\ : std_logic;
SIGNAL \washingMachineFSM|prog_num[3]~0_combout\ : std_logic;
SIGNAL \washingMachineFSM|prog_num[3]~0clkctrl_outclk\ : std_logic;
SIGNAL \washingMachineFSM|Selector9~0_combout\ : std_logic;
SIGNAL \displayProgHex0|Mux6~0_combout\ : std_logic;
SIGNAL \displayProgHex0|Mux4~0_combout\ : std_logic;
SIGNAL \TimeSelector|Equal1~0_combout\ : std_logic;
SIGNAL \displayProgHex0|Mux1~0_combout\ : std_logic;
SIGNAL \displayProgHex0|Mux0~0_combout\ : std_logic;
SIGNAL \displayProgHex2|Mux6~0_combout\ : std_logic;
SIGNAL \displayProgHex2|decout_n[0]~0_combout\ : std_logic;
SIGNAL \displayProgHex2|Mux5~0_combout\ : std_logic;
SIGNAL \displayProgHex2|decout_n[1]~1_combout\ : std_logic;
SIGNAL \displayProgHex2|Mux4~0_combout\ : std_logic;
SIGNAL \displayProgHex2|decout_n[2]~2_combout\ : std_logic;
SIGNAL \displayProgHex2|Mux3~0_combout\ : std_logic;
SIGNAL \displayProgHex2|decout_n[3]~3_combout\ : std_logic;
SIGNAL \displayProgHex2|Mux2~0_combout\ : std_logic;
SIGNAL \displayProgHex2|decout_n[4]~4_combout\ : std_logic;
SIGNAL \displayProgHex2|Mux1~0_combout\ : std_logic;
SIGNAL \displayProgHex2|decout_n[5]~5_combout\ : std_logic;
SIGNAL \displayProgHex2|Mux0~0_combout\ : std_logic;
SIGNAL \displayProgHex2|decout_n[6]~6_combout\ : std_logic;
SIGNAL \displayProgHex6|decout_n[1]~0_combout\ : std_logic;
SIGNAL \displayProgHex6|decout_n[1]~1_combout\ : std_logic;
SIGNAL \TimeSelector|Equal0~0_combout\ : std_logic;
SIGNAL \displayProgHex6|Mux5~0_combout\ : std_logic;
SIGNAL \TimeSelector|Equal0~1_combout\ : std_logic;
SIGNAL \TimeSelector|Equal1~1_combout\ : std_logic;
SIGNAL \washingMachineFSM|water_pump~combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr2~1_combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr2~0_combout\ : std_logic;
SIGNAL \washingMachineFSM|WideOr2~2_combout\ : std_logic;
SIGNAL \pulse_gen_forTimer|s_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \TimerAuxfsm|s_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debounce_reset|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \washingMachineFSM|prog_num\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \washingMachineFSM|ALT_INV_WideOr2~2_combout\ : std_logic;
SIGNAL \TimerAuxfsm|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \washingMachineFSM|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \TimeSelector|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \TimeSelector|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \displayProgHex6|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \TimeSelector|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \displayProgHex6|ALT_INV_decout_n[1]~0_combout\ : std_logic;
SIGNAL \displayProgHex0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \TimeSelector|ALT_INV_Equal1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX4 <= ww_HEX4;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\washingMachineFSM|prog_num[3]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \washingMachineFSM|prog_num[3]~0_combout\);
\washingMachineFSM|ALT_INV_WideOr2~2_combout\ <= NOT \washingMachineFSM|WideOr2~2_combout\;
\TimerAuxfsm|ALT_INV_Add0~0_combout\ <= NOT \TimerAuxfsm|Add0~0_combout\;
\washingMachineFSM|ALT_INV_WideOr1~0_combout\ <= NOT \washingMachineFSM|WideOr1~0_combout\;
\TimeSelector|ALT_INV_Equal1~1_combout\ <= NOT \TimeSelector|Equal1~1_combout\;
\TimeSelector|ALT_INV_Equal0~1_combout\ <= NOT \TimeSelector|Equal0~1_combout\;
\displayProgHex6|ALT_INV_Mux5~0_combout\ <= NOT \displayProgHex6|Mux5~0_combout\;
\TimeSelector|ALT_INV_Equal0~0_combout\ <= NOT \TimeSelector|Equal0~0_combout\;
\displayProgHex6|ALT_INV_decout_n[1]~0_combout\ <= NOT \displayProgHex6|decout_n[1]~0_combout\;
\displayProgHex0|ALT_INV_Mux0~0_combout\ <= NOT \displayProgHex0|Mux0~0_combout\;
\TimeSelector|ALT_INV_Equal1~0_combout\ <= NOT \TimeSelector|Equal1~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \washingMachineFSM|prog_num\(2),
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeSelector|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex2|decout_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex2|decout_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex2|decout_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex2|decout_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex2|decout_n[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex2|decout_n[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex2|decout_n[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inputsregister|start_stop_Out~q\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inputsregister|start_stop_Out~q\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex6|ALT_INV_decout_n[1]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex6|decout_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeSelector|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex6|ALT_INV_decout_n[1]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex6|ALT_INV_decout_n[1]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeSelector|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex6|ALT_INV_decout_n[1]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex6|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex6|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeSelector|ALT_INV_Equal0~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex6|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeSelector|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displayProgHex6|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \washingMachineFSM|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \washingMachineFSM|water_pump~combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimerAuxfsm|ALT_INV_Add0~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \washingMachineFSM|s_currentState.FSpin~q\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \washingMachineFSM|ALT_INV_WideOr2~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X97_Y38_N5
\Inputsregister|p2Out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inputsregister|p2Out~q\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X97_Y38_N31
\Inputsregister|p3Out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inputsregister|p3Out~q\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X97_Y38_N23
\Inputsregister|p1Out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inputsregister|p1Out~q\);

-- Location: LCCOMB_X97_Y38_N18
\washingMachineFSM|s_nextState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_nextState~0_combout\ = (\Inputsregister|p2Out~q\) # ((\Inputsregister|p3Out~q\) # (\Inputsregister|p1Out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inputsregister|p2Out~q\,
	datab => \Inputsregister|p3Out~q\,
	datad => \Inputsregister|p1Out~q\,
	combout => \washingMachineFSM|s_nextState~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X98_Y38_N22
\Inputsregister|start_stop_Out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inputsregister|start_stop_Out~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \Inputsregister|start_stop_Out~feeder_combout\);

-- Location: FF_X98_Y38_N23
\Inputsregister|start_stop_Out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Inputsregister|start_stop_Out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inputsregister|start_stop_Out~q\);

-- Location: LCCOMB_X98_Y38_N24
\washingMachineFSM|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|Selector9~1_combout\ = (!\Inputsregister|p1Out~q\ & (\Inputsregister|p2Out~q\ & (\Inputsregister|start_stop_Out~q\ & !\washingMachineFSM|s_currentState.Finit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inputsregister|p1Out~q\,
	datab => \Inputsregister|p2Out~q\,
	datac => \Inputsregister|start_stop_Out~q\,
	datad => \washingMachineFSM|s_currentState.Finit~q\,
	combout => \washingMachineFSM|Selector9~1_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X114_Y40_N20
\debounce_reset|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \debounce_reset|s_dirtyIn~0_combout\);

-- Location: FF_X110_Y43_N31
\debounce_reset|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounce_reset|s_dirtyIn~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_dirtyIn~q\);

-- Location: FF_X110_Y43_N27
\debounce_reset|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounce_reset|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_previousIn~q\);

-- Location: LCCOMB_X111_Y44_N10
\debounce_reset|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~0_combout\ = \debounce_reset|s_debounceCnt\(0) $ (VCC)
-- \debounce_reset|Add0~1\ = CARRY(\debounce_reset|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(0),
	datad => VCC,
	combout => \debounce_reset|Add0~0_combout\,
	cout => \debounce_reset|Add0~1\);

-- Location: LCCOMB_X112_Y43_N22
\debounce_reset|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[22]~25_combout\ = (\debounce_reset|s_previousIn~q\ & (\debounce_reset|s_dirtyIn~q\)) # (!\debounce_reset|s_previousIn~q\ & ((\debounce_reset|s_debounceCnt[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|s_dirtyIn~q\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X111_Y44_N8
\debounce_reset|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~5_combout\ = (!\debounce_reset|s_debounceCnt\(4) & (!\debounce_reset|s_debounceCnt\(1) & (!\debounce_reset|s_debounceCnt\(3) & !\debounce_reset|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(4),
	datab => \debounce_reset|s_debounceCnt\(1),
	datac => \debounce_reset|s_debounceCnt\(3),
	datad => \debounce_reset|s_debounceCnt\(2),
	combout => \debounce_reset|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X111_Y44_N20
\debounce_reset|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~10_combout\ = (\debounce_reset|s_debounceCnt\(5) & (\debounce_reset|Add0~9\ & VCC)) # (!\debounce_reset|s_debounceCnt\(5) & (!\debounce_reset|Add0~9\))
-- \debounce_reset|Add0~11\ = CARRY((!\debounce_reset|s_debounceCnt\(5) & !\debounce_reset|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(5),
	datad => VCC,
	cin => \debounce_reset|Add0~9\,
	combout => \debounce_reset|Add0~10_combout\,
	cout => \debounce_reset|Add0~11\);

-- Location: LCCOMB_X111_Y44_N22
\debounce_reset|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~12_combout\ = (\debounce_reset|s_debounceCnt\(6) & ((GND) # (!\debounce_reset|Add0~11\))) # (!\debounce_reset|s_debounceCnt\(6) & (\debounce_reset|Add0~11\ $ (GND)))
-- \debounce_reset|Add0~13\ = CARRY((\debounce_reset|s_debounceCnt\(6)) # (!\debounce_reset|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(6),
	datad => VCC,
	cin => \debounce_reset|Add0~11\,
	combout => \debounce_reset|Add0~12_combout\,
	cout => \debounce_reset|Add0~13\);

-- Location: LCCOMB_X112_Y43_N20
\debounce_reset|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~1_combout\ = (\debounce_reset|s_debounceCnt[6]~0_combout\ & ((\debounce_reset|Add0~12_combout\) # (!\debounce_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt[6]~0_combout\,
	datab => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|Add0~12_combout\,
	combout => \debounce_reset|s_debounceCnt~1_combout\);

-- Location: FF_X112_Y43_N21
\debounce_reset|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~1_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(6));

-- Location: LCCOMB_X111_Y44_N24
\debounce_reset|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~14_combout\ = (\debounce_reset|s_debounceCnt\(7) & (\debounce_reset|Add0~13\ & VCC)) # (!\debounce_reset|s_debounceCnt\(7) & (!\debounce_reset|Add0~13\))
-- \debounce_reset|Add0~15\ = CARRY((!\debounce_reset|s_debounceCnt\(7) & !\debounce_reset|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(7),
	datad => VCC,
	cin => \debounce_reset|Add0~13\,
	combout => \debounce_reset|Add0~14_combout\,
	cout => \debounce_reset|Add0~15\);

-- Location: LCCOMB_X110_Y43_N20
\debounce_reset|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~11_combout\ = (\debounce_reset|Add0~14_combout\ & (\debounce_reset|s_previousIn~q\ & \debounce_reset|s_debounceCnt[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|Add0~14_combout\,
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~11_combout\);

-- Location: FF_X110_Y43_N21
\debounce_reset|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~11_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(7));

-- Location: LCCOMB_X111_Y44_N26
\debounce_reset|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~16_combout\ = (\debounce_reset|s_debounceCnt\(8) & ((GND) # (!\debounce_reset|Add0~15\))) # (!\debounce_reset|s_debounceCnt\(8) & (\debounce_reset|Add0~15\ $ (GND)))
-- \debounce_reset|Add0~17\ = CARRY((\debounce_reset|s_debounceCnt\(8)) # (!\debounce_reset|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(8),
	datad => VCC,
	cin => \debounce_reset|Add0~15\,
	combout => \debounce_reset|Add0~16_combout\,
	cout => \debounce_reset|Add0~17\);

-- Location: LCCOMB_X110_Y43_N2
\debounce_reset|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~12_combout\ = (\debounce_reset|s_debounceCnt[6]~0_combout\ & ((\debounce_reset|Add0~16_combout\) # (!\debounce_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_previousIn~q\,
	datab => \debounce_reset|Add0~16_combout\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~12_combout\);

-- Location: FF_X110_Y43_N3
\debounce_reset|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~12_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(8));

-- Location: LCCOMB_X111_Y44_N28
\debounce_reset|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~18_combout\ = (\debounce_reset|s_debounceCnt\(9) & (\debounce_reset|Add0~17\ & VCC)) # (!\debounce_reset|s_debounceCnt\(9) & (!\debounce_reset|Add0~17\))
-- \debounce_reset|Add0~19\ = CARRY((!\debounce_reset|s_debounceCnt\(9) & !\debounce_reset|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(9),
	datad => VCC,
	cin => \debounce_reset|Add0~17\,
	combout => \debounce_reset|Add0~18_combout\,
	cout => \debounce_reset|Add0~19\);

-- Location: LCCOMB_X110_Y43_N0
\debounce_reset|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~13_combout\ = (\debounce_reset|s_debounceCnt[6]~0_combout\ & ((\debounce_reset|Add0~18_combout\) # (!\debounce_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|s_debounceCnt[6]~0_combout\,
	datad => \debounce_reset|Add0~18_combout\,
	combout => \debounce_reset|s_debounceCnt~13_combout\);

-- Location: FF_X110_Y43_N1
\debounce_reset|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~13_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(9));

-- Location: LCCOMB_X111_Y44_N30
\debounce_reset|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~20_combout\ = (\debounce_reset|s_debounceCnt\(10) & ((GND) # (!\debounce_reset|Add0~19\))) # (!\debounce_reset|s_debounceCnt\(10) & (\debounce_reset|Add0~19\ $ (GND)))
-- \debounce_reset|Add0~21\ = CARRY((\debounce_reset|s_debounceCnt\(10)) # (!\debounce_reset|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(10),
	datad => VCC,
	cin => \debounce_reset|Add0~19\,
	combout => \debounce_reset|Add0~20_combout\,
	cout => \debounce_reset|Add0~21\);

-- Location: LCCOMB_X110_Y43_N12
\debounce_reset|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~14_combout\ = (\debounce_reset|Add0~20_combout\ & (\debounce_reset|s_previousIn~q\ & \debounce_reset|s_debounceCnt[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|Add0~20_combout\,
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~14_combout\);

-- Location: FF_X110_Y43_N13
\debounce_reset|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~14_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(10));

-- Location: LCCOMB_X111_Y43_N0
\debounce_reset|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~22_combout\ = (\debounce_reset|s_debounceCnt\(11) & (\debounce_reset|Add0~21\ & VCC)) # (!\debounce_reset|s_debounceCnt\(11) & (!\debounce_reset|Add0~21\))
-- \debounce_reset|Add0~23\ = CARRY((!\debounce_reset|s_debounceCnt\(11) & !\debounce_reset|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(11),
	datad => VCC,
	cin => \debounce_reset|Add0~21\,
	combout => \debounce_reset|Add0~22_combout\,
	cout => \debounce_reset|Add0~23\);

-- Location: LCCOMB_X110_Y43_N6
\debounce_reset|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~15_combout\ = (\debounce_reset|s_debounceCnt[6]~0_combout\ & ((\debounce_reset|Add0~22_combout\) # (!\debounce_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|Add0~22_combout\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~15_combout\);

-- Location: FF_X110_Y43_N7
\debounce_reset|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~15_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(11));

-- Location: LCCOMB_X111_Y43_N2
\debounce_reset|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~24_combout\ = (\debounce_reset|s_debounceCnt\(12) & ((GND) # (!\debounce_reset|Add0~23\))) # (!\debounce_reset|s_debounceCnt\(12) & (\debounce_reset|Add0~23\ $ (GND)))
-- \debounce_reset|Add0~25\ = CARRY((\debounce_reset|s_debounceCnt\(12)) # (!\debounce_reset|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(12),
	datad => VCC,
	cin => \debounce_reset|Add0~23\,
	combout => \debounce_reset|Add0~24_combout\,
	cout => \debounce_reset|Add0~25\);

-- Location: LCCOMB_X110_Y43_N14
\debounce_reset|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~7_combout\ = (\debounce_reset|Add0~24_combout\ & (\debounce_reset|s_previousIn~q\ & \debounce_reset|s_debounceCnt[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|Add0~24_combout\,
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~7_combout\);

-- Location: FF_X110_Y43_N15
\debounce_reset|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~7_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(12));

-- Location: LCCOMB_X111_Y43_N4
\debounce_reset|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~26_combout\ = (\debounce_reset|s_debounceCnt\(13) & (\debounce_reset|Add0~25\ & VCC)) # (!\debounce_reset|s_debounceCnt\(13) & (!\debounce_reset|Add0~25\))
-- \debounce_reset|Add0~27\ = CARRY((!\debounce_reset|s_debounceCnt\(13) & !\debounce_reset|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(13),
	datad => VCC,
	cin => \debounce_reset|Add0~25\,
	combout => \debounce_reset|Add0~26_combout\,
	cout => \debounce_reset|Add0~27\);

-- Location: LCCOMB_X112_Y43_N30
\debounce_reset|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~8_combout\ = (\debounce_reset|s_previousIn~q\ & (\debounce_reset|Add0~26_combout\ & \debounce_reset|s_debounceCnt[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|Add0~26_combout\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~8_combout\);

-- Location: FF_X112_Y43_N31
\debounce_reset|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~8_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(13));

-- Location: LCCOMB_X111_Y43_N6
\debounce_reset|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~28_combout\ = (\debounce_reset|s_debounceCnt\(14) & ((GND) # (!\debounce_reset|Add0~27\))) # (!\debounce_reset|s_debounceCnt\(14) & (\debounce_reset|Add0~27\ $ (GND)))
-- \debounce_reset|Add0~29\ = CARRY((\debounce_reset|s_debounceCnt\(14)) # (!\debounce_reset|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(14),
	datad => VCC,
	cin => \debounce_reset|Add0~27\,
	combout => \debounce_reset|Add0~28_combout\,
	cout => \debounce_reset|Add0~29\);

-- Location: LCCOMB_X110_Y43_N4
\debounce_reset|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~16_combout\ = (\debounce_reset|s_debounceCnt[6]~0_combout\ & ((\debounce_reset|Add0~28_combout\) # (!\debounce_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|s_debounceCnt[6]~0_combout\,
	datad => \debounce_reset|Add0~28_combout\,
	combout => \debounce_reset|s_debounceCnt~16_combout\);

-- Location: FF_X110_Y43_N5
\debounce_reset|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~16_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(14));

-- Location: LCCOMB_X111_Y43_N8
\debounce_reset|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~30_combout\ = (\debounce_reset|s_debounceCnt\(15) & (\debounce_reset|Add0~29\ & VCC)) # (!\debounce_reset|s_debounceCnt\(15) & (!\debounce_reset|Add0~29\))
-- \debounce_reset|Add0~31\ = CARRY((!\debounce_reset|s_debounceCnt\(15) & !\debounce_reset|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(15),
	datad => VCC,
	cin => \debounce_reset|Add0~29\,
	combout => \debounce_reset|Add0~30_combout\,
	cout => \debounce_reset|Add0~31\);

-- Location: LCCOMB_X111_Y43_N28
\debounce_reset|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~4_combout\ = (\debounce_reset|s_previousIn~q\ & (\debounce_reset|Add0~30_combout\ & \debounce_reset|s_debounceCnt[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|Add0~30_combout\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~4_combout\);

-- Location: FF_X111_Y43_N29
\debounce_reset|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~4_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(15));

-- Location: LCCOMB_X111_Y43_N10
\debounce_reset|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~32_combout\ = (\debounce_reset|s_debounceCnt\(16) & ((GND) # (!\debounce_reset|Add0~31\))) # (!\debounce_reset|s_debounceCnt\(16) & (\debounce_reset|Add0~31\ $ (GND)))
-- \debounce_reset|Add0~33\ = CARRY((\debounce_reset|s_debounceCnt\(16)) # (!\debounce_reset|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(16),
	datad => VCC,
	cin => \debounce_reset|Add0~31\,
	combout => \debounce_reset|Add0~32_combout\,
	cout => \debounce_reset|Add0~33\);

-- Location: LCCOMB_X110_Y43_N24
\debounce_reset|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~5_combout\ = (\debounce_reset|Add0~32_combout\ & (\debounce_reset|s_previousIn~q\ & \debounce_reset|s_debounceCnt[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|Add0~32_combout\,
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~5_combout\);

-- Location: FF_X110_Y43_N25
\debounce_reset|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~5_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(16));

-- Location: LCCOMB_X111_Y43_N12
\debounce_reset|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~34_combout\ = (\debounce_reset|s_debounceCnt\(17) & (\debounce_reset|Add0~33\ & VCC)) # (!\debounce_reset|s_debounceCnt\(17) & (!\debounce_reset|Add0~33\))
-- \debounce_reset|Add0~35\ = CARRY((!\debounce_reset|s_debounceCnt\(17) & !\debounce_reset|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(17),
	datad => VCC,
	cin => \debounce_reset|Add0~33\,
	combout => \debounce_reset|Add0~34_combout\,
	cout => \debounce_reset|Add0~35\);

-- Location: LCCOMB_X111_Y43_N30
\debounce_reset|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~6_combout\ = (\debounce_reset|s_debounceCnt[6]~0_combout\ & (\debounce_reset|s_previousIn~q\ & \debounce_reset|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt[6]~0_combout\,
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|Add0~34_combout\,
	combout => \debounce_reset|s_debounceCnt~6_combout\);

-- Location: FF_X111_Y43_N31
\debounce_reset|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~6_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(17));

-- Location: LCCOMB_X111_Y43_N14
\debounce_reset|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~36_combout\ = (\debounce_reset|s_debounceCnt\(18) & ((GND) # (!\debounce_reset|Add0~35\))) # (!\debounce_reset|s_debounceCnt\(18) & (\debounce_reset|Add0~35\ $ (GND)))
-- \debounce_reset|Add0~37\ = CARRY((\debounce_reset|s_debounceCnt\(18)) # (!\debounce_reset|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(18),
	datad => VCC,
	cin => \debounce_reset|Add0~35\,
	combout => \debounce_reset|Add0~36_combout\,
	cout => \debounce_reset|Add0~37\);

-- Location: LCCOMB_X112_Y43_N16
\debounce_reset|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[18]~17_combout\ = (\debounce_reset|s_debounceCnt[6]~0_combout\ & (\debounce_reset|s_debounceCnt[6]~3_combout\ & ((\debounce_reset|Add0~36_combout\) # (!\debounce_reset|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt[6]~0_combout\,
	datab => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|s_debounceCnt[6]~3_combout\,
	datad => \debounce_reset|Add0~36_combout\,
	combout => \debounce_reset|s_debounceCnt[18]~17_combout\);

-- Location: FF_X112_Y43_N17
\debounce_reset|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(18));

-- Location: LCCOMB_X111_Y43_N16
\debounce_reset|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~38_combout\ = (\debounce_reset|s_debounceCnt\(19) & (\debounce_reset|Add0~37\ & VCC)) # (!\debounce_reset|s_debounceCnt\(19) & (!\debounce_reset|Add0~37\))
-- \debounce_reset|Add0~39\ = CARRY((!\debounce_reset|s_debounceCnt\(19) & !\debounce_reset|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(19),
	datad => VCC,
	cin => \debounce_reset|Add0~37\,
	combout => \debounce_reset|Add0~38_combout\,
	cout => \debounce_reset|Add0~39\);

-- Location: LCCOMB_X112_Y43_N18
\debounce_reset|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[19]~18_combout\ = (\debounce_reset|s_debounceCnt[6]~3_combout\ & (\debounce_reset|s_debounceCnt[6]~0_combout\ & ((\debounce_reset|Add0~38_combout\) # (!\debounce_reset|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt[6]~3_combout\,
	datab => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|Add0~38_combout\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt[19]~18_combout\);

-- Location: FF_X112_Y43_N19
\debounce_reset|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(19));

-- Location: LCCOMB_X110_Y43_N22
\debounce_reset|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~3_combout\ = (!\debounce_reset|s_debounceCnt\(11) & (!\debounce_reset|s_debounceCnt\(14) & (!\debounce_reset|s_debounceCnt\(19) & !\debounce_reset|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(11),
	datab => \debounce_reset|s_debounceCnt\(14),
	datac => \debounce_reset|s_debounceCnt\(19),
	datad => \debounce_reset|s_debounceCnt\(18),
	combout => \debounce_reset|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X110_Y43_N18
\debounce_reset|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~2_combout\ = (!\debounce_reset|s_debounceCnt\(10) & (!\debounce_reset|s_debounceCnt\(8) & (!\debounce_reset|s_debounceCnt\(9) & !\debounce_reset|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(10),
	datab => \debounce_reset|s_debounceCnt\(8),
	datac => \debounce_reset|s_debounceCnt\(9),
	datad => \debounce_reset|s_debounceCnt\(7),
	combout => \debounce_reset|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X110_Y43_N8
\debounce_reset|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~0_combout\ = (!\debounce_reset|s_debounceCnt\(17) & (!\debounce_reset|s_debounceCnt\(16) & (!\debounce_reset|s_debounceCnt\(6) & !\debounce_reset|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(17),
	datab => \debounce_reset|s_debounceCnt\(16),
	datac => \debounce_reset|s_debounceCnt\(6),
	datad => \debounce_reset|s_debounceCnt\(15),
	combout => \debounce_reset|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X111_Y43_N18
\debounce_reset|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~40_combout\ = (\debounce_reset|s_debounceCnt\(20) & ((GND) # (!\debounce_reset|Add0~39\))) # (!\debounce_reset|s_debounceCnt\(20) & (\debounce_reset|Add0~39\ $ (GND)))
-- \debounce_reset|Add0~41\ = CARRY((\debounce_reset|s_debounceCnt\(20)) # (!\debounce_reset|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(20),
	datad => VCC,
	cin => \debounce_reset|Add0~39\,
	combout => \debounce_reset|Add0~40_combout\,
	cout => \debounce_reset|Add0~41\);

-- Location: LCCOMB_X111_Y43_N24
\debounce_reset|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[20]~9_combout\ = (\debounce_reset|s_debounceCnt[6]~0_combout\ & (\debounce_reset|s_debounceCnt[6]~3_combout\ & (\debounce_reset|s_previousIn~q\ & \debounce_reset|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt[6]~0_combout\,
	datab => \debounce_reset|s_debounceCnt[6]~3_combout\,
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|Add0~40_combout\,
	combout => \debounce_reset|s_debounceCnt[20]~9_combout\);

-- Location: FF_X111_Y43_N25
\debounce_reset|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(20));

-- Location: LCCOMB_X110_Y43_N28
\debounce_reset|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~1_combout\ = (!\debounce_reset|s_debounceCnt\(12) & (!\debounce_reset|s_debounceCnt\(21) & (!\debounce_reset|s_debounceCnt\(20) & !\debounce_reset|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(12),
	datab => \debounce_reset|s_debounceCnt\(21),
	datac => \debounce_reset|s_debounceCnt\(20),
	datad => \debounce_reset|s_debounceCnt\(13),
	combout => \debounce_reset|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X110_Y43_N10
\debounce_reset|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~4_combout\ = (\debounce_reset|s_pulsedOut~3_combout\ & (\debounce_reset|s_pulsedOut~2_combout\ & (\debounce_reset|s_pulsedOut~0_combout\ & \debounce_reset|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_pulsedOut~3_combout\,
	datab => \debounce_reset|s_pulsedOut~2_combout\,
	datac => \debounce_reset|s_pulsedOut~0_combout\,
	datad => \debounce_reset|s_pulsedOut~1_combout\,
	combout => \debounce_reset|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X110_Y43_N16
\debounce_reset|s_debounceCnt[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[6]~2_combout\ = (\debounce_reset|s_debounceCnt\(5)) # ((\debounce_reset|s_debounceCnt\(0)) # ((!\debounce_reset|s_pulsedOut~4_combout\) # (!\debounce_reset|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(5),
	datab => \debounce_reset|s_debounceCnt\(0),
	datac => \debounce_reset|s_pulsedOut~5_combout\,
	datad => \debounce_reset|s_pulsedOut~4_combout\,
	combout => \debounce_reset|s_debounceCnt[6]~2_combout\);

-- Location: LCCOMB_X112_Y43_N2
\debounce_reset|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~4_combout\ = (\debounce_reset|s_debounceCnt\(19) & (\debounce_reset|s_debounceCnt\(18) & (\debounce_reset|s_debounceCnt\(8) & \debounce_reset|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(19),
	datab => \debounce_reset|s_debounceCnt\(18),
	datac => \debounce_reset|s_debounceCnt\(8),
	datad => \debounce_reset|s_debounceCnt\(14),
	combout => \debounce_reset|LessThan0~4_combout\);

-- Location: LCCOMB_X112_Y43_N8
\debounce_reset|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~5_combout\ = (\debounce_reset|s_debounceCnt\(11) & (\debounce_reset|s_debounceCnt\(9) & \debounce_reset|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(11),
	datac => \debounce_reset|s_debounceCnt\(9),
	datad => \debounce_reset|LessThan0~4_combout\,
	combout => \debounce_reset|LessThan0~5_combout\);

-- Location: LCCOMB_X112_Y43_N26
\debounce_reset|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~6_combout\ = (\debounce_reset|s_debounceCnt\(6) & ((\debounce_reset|s_debounceCnt\(5)) # ((\debounce_reset|s_debounceCnt\(0)) # (!\debounce_reset|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(5),
	datab => \debounce_reset|s_debounceCnt\(0),
	datac => \debounce_reset|s_debounceCnt\(6),
	datad => \debounce_reset|s_pulsedOut~5_combout\,
	combout => \debounce_reset|LessThan0~6_combout\);

-- Location: LCCOMB_X112_Y43_N12
\debounce_reset|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~1_combout\ = (\debounce_reset|s_debounceCnt\(13)) # ((\debounce_reset|s_debounceCnt\(12)) # ((\debounce_reset|s_debounceCnt\(11) & \debounce_reset|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(13),
	datab => \debounce_reset|s_debounceCnt\(12),
	datac => \debounce_reset|s_debounceCnt\(11),
	datad => \debounce_reset|s_debounceCnt\(10),
	combout => \debounce_reset|LessThan0~1_combout\);

-- Location: LCCOMB_X112_Y43_N10
\debounce_reset|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~2_combout\ = (\debounce_reset|s_debounceCnt\(15)) # ((\debounce_reset|s_debounceCnt\(16)) # ((\debounce_reset|s_debounceCnt\(14) & \debounce_reset|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(14),
	datab => \debounce_reset|s_debounceCnt\(15),
	datac => \debounce_reset|s_debounceCnt\(16),
	datad => \debounce_reset|LessThan0~1_combout\,
	combout => \debounce_reset|LessThan0~2_combout\);

-- Location: LCCOMB_X112_Y43_N24
\debounce_reset|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~3_combout\ = (\debounce_reset|s_debounceCnt\(18) & (\debounce_reset|s_debounceCnt\(19) & ((\debounce_reset|s_debounceCnt\(17)) # (\debounce_reset|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(17),
	datab => \debounce_reset|s_debounceCnt\(18),
	datac => \debounce_reset|s_debounceCnt\(19),
	datad => \debounce_reset|LessThan0~2_combout\,
	combout => \debounce_reset|LessThan0~3_combout\);

-- Location: LCCOMB_X112_Y43_N28
\debounce_reset|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~7_combout\ = (\debounce_reset|LessThan0~3_combout\) # ((\debounce_reset|LessThan0~5_combout\ & ((\debounce_reset|s_debounceCnt\(7)) # (\debounce_reset|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(7),
	datab => \debounce_reset|LessThan0~5_combout\,
	datac => \debounce_reset|LessThan0~6_combout\,
	datad => \debounce_reset|LessThan0~3_combout\,
	combout => \debounce_reset|LessThan0~7_combout\);

-- Location: LCCOMB_X112_Y43_N4
\debounce_reset|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[22]~24_combout\ = (\debounce_reset|s_debounceCnt\(22) & (\debounce_reset|LessThan0~0_combout\ & ((!\debounce_reset|LessThan0~7_combout\)))) # (!\debounce_reset|s_debounceCnt\(22) & 
-- (((\debounce_reset|s_debounceCnt[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|LessThan0~0_combout\,
	datab => \debounce_reset|s_debounceCnt\(22),
	datac => \debounce_reset|s_debounceCnt[6]~2_combout\,
	datad => \debounce_reset|LessThan0~7_combout\,
	combout => \debounce_reset|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X111_Y43_N20
\debounce_reset|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~42_combout\ = (\debounce_reset|s_debounceCnt\(21) & (\debounce_reset|Add0~41\ & VCC)) # (!\debounce_reset|s_debounceCnt\(21) & (!\debounce_reset|Add0~41\))
-- \debounce_reset|Add0~43\ = CARRY((!\debounce_reset|s_debounceCnt\(21) & !\debounce_reset|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(21),
	datad => VCC,
	cin => \debounce_reset|Add0~41\,
	combout => \debounce_reset|Add0~42_combout\,
	cout => \debounce_reset|Add0~43\);

-- Location: LCCOMB_X111_Y43_N22
\debounce_reset|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~44_combout\ = \debounce_reset|Add0~43\ $ (\debounce_reset|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debounce_reset|s_debounceCnt\(22),
	cin => \debounce_reset|Add0~43\,
	combout => \debounce_reset|Add0~44_combout\);

-- Location: LCCOMB_X112_Y43_N14
\debounce_reset|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[22]~26_combout\ = (\debounce_reset|s_debounceCnt[22]~25_combout\ & (((\debounce_reset|s_debounceCnt[22]~24_combout\ & \debounce_reset|Add0~44_combout\)) # (!\debounce_reset|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt[22]~25_combout\,
	datab => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|s_debounceCnt[22]~24_combout\,
	datad => \debounce_reset|Add0~44_combout\,
	combout => \debounce_reset|s_debounceCnt[22]~26_combout\);

-- Location: FF_X112_Y43_N15
\debounce_reset|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(22));

-- Location: LCCOMB_X110_Y43_N30
\debounce_reset|s_debounceCnt[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[6]~3_combout\ = ((\debounce_reset|s_debounceCnt\(22)) # ((\debounce_reset|s_debounceCnt[6]~2_combout\) # (!\debounce_reset|s_dirtyIn~q\))) # (!\debounce_reset|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_previousIn~q\,
	datab => \debounce_reset|s_debounceCnt\(22),
	datac => \debounce_reset|s_dirtyIn~q\,
	datad => \debounce_reset|s_debounceCnt[6]~2_combout\,
	combout => \debounce_reset|s_debounceCnt[6]~3_combout\);

-- Location: LCCOMB_X111_Y43_N26
\debounce_reset|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[21]~10_combout\ = (\debounce_reset|s_debounceCnt[6]~0_combout\ & (\debounce_reset|s_debounceCnt[6]~3_combout\ & (\debounce_reset|s_previousIn~q\ & \debounce_reset|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt[6]~0_combout\,
	datab => \debounce_reset|s_debounceCnt[6]~3_combout\,
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|Add0~42_combout\,
	combout => \debounce_reset|s_debounceCnt[21]~10_combout\);

-- Location: FF_X111_Y43_N27
\debounce_reset|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(21));

-- Location: LCCOMB_X110_Y43_N26
\debounce_reset|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|LessThan0~0_combout\ = (!\debounce_reset|s_debounceCnt\(21) & !\debounce_reset|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(21),
	datad => \debounce_reset|s_debounceCnt\(20),
	combout => \debounce_reset|LessThan0~0_combout\);

-- Location: LCCOMB_X112_Y43_N6
\debounce_reset|s_debounceCnt[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt[6]~0_combout\ = (\debounce_reset|s_dirtyIn~q\ & (((\debounce_reset|LessThan0~0_combout\ & !\debounce_reset|LessThan0~7_combout\)) # (!\debounce_reset|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|LessThan0~0_combout\,
	datab => \debounce_reset|s_dirtyIn~q\,
	datac => \debounce_reset|s_debounceCnt\(22),
	datad => \debounce_reset|LessThan0~7_combout\,
	combout => \debounce_reset|s_debounceCnt[6]~0_combout\);

-- Location: LCCOMB_X112_Y43_N0
\debounce_reset|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~23_combout\ = (\debounce_reset|s_previousIn~q\ & (\debounce_reset|Add0~0_combout\ & \debounce_reset|s_debounceCnt[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|Add0~0_combout\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~23_combout\);

-- Location: FF_X112_Y43_N1
\debounce_reset|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~23_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(0));

-- Location: LCCOMB_X111_Y44_N12
\debounce_reset|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~2_combout\ = (\debounce_reset|s_debounceCnt\(1) & (\debounce_reset|Add0~1\ & VCC)) # (!\debounce_reset|s_debounceCnt\(1) & (!\debounce_reset|Add0~1\))
-- \debounce_reset|Add0~3\ = CARRY((!\debounce_reset|s_debounceCnt\(1) & !\debounce_reset|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(1),
	datad => VCC,
	cin => \debounce_reset|Add0~1\,
	combout => \debounce_reset|Add0~2_combout\,
	cout => \debounce_reset|Add0~3\);

-- Location: LCCOMB_X111_Y44_N0
\debounce_reset|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~19_combout\ = (\debounce_reset|Add0~2_combout\ & (\debounce_reset|s_previousIn~q\ & \debounce_reset|s_debounceCnt[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|Add0~2_combout\,
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~19_combout\);

-- Location: FF_X111_Y44_N1
\debounce_reset|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~19_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(1));

-- Location: LCCOMB_X111_Y44_N14
\debounce_reset|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~4_combout\ = (\debounce_reset|s_debounceCnt\(2) & ((GND) # (!\debounce_reset|Add0~3\))) # (!\debounce_reset|s_debounceCnt\(2) & (\debounce_reset|Add0~3\ $ (GND)))
-- \debounce_reset|Add0~5\ = CARRY((\debounce_reset|s_debounceCnt\(2)) # (!\debounce_reset|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(2),
	datad => VCC,
	cin => \debounce_reset|Add0~3\,
	combout => \debounce_reset|Add0~4_combout\,
	cout => \debounce_reset|Add0~5\);

-- Location: LCCOMB_X111_Y44_N2
\debounce_reset|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~20_combout\ = (\debounce_reset|s_previousIn~q\ & (\debounce_reset|Add0~4_combout\ & \debounce_reset|s_debounceCnt[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|Add0~4_combout\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~20_combout\);

-- Location: FF_X111_Y44_N3
\debounce_reset|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~20_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(2));

-- Location: LCCOMB_X111_Y44_N16
\debounce_reset|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~6_combout\ = (\debounce_reset|s_debounceCnt\(3) & (\debounce_reset|Add0~5\ & VCC)) # (!\debounce_reset|s_debounceCnt\(3) & (!\debounce_reset|Add0~5\))
-- \debounce_reset|Add0~7\ = CARRY((!\debounce_reset|s_debounceCnt\(3) & !\debounce_reset|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_debounceCnt\(3),
	datad => VCC,
	cin => \debounce_reset|Add0~5\,
	combout => \debounce_reset|Add0~6_combout\,
	cout => \debounce_reset|Add0~7\);

-- Location: LCCOMB_X111_Y44_N4
\debounce_reset|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~21_combout\ = (\debounce_reset|Add0~6_combout\ & (\debounce_reset|s_previousIn~q\ & \debounce_reset|s_debounceCnt[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|Add0~6_combout\,
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~21_combout\);

-- Location: FF_X111_Y44_N5
\debounce_reset|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~21_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(3));

-- Location: LCCOMB_X111_Y44_N18
\debounce_reset|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|Add0~8_combout\ = (\debounce_reset|s_debounceCnt\(4) & ((GND) # (!\debounce_reset|Add0~7\))) # (!\debounce_reset|s_debounceCnt\(4) & (\debounce_reset|Add0~7\ $ (GND)))
-- \debounce_reset|Add0~9\ = CARRY((\debounce_reset|s_debounceCnt\(4)) # (!\debounce_reset|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(4),
	datad => VCC,
	cin => \debounce_reset|Add0~7\,
	combout => \debounce_reset|Add0~8_combout\,
	cout => \debounce_reset|Add0~9\);

-- Location: LCCOMB_X111_Y44_N6
\debounce_reset|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~22_combout\ = (\debounce_reset|Add0~8_combout\ & (\debounce_reset|s_previousIn~q\ & \debounce_reset|s_debounceCnt[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|Add0~8_combout\,
	datac => \debounce_reset|s_previousIn~q\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~22_combout\);

-- Location: FF_X111_Y44_N7
\debounce_reset|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~22_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(4));

-- Location: LCCOMB_X110_Y44_N16
\debounce_reset|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_debounceCnt~27_combout\ = (\debounce_reset|s_previousIn~q\ & (\debounce_reset|Add0~10_combout\ & \debounce_reset|s_debounceCnt[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|Add0~10_combout\,
	datad => \debounce_reset|s_debounceCnt[6]~0_combout\,
	combout => \debounce_reset|s_debounceCnt~27_combout\);

-- Location: FF_X110_Y44_N17
\debounce_reset|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_debounceCnt~27_combout\,
	ena => \debounce_reset|s_debounceCnt[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_debounceCnt\(5));

-- Location: LCCOMB_X109_Y43_N18
\debounce_reset|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~6_combout\ = (\debounce_reset|s_dirtyIn~q\ & (\debounce_reset|s_previousIn~q\ & (\debounce_reset|s_debounceCnt\(0) & !\debounce_reset|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_dirtyIn~q\,
	datab => \debounce_reset|s_previousIn~q\,
	datac => \debounce_reset|s_debounceCnt\(0),
	datad => \debounce_reset|s_debounceCnt\(22),
	combout => \debounce_reset|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X109_Y43_N8
\debounce_reset|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_reset|s_pulsedOut~7_combout\ = (!\debounce_reset|s_debounceCnt\(5) & (\debounce_reset|s_pulsedOut~6_combout\ & (\debounce_reset|s_pulsedOut~4_combout\ & \debounce_reset|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_debounceCnt\(5),
	datab => \debounce_reset|s_pulsedOut~6_combout\,
	datac => \debounce_reset|s_pulsedOut~4_combout\,
	datad => \debounce_reset|s_pulsedOut~5_combout\,
	combout => \debounce_reset|s_pulsedOut~7_combout\);

-- Location: FF_X109_Y43_N9
\debounce_reset|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce_reset|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_reset|s_pulsedOut~q\);

-- Location: LCCOMB_X97_Y38_N22
\washingMachineFSM|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|Selector5~0_combout\ = (\washingMachineFSM|prog_num[3]~0_combout\ & ((\Inputsregister|p1Out~q\) # ((!\TimerAuxfsm|s_cntZero~q\ & \washingMachineFSM|s_currentState.FMeter_agua1~q\)))) # (!\washingMachineFSM|prog_num[3]~0_combout\ & 
-- (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.FMeter_agua1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|prog_num[3]~0_combout\,
	datab => \TimerAuxfsm|s_cntZero~q\,
	datac => \Inputsregister|p1Out~q\,
	datad => \washingMachineFSM|s_currentState.FMeter_agua1~q\,
	combout => \washingMachineFSM|Selector5~0_combout\);

-- Location: LCCOMB_X97_Y38_N28
\washingMachineFSM|s_currentState~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~23_combout\ = (!\debounce_reset|s_pulsedOut~q\ & \washingMachineFSM|Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_pulsedOut~q\,
	datac => \washingMachineFSM|Selector5~0_combout\,
	combout => \washingMachineFSM|s_currentState~23_combout\);

-- Location: FF_X97_Y38_N29
\washingMachineFSM|s_currentState.FMeter_agua1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.FMeter_agua1~q\);

-- Location: LCCOMB_X101_Y38_N0
\washingMachineFSM|s_currentState~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~28_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.FMeter_agua1~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.Aux2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_cntZero~q\,
	datab => \washingMachineFSM|s_currentState.FMeter_agua1~q\,
	datac => \washingMachineFSM|s_currentState.Aux2~q\,
	datad => \debounce_reset|s_pulsedOut~q\,
	combout => \washingMachineFSM|s_currentState~28_combout\);

-- Location: FF_X101_Y38_N1
\washingMachineFSM|s_currentState.Aux2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.Aux2~q\);

-- Location: LCCOMB_X101_Y38_N24
\washingMachineFSM|s_currentState~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~25_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.Aux2~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.FEnxaguar1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_cntZero~q\,
	datab => \washingMachineFSM|s_currentState.Aux2~q\,
	datac => \washingMachineFSM|s_currentState.FEnxaguar1~q\,
	datad => \debounce_reset|s_pulsedOut~q\,
	combout => \washingMachineFSM|s_currentState~25_combout\);

-- Location: FF_X101_Y38_N25
\washingMachineFSM|s_currentState.FEnxaguar1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.FEnxaguar1~q\);

-- Location: LCCOMB_X101_Y38_N26
\washingMachineFSM|s_currentState~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~29_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.FEnxaguar1~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.Aux3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_pulsedOut~q\,
	datab => \washingMachineFSM|s_currentState.FEnxaguar1~q\,
	datac => \washingMachineFSM|s_currentState.Aux3~q\,
	datad => \TimerAuxfsm|s_cntZero~q\,
	combout => \washingMachineFSM|s_currentState~29_combout\);

-- Location: FF_X101_Y38_N27
\washingMachineFSM|s_currentState.Aux3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.Aux3~q\);

-- Location: LCCOMB_X100_Y38_N24
\washingMachineFSM|s_currentState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~20_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.Aux3~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.FRemocao_agua1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_cntZero~q\,
	datab => \washingMachineFSM|s_currentState.Aux3~q\,
	datac => \washingMachineFSM|s_currentState.FRemocao_agua1~q\,
	datad => \debounce_reset|s_pulsedOut~q\,
	combout => \washingMachineFSM|s_currentState~20_combout\);

-- Location: FF_X100_Y38_N25
\washingMachineFSM|s_currentState.FRemocao_agua1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.FRemocao_agua1~q\);

-- Location: LCCOMB_X101_Y38_N28
\washingMachineFSM|s_currentState~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~30_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.FRemocao_agua1~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.Aux4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_pulsedOut~q\,
	datab => \washingMachineFSM|s_currentState.FRemocao_agua1~q\,
	datac => \washingMachineFSM|s_currentState.Aux4~q\,
	datad => \TimerAuxfsm|s_cntZero~q\,
	combout => \washingMachineFSM|s_currentState~30_combout\);

-- Location: FF_X101_Y38_N29
\washingMachineFSM|s_currentState.Aux4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.Aux4~q\);

-- Location: LCCOMB_X101_Y38_N2
\washingMachineFSM|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|Selector9~2_combout\ = (\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.Aux4~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.FMeter_agua2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \washingMachineFSM|s_currentState.Aux4~q\,
	datac => \TimerAuxfsm|s_cntZero~q\,
	datad => \washingMachineFSM|s_currentState.FMeter_agua2~q\,
	combout => \washingMachineFSM|Selector9~2_combout\);

-- Location: LCCOMB_X101_Y38_N20
\washingMachineFSM|s_currentState~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~24_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\washingMachineFSM|Selector9~1_combout\) # (\washingMachineFSM|Selector9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|Selector9~1_combout\,
	datab => \washingMachineFSM|Selector9~2_combout\,
	datad => \debounce_reset|s_pulsedOut~q\,
	combout => \washingMachineFSM|s_currentState~24_combout\);

-- Location: FF_X101_Y38_N21
\washingMachineFSM|s_currentState.FMeter_agua2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.FMeter_agua2~q\);

-- Location: LCCOMB_X101_Y38_N22
\washingMachineFSM|s_currentState~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~33_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.FMeter_agua2~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.Aux5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_cntZero~q\,
	datab => \washingMachineFSM|s_currentState.FMeter_agua2~q\,
	datac => \washingMachineFSM|s_currentState.Aux5~q\,
	datad => \debounce_reset|s_pulsedOut~q\,
	combout => \washingMachineFSM|s_currentState~33_combout\);

-- Location: FF_X101_Y38_N23
\washingMachineFSM|s_currentState.Aux5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.Aux5~q\);

-- Location: LCCOMB_X101_Y38_N6
\washingMachineFSM|s_currentState~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~26_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.Aux5~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.FEnxaguar2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.Aux5~q\,
	datab => \TimerAuxfsm|s_cntZero~q\,
	datac => \washingMachineFSM|s_currentState.FEnxaguar2~q\,
	datad => \debounce_reset|s_pulsedOut~q\,
	combout => \washingMachineFSM|s_currentState~26_combout\);

-- Location: FF_X101_Y38_N7
\washingMachineFSM|s_currentState.FEnxaguar2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.FEnxaguar2~q\);

-- Location: LCCOMB_X101_Y38_N4
\washingMachineFSM|s_currentState~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~34_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.FEnxaguar2~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.Aux6~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.FEnxaguar2~q\,
	datab => \TimerAuxfsm|s_cntZero~q\,
	datac => \washingMachineFSM|s_currentState.Aux6~q\,
	datad => \debounce_reset|s_pulsedOut~q\,
	combout => \washingMachineFSM|s_currentState~34_combout\);

-- Location: FF_X101_Y38_N5
\washingMachineFSM|s_currentState.Aux6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.Aux6~q\);

-- Location: LCCOMB_X100_Y38_N22
\washingMachineFSM|s_currentState~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~21_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.Aux6~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.FRemocao_agua2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.Aux6~q\,
	datab => \TimerAuxfsm|s_cntZero~q\,
	datac => \washingMachineFSM|s_currentState.FRemocao_agua2~q\,
	datad => \debounce_reset|s_pulsedOut~q\,
	combout => \washingMachineFSM|s_currentState~21_combout\);

-- Location: FF_X100_Y38_N23
\washingMachineFSM|s_currentState.FRemocao_agua2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.FRemocao_agua2~q\);

-- Location: LCCOMB_X100_Y38_N16
\washingMachineFSM|s_currentState~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~35_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.FRemocao_agua2~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.Aux7~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.FRemocao_agua2~q\,
	datab => \TimerAuxfsm|s_cntZero~q\,
	datac => \washingMachineFSM|s_currentState.Aux7~q\,
	datad => \debounce_reset|s_pulsedOut~q\,
	combout => \washingMachineFSM|s_currentState~35_combout\);

-- Location: FF_X100_Y38_N17
\washingMachineFSM|s_currentState.Aux7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.Aux7~q\);

-- Location: LCCOMB_X100_Y38_N4
\washingMachineFSM|WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr0~3_combout\ = (\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.Aux7~q\ & ((!\washingMachineFSM|s_currentState.Aux6~q\) # (!\washingMachineFSM|s_currentState.FRemocao_agua2~q\))) # 
-- (!\washingMachineFSM|s_currentState.Aux7~q\ & ((\washingMachineFSM|s_currentState.FRemocao_agua2~q\) # (\washingMachineFSM|s_currentState.Aux6~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_cntZero~q\,
	datab => \washingMachineFSM|s_currentState.Aux7~q\,
	datac => \washingMachineFSM|s_currentState.FRemocao_agua2~q\,
	datad => \washingMachineFSM|s_currentState.Aux6~q\,
	combout => \washingMachineFSM|WideOr0~3_combout\);

-- Location: LCCOMB_X97_Y38_N10
\washingMachineFSM|WideOr0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr0~4_combout\ = (\washingMachineFSM|WideOr0~3_combout\) # ((\washingMachineFSM|Selector4~0_combout\ & ((\washingMachineFSM|s_currentState.Finit~q\))) # (!\washingMachineFSM|Selector4~0_combout\ & 
-- (\washingMachineFSM|s_nextState~0_combout\ & !\washingMachineFSM|s_currentState.Finit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|WideOr0~3_combout\,
	datab => \washingMachineFSM|Selector4~0_combout\,
	datac => \washingMachineFSM|s_nextState~0_combout\,
	datad => \washingMachineFSM|s_currentState.Finit~q\,
	combout => \washingMachineFSM|WideOr0~4_combout\);

-- Location: LCCOMB_X97_Y38_N30
\washingMachineFSM|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|Selector7~0_combout\ = (\washingMachineFSM|prog_num[3]~0_combout\ & (!\Inputsregister|p2Out~q\ & (\Inputsregister|p3Out~q\ & !\Inputsregister|p1Out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|prog_num[3]~0_combout\,
	datab => \Inputsregister|p2Out~q\,
	datac => \Inputsregister|p3Out~q\,
	datad => \Inputsregister|p1Out~q\,
	combout => \washingMachineFSM|Selector7~0_combout\);

-- Location: LCCOMB_X97_Y38_N8
\washingMachineFSM|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|Selector7~1_combout\ = (\washingMachineFSM|Selector7~0_combout\) # ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.Aux7~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.FSpin~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.Aux7~q\,
	datab => \TimerAuxfsm|s_cntZero~q\,
	datac => \washingMachineFSM|s_currentState.FSpin~q\,
	datad => \washingMachineFSM|Selector7~0_combout\,
	combout => \washingMachineFSM|Selector7~1_combout\);

-- Location: LCCOMB_X97_Y38_N26
\washingMachineFSM|s_currentState~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~27_combout\ = (!\debounce_reset|s_pulsedOut~q\ & \washingMachineFSM|Selector7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|s_pulsedOut~q\,
	datad => \washingMachineFSM|Selector7~1_combout\,
	combout => \washingMachineFSM|s_currentState~27_combout\);

-- Location: FF_X97_Y38_N27
\washingMachineFSM|s_currentState.FSpin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.FSpin~q\);

-- Location: LCCOMB_X100_Y38_N26
\washingMachineFSM|s_currentState~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~36_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.FSpin~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.Aux8~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_cntZero~q\,
	datab => \washingMachineFSM|s_currentState.FSpin~q\,
	datac => \washingMachineFSM|s_currentState.Aux8~q\,
	datad => \debounce_reset|s_pulsedOut~q\,
	combout => \washingMachineFSM|s_currentState~36_combout\);

-- Location: FF_X100_Y38_N27
\washingMachineFSM|s_currentState.Aux8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.Aux8~q\);

-- Location: LCCOMB_X100_Y38_N28
\washingMachineFSM|s_currentState~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~22_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.Aux8~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.FRemocao_agua3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.Aux8~q\,
	datab => \TimerAuxfsm|s_cntZero~q\,
	datac => \washingMachineFSM|s_currentState.FRemocao_agua3~q\,
	datad => \debounce_reset|s_pulsedOut~q\,
	combout => \washingMachineFSM|s_currentState~22_combout\);

-- Location: FF_X100_Y38_N29
\washingMachineFSM|s_currentState.FRemocao_agua3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.FRemocao_agua3~q\);

-- Location: LCCOMB_X100_Y38_N30
\washingMachineFSM|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr0~2_combout\ = (\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.Aux8~q\ & ((!\washingMachineFSM|s_currentState.FRemocao_agua3~q\) # (!\washingMachineFSM|s_currentState.FSpin~q\))) # 
-- (!\washingMachineFSM|s_currentState.Aux8~q\ & ((\washingMachineFSM|s_currentState.FSpin~q\) # (\washingMachineFSM|s_currentState.FRemocao_agua3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.Aux8~q\,
	datab => \washingMachineFSM|s_currentState.FSpin~q\,
	datac => \washingMachineFSM|s_currentState.FRemocao_agua3~q\,
	datad => \TimerAuxfsm|s_cntZero~q\,
	combout => \washingMachineFSM|WideOr0~2_combout\);

-- Location: LCCOMB_X97_Y38_N16
\washingMachineFSM|WideOr0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr0~5_combout\ = (\washingMachineFSM|WideOr0~4_combout\) # ((\washingMachineFSM|WideOr0~2_combout\) # (\washingMachineFSM|s_currentState.FMeter_agua1~q\ $ (\washingMachineFSM|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|WideOr0~4_combout\,
	datab => \washingMachineFSM|s_currentState.FMeter_agua1~q\,
	datac => \washingMachineFSM|WideOr0~2_combout\,
	datad => \washingMachineFSM|Selector5~0_combout\,
	combout => \washingMachineFSM|WideOr0~5_combout\);

-- Location: LCCOMB_X97_Y38_N12
\washingMachineFSM|WideOr0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr0~11_combout\ = (\washingMachineFSM|Selector7~0_combout\ & (((!\washingMachineFSM|s_currentState.FSpin~q\)))) # (!\washingMachineFSM|Selector7~0_combout\ & (\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.Aux7~q\ $ 
-- (\washingMachineFSM|s_currentState.FSpin~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.Aux7~q\,
	datab => \TimerAuxfsm|s_cntZero~q\,
	datac => \washingMachineFSM|s_currentState.FSpin~q\,
	datad => \washingMachineFSM|Selector7~0_combout\,
	combout => \washingMachineFSM|WideOr0~11_combout\);

-- Location: LCCOMB_X100_Y38_N18
\washingMachineFSM|s_currentState~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~32_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.FRemocao_agua3~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.Aux9~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_cntZero~q\,
	datab => \washingMachineFSM|s_currentState.FRemocao_agua3~q\,
	datac => \washingMachineFSM|s_currentState.Aux9~q\,
	datad => \debounce_reset|s_pulsedOut~q\,
	combout => \washingMachineFSM|s_currentState~32_combout\);

-- Location: FF_X100_Y38_N19
\washingMachineFSM|s_currentState.Aux9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.Aux9~q\);

-- Location: LCCOMB_X100_Y38_N20
\washingMachineFSM|s_currentState~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~37_combout\ = (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.Aux9~q\)) # (!\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.FEspera~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_cntZero~q\,
	datab => \washingMachineFSM|s_currentState.Aux9~q\,
	datac => \washingMachineFSM|s_currentState.FEspera~q\,
	datad => \debounce_reset|s_pulsedOut~q\,
	combout => \washingMachineFSM|s_currentState~37_combout\);

-- Location: FF_X100_Y38_N21
\washingMachineFSM|s_currentState.FEspera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_currentState~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.FEspera~q\);

-- Location: LCCOMB_X100_Y38_N12
\washingMachineFSM|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr0~1_combout\ = (\washingMachineFSM|s_currentState.Aux9~q\ & ((!\washingMachineFSM|s_currentState.FEspera~q\) # (!\washingMachineFSM|s_currentState.FRemocao_agua3~q\))) # (!\washingMachineFSM|s_currentState.Aux9~q\ & 
-- ((\washingMachineFSM|s_currentState.FRemocao_agua3~q\) # (\washingMachineFSM|s_currentState.FEspera~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \washingMachineFSM|s_currentState.Aux9~q\,
	datac => \washingMachineFSM|s_currentState.FRemocao_agua3~q\,
	datad => \washingMachineFSM|s_currentState.FEspera~q\,
	combout => \washingMachineFSM|WideOr0~1_combout\);

-- Location: LCCOMB_X98_Y38_N10
\washingMachineFSM|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr0~0_combout\ = (\washingMachineFSM|Selector9~1_combout\ & (((!\washingMachineFSM|s_currentState.FMeter_agua2~q\)))) # (!\washingMachineFSM|Selector9~1_combout\ & (\TimerAuxfsm|s_cntZero~q\ & 
-- (\washingMachineFSM|s_currentState.Aux4~q\ $ (\washingMachineFSM|s_currentState.FMeter_agua2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|Selector9~1_combout\,
	datab => \TimerAuxfsm|s_cntZero~q\,
	datac => \washingMachineFSM|s_currentState.Aux4~q\,
	datad => \washingMachineFSM|s_currentState.FMeter_agua2~q\,
	combout => \washingMachineFSM|WideOr0~0_combout\);

-- Location: LCCOMB_X97_Y38_N14
\washingMachineFSM|WideOr0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr0~12_combout\ = (\washingMachineFSM|WideOr0~11_combout\) # ((\washingMachineFSM|WideOr0~0_combout\) # ((\TimerAuxfsm|s_cntZero~q\ & \washingMachineFSM|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|WideOr0~11_combout\,
	datab => \TimerAuxfsm|s_cntZero~q\,
	datac => \washingMachineFSM|WideOr0~1_combout\,
	datad => \washingMachineFSM|WideOr0~0_combout\,
	combout => \washingMachineFSM|WideOr0~12_combout\);

-- Location: LCCOMB_X101_Y38_N30
\washingMachineFSM|WideOr0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr0~6_combout\ = (\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.Aux5~q\ & ((!\washingMachineFSM|s_currentState.FEnxaguar2~q\) # (!\washingMachineFSM|s_currentState.Aux6~q\))) # 
-- (!\washingMachineFSM|s_currentState.Aux5~q\ & ((\washingMachineFSM|s_currentState.Aux6~q\) # (\washingMachineFSM|s_currentState.FEnxaguar2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.Aux5~q\,
	datab => \washingMachineFSM|s_currentState.Aux6~q\,
	datac => \TimerAuxfsm|s_cntZero~q\,
	datad => \washingMachineFSM|s_currentState.FEnxaguar2~q\,
	combout => \washingMachineFSM|WideOr0~6_combout\);

-- Location: LCCOMB_X101_Y38_N14
\washingMachineFSM|WideOr0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr0~8_combout\ = (\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.Aux2~q\ & ((!\washingMachineFSM|s_currentState.FEnxaguar1~q\) # (!\washingMachineFSM|s_currentState.Aux3~q\))) # 
-- (!\washingMachineFSM|s_currentState.Aux2~q\ & ((\washingMachineFSM|s_currentState.Aux3~q\) # (\washingMachineFSM|s_currentState.FEnxaguar1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_cntZero~q\,
	datab => \washingMachineFSM|s_currentState.Aux2~q\,
	datac => \washingMachineFSM|s_currentState.Aux3~q\,
	datad => \washingMachineFSM|s_currentState.FEnxaguar1~q\,
	combout => \washingMachineFSM|WideOr0~8_combout\);

-- Location: LCCOMB_X101_Y38_N16
\washingMachineFSM|WideOr0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr0~9_combout\ = (\washingMachineFSM|WideOr0~8_combout\) # ((\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.Aux5~q\ $ (\washingMachineFSM|s_currentState.FMeter_agua2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.Aux5~q\,
	datab => \washingMachineFSM|WideOr0~8_combout\,
	datac => \TimerAuxfsm|s_cntZero~q\,
	datad => \washingMachineFSM|s_currentState.FMeter_agua2~q\,
	combout => \washingMachineFSM|WideOr0~9_combout\);

-- Location: LCCOMB_X101_Y38_N8
\washingMachineFSM|WideOr0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr0~7_combout\ = (\TimerAuxfsm|s_cntZero~q\ & ((\washingMachineFSM|s_currentState.Aux3~q\ & ((!\washingMachineFSM|s_currentState.FRemocao_agua1~q\) # (!\washingMachineFSM|s_currentState.Aux4~q\))) # 
-- (!\washingMachineFSM|s_currentState.Aux3~q\ & ((\washingMachineFSM|s_currentState.Aux4~q\) # (\washingMachineFSM|s_currentState.FRemocao_agua1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.Aux3~q\,
	datab => \washingMachineFSM|s_currentState.Aux4~q\,
	datac => \TimerAuxfsm|s_cntZero~q\,
	datad => \washingMachineFSM|s_currentState.FRemocao_agua1~q\,
	combout => \washingMachineFSM|WideOr0~7_combout\);

-- Location: LCCOMB_X101_Y38_N12
\washingMachineFSM|sync_proc~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|sync_proc~18_combout\ = (\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.Aux2~q\ $ (\washingMachineFSM|s_currentState.FMeter_agua1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \washingMachineFSM|s_currentState.Aux2~q\,
	datac => \TimerAuxfsm|s_cntZero~q\,
	datad => \washingMachineFSM|s_currentState.FMeter_agua1~q\,
	combout => \washingMachineFSM|sync_proc~18_combout\);

-- Location: LCCOMB_X101_Y38_N10
\washingMachineFSM|WideOr0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr0~10_combout\ = (\washingMachineFSM|WideOr0~6_combout\) # ((\washingMachineFSM|WideOr0~9_combout\) # ((\washingMachineFSM|WideOr0~7_combout\) # (\washingMachineFSM|sync_proc~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|WideOr0~6_combout\,
	datab => \washingMachineFSM|WideOr0~9_combout\,
	datac => \washingMachineFSM|WideOr0~7_combout\,
	datad => \washingMachineFSM|sync_proc~18_combout\,
	combout => \washingMachineFSM|WideOr0~10_combout\);

-- Location: LCCOMB_X97_Y38_N20
\washingMachineFSM|s_stateChanged~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_stateChanged~0_combout\ = (\debounce_reset|s_pulsedOut~q\) # ((!\washingMachineFSM|WideOr0~5_combout\ & (!\washingMachineFSM|WideOr0~12_combout\ & !\washingMachineFSM|WideOr0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|WideOr0~5_combout\,
	datab => \washingMachineFSM|WideOr0~12_combout\,
	datac => \debounce_reset|s_pulsedOut~q\,
	datad => \washingMachineFSM|WideOr0~10_combout\,
	combout => \washingMachineFSM|s_stateChanged~0_combout\);

-- Location: FF_X97_Y38_N21
\washingMachineFSM|s_stateChanged\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \washingMachineFSM|s_stateChanged~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_stateChanged~q\);

-- Location: LCCOMB_X99_Y39_N6
\pulse_gen_forTimer|s_cnt[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[0]~26_combout\ = \pulse_gen_forTimer|s_cnt\(0) $ (VCC)
-- \pulse_gen_forTimer|s_cnt[0]~27\ = CARRY(\pulse_gen_forTimer|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(0),
	datad => VCC,
	combout => \pulse_gen_forTimer|s_cnt[0]~26_combout\,
	cout => \pulse_gen_forTimer|s_cnt[0]~27\);

-- Location: LCCOMB_X98_Y38_N0
\pulse_gen_forTimer|s_cnt[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[20]~28_combout\ = (\debounce_reset|s_pulsedOut~q\) # (!\pulse_gen_forTimer|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|s_pulsedOut~q\,
	datad => \pulse_gen_forTimer|Equal0~8_combout\,
	combout => \pulse_gen_forTimer|s_cnt[20]~28_combout\);

-- Location: FF_X99_Y39_N7
\pulse_gen_forTimer|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[0]~26_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(0));

-- Location: LCCOMB_X99_Y39_N8
\pulse_gen_forTimer|s_cnt[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[1]~29_combout\ = (\pulse_gen_forTimer|s_cnt\(1) & (!\pulse_gen_forTimer|s_cnt[0]~27\)) # (!\pulse_gen_forTimer|s_cnt\(1) & ((\pulse_gen_forTimer|s_cnt[0]~27\) # (GND)))
-- \pulse_gen_forTimer|s_cnt[1]~30\ = CARRY((!\pulse_gen_forTimer|s_cnt[0]~27\) # (!\pulse_gen_forTimer|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(1),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[0]~27\,
	combout => \pulse_gen_forTimer|s_cnt[1]~29_combout\,
	cout => \pulse_gen_forTimer|s_cnt[1]~30\);

-- Location: FF_X99_Y39_N9
\pulse_gen_forTimer|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[1]~29_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(1));

-- Location: LCCOMB_X99_Y39_N10
\pulse_gen_forTimer|s_cnt[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[2]~31_combout\ = (\pulse_gen_forTimer|s_cnt\(2) & (\pulse_gen_forTimer|s_cnt[1]~30\ $ (GND))) # (!\pulse_gen_forTimer|s_cnt\(2) & (!\pulse_gen_forTimer|s_cnt[1]~30\ & VCC))
-- \pulse_gen_forTimer|s_cnt[2]~32\ = CARRY((\pulse_gen_forTimer|s_cnt\(2) & !\pulse_gen_forTimer|s_cnt[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(2),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[1]~30\,
	combout => \pulse_gen_forTimer|s_cnt[2]~31_combout\,
	cout => \pulse_gen_forTimer|s_cnt[2]~32\);

-- Location: FF_X99_Y39_N11
\pulse_gen_forTimer|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[2]~31_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(2));

-- Location: LCCOMB_X99_Y39_N12
\pulse_gen_forTimer|s_cnt[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[3]~33_combout\ = (\pulse_gen_forTimer|s_cnt\(3) & (!\pulse_gen_forTimer|s_cnt[2]~32\)) # (!\pulse_gen_forTimer|s_cnt\(3) & ((\pulse_gen_forTimer|s_cnt[2]~32\) # (GND)))
-- \pulse_gen_forTimer|s_cnt[3]~34\ = CARRY((!\pulse_gen_forTimer|s_cnt[2]~32\) # (!\pulse_gen_forTimer|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(3),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[2]~32\,
	combout => \pulse_gen_forTimer|s_cnt[3]~33_combout\,
	cout => \pulse_gen_forTimer|s_cnt[3]~34\);

-- Location: FF_X99_Y39_N13
\pulse_gen_forTimer|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[3]~33_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(3));

-- Location: LCCOMB_X99_Y39_N14
\pulse_gen_forTimer|s_cnt[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[4]~35_combout\ = (\pulse_gen_forTimer|s_cnt\(4) & (\pulse_gen_forTimer|s_cnt[3]~34\ $ (GND))) # (!\pulse_gen_forTimer|s_cnt\(4) & (!\pulse_gen_forTimer|s_cnt[3]~34\ & VCC))
-- \pulse_gen_forTimer|s_cnt[4]~36\ = CARRY((\pulse_gen_forTimer|s_cnt\(4) & !\pulse_gen_forTimer|s_cnt[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(4),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[3]~34\,
	combout => \pulse_gen_forTimer|s_cnt[4]~35_combout\,
	cout => \pulse_gen_forTimer|s_cnt[4]~36\);

-- Location: FF_X99_Y39_N15
\pulse_gen_forTimer|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[4]~35_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(4));

-- Location: LCCOMB_X99_Y39_N16
\pulse_gen_forTimer|s_cnt[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[5]~37_combout\ = (\pulse_gen_forTimer|s_cnt\(5) & (!\pulse_gen_forTimer|s_cnt[4]~36\)) # (!\pulse_gen_forTimer|s_cnt\(5) & ((\pulse_gen_forTimer|s_cnt[4]~36\) # (GND)))
-- \pulse_gen_forTimer|s_cnt[5]~38\ = CARRY((!\pulse_gen_forTimer|s_cnt[4]~36\) # (!\pulse_gen_forTimer|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(5),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[4]~36\,
	combout => \pulse_gen_forTimer|s_cnt[5]~37_combout\,
	cout => \pulse_gen_forTimer|s_cnt[5]~38\);

-- Location: FF_X99_Y39_N17
\pulse_gen_forTimer|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[5]~37_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(5));

-- Location: LCCOMB_X99_Y39_N18
\pulse_gen_forTimer|s_cnt[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[6]~39_combout\ = (\pulse_gen_forTimer|s_cnt\(6) & (\pulse_gen_forTimer|s_cnt[5]~38\ $ (GND))) # (!\pulse_gen_forTimer|s_cnt\(6) & (!\pulse_gen_forTimer|s_cnt[5]~38\ & VCC))
-- \pulse_gen_forTimer|s_cnt[6]~40\ = CARRY((\pulse_gen_forTimer|s_cnt\(6) & !\pulse_gen_forTimer|s_cnt[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(6),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[5]~38\,
	combout => \pulse_gen_forTimer|s_cnt[6]~39_combout\,
	cout => \pulse_gen_forTimer|s_cnt[6]~40\);

-- Location: FF_X99_Y39_N19
\pulse_gen_forTimer|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[6]~39_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(6));

-- Location: LCCOMB_X99_Y39_N20
\pulse_gen_forTimer|s_cnt[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[7]~41_combout\ = (\pulse_gen_forTimer|s_cnt\(7) & (!\pulse_gen_forTimer|s_cnt[6]~40\)) # (!\pulse_gen_forTimer|s_cnt\(7) & ((\pulse_gen_forTimer|s_cnt[6]~40\) # (GND)))
-- \pulse_gen_forTimer|s_cnt[7]~42\ = CARRY((!\pulse_gen_forTimer|s_cnt[6]~40\) # (!\pulse_gen_forTimer|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(7),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[6]~40\,
	combout => \pulse_gen_forTimer|s_cnt[7]~41_combout\,
	cout => \pulse_gen_forTimer|s_cnt[7]~42\);

-- Location: FF_X99_Y39_N21
\pulse_gen_forTimer|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[7]~41_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(7));

-- Location: LCCOMB_X99_Y39_N22
\pulse_gen_forTimer|s_cnt[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[8]~43_combout\ = (\pulse_gen_forTimer|s_cnt\(8) & (\pulse_gen_forTimer|s_cnt[7]~42\ $ (GND))) # (!\pulse_gen_forTimer|s_cnt\(8) & (!\pulse_gen_forTimer|s_cnt[7]~42\ & VCC))
-- \pulse_gen_forTimer|s_cnt[8]~44\ = CARRY((\pulse_gen_forTimer|s_cnt\(8) & !\pulse_gen_forTimer|s_cnt[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(8),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[7]~42\,
	combout => \pulse_gen_forTimer|s_cnt[8]~43_combout\,
	cout => \pulse_gen_forTimer|s_cnt[8]~44\);

-- Location: FF_X99_Y39_N23
\pulse_gen_forTimer|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[8]~43_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(8));

-- Location: LCCOMB_X99_Y39_N24
\pulse_gen_forTimer|s_cnt[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[9]~45_combout\ = (\pulse_gen_forTimer|s_cnt\(9) & (!\pulse_gen_forTimer|s_cnt[8]~44\)) # (!\pulse_gen_forTimer|s_cnt\(9) & ((\pulse_gen_forTimer|s_cnt[8]~44\) # (GND)))
-- \pulse_gen_forTimer|s_cnt[9]~46\ = CARRY((!\pulse_gen_forTimer|s_cnt[8]~44\) # (!\pulse_gen_forTimer|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(9),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[8]~44\,
	combout => \pulse_gen_forTimer|s_cnt[9]~45_combout\,
	cout => \pulse_gen_forTimer|s_cnt[9]~46\);

-- Location: FF_X99_Y39_N25
\pulse_gen_forTimer|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[9]~45_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(9));

-- Location: LCCOMB_X99_Y39_N26
\pulse_gen_forTimer|s_cnt[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[10]~47_combout\ = (\pulse_gen_forTimer|s_cnt\(10) & (\pulse_gen_forTimer|s_cnt[9]~46\ $ (GND))) # (!\pulse_gen_forTimer|s_cnt\(10) & (!\pulse_gen_forTimer|s_cnt[9]~46\ & VCC))
-- \pulse_gen_forTimer|s_cnt[10]~48\ = CARRY((\pulse_gen_forTimer|s_cnt\(10) & !\pulse_gen_forTimer|s_cnt[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(10),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[9]~46\,
	combout => \pulse_gen_forTimer|s_cnt[10]~47_combout\,
	cout => \pulse_gen_forTimer|s_cnt[10]~48\);

-- Location: FF_X99_Y39_N27
\pulse_gen_forTimer|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[10]~47_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(10));

-- Location: LCCOMB_X99_Y39_N28
\pulse_gen_forTimer|s_cnt[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[11]~49_combout\ = (\pulse_gen_forTimer|s_cnt\(11) & (!\pulse_gen_forTimer|s_cnt[10]~48\)) # (!\pulse_gen_forTimer|s_cnt\(11) & ((\pulse_gen_forTimer|s_cnt[10]~48\) # (GND)))
-- \pulse_gen_forTimer|s_cnt[11]~50\ = CARRY((!\pulse_gen_forTimer|s_cnt[10]~48\) # (!\pulse_gen_forTimer|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(11),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[10]~48\,
	combout => \pulse_gen_forTimer|s_cnt[11]~49_combout\,
	cout => \pulse_gen_forTimer|s_cnt[11]~50\);

-- Location: FF_X99_Y39_N29
\pulse_gen_forTimer|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[11]~49_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(11));

-- Location: LCCOMB_X99_Y39_N30
\pulse_gen_forTimer|s_cnt[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[12]~51_combout\ = (\pulse_gen_forTimer|s_cnt\(12) & (\pulse_gen_forTimer|s_cnt[11]~50\ $ (GND))) # (!\pulse_gen_forTimer|s_cnt\(12) & (!\pulse_gen_forTimer|s_cnt[11]~50\ & VCC))
-- \pulse_gen_forTimer|s_cnt[12]~52\ = CARRY((\pulse_gen_forTimer|s_cnt\(12) & !\pulse_gen_forTimer|s_cnt[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(12),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[11]~50\,
	combout => \pulse_gen_forTimer|s_cnt[12]~51_combout\,
	cout => \pulse_gen_forTimer|s_cnt[12]~52\);

-- Location: FF_X99_Y39_N31
\pulse_gen_forTimer|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[12]~51_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(12));

-- Location: LCCOMB_X99_Y38_N0
\pulse_gen_forTimer|s_cnt[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[13]~53_combout\ = (\pulse_gen_forTimer|s_cnt\(13) & (!\pulse_gen_forTimer|s_cnt[12]~52\)) # (!\pulse_gen_forTimer|s_cnt\(13) & ((\pulse_gen_forTimer|s_cnt[12]~52\) # (GND)))
-- \pulse_gen_forTimer|s_cnt[13]~54\ = CARRY((!\pulse_gen_forTimer|s_cnt[12]~52\) # (!\pulse_gen_forTimer|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(13),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[12]~52\,
	combout => \pulse_gen_forTimer|s_cnt[13]~53_combout\,
	cout => \pulse_gen_forTimer|s_cnt[13]~54\);

-- Location: FF_X99_Y38_N1
\pulse_gen_forTimer|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[13]~53_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(13));

-- Location: LCCOMB_X99_Y38_N2
\pulse_gen_forTimer|s_cnt[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[14]~55_combout\ = (\pulse_gen_forTimer|s_cnt\(14) & (\pulse_gen_forTimer|s_cnt[13]~54\ $ (GND))) # (!\pulse_gen_forTimer|s_cnt\(14) & (!\pulse_gen_forTimer|s_cnt[13]~54\ & VCC))
-- \pulse_gen_forTimer|s_cnt[14]~56\ = CARRY((\pulse_gen_forTimer|s_cnt\(14) & !\pulse_gen_forTimer|s_cnt[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(14),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[13]~54\,
	combout => \pulse_gen_forTimer|s_cnt[14]~55_combout\,
	cout => \pulse_gen_forTimer|s_cnt[14]~56\);

-- Location: FF_X99_Y38_N3
\pulse_gen_forTimer|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[14]~55_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(14));

-- Location: LCCOMB_X99_Y38_N4
\pulse_gen_forTimer|s_cnt[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[15]~57_combout\ = (\pulse_gen_forTimer|s_cnt\(15) & (!\pulse_gen_forTimer|s_cnt[14]~56\)) # (!\pulse_gen_forTimer|s_cnt\(15) & ((\pulse_gen_forTimer|s_cnt[14]~56\) # (GND)))
-- \pulse_gen_forTimer|s_cnt[15]~58\ = CARRY((!\pulse_gen_forTimer|s_cnt[14]~56\) # (!\pulse_gen_forTimer|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(15),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[14]~56\,
	combout => \pulse_gen_forTimer|s_cnt[15]~57_combout\,
	cout => \pulse_gen_forTimer|s_cnt[15]~58\);

-- Location: FF_X99_Y38_N5
\pulse_gen_forTimer|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[15]~57_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(15));

-- Location: LCCOMB_X99_Y38_N6
\pulse_gen_forTimer|s_cnt[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[16]~59_combout\ = (\pulse_gen_forTimer|s_cnt\(16) & (\pulse_gen_forTimer|s_cnt[15]~58\ $ (GND))) # (!\pulse_gen_forTimer|s_cnt\(16) & (!\pulse_gen_forTimer|s_cnt[15]~58\ & VCC))
-- \pulse_gen_forTimer|s_cnt[16]~60\ = CARRY((\pulse_gen_forTimer|s_cnt\(16) & !\pulse_gen_forTimer|s_cnt[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(16),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[15]~58\,
	combout => \pulse_gen_forTimer|s_cnt[16]~59_combout\,
	cout => \pulse_gen_forTimer|s_cnt[16]~60\);

-- Location: FF_X99_Y38_N7
\pulse_gen_forTimer|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[16]~59_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(16));

-- Location: LCCOMB_X99_Y38_N8
\pulse_gen_forTimer|s_cnt[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[17]~61_combout\ = (\pulse_gen_forTimer|s_cnt\(17) & (!\pulse_gen_forTimer|s_cnt[16]~60\)) # (!\pulse_gen_forTimer|s_cnt\(17) & ((\pulse_gen_forTimer|s_cnt[16]~60\) # (GND)))
-- \pulse_gen_forTimer|s_cnt[17]~62\ = CARRY((!\pulse_gen_forTimer|s_cnt[16]~60\) # (!\pulse_gen_forTimer|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(17),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[16]~60\,
	combout => \pulse_gen_forTimer|s_cnt[17]~61_combout\,
	cout => \pulse_gen_forTimer|s_cnt[17]~62\);

-- Location: FF_X99_Y38_N9
\pulse_gen_forTimer|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[17]~61_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(17));

-- Location: LCCOMB_X99_Y38_N10
\pulse_gen_forTimer|s_cnt[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[18]~63_combout\ = (\pulse_gen_forTimer|s_cnt\(18) & (\pulse_gen_forTimer|s_cnt[17]~62\ $ (GND))) # (!\pulse_gen_forTimer|s_cnt\(18) & (!\pulse_gen_forTimer|s_cnt[17]~62\ & VCC))
-- \pulse_gen_forTimer|s_cnt[18]~64\ = CARRY((\pulse_gen_forTimer|s_cnt\(18) & !\pulse_gen_forTimer|s_cnt[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(18),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[17]~62\,
	combout => \pulse_gen_forTimer|s_cnt[18]~63_combout\,
	cout => \pulse_gen_forTimer|s_cnt[18]~64\);

-- Location: FF_X99_Y38_N11
\pulse_gen_forTimer|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[18]~63_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(18));

-- Location: LCCOMB_X99_Y38_N12
\pulse_gen_forTimer|s_cnt[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[19]~65_combout\ = (\pulse_gen_forTimer|s_cnt\(19) & (!\pulse_gen_forTimer|s_cnt[18]~64\)) # (!\pulse_gen_forTimer|s_cnt\(19) & ((\pulse_gen_forTimer|s_cnt[18]~64\) # (GND)))
-- \pulse_gen_forTimer|s_cnt[19]~66\ = CARRY((!\pulse_gen_forTimer|s_cnt[18]~64\) # (!\pulse_gen_forTimer|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(19),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[18]~64\,
	combout => \pulse_gen_forTimer|s_cnt[19]~65_combout\,
	cout => \pulse_gen_forTimer|s_cnt[19]~66\);

-- Location: FF_X99_Y38_N13
\pulse_gen_forTimer|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[19]~65_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(19));

-- Location: LCCOMB_X99_Y38_N14
\pulse_gen_forTimer|s_cnt[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[20]~67_combout\ = (\pulse_gen_forTimer|s_cnt\(20) & (\pulse_gen_forTimer|s_cnt[19]~66\ $ (GND))) # (!\pulse_gen_forTimer|s_cnt\(20) & (!\pulse_gen_forTimer|s_cnt[19]~66\ & VCC))
-- \pulse_gen_forTimer|s_cnt[20]~68\ = CARRY((\pulse_gen_forTimer|s_cnt\(20) & !\pulse_gen_forTimer|s_cnt[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(20),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[19]~66\,
	combout => \pulse_gen_forTimer|s_cnt[20]~67_combout\,
	cout => \pulse_gen_forTimer|s_cnt[20]~68\);

-- Location: FF_X99_Y38_N15
\pulse_gen_forTimer|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[20]~67_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(20));

-- Location: LCCOMB_X99_Y38_N16
\pulse_gen_forTimer|s_cnt[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[21]~69_combout\ = (\pulse_gen_forTimer|s_cnt\(21) & (!\pulse_gen_forTimer|s_cnt[20]~68\)) # (!\pulse_gen_forTimer|s_cnt\(21) & ((\pulse_gen_forTimer|s_cnt[20]~68\) # (GND)))
-- \pulse_gen_forTimer|s_cnt[21]~70\ = CARRY((!\pulse_gen_forTimer|s_cnt[20]~68\) # (!\pulse_gen_forTimer|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(21),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[20]~68\,
	combout => \pulse_gen_forTimer|s_cnt[21]~69_combout\,
	cout => \pulse_gen_forTimer|s_cnt[21]~70\);

-- Location: FF_X99_Y38_N17
\pulse_gen_forTimer|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[21]~69_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(21));

-- Location: LCCOMB_X99_Y38_N18
\pulse_gen_forTimer|s_cnt[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[22]~71_combout\ = (\pulse_gen_forTimer|s_cnt\(22) & (\pulse_gen_forTimer|s_cnt[21]~70\ $ (GND))) # (!\pulse_gen_forTimer|s_cnt\(22) & (!\pulse_gen_forTimer|s_cnt[21]~70\ & VCC))
-- \pulse_gen_forTimer|s_cnt[22]~72\ = CARRY((\pulse_gen_forTimer|s_cnt\(22) & !\pulse_gen_forTimer|s_cnt[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(22),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[21]~70\,
	combout => \pulse_gen_forTimer|s_cnt[22]~71_combout\,
	cout => \pulse_gen_forTimer|s_cnt[22]~72\);

-- Location: FF_X99_Y38_N19
\pulse_gen_forTimer|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[22]~71_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(22));

-- Location: LCCOMB_X99_Y38_N20
\pulse_gen_forTimer|s_cnt[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[23]~73_combout\ = (\pulse_gen_forTimer|s_cnt\(23) & (!\pulse_gen_forTimer|s_cnt[22]~72\)) # (!\pulse_gen_forTimer|s_cnt\(23) & ((\pulse_gen_forTimer|s_cnt[22]~72\) # (GND)))
-- \pulse_gen_forTimer|s_cnt[23]~74\ = CARRY((!\pulse_gen_forTimer|s_cnt[22]~72\) # (!\pulse_gen_forTimer|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen_forTimer|s_cnt\(23),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[22]~72\,
	combout => \pulse_gen_forTimer|s_cnt[23]~73_combout\,
	cout => \pulse_gen_forTimer|s_cnt[23]~74\);

-- Location: FF_X99_Y38_N21
\pulse_gen_forTimer|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[23]~73_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(23));

-- Location: LCCOMB_X99_Y38_N22
\pulse_gen_forTimer|s_cnt[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[24]~75_combout\ = (\pulse_gen_forTimer|s_cnt\(24) & (\pulse_gen_forTimer|s_cnt[23]~74\ $ (GND))) # (!\pulse_gen_forTimer|s_cnt\(24) & (!\pulse_gen_forTimer|s_cnt[23]~74\ & VCC))
-- \pulse_gen_forTimer|s_cnt[24]~76\ = CARRY((\pulse_gen_forTimer|s_cnt\(24) & !\pulse_gen_forTimer|s_cnt[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(24),
	datad => VCC,
	cin => \pulse_gen_forTimer|s_cnt[23]~74\,
	combout => \pulse_gen_forTimer|s_cnt[24]~75_combout\,
	cout => \pulse_gen_forTimer|s_cnt[24]~76\);

-- Location: FF_X99_Y38_N23
\pulse_gen_forTimer|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[24]~75_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(24));

-- Location: LCCOMB_X99_Y38_N24
\pulse_gen_forTimer|s_cnt[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|s_cnt[25]~77_combout\ = \pulse_gen_forTimer|s_cnt[24]~76\ $ (\pulse_gen_forTimer|s_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulse_gen_forTimer|s_cnt\(25),
	cin => \pulse_gen_forTimer|s_cnt[24]~76\,
	combout => \pulse_gen_forTimer|s_cnt[25]~77_combout\);

-- Location: FF_X99_Y38_N25
\pulse_gen_forTimer|s_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|s_cnt[25]~77_combout\,
	sclr => \pulse_gen_forTimer|s_cnt[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|s_cnt\(25));

-- Location: LCCOMB_X99_Y38_N26
\pulse_gen_forTimer|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|Equal0~7_combout\ = (\pulse_gen_forTimer|s_cnt\(24)) # (!\pulse_gen_forTimer|s_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen_forTimer|s_cnt\(24),
	datad => \pulse_gen_forTimer|s_cnt\(25),
	combout => \pulse_gen_forTimer|Equal0~7_combout\);

-- Location: LCCOMB_X99_Y38_N30
\pulse_gen_forTimer|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|Equal0~5_combout\ = (\pulse_gen_forTimer|s_cnt\(18)) # (((\pulse_gen_forTimer|s_cnt\(16)) # (!\pulse_gen_forTimer|s_cnt\(19))) # (!\pulse_gen_forTimer|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(18),
	datab => \pulse_gen_forTimer|s_cnt\(17),
	datac => \pulse_gen_forTimer|s_cnt\(19),
	datad => \pulse_gen_forTimer|s_cnt\(16),
	combout => \pulse_gen_forTimer|Equal0~5_combout\);

-- Location: LCCOMB_X99_Y38_N28
\pulse_gen_forTimer|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|Equal0~6_combout\ = (((!\pulse_gen_forTimer|s_cnt\(21)) # (!\pulse_gen_forTimer|s_cnt\(20))) # (!\pulse_gen_forTimer|s_cnt\(22))) # (!\pulse_gen_forTimer|s_cnt\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(23),
	datab => \pulse_gen_forTimer|s_cnt\(22),
	datac => \pulse_gen_forTimer|s_cnt\(20),
	datad => \pulse_gen_forTimer|s_cnt\(21),
	combout => \pulse_gen_forTimer|Equal0~6_combout\);

-- Location: LCCOMB_X99_Y39_N2
\pulse_gen_forTimer|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|Equal0~1_combout\ = (\pulse_gen_forTimer|s_cnt\(7)) # (((!\pulse_gen_forTimer|s_cnt\(5)) # (!\pulse_gen_forTimer|s_cnt\(4))) # (!\pulse_gen_forTimer|s_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(7),
	datab => \pulse_gen_forTimer|s_cnt\(6),
	datac => \pulse_gen_forTimer|s_cnt\(4),
	datad => \pulse_gen_forTimer|s_cnt\(5),
	combout => \pulse_gen_forTimer|Equal0~1_combout\);

-- Location: LCCOMB_X98_Y38_N20
\pulse_gen_forTimer|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|Equal0~3_combout\ = (((!\pulse_gen_forTimer|s_cnt\(15)) # (!\pulse_gen_forTimer|s_cnt\(12))) # (!\pulse_gen_forTimer|s_cnt\(13))) # (!\pulse_gen_forTimer|s_cnt\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(14),
	datab => \pulse_gen_forTimer|s_cnt\(13),
	datac => \pulse_gen_forTimer|s_cnt\(12),
	datad => \pulse_gen_forTimer|s_cnt\(15),
	combout => \pulse_gen_forTimer|Equal0~3_combout\);

-- Location: LCCOMB_X99_Y39_N0
\pulse_gen_forTimer|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|Equal0~0_combout\ = (((!\pulse_gen_forTimer|s_cnt\(2)) # (!\pulse_gen_forTimer|s_cnt\(0))) # (!\pulse_gen_forTimer|s_cnt\(1))) # (!\pulse_gen_forTimer|s_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(3),
	datab => \pulse_gen_forTimer|s_cnt\(1),
	datac => \pulse_gen_forTimer|s_cnt\(0),
	datad => \pulse_gen_forTimer|s_cnt\(2),
	combout => \pulse_gen_forTimer|Equal0~0_combout\);

-- Location: LCCOMB_X99_Y39_N4
\pulse_gen_forTimer|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|Equal0~2_combout\ = (\pulse_gen_forTimer|s_cnt\(8)) # ((\pulse_gen_forTimer|s_cnt\(11)) # ((\pulse_gen_forTimer|s_cnt\(10)) # (\pulse_gen_forTimer|s_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|s_cnt\(8),
	datab => \pulse_gen_forTimer|s_cnt\(11),
	datac => \pulse_gen_forTimer|s_cnt\(10),
	datad => \pulse_gen_forTimer|s_cnt\(9),
	combout => \pulse_gen_forTimer|Equal0~2_combout\);

-- Location: LCCOMB_X98_Y38_N28
\pulse_gen_forTimer|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|Equal0~4_combout\ = (\pulse_gen_forTimer|Equal0~1_combout\) # ((\pulse_gen_forTimer|Equal0~3_combout\) # ((\pulse_gen_forTimer|Equal0~0_combout\) # (\pulse_gen_forTimer|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|Equal0~1_combout\,
	datab => \pulse_gen_forTimer|Equal0~3_combout\,
	datac => \pulse_gen_forTimer|Equal0~0_combout\,
	datad => \pulse_gen_forTimer|Equal0~2_combout\,
	combout => \pulse_gen_forTimer|Equal0~4_combout\);

-- Location: LCCOMB_X98_Y38_N16
\pulse_gen_forTimer|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|Equal0~8_combout\ = (\pulse_gen_forTimer|Equal0~7_combout\) # ((\pulse_gen_forTimer|Equal0~5_combout\) # ((\pulse_gen_forTimer|Equal0~6_combout\) # (\pulse_gen_forTimer|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen_forTimer|Equal0~7_combout\,
	datab => \pulse_gen_forTimer|Equal0~5_combout\,
	datac => \pulse_gen_forTimer|Equal0~6_combout\,
	datad => \pulse_gen_forTimer|Equal0~4_combout\,
	combout => \pulse_gen_forTimer|Equal0~8_combout\);

-- Location: LCCOMB_X98_Y38_N14
\pulse_gen_forTimer|pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen_forTimer|pulse~0_combout\ = (!\debounce_reset|s_pulsedOut~q\ & !\pulse_gen_forTimer|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_reset|s_pulsedOut~q\,
	datad => \pulse_gen_forTimer|Equal0~8_combout\,
	combout => \pulse_gen_forTimer|pulse~0_combout\);

-- Location: FF_X98_Y38_N15
\pulse_gen_forTimer|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen_forTimer|pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen_forTimer|pulse~q\);

-- Location: LCCOMB_X98_Y38_N4
\TimerAuxfsm|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|s_cntZero~0_combout\ = (\pulse_gen_forTimer|pulse~q\ & \Inputsregister|start_stop_Out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen_forTimer|pulse~q\,
	datad => \Inputsregister|start_stop_Out~q\,
	combout => \TimerAuxfsm|s_cntZero~0_combout\);

-- Location: LCCOMB_X102_Y38_N18
\TimerAuxfsm|s_counter[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|s_counter[2]~0_combout\ = (\washingMachineFSM|s_stateChanged~q\ & (!\debounce_reset|s_pulsedOut~q\ & ((\TimerAuxfsm|Equal0~0_combout\) # (!\TimerAuxfsm|s_cntZero~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_stateChanged~q\,
	datab => \TimerAuxfsm|Equal0~0_combout\,
	datac => \TimerAuxfsm|s_cntZero~0_combout\,
	datad => \debounce_reset|s_pulsedOut~q\,
	combout => \TimerAuxfsm|s_counter[2]~0_combout\);

-- Location: LCCOMB_X100_Y38_N2
\washingMachineFSM|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr1~0_combout\ = (!\washingMachineFSM|s_currentState.FRemocao_agua2~q\ & (!\washingMachineFSM|s_currentState.FRemocao_agua3~q\ & !\washingMachineFSM|s_currentState.FRemocao_agua1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.FRemocao_agua2~q\,
	datab => \washingMachineFSM|s_currentState.FRemocao_agua3~q\,
	datad => \washingMachineFSM|s_currentState.FRemocao_agua1~q\,
	combout => \washingMachineFSM|WideOr1~0_combout\);

-- Location: LCCOMB_X100_Y38_N14
\washingMachineFSM|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr9~combout\ = (\washingMachineFSM|s_currentState.FEspera~q\) # ((\washingMachineFSM|s_currentState.FSpin~q\) # (!\washingMachineFSM|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \washingMachineFSM|s_currentState.FEspera~q\,
	datac => \washingMachineFSM|WideOr1~0_combout\,
	datad => \washingMachineFSM|s_currentState.FSpin~q\,
	combout => \washingMachineFSM|WideOr9~combout\);

-- Location: LCCOMB_X98_Y38_N8
\TimerAuxfsm|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|s_counter~10_combout\ = (\washingMachineFSM|s_stateChanged~q\ & (\TimerAuxfsm|s_counter\(0) $ (((\TimerAuxfsm|Equal0~0_combout\) # (!\TimerAuxfsm|s_cntZero~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_counter\(0),
	datab => \TimerAuxfsm|s_cntZero~0_combout\,
	datac => \TimerAuxfsm|Equal0~0_combout\,
	datad => \washingMachineFSM|s_stateChanged~q\,
	combout => \TimerAuxfsm|s_counter~10_combout\);

-- Location: LCCOMB_X98_Y38_N26
\TimerAuxfsm|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|s_counter~11_combout\ = (!\debounce_reset|s_pulsedOut~q\ & (!\TimerAuxfsm|s_counter~10_combout\ & ((\washingMachineFSM|s_stateChanged~q\) # (!\washingMachineFSM|WideOr9~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|WideOr9~combout\,
	datab => \debounce_reset|s_pulsedOut~q\,
	datac => \TimerAuxfsm|s_counter~10_combout\,
	datad => \washingMachineFSM|s_stateChanged~q\,
	combout => \TimerAuxfsm|s_counter~11_combout\);

-- Location: FF_X98_Y38_N27
\TimerAuxfsm|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerAuxfsm|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerAuxfsm|s_counter\(0));

-- Location: LCCOMB_X102_Y38_N26
\TimerAuxfsm|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|Add0~1_combout\ = (\washingMachineFSM|s_stateChanged~q\ & (!\TimerAuxfsm|s_counter\(0))) # (!\washingMachineFSM|s_stateChanged~q\ & ((!\washingMachineFSM|WideOr9~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_stateChanged~q\,
	datac => \TimerAuxfsm|s_counter\(0),
	datad => \washingMachineFSM|WideOr9~combout\,
	combout => \TimerAuxfsm|Add0~1_combout\);

-- Location: LCCOMB_X102_Y38_N2
\TimerAuxfsm|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|Add0~0_combout\ = (!\washingMachineFSM|s_currentState.FEnxaguar2~q\ & !\washingMachineFSM|s_currentState.FEnxaguar1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \washingMachineFSM|s_currentState.FEnxaguar2~q\,
	datad => \washingMachineFSM|s_currentState.FEnxaguar1~q\,
	combout => \TimerAuxfsm|Add0~0_combout\);

-- Location: LCCOMB_X102_Y38_N14
\TimerAuxfsm|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|Add0~3_combout\ = (!\washingMachineFSM|s_currentState.FEspera~q\ & (\TimerAuxfsm|Add0~0_combout\ & (\washingMachineFSM|WideOr1~0_combout\ & !\washingMachineFSM|s_stateChanged~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.FEspera~q\,
	datab => \TimerAuxfsm|Add0~0_combout\,
	datac => \washingMachineFSM|WideOr1~0_combout\,
	datad => \washingMachineFSM|s_stateChanged~q\,
	combout => \TimerAuxfsm|Add0~3_combout\);

-- Location: LCCOMB_X102_Y38_N0
\TimerAuxfsm|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|Add0~4_combout\ = (\TimerAuxfsm|Add0~3_combout\) # ((!\TimerAuxfsm|s_counter\(2) & \washingMachineFSM|s_stateChanged~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_counter\(2),
	datac => \TimerAuxfsm|Add0~3_combout\,
	datad => \washingMachineFSM|s_stateChanged~q\,
	combout => \TimerAuxfsm|Add0~4_combout\);

-- Location: LCCOMB_X102_Y38_N10
\TimerAuxfsm|s_counter[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|s_counter[1]~8_combout\ = (\TimerAuxfsm|s_counter[2]~0_combout\ & (((!\TimerAuxfsm|s_counter\(1))))) # (!\TimerAuxfsm|s_counter[2]~0_combout\ & (\TimerAuxfsm|Add0~1_combout\ $ (((!\TimerAuxfsm|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|Add0~1_combout\,
	datab => \TimerAuxfsm|s_counter\(1),
	datac => \TimerAuxfsm|Add0~2_combout\,
	datad => \TimerAuxfsm|s_counter[2]~0_combout\,
	combout => \TimerAuxfsm|s_counter[1]~8_combout\);

-- Location: LCCOMB_X102_Y38_N28
\TimerAuxfsm|s_counter[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|s_counter[1]~9_combout\ = (!\debounce_reset|s_pulsedOut~q\ & !\TimerAuxfsm|s_counter[1]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_pulsedOut~q\,
	datad => \TimerAuxfsm|s_counter[1]~8_combout\,
	combout => \TimerAuxfsm|s_counter[1]~9_combout\);

-- Location: FF_X102_Y38_N29
\TimerAuxfsm|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerAuxfsm|s_counter[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerAuxfsm|s_counter\(1));

-- Location: LCCOMB_X102_Y38_N8
\TimerAuxfsm|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|Add0~2_combout\ = (\washingMachineFSM|s_stateChanged~q\ & (!\TimerAuxfsm|s_counter\(1))) # (!\washingMachineFSM|s_stateChanged~q\ & (((\washingMachineFSM|s_currentState.FEspera~q\) # (!\washingMachineFSM|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_stateChanged~q\,
	datab => \TimerAuxfsm|s_counter\(1),
	datac => \washingMachineFSM|WideOr1~0_combout\,
	datad => \washingMachineFSM|s_currentState.FEspera~q\,
	combout => \TimerAuxfsm|Add0~2_combout\);

-- Location: LCCOMB_X102_Y38_N20
\TimerAuxfsm|s_counter[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|s_counter[2]~6_combout\ = (!\TimerAuxfsm|s_counter[2]~0_combout\ & (\TimerAuxfsm|Add0~4_combout\ $ (((!\TimerAuxfsm|Add0~1_combout\ & !\TimerAuxfsm|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|Add0~1_combout\,
	datab => \TimerAuxfsm|Add0~4_combout\,
	datac => \TimerAuxfsm|Add0~2_combout\,
	datad => \TimerAuxfsm|s_counter[2]~0_combout\,
	combout => \TimerAuxfsm|s_counter[2]~6_combout\);

-- Location: LCCOMB_X102_Y38_N22
\TimerAuxfsm|s_counter[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|s_counter[2]~7_combout\ = (!\debounce_reset|s_pulsedOut~q\ & (!\TimerAuxfsm|s_counter[2]~6_combout\ & ((\TimerAuxfsm|s_counter\(2)) # (!\TimerAuxfsm|s_counter[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_pulsedOut~q\,
	datab => \TimerAuxfsm|s_counter[2]~0_combout\,
	datac => \TimerAuxfsm|s_counter\(2),
	datad => \TimerAuxfsm|s_counter[2]~6_combout\,
	combout => \TimerAuxfsm|s_counter[2]~7_combout\);

-- Location: FF_X102_Y38_N23
\TimerAuxfsm|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerAuxfsm|s_counter[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerAuxfsm|s_counter\(2));

-- Location: LCCOMB_X102_Y38_N6
\TimerAuxfsm|s_counter[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|s_counter[3]~4_combout\ = (!\TimerAuxfsm|Add0~2_combout\ & (!\TimerAuxfsm|Add0~1_combout\ & !\TimerAuxfsm|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimerAuxfsm|Add0~2_combout\,
	datac => \TimerAuxfsm|Add0~1_combout\,
	datad => \TimerAuxfsm|Add0~4_combout\,
	combout => \TimerAuxfsm|s_counter[3]~4_combout\);

-- Location: LCCOMB_X102_Y38_N12
\TimerAuxfsm|s_counter[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|s_counter[3]~3_combout\ = (\washingMachineFSM|s_stateChanged~q\ & (((!\TimerAuxfsm|s_counter\(3))))) # (!\washingMachineFSM|s_stateChanged~q\ & ((\washingMachineFSM|s_currentState.FEnxaguar1~q\) # 
-- ((\washingMachineFSM|s_currentState.FEnxaguar2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_stateChanged~q\,
	datab => \washingMachineFSM|s_currentState.FEnxaguar1~q\,
	datac => \washingMachineFSM|s_currentState.FEnxaguar2~q\,
	datad => \TimerAuxfsm|s_counter\(3),
	combout => \TimerAuxfsm|s_counter[3]~3_combout\);

-- Location: LCCOMB_X102_Y38_N30
\TimerAuxfsm|s_counter[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|s_counter[3]~2_combout\ = (!\TimerAuxfsm|s_counter[2]~0_combout\ & ((\washingMachineFSM|s_stateChanged~q\ & (\TimerAuxfsm|s_counter\(3))) # (!\washingMachineFSM|s_stateChanged~q\ & ((\TimerAuxfsm|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_stateChanged~q\,
	datab => \TimerAuxfsm|s_counter\(3),
	datac => \TimerAuxfsm|Add0~0_combout\,
	datad => \TimerAuxfsm|s_counter[2]~0_combout\,
	combout => \TimerAuxfsm|s_counter[3]~2_combout\);

-- Location: LCCOMB_X102_Y38_N16
\TimerAuxfsm|s_counter[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|s_counter[3]~1_combout\ = (\debounce_reset|s_pulsedOut~q\) # ((!\TimerAuxfsm|s_counter\(3) & \TimerAuxfsm|s_counter[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_reset|s_pulsedOut~q\,
	datab => \TimerAuxfsm|s_counter\(3),
	datad => \TimerAuxfsm|s_counter[2]~0_combout\,
	combout => \TimerAuxfsm|s_counter[3]~1_combout\);

-- Location: LCCOMB_X102_Y38_N24
\TimerAuxfsm|s_counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|s_counter[3]~5_combout\ = (!\TimerAuxfsm|s_counter[3]~1_combout\ & ((\TimerAuxfsm|s_counter[3]~4_combout\ & ((!\TimerAuxfsm|s_counter[3]~2_combout\))) # (!\TimerAuxfsm|s_counter[3]~4_combout\ & (!\TimerAuxfsm|s_counter[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_counter[3]~4_combout\,
	datab => \TimerAuxfsm|s_counter[3]~3_combout\,
	datac => \TimerAuxfsm|s_counter[3]~2_combout\,
	datad => \TimerAuxfsm|s_counter[3]~1_combout\,
	combout => \TimerAuxfsm|s_counter[3]~5_combout\);

-- Location: FF_X102_Y38_N25
\TimerAuxfsm|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerAuxfsm|s_counter[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerAuxfsm|s_counter\(3));

-- Location: LCCOMB_X102_Y38_N4
\TimerAuxfsm|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|Equal0~0_combout\ = (\TimerAuxfsm|s_counter\(2) & (\TimerAuxfsm|s_counter\(1) & (\TimerAuxfsm|s_counter\(0) & \TimerAuxfsm|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_counter\(2),
	datab => \TimerAuxfsm|s_counter\(1),
	datac => \TimerAuxfsm|s_counter\(0),
	datad => \TimerAuxfsm|s_counter\(3),
	combout => \TimerAuxfsm|Equal0~0_combout\);

-- Location: LCCOMB_X98_Y38_N18
\TimerAuxfsm|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxfsm|s_cntZero~1_combout\ = (\washingMachineFSM|s_stateChanged~q\ & ((\TimerAuxfsm|s_cntZero~0_combout\ & ((\TimerAuxfsm|Equal0~0_combout\))) # (!\TimerAuxfsm|s_cntZero~0_combout\ & (\TimerAuxfsm|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_stateChanged~q\,
	datab => \TimerAuxfsm|s_cntZero~0_combout\,
	datac => \TimerAuxfsm|s_cntZero~q\,
	datad => \TimerAuxfsm|Equal0~0_combout\,
	combout => \TimerAuxfsm|s_cntZero~1_combout\);

-- Location: FF_X98_Y38_N19
\TimerAuxfsm|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerAuxfsm|s_cntZero~1_combout\,
	sclr => \debounce_reset|s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerAuxfsm|s_cntZero~q\);

-- Location: LCCOMB_X98_Y38_N30
\washingMachineFSM|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|Selector4~0_combout\ = (\Inputsregister|start_stop_Out~q\ & (\TimerAuxfsm|s_cntZero~q\ & (\washingMachineFSM|s_currentState.FEspera~q\))) # (!\Inputsregister|start_stop_Out~q\ & (((\TimerAuxfsm|s_cntZero~q\ & 
-- \washingMachineFSM|s_currentState.FEspera~q\)) # (!\washingMachineFSM|s_currentState.Finit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inputsregister|start_stop_Out~q\,
	datab => \TimerAuxfsm|s_cntZero~q\,
	datac => \washingMachineFSM|s_currentState.FEspera~q\,
	datad => \washingMachineFSM|s_currentState.Finit~q\,
	combout => \washingMachineFSM|Selector4~0_combout\);

-- Location: LCCOMB_X98_Y38_N12
\washingMachineFSM|s_currentState~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|s_currentState~31_combout\ = (!\washingMachineFSM|Selector4~0_combout\ & (!\debounce_reset|s_pulsedOut~q\ & ((\washingMachineFSM|s_currentState.Finit~q\) # (\washingMachineFSM|s_nextState~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|Selector4~0_combout\,
	datab => \washingMachineFSM|s_currentState.Finit~q\,
	datac => \debounce_reset|s_pulsedOut~q\,
	datad => \washingMachineFSM|s_nextState~0_combout\,
	combout => \washingMachineFSM|s_currentState~31_combout\);

-- Location: FF_X97_Y38_N19
\washingMachineFSM|s_currentState.Finit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \washingMachineFSM|s_currentState~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \washingMachineFSM|s_currentState.Finit~q\);

-- Location: LCCOMB_X97_Y38_N0
\washingMachineFSM|prog_num[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|prog_num[3]~0_combout\ = (!\washingMachineFSM|s_currentState.Finit~q\ & \Inputsregister|start_stop_Out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \washingMachineFSM|s_currentState.Finit~q\,
	datad => \Inputsregister|start_stop_Out~q\,
	combout => \washingMachineFSM|prog_num[3]~0_combout\);

-- Location: CLKCTRL_G7
\washingMachineFSM|prog_num[3]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \washingMachineFSM|prog_num[3]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \washingMachineFSM|prog_num[3]~0clkctrl_outclk\);

-- Location: LCCOMB_X97_Y38_N4
\washingMachineFSM|prog_num[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|prog_num\(2) = (GLOBAL(\washingMachineFSM|prog_num[3]~0clkctrl_outclk\) & ((!\washingMachineFSM|s_nextState~0_combout\))) # (!GLOBAL(\washingMachineFSM|prog_num[3]~0clkctrl_outclk\) & (\washingMachineFSM|prog_num\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|prog_num\(2),
	datab => \washingMachineFSM|s_nextState~0_combout\,
	datad => \washingMachineFSM|prog_num[3]~0clkctrl_outclk\,
	combout => \washingMachineFSM|prog_num\(2));

-- Location: LCCOMB_X97_Y38_N24
\washingMachineFSM|prog_num[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|prog_num\(1) = (GLOBAL(\washingMachineFSM|prog_num[3]~0clkctrl_outclk\) & ((!\Inputsregister|p1Out~q\))) # (!GLOBAL(\washingMachineFSM|prog_num[3]~0clkctrl_outclk\) & (\washingMachineFSM|prog_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \washingMachineFSM|prog_num\(1),
	datac => \Inputsregister|p1Out~q\,
	datad => \washingMachineFSM|prog_num[3]~0clkctrl_outclk\,
	combout => \washingMachineFSM|prog_num\(1));

-- Location: LCCOMB_X97_Y38_N2
\washingMachineFSM|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|Selector9~0_combout\ = (!\Inputsregister|p1Out~q\ & \Inputsregister|p2Out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inputsregister|p1Out~q\,
	datab => \Inputsregister|p2Out~q\,
	combout => \washingMachineFSM|Selector9~0_combout\);

-- Location: LCCOMB_X97_Y38_N6
\washingMachineFSM|prog_num[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|prog_num\(0) = (GLOBAL(\washingMachineFSM|prog_num[3]~0clkctrl_outclk\) & (!\washingMachineFSM|Selector9~0_combout\)) # (!GLOBAL(\washingMachineFSM|prog_num[3]~0clkctrl_outclk\) & ((\washingMachineFSM|prog_num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|Selector9~0_combout\,
	datac => \washingMachineFSM|prog_num\(0),
	datad => \washingMachineFSM|prog_num[3]~0clkctrl_outclk\,
	combout => \washingMachineFSM|prog_num\(0));

-- Location: LCCOMB_X96_Y38_N0
\displayProgHex0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex0|Mux6~0_combout\ = (\washingMachineFSM|prog_num\(2)) # ((!\washingMachineFSM|prog_num\(1) & \washingMachineFSM|prog_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|prog_num\(2),
	datac => \washingMachineFSM|prog_num\(1),
	datad => \washingMachineFSM|prog_num\(0),
	combout => \displayProgHex0|Mux6~0_combout\);

-- Location: LCCOMB_X96_Y38_N14
\displayProgHex0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex0|Mux4~0_combout\ = (\washingMachineFSM|prog_num\(2)) # ((\washingMachineFSM|prog_num\(1) & !\washingMachineFSM|prog_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|prog_num\(2),
	datac => \washingMachineFSM|prog_num\(1),
	datad => \washingMachineFSM|prog_num\(0),
	combout => \displayProgHex0|Mux4~0_combout\);

-- Location: LCCOMB_X96_Y38_N12
\TimeSelector|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeSelector|Equal1~0_combout\ = (!\washingMachineFSM|prog_num\(2) & !\washingMachineFSM|prog_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|prog_num\(2),
	datad => \washingMachineFSM|prog_num\(0),
	combout => \TimeSelector|Equal1~0_combout\);

-- Location: LCCOMB_X96_Y38_N10
\displayProgHex0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex0|Mux1~0_combout\ = (\washingMachineFSM|prog_num\(2)) # ((\washingMachineFSM|prog_num\(1)) # (\washingMachineFSM|prog_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|prog_num\(2),
	datac => \washingMachineFSM|prog_num\(1),
	datad => \washingMachineFSM|prog_num\(0),
	combout => \displayProgHex0|Mux1~0_combout\);

-- Location: LCCOMB_X96_Y38_N4
\displayProgHex0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex0|Mux0~0_combout\ = (\washingMachineFSM|prog_num\(1) & !\washingMachineFSM|prog_num\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \washingMachineFSM|prog_num\(1),
	datad => \washingMachineFSM|prog_num\(2),
	combout => \displayProgHex0|Mux0~0_combout\);

-- Location: LCCOMB_X103_Y38_N4
\displayProgHex2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex2|Mux6~0_combout\ = (\TimerAuxfsm|s_counter\(2) & (\TimerAuxfsm|s_counter\(1) $ (((\TimerAuxfsm|s_counter\(0) & \TimerAuxfsm|s_counter\(3)))))) # (!\TimerAuxfsm|s_counter\(2) & ((\TimerAuxfsm|s_counter\(3)) # ((!\TimerAuxfsm|s_counter\(0) & 
-- !\TimerAuxfsm|s_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_counter\(0),
	datab => \TimerAuxfsm|s_counter\(2),
	datac => \TimerAuxfsm|s_counter\(1),
	datad => \TimerAuxfsm|s_counter\(3),
	combout => \displayProgHex2|Mux6~0_combout\);

-- Location: LCCOMB_X103_Y38_N30
\displayProgHex2|decout_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex2|decout_n[0]~0_combout\ = (\TimerAuxfsm|s_cntZero~q\) # (!\displayProgHex2|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayProgHex2|Mux6~0_combout\,
	datac => \TimerAuxfsm|s_cntZero~q\,
	combout => \displayProgHex2|decout_n[0]~0_combout\);

-- Location: LCCOMB_X103_Y38_N28
\displayProgHex2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex2|Mux5~0_combout\ = (\TimerAuxfsm|s_counter\(1) & (((!\TimerAuxfsm|s_counter\(2))))) # (!\TimerAuxfsm|s_counter\(1) & (!\TimerAuxfsm|s_counter\(3) & ((\TimerAuxfsm|s_counter\(0)) # (\TimerAuxfsm|s_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_counter\(0),
	datab => \TimerAuxfsm|s_counter\(2),
	datac => \TimerAuxfsm|s_counter\(1),
	datad => \TimerAuxfsm|s_counter\(3),
	combout => \displayProgHex2|Mux5~0_combout\);

-- Location: LCCOMB_X103_Y38_N26
\displayProgHex2|decout_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex2|decout_n[1]~1_combout\ = (\TimerAuxfsm|s_cntZero~q\) # (\displayProgHex2|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimerAuxfsm|s_cntZero~q\,
	datad => \displayProgHex2|Mux5~0_combout\,
	combout => \displayProgHex2|decout_n[1]~1_combout\);

-- Location: LCCOMB_X103_Y38_N8
\displayProgHex2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex2|Mux4~0_combout\ = (\TimerAuxfsm|s_counter\(2) & ((\TimerAuxfsm|s_counter\(1) & (!\TimerAuxfsm|s_counter\(0))) # (!\TimerAuxfsm|s_counter\(1) & ((!\TimerAuxfsm|s_counter\(3)))))) # (!\TimerAuxfsm|s_counter\(2) & 
-- (!\TimerAuxfsm|s_counter\(3) & ((\TimerAuxfsm|s_counter\(0)) # (\TimerAuxfsm|s_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_counter\(0),
	datab => \TimerAuxfsm|s_counter\(2),
	datac => \TimerAuxfsm|s_counter\(1),
	datad => \TimerAuxfsm|s_counter\(3),
	combout => \displayProgHex2|Mux4~0_combout\);

-- Location: LCCOMB_X103_Y38_N14
\displayProgHex2|decout_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex2|decout_n[2]~2_combout\ = (\displayProgHex2|Mux4~0_combout\) # (\TimerAuxfsm|s_cntZero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayProgHex2|Mux4~0_combout\,
	datac => \TimerAuxfsm|s_cntZero~q\,
	combout => \displayProgHex2|decout_n[2]~2_combout\);

-- Location: LCCOMB_X103_Y38_N16
\displayProgHex2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex2|Mux3~0_combout\ = (\TimerAuxfsm|s_counter\(1) & (\TimerAuxfsm|s_counter\(3) $ (((\TimerAuxfsm|s_counter\(0) & \TimerAuxfsm|s_counter\(2)))))) # (!\TimerAuxfsm|s_counter\(1) & (\TimerAuxfsm|s_counter\(0) $ ((!\TimerAuxfsm|s_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_counter\(0),
	datab => \TimerAuxfsm|s_counter\(2),
	datac => \TimerAuxfsm|s_counter\(1),
	datad => \TimerAuxfsm|s_counter\(3),
	combout => \displayProgHex2|Mux3~0_combout\);

-- Location: LCCOMB_X103_Y38_N10
\displayProgHex2|decout_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex2|decout_n[3]~3_combout\ = (\TimerAuxfsm|s_cntZero~q\) # (!\displayProgHex2|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimerAuxfsm|s_cntZero~q\,
	datad => \displayProgHex2|Mux3~0_combout\,
	combout => \displayProgHex2|decout_n[3]~3_combout\);

-- Location: LCCOMB_X103_Y38_N12
\displayProgHex2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex2|Mux2~0_combout\ = (!\TimerAuxfsm|s_counter\(0) & ((\TimerAuxfsm|s_counter\(2) & (\TimerAuxfsm|s_counter\(1))) # (!\TimerAuxfsm|s_counter\(2) & ((\TimerAuxfsm|s_counter\(3)) # (!\TimerAuxfsm|s_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_counter\(0),
	datab => \TimerAuxfsm|s_counter\(2),
	datac => \TimerAuxfsm|s_counter\(1),
	datad => \TimerAuxfsm|s_counter\(3),
	combout => \displayProgHex2|Mux2~0_combout\);

-- Location: LCCOMB_X103_Y38_N22
\displayProgHex2|decout_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex2|decout_n[4]~4_combout\ = (\TimerAuxfsm|s_cntZero~q\) # (!\displayProgHex2|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimerAuxfsm|s_cntZero~q\,
	datad => \displayProgHex2|Mux2~0_combout\,
	combout => \displayProgHex2|decout_n[4]~4_combout\);

-- Location: LCCOMB_X103_Y38_N20
\displayProgHex2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex2|Mux1~0_combout\ = (\TimerAuxfsm|s_counter\(1) & ((\TimerAuxfsm|s_counter\(2) $ (\TimerAuxfsm|s_counter\(3))))) # (!\TimerAuxfsm|s_counter\(1) & (!\TimerAuxfsm|s_counter\(0) & ((\TimerAuxfsm|s_counter\(3)) # 
-- (!\TimerAuxfsm|s_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_counter\(0),
	datab => \TimerAuxfsm|s_counter\(2),
	datac => \TimerAuxfsm|s_counter\(1),
	datad => \TimerAuxfsm|s_counter\(3),
	combout => \displayProgHex2|Mux1~0_combout\);

-- Location: LCCOMB_X103_Y38_N6
\displayProgHex2|decout_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex2|decout_n[5]~5_combout\ = (\TimerAuxfsm|s_cntZero~q\) # (!\displayProgHex2|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimerAuxfsm|s_cntZero~q\,
	datad => \displayProgHex2|Mux1~0_combout\,
	combout => \displayProgHex2|decout_n[5]~5_combout\);

-- Location: LCCOMB_X103_Y38_N24
\displayProgHex2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex2|Mux0~0_combout\ = (\TimerAuxfsm|s_counter\(0) & (\TimerAuxfsm|s_counter\(2) $ (((\TimerAuxfsm|s_counter\(1) & \TimerAuxfsm|s_counter\(3)))))) # (!\TimerAuxfsm|s_counter\(0) & ((\TimerAuxfsm|s_counter\(3)) # ((\TimerAuxfsm|s_counter\(2) & 
-- \TimerAuxfsm|s_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxfsm|s_counter\(0),
	datab => \TimerAuxfsm|s_counter\(2),
	datac => \TimerAuxfsm|s_counter\(1),
	datad => \TimerAuxfsm|s_counter\(3),
	combout => \displayProgHex2|Mux0~0_combout\);

-- Location: LCCOMB_X103_Y38_N18
\displayProgHex2|decout_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex2|decout_n[6]~6_combout\ = (\TimerAuxfsm|s_cntZero~q\) # (!\displayProgHex2|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimerAuxfsm|s_cntZero~q\,
	datad => \displayProgHex2|Mux0~0_combout\,
	combout => \displayProgHex2|decout_n[6]~6_combout\);

-- Location: LCCOMB_X96_Y38_N18
\displayProgHex6|decout_n[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex6|decout_n[1]~0_combout\ = (!\washingMachineFSM|prog_num\(2) & ((\washingMachineFSM|prog_num\(1)) # (\washingMachineFSM|prog_num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|prog_num\(2),
	datac => \washingMachineFSM|prog_num\(1),
	datad => \washingMachineFSM|prog_num\(0),
	combout => \displayProgHex6|decout_n[1]~0_combout\);

-- Location: LCCOMB_X96_Y38_N28
\displayProgHex6|decout_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex6|decout_n[1]~1_combout\ = (\washingMachineFSM|prog_num\(2)) # (\washingMachineFSM|prog_num\(1) $ (!\washingMachineFSM|prog_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|prog_num\(2),
	datac => \washingMachineFSM|prog_num\(1),
	datad => \washingMachineFSM|prog_num\(0),
	combout => \displayProgHex6|decout_n[1]~1_combout\);

-- Location: LCCOMB_X96_Y38_N22
\TimeSelector|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeSelector|Equal0~0_combout\ = (!\washingMachineFSM|prog_num\(2) & \washingMachineFSM|prog_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|prog_num\(2),
	datad => \washingMachineFSM|prog_num\(0),
	combout => \TimeSelector|Equal0~0_combout\);

-- Location: LCCOMB_X96_Y38_N24
\displayProgHex6|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayProgHex6|Mux5~0_combout\ = (!\washingMachineFSM|prog_num\(2) & (\washingMachineFSM|prog_num\(1) $ (\washingMachineFSM|prog_num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|prog_num\(2),
	datac => \washingMachineFSM|prog_num\(1),
	datad => \washingMachineFSM|prog_num\(0),
	combout => \displayProgHex6|Mux5~0_combout\);

-- Location: LCCOMB_X96_Y38_N26
\TimeSelector|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeSelector|Equal0~1_combout\ = (!\washingMachineFSM|prog_num\(2) & (!\washingMachineFSM|prog_num\(1) & \washingMachineFSM|prog_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|prog_num\(2),
	datac => \washingMachineFSM|prog_num\(1),
	datad => \washingMachineFSM|prog_num\(0),
	combout => \TimeSelector|Equal0~1_combout\);

-- Location: LCCOMB_X96_Y38_N20
\TimeSelector|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeSelector|Equal1~1_combout\ = (!\washingMachineFSM|prog_num\(2) & (\washingMachineFSM|prog_num\(1) & !\washingMachineFSM|prog_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|prog_num\(2),
	datac => \washingMachineFSM|prog_num\(1),
	datad => \washingMachineFSM|prog_num\(0),
	combout => \TimeSelector|Equal1~1_combout\);

-- Location: LCCOMB_X101_Y38_N18
\washingMachineFSM|water_pump\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|water_pump~combout\ = (\washingMachineFSM|s_currentState.FMeter_agua1~q\) # (\washingMachineFSM|s_currentState.FMeter_agua2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \washingMachineFSM|s_currentState.FMeter_agua1~q\,
	datad => \washingMachineFSM|s_currentState.FMeter_agua2~q\,
	combout => \washingMachineFSM|water_pump~combout\);

-- Location: LCCOMB_X100_Y38_N8
\washingMachineFSM|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr2~1_combout\ = (\washingMachineFSM|s_currentState.Aux6~q\) # ((\washingMachineFSM|s_currentState.Aux7~q\) # ((\washingMachineFSM|s_currentState.Aux8~q\) # (\washingMachineFSM|s_currentState.Aux5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.Aux6~q\,
	datab => \washingMachineFSM|s_currentState.Aux7~q\,
	datac => \washingMachineFSM|s_currentState.Aux8~q\,
	datad => \washingMachineFSM|s_currentState.Aux5~q\,
	combout => \washingMachineFSM|WideOr2~1_combout\);

-- Location: LCCOMB_X100_Y38_N0
\washingMachineFSM|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr2~0_combout\ = ((\washingMachineFSM|s_currentState.Aux4~q\) # ((\washingMachineFSM|s_currentState.Aux2~q\) # (\washingMachineFSM|s_currentState.Aux3~q\))) # (!\washingMachineFSM|s_currentState.Finit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \washingMachineFSM|s_currentState.Finit~q\,
	datab => \washingMachineFSM|s_currentState.Aux4~q\,
	datac => \washingMachineFSM|s_currentState.Aux2~q\,
	datad => \washingMachineFSM|s_currentState.Aux3~q\,
	combout => \washingMachineFSM|WideOr2~0_combout\);

-- Location: LCCOMB_X100_Y38_N6
\washingMachineFSM|WideOr2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \washingMachineFSM|WideOr2~2_combout\ = (\washingMachineFSM|s_currentState.Aux9~q\) # ((\washingMachineFSM|WideOr2~1_combout\) # (\washingMachineFSM|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \washingMachineFSM|s_currentState.Aux9~q\,
	datac => \washingMachineFSM|WideOr2~1_combout\,
	datad => \washingMachineFSM|WideOr2~0_combout\,
	combout => \washingMachineFSM|WideOr2~2_combout\);

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

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


