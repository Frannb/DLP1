-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "06/15/2020 19:47:38"

-- 
-- Device: Altera EP4CE30F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	teste_timer00_99 IS
    PORT (
	clk50MHz_in : IN std_logic;
	rst_in : IN std_logic;
	tipo_in : IN std_logic;
	ssd_D : OUT std_logic_vector(6 DOWNTO 0);
	ssd_U : OUT std_logic_vector(6 DOWNTO 0)
	);
END teste_timer00_99;

-- Design Ports Information
-- ssd_D[0]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd_D[1]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd_D[2]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd_D[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd_D[4]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd_D[5]	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd_D[6]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd_U[0]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd_U[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd_U[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd_U[3]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd_U[4]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd_U[5]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd_U[6]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- tipo_in	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk50MHz_in	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst_in	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF teste_timer00_99 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50MHz_in : std_logic;
SIGNAL ww_rst_in : std_logic;
SIGNAL ww_tipo_in : std_logic;
SIGNAL ww_ssd_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd_U : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk50MHz_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Add0~40_combout\ : std_logic;
SIGNAL \U1|Add0~43\ : std_logic;
SIGNAL \U1|Add0~44_combout\ : std_logic;
SIGNAL \U1|Add0~45\ : std_logic;
SIGNAL \U1|Add0~46_combout\ : std_logic;
SIGNAL \U1|Add0~47\ : std_logic;
SIGNAL \U1|Add0~48_combout\ : std_logic;
SIGNAL \U1|Add0~49\ : std_logic;
SIGNAL \U1|Add0~50_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[36]~42_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[35]~43_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[34]~45_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[33]~48_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[32]~50_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[45]~51_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[43]~53_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[42]~54_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[41]~56_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[48]~59_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[52]~63_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[49]~67_combout\ : std_logic;
SIGNAL \U2|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Equal0~7_combout\ : std_logic;
SIGNAL \U1|cnt~0_combout\ : std_logic;
SIGNAL \U1|cnt~1_combout\ : std_logic;
SIGNAL \U1|cnt~2_combout\ : std_logic;
SIGNAL \U1|cnt~4_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[54]~72_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[53]~73_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[51]~75_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\ : std_logic;
SIGNAL \clk50MHz_in~input_o\ : std_logic;
SIGNAL \clk50MHz_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \ssd_D[0]~output_o\ : std_logic;
SIGNAL \ssd_D[1]~output_o\ : std_logic;
SIGNAL \ssd_D[2]~output_o\ : std_logic;
SIGNAL \ssd_D[3]~output_o\ : std_logic;
SIGNAL \ssd_D[4]~output_o\ : std_logic;
SIGNAL \ssd_D[5]~output_o\ : std_logic;
SIGNAL \ssd_D[6]~output_o\ : std_logic;
SIGNAL \ssd_U[0]~output_o\ : std_logic;
SIGNAL \ssd_U[1]~output_o\ : std_logic;
SIGNAL \ssd_U[2]~output_o\ : std_logic;
SIGNAL \ssd_U[3]~output_o\ : std_logic;
SIGNAL \ssd_U[4]~output_o\ : std_logic;
SIGNAL \ssd_U[5]~output_o\ : std_logic;
SIGNAL \ssd_U[6]~output_o\ : std_logic;
SIGNAL \U2|Add0~1\ : std_logic;
SIGNAL \U2|Add0~2_combout\ : std_logic;
SIGNAL \rst_in~input_o\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|cnt~11_combout\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|Equal0~5_combout\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Equal0~6_combout\ : std_logic;
SIGNAL \U1|Add0~19\ : std_logic;
SIGNAL \U1|Add0~21\ : std_logic;
SIGNAL \U1|Add0~22_combout\ : std_logic;
SIGNAL \U1|Add0~23\ : std_logic;
SIGNAL \U1|Add0~24_combout\ : std_logic;
SIGNAL \U1|cnt~10_combout\ : std_logic;
SIGNAL \U1|Add0~25\ : std_logic;
SIGNAL \U1|Add0~27\ : std_logic;
SIGNAL \U1|Add0~28_combout\ : std_logic;
SIGNAL \U1|cnt~8_combout\ : std_logic;
SIGNAL \U1|Add0~29\ : std_logic;
SIGNAL \U1|Add0~31\ : std_logic;
SIGNAL \U1|Add0~33\ : std_logic;
SIGNAL \U1|Add0~34_combout\ : std_logic;
SIGNAL \U1|cnt~6_combout\ : std_logic;
SIGNAL \U1|Add0~30_combout\ : std_logic;
SIGNAL \U1|cnt~7_combout\ : std_logic;
SIGNAL \U1|Add0~32_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Add0~35\ : std_logic;
SIGNAL \U1|Add0~37\ : std_logic;
SIGNAL \U1|Add0~38_combout\ : std_logic;
SIGNAL \U1|cnt~5_combout\ : std_logic;
SIGNAL \U1|Add0~39\ : std_logic;
SIGNAL \U1|Add0~41\ : std_logic;
SIGNAL \U1|Add0~42_combout\ : std_logic;
SIGNAL \U1|cnt~3_combout\ : std_logic;
SIGNAL \U1|Add0~36_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Add0~26_combout\ : std_logic;
SIGNAL \U1|cnt~9_combout\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|Equal0~4_combout\ : std_logic;
SIGNAL \U1|Equal0~8_combout\ : std_logic;
SIGNAL \U2|Add0~3\ : std_logic;
SIGNAL \U2|Add0~5\ : std_logic;
SIGNAL \U2|Add0~6_combout\ : std_logic;
SIGNAL \U2|Add0~4_combout\ : std_logic;
SIGNAL \U2|cnt~2_combout\ : std_logic;
SIGNAL \U2|Equal0~1_combout\ : std_logic;
SIGNAL \U2|Add0~7\ : std_logic;
SIGNAL \U2|Add0~8_combout\ : std_logic;
SIGNAL \U2|Add0~9\ : std_logic;
SIGNAL \U2|Add0~11\ : std_logic;
SIGNAL \U2|Add0~12_combout\ : std_logic;
SIGNAL \U2|cnt~0_combout\ : std_logic;
SIGNAL \U2|Add0~10_combout\ : std_logic;
SIGNAL \U2|cnt~1_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \U5|Mux6~0_combout\ : std_logic;
SIGNAL \tipo_in~input_o\ : std_logic;
SIGNAL \U5|ssd[0]~0_combout\ : std_logic;
SIGNAL \U5|ssd[1]~1_combout\ : std_logic;
SIGNAL \U5|ssd[2]~2_combout\ : std_logic;
SIGNAL \U5|Mux3~0_combout\ : std_logic;
SIGNAL \U5|ssd[3]~3_combout\ : std_logic;
SIGNAL \U5|ssd[4]~4_combout\ : std_logic;
SIGNAL \U5|Mux1~0_combout\ : std_logic;
SIGNAL \U5|ssd[5]~5_combout\ : std_logic;
SIGNAL \U5|Mux0~0_combout\ : std_logic;
SIGNAL \U5|ssd[6]~6_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[35]~44_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[34]~46_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[33]~47_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[44]~52_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[41]~55_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[40]~57_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[54]~61_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[53]~62_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[52]~74_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[51]~64_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[50]~65_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[49]~66_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[59]~70_combout\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U4|Mux6~0_combout\ : std_logic;
SIGNAL \U4|ssd[0]~0_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ : std_logic;
SIGNAL \U4|ssd[1]~1_combout\ : std_logic;
SIGNAL \U4|ssd[2]~2_combout\ : std_logic;
SIGNAL \U4|Mux3~0_combout\ : std_logic;
SIGNAL \U4|ssd[3]~3_combout\ : std_logic;
SIGNAL \U4|ssd[4]~4_combout\ : std_logic;
SIGNAL \U4|Mux1~0_combout\ : std_logic;
SIGNAL \U4|ssd[5]~5_combout\ : std_logic;
SIGNAL \U4|Mux0~0_combout\ : std_logic;
SIGNAL \U4|ssd[6]~6_combout\ : std_logic;
SIGNAL \U1|cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U2|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_rst_in~input_o\ : std_logic;
SIGNAL \U4|ALT_INV_ssd[5]~5_combout\ : std_logic;
SIGNAL \U4|ALT_INV_ssd[4]~4_combout\ : std_logic;
SIGNAL \U4|ALT_INV_ssd[3]~3_combout\ : std_logic;
SIGNAL \U4|ALT_INV_ssd[2]~2_combout\ : std_logic;
SIGNAL \U4|ALT_INV_ssd[0]~0_combout\ : std_logic;
SIGNAL \U5|ALT_INV_ssd[5]~5_combout\ : std_logic;
SIGNAL \U5|ALT_INV_ssd[4]~4_combout\ : std_logic;
SIGNAL \U5|ALT_INV_ssd[3]~3_combout\ : std_logic;
SIGNAL \U5|ALT_INV_ssd[2]~2_combout\ : std_logic;
SIGNAL \U5|ALT_INV_ssd[0]~0_combout\ : std_logic;

BEGIN

ww_clk50MHz_in <= clk50MHz_in;
ww_rst_in <= rst_in;
ww_tipo_in <= tipo_in;
ssd_D <= ww_ssd_D;
ssd_U <= ww_ssd_U;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk50MHz_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz_in~input_o\);
\ALT_INV_rst_in~input_o\ <= NOT \rst_in~input_o\;
\U4|ALT_INV_ssd[5]~5_combout\ <= NOT \U4|ssd[5]~5_combout\;
\U4|ALT_INV_ssd[4]~4_combout\ <= NOT \U4|ssd[4]~4_combout\;
\U4|ALT_INV_ssd[3]~3_combout\ <= NOT \U4|ssd[3]~3_combout\;
\U4|ALT_INV_ssd[2]~2_combout\ <= NOT \U4|ssd[2]~2_combout\;
\U4|ALT_INV_ssd[0]~0_combout\ <= NOT \U4|ssd[0]~0_combout\;
\U5|ALT_INV_ssd[5]~5_combout\ <= NOT \U5|ssd[5]~5_combout\;
\U5|ALT_INV_ssd[4]~4_combout\ <= NOT \U5|ssd[4]~4_combout\;
\U5|ALT_INV_ssd[3]~3_combout\ <= NOT \U5|ssd[3]~3_combout\;
\U5|ALT_INV_ssd[2]~2_combout\ <= NOT \U5|ssd[2]~2_combout\;
\U5|ALT_INV_ssd[0]~0_combout\ <= NOT \U5|ssd[0]~0_combout\;

-- Location: LCCOMB_X9_Y10_N18
\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\U2|cnt\(5) & (\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\U2|cnt\(5) & 
-- (!\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\U2|cnt\(5) & !\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|cnt\(5),
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X9_Y10_N20
\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\U2|cnt\(6) & (\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\U2|cnt\(6) & 
-- (!\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\U2|cnt\(6) & !\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|cnt\(6),
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X8_Y10_N0
\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\U3|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\) # (\U3|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\)))
-- \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\U3|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\) # (\U3|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\,
	datad => VCC,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X8_Y10_N2
\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\U3|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\) # 
-- (\U3|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\)))) # (!\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\U3|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ & 
-- (!\U3|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\)))
-- \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\U3|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ & (!\U3|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\ & 
-- !\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\,
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X5_Y9_N22
\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = !\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY(!\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X6_Y9_N20
\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\U3|Mod0|auto_generated|divider|divider|StageOut[32]~50_combout\) # (\U3|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\)))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\U3|Mod0|auto_generated|divider|divider|StageOut[32]~50_combout\) # (\U3|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[32]~50_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\,
	datad => VCC,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X6_Y9_N22
\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\U3|Mod0|auto_generated|divider|divider|StageOut[33]~48_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[33]~47_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[33]~48_combout\ & 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[33]~47_combout\)))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|StageOut[33]~48_combout\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[33]~47_combout\ & 
-- !\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[33]~48_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[33]~47_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X6_Y9_N26
\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\U3|Mod0|auto_generated|divider|divider|StageOut[35]~43_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[35]~44_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[35]~43_combout\ & 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[35]~44_combout\)))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|StageOut[35]~43_combout\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[35]~44_combout\ & 
-- !\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[35]~43_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[35]~44_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X6_Y9_N28
\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\U3|Mod0|auto_generated|divider|divider|StageOut[36]~42_combout\ & ((GND) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))) # 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[36]~42_combout\ & (\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND)))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\U3|Mod0|auto_generated|divider|divider|StageOut[36]~42_combout\) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[36]~42_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X7_Y9_N12
\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\U3|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\) # (\U3|Mod0|auto_generated|divider|divider|StageOut[40]~57_combout\)))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\U3|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\) # (\U3|Mod0|auto_generated|divider|divider|StageOut[40]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[40]~57_combout\,
	datad => VCC,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X7_Y9_N14
\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\U3|Mod0|auto_generated|divider|divider|StageOut[41]~56_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[41]~55_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[41]~56_combout\ & 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[41]~55_combout\)))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|StageOut[41]~56_combout\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[41]~55_combout\ & 
-- !\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[41]~56_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[41]~55_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X7_Y9_N18
\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\U3|Mod0|auto_generated|divider|divider|StageOut[43]~53_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[43]~53_combout\ & 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\)))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|StageOut[43]~53_combout\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\ & 
-- !\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[43]~53_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X12_Y12_N6
\U1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|cnt\(0) $ (VCC)
-- \U1|Add0~1\ = CARRY(\U1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(0),
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: LCCOMB_X12_Y12_N10
\U1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = (\U1|cnt\(2) & (\U1|Add0~3\ $ (GND))) # (!\U1|cnt\(2) & (!\U1|Add0~3\ & VCC))
-- \U1|Add0~5\ = CARRY((\U1|cnt\(2) & !\U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(2),
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: LCCOMB_X12_Y11_N14
\U1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~40_combout\ = (\U1|cnt\(20) & (\U1|Add0~39\ $ (GND))) # (!\U1|cnt\(20) & (!\U1|Add0~39\ & VCC))
-- \U1|Add0~41\ = CARRY((\U1|cnt\(20) & !\U1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(20),
	datad => VCC,
	cin => \U1|Add0~39\,
	combout => \U1|Add0~40_combout\,
	cout => \U1|Add0~41\);

-- Location: LCCOMB_X12_Y11_N16
\U1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~42_combout\ = (\U1|cnt\(21) & (!\U1|Add0~41\)) # (!\U1|cnt\(21) & ((\U1|Add0~41\) # (GND)))
-- \U1|Add0~43\ = CARRY((!\U1|Add0~41\) # (!\U1|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(21),
	datad => VCC,
	cin => \U1|Add0~41\,
	combout => \U1|Add0~42_combout\,
	cout => \U1|Add0~43\);

-- Location: LCCOMB_X12_Y11_N18
\U1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~44_combout\ = (\U1|cnt\(22) & (\U1|Add0~43\ $ (GND))) # (!\U1|cnt\(22) & (!\U1|Add0~43\ & VCC))
-- \U1|Add0~45\ = CARRY((\U1|cnt\(22) & !\U1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(22),
	datad => VCC,
	cin => \U1|Add0~43\,
	combout => \U1|Add0~44_combout\,
	cout => \U1|Add0~45\);

-- Location: LCCOMB_X12_Y11_N20
\U1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~46_combout\ = (\U1|cnt\(23) & (!\U1|Add0~45\)) # (!\U1|cnt\(23) & ((\U1|Add0~45\) # (GND)))
-- \U1|Add0~47\ = CARRY((!\U1|Add0~45\) # (!\U1|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(23),
	datad => VCC,
	cin => \U1|Add0~45\,
	combout => \U1|Add0~46_combout\,
	cout => \U1|Add0~47\);

-- Location: LCCOMB_X12_Y11_N22
\U1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~48_combout\ = (\U1|cnt\(24) & (\U1|Add0~47\ $ (GND))) # (!\U1|cnt\(24) & (!\U1|Add0~47\ & VCC))
-- \U1|Add0~49\ = CARRY((\U1|cnt\(24) & !\U1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(24),
	datad => VCC,
	cin => \U1|Add0~47\,
	combout => \U1|Add0~48_combout\,
	cout => \U1|Add0~49\);

-- Location: LCCOMB_X12_Y11_N24
\U1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~50_combout\ = \U1|cnt\(25) $ (\U1|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(25),
	cin => \U1|Add0~49\,
	combout => \U1|Add0~50_combout\);

-- Location: LCCOMB_X9_Y10_N6
\U3|Div0|auto_generated|divider|divider|StageOut[23]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\);

-- Location: LCCOMB_X8_Y10_N26
\U3|Div0|auto_generated|divider|divider|StageOut[22]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\ = (!\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\);

-- Location: LCCOMB_X9_Y10_N30
\U3|Div0|auto_generated|divider|divider|StageOut[21]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U2|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U2|cnt\(4),
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\);

-- Location: LCCOMB_X8_Y10_N30
\U3|Div0|auto_generated|divider|divider|StageOut[20]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U2|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U2|cnt\(3),
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\);

-- Location: LCCOMB_X9_Y11_N4
\U3|Div0|auto_generated|divider|divider|StageOut[27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X8_Y11_N16
\U3|Div0|auto_generated|divider|divider|StageOut[26]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\);

-- Location: LCCOMB_X8_Y11_N10
\U3|Div0|auto_generated|divider|divider|StageOut[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \U2|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \U2|cnt\(2),
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X8_Y11_N12
\U3|Div0|auto_generated|divider|divider|StageOut[31]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \U2|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U2|cnt\(2),
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\);

-- Location: LCCOMB_X8_Y11_N2
\U3|Div0|auto_generated|divider|divider|StageOut[30]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\ = (\U2|cnt\(1) & !\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(1),
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\);

-- Location: LCCOMB_X5_Y9_N12
\U3|Mod0|auto_generated|divider|divider|StageOut[36]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[36]~42_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[36]~42_combout\);

-- Location: LCCOMB_X5_Y9_N10
\U3|Mod0|auto_generated|divider|divider|StageOut[35]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[35]~43_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U2|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U2|cnt\(6),
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[35]~43_combout\);

-- Location: LCCOMB_X5_Y9_N26
\U3|Mod0|auto_generated|divider|divider|StageOut[34]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[34]~45_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U2|cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U2|cnt\(5),
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[34]~45_combout\);

-- Location: LCCOMB_X5_Y9_N0
\U3|Mod0|auto_generated|divider|divider|StageOut[33]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[33]~48_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[33]~48_combout\);

-- Location: LCCOMB_X6_Y9_N10
\U3|Mod0|auto_generated|divider|divider|StageOut[32]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[32]~50_combout\ = (!\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U2|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U2|cnt\(3),
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[32]~50_combout\);

-- Location: LCCOMB_X6_Y9_N8
\U3|Mod0|auto_generated|divider|divider|StageOut[45]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[45]~51_combout\ = (!\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[45]~51_combout\);

-- Location: LCCOMB_X6_Y9_N16
\U3|Mod0|auto_generated|divider|divider|StageOut[43]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[43]~53_combout\ = (!\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[43]~53_combout\);

-- Location: LCCOMB_X6_Y9_N2
\U3|Mod0|auto_generated|divider|divider|StageOut[42]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[42]~54_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[42]~54_combout\);

-- Location: LCCOMB_X6_Y9_N14
\U3|Mod0|auto_generated|divider|divider|StageOut[41]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[41]~56_combout\ = (!\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[41]~56_combout\);

-- Location: LCCOMB_X7_Y9_N6
\U3|Mod0|auto_generated|divider|divider|StageOut[40]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\ = (!\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U2|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U2|cnt\(2),
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[40]~58_combout\);

-- Location: LCCOMB_X7_Y9_N0
\U3|Mod0|auto_generated|divider|divider|StageOut[48]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[48]~59_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \U2|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U2|cnt\(1),
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[48]~59_combout\);

-- Location: LCCOMB_X7_Y9_N8
\U3|Mod0|auto_generated|divider|divider|StageOut[52]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[52]~63_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[52]~63_combout\);

-- Location: LCCOMB_X7_Y9_N2
\U3|Mod0|auto_generated|divider|divider|StageOut[49]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[49]~67_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[49]~67_combout\);

-- Location: LCCOMB_X10_Y11_N30
\U2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal0~0_combout\ = (\U2|cnt\(0) & (\U2|cnt\(6) & (\U2|cnt\(5) & !\U2|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(0),
	datab => \U2|cnt\(6),
	datac => \U2|cnt\(5),
	datad => \U2|cnt\(4),
	combout => \U2|Equal0~0_combout\);

-- Location: FF_X12_Y11_N27
\U1|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|cnt~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(25));

-- Location: FF_X11_Y11_N5
\U1|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|cnt~1_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(23));

-- Location: FF_X12_Y11_N29
\U1|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|cnt~2_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(22));

-- Location: FF_X12_Y11_N23
\U1|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|Add0~48_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(24));

-- Location: LCCOMB_X11_Y11_N10
\U1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (\U1|cnt\(25) & (\U1|cnt\(23) & (\U1|cnt\(22) & !\U1|cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(25),
	datab => \U1|cnt\(23),
	datac => \U1|cnt\(22),
	datad => \U1|cnt\(24),
	combout => \U1|Equal0~0_combout\);

-- Location: FF_X11_Y11_N27
\U1|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|cnt~4_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(20));

-- Location: FF_X12_Y12_N11
\U1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|Add0~4_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(2));

-- Location: FF_X12_Y12_N7
\U1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|Add0~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(0));

-- Location: LCCOMB_X12_Y12_N0
\U1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~7_combout\ = (\U1|cnt\(1) & \U1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|cnt\(1),
	datad => \U1|cnt\(0),
	combout => \U1|Equal0~7_combout\);

-- Location: LCCOMB_X12_Y11_N26
\U1|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~0_combout\ = (!\U1|Equal0~8_combout\ & \U1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal0~8_combout\,
	datad => \U1|Add0~50_combout\,
	combout => \U1|cnt~0_combout\);

-- Location: LCCOMB_X11_Y11_N4
\U1|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~1_combout\ = (\U1|Add0~46_combout\ & !\U1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~46_combout\,
	datad => \U1|Equal0~8_combout\,
	combout => \U1|cnt~1_combout\);

-- Location: LCCOMB_X12_Y11_N28
\U1|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~2_combout\ = (!\U1|Equal0~8_combout\ & \U1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal0~8_combout\,
	datad => \U1|Add0~44_combout\,
	combout => \U1|cnt~2_combout\);

-- Location: LCCOMB_X11_Y11_N26
\U1|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~4_combout\ = (\U1|Add0~40_combout\ & !\U1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~40_combout\,
	datad => \U1|Equal0~8_combout\,
	combout => \U1|cnt~4_combout\);

-- Location: LCCOMB_X9_Y11_N30
\U3|Div0|auto_generated|divider|divider|StageOut[33]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\U3|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\) # 
-- ((\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\);

-- Location: LCCOMB_X7_Y9_N10
\U3|Mod0|auto_generated|divider|divider|StageOut[54]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[54]~72_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\) # 
-- ((\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[54]~72_combout\);

-- Location: LCCOMB_X6_Y9_N0
\U3|Mod0|auto_generated|divider|divider|StageOut[53]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[53]~73_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\) # 
-- ((\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[53]~73_combout\);

-- Location: LCCOMB_X6_Y9_N18
\U3|Mod0|auto_generated|divider|divider|StageOut[51]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[51]~75_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\) # 
-- ((\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[51]~75_combout\);

-- Location: LCCOMB_X9_Y10_N10
\U3|Div0|auto_generated|divider|divider|StageOut[28]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U2|cnt\(5)))) # 
-- (!\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \U2|cnt\(5),
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\);

-- Location: LCCOMB_X8_Y11_N26
\U3|Div0|auto_generated|divider|divider|StageOut[32]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\U2|cnt\(3)))) # 
-- (!\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U2|cnt\(3),
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\);

-- Location: LCCOMB_X5_Y9_N14
\U3|Mod0|auto_generated|divider|divider|StageOut[44]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U2|cnt\(6))) # 
-- (!\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(6),
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\);

-- Location: IOIBUF_X0_Y21_N22
\clk50MHz_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz_in,
	o => \clk50MHz_in~input_o\);

-- Location: CLKCTRL_G3
\clk50MHz_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50MHz_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50MHz_in~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y4_N23
\ssd_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_ssd[0]~0_combout\,
	devoe => ww_devoe,
	o => \ssd_D[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\ssd_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ssd[1]~1_combout\,
	devoe => ww_devoe,
	o => \ssd_D[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\ssd_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_ssd[2]~2_combout\,
	devoe => ww_devoe,
	o => \ssd_D[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\ssd_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_ssd[3]~3_combout\,
	devoe => ww_devoe,
	o => \ssd_D[3]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\ssd_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_ssd[4]~4_combout\,
	devoe => ww_devoe,
	o => \ssd_D[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\ssd_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_ssd[5]~5_combout\,
	devoe => ww_devoe,
	o => \ssd_D[5]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\ssd_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ssd[6]~6_combout\,
	devoe => ww_devoe,
	o => \ssd_D[6]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\ssd_U[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_ssd[0]~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\ssd_U[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ssd[1]~1_combout\,
	devoe => ww_devoe,
	o => \ssd_U[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\ssd_U[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_ssd[2]~2_combout\,
	devoe => ww_devoe,
	o => \ssd_U[2]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\ssd_U[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_ssd[3]~3_combout\,
	devoe => ww_devoe,
	o => \ssd_U[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\ssd_U[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_ssd[4]~4_combout\,
	devoe => ww_devoe,
	o => \ssd_U[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\ssd_U[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_ssd[5]~5_combout\,
	devoe => ww_devoe,
	o => \ssd_U[5]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\ssd_U[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ssd[6]~6_combout\,
	devoe => ww_devoe,
	o => \ssd_U[6]~output_o\);

-- Location: LCCOMB_X10_Y11_N12
\U2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = \U2|cnt\(0) $ (VCC)
-- \U2|Add0~1\ = CARRY(\U2|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(0),
	datad => VCC,
	combout => \U2|Add0~0_combout\,
	cout => \U2|Add0~1\);

-- Location: LCCOMB_X10_Y11_N14
\U2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~2_combout\ = (\U2|cnt\(1) & (!\U2|Add0~1\)) # (!\U2|cnt\(1) & ((\U2|Add0~1\) # (GND)))
-- \U2|Add0~3\ = CARRY((!\U2|Add0~1\) # (!\U2|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|cnt\(1),
	datad => VCC,
	cin => \U2|Add0~1\,
	combout => \U2|Add0~2_combout\,
	cout => \U2|Add0~3\);

-- Location: IOIBUF_X67_Y10_N1
\rst_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_in,
	o => \rst_in~input_o\);

-- Location: LCCOMB_X12_Y12_N8
\U1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\U1|cnt\(1) & (!\U1|Add0~1\)) # (!\U1|cnt\(1) & ((\U1|Add0~1\) # (GND)))
-- \U1|Add0~3\ = CARRY((!\U1|Add0~1\) # (!\U1|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(1),
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: FF_X12_Y12_N9
\U1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|Add0~2_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(1));

-- Location: LCCOMB_X12_Y12_N12
\U1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|cnt\(3) & (!\U1|Add0~5\)) # (!\U1|cnt\(3) & ((\U1|Add0~5\) # (GND)))
-- \U1|Add0~7\ = CARRY((!\U1|Add0~5\) # (!\U1|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(3),
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: LCCOMB_X12_Y12_N14
\U1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = (\U1|cnt\(4) & (\U1|Add0~7\ $ (GND))) # (!\U1|cnt\(4) & (!\U1|Add0~7\ & VCC))
-- \U1|Add0~9\ = CARRY((\U1|cnt\(4) & !\U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(4),
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: FF_X12_Y12_N15
\U1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|Add0~8_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(4));

-- Location: LCCOMB_X12_Y12_N16
\U1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|cnt\(5) & (!\U1|Add0~9\)) # (!\U1|cnt\(5) & ((\U1|Add0~9\) # (GND)))
-- \U1|Add0~11\ = CARRY((!\U1|Add0~9\) # (!\U1|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(5),
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: FF_X12_Y12_N17
\U1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|Add0~10_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(5));

-- Location: LCCOMB_X12_Y12_N18
\U1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = (\U1|cnt\(6) & (\U1|Add0~11\ $ (GND))) # (!\U1|cnt\(6) & (!\U1|Add0~11\ & VCC))
-- \U1|Add0~13\ = CARRY((\U1|cnt\(6) & !\U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(6),
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: FF_X12_Y12_N19
\U1|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|Add0~12_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(6));

-- Location: LCCOMB_X12_Y12_N20
\U1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|cnt\(7) & (!\U1|Add0~13\)) # (!\U1|cnt\(7) & ((\U1|Add0~13\) # (GND)))
-- \U1|Add0~15\ = CARRY((!\U1|Add0~13\) # (!\U1|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(7),
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: LCCOMB_X12_Y12_N2
\U1|cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~11_combout\ = (!\U1|Equal0~8_combout\ & \U1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal0~8_combout\,
	datad => \U1|Add0~14_combout\,
	combout => \U1|cnt~11_combout\);

-- Location: FF_X12_Y12_N3
\U1|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|cnt~11_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(7));

-- Location: LCCOMB_X12_Y12_N22
\U1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|cnt\(8) & (\U1|Add0~15\ $ (GND))) # (!\U1|cnt\(8) & (!\U1|Add0~15\ & VCC))
-- \U1|Add0~17\ = CARRY((\U1|cnt\(8) & !\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(8),
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: FF_X12_Y12_N23
\U1|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|Add0~16_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(8));

-- Location: LCCOMB_X12_Y12_N24
\U1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = (\U1|cnt\(9) & (!\U1|Add0~17\)) # (!\U1|cnt\(9) & ((\U1|Add0~17\) # (GND)))
-- \U1|Add0~19\ = CARRY((!\U1|Add0~17\) # (!\U1|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(9),
	datad => VCC,
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\,
	cout => \U1|Add0~19\);

-- Location: FF_X12_Y12_N25
\U1|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|Add0~18_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(9));

-- Location: LCCOMB_X11_Y12_N12
\U1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~5_combout\ = (!\U1|cnt\(7) & (!\U1|cnt\(8) & (!\U1|cnt\(9) & \U1|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(7),
	datab => \U1|cnt\(8),
	datac => \U1|cnt\(9),
	datad => \U1|cnt\(6),
	combout => \U1|Equal0~5_combout\);

-- Location: FF_X12_Y12_N13
\U1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|Add0~6_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(3));

-- Location: LCCOMB_X11_Y12_N30
\U1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~6_combout\ = (\U1|cnt\(2) & (\U1|cnt\(4) & (\U1|cnt\(3) & \U1|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(2),
	datab => \U1|cnt\(4),
	datac => \U1|cnt\(3),
	datad => \U1|cnt\(5),
	combout => \U1|Equal0~6_combout\);

-- Location: LCCOMB_X12_Y12_N26
\U1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~20_combout\ = (\U1|cnt\(10) & (\U1|Add0~19\ $ (GND))) # (!\U1|cnt\(10) & (!\U1|Add0~19\ & VCC))
-- \U1|Add0~21\ = CARRY((\U1|cnt\(10) & !\U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(10),
	datad => VCC,
	cin => \U1|Add0~19\,
	combout => \U1|Add0~20_combout\,
	cout => \U1|Add0~21\);

-- Location: LCCOMB_X12_Y12_N28
\U1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~22_combout\ = (\U1|cnt\(11) & (!\U1|Add0~21\)) # (!\U1|cnt\(11) & ((\U1|Add0~21\) # (GND)))
-- \U1|Add0~23\ = CARRY((!\U1|Add0~21\) # (!\U1|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(11),
	datad => VCC,
	cin => \U1|Add0~21\,
	combout => \U1|Add0~22_combout\,
	cout => \U1|Add0~23\);

-- Location: FF_X12_Y12_N29
\U1|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|Add0~22_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(11));

-- Location: LCCOMB_X12_Y12_N30
\U1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~24_combout\ = (\U1|cnt\(12) & (\U1|Add0~23\ $ (GND))) # (!\U1|cnt\(12) & (!\U1|Add0~23\ & VCC))
-- \U1|Add0~25\ = CARRY((\U1|cnt\(12) & !\U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(12),
	datad => VCC,
	cin => \U1|Add0~23\,
	combout => \U1|Add0~24_combout\,
	cout => \U1|Add0~25\);

-- Location: LCCOMB_X12_Y12_N4
\U1|cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~10_combout\ = (\U1|Add0~24_combout\ & !\U1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~24_combout\,
	datad => \U1|Equal0~8_combout\,
	combout => \U1|cnt~10_combout\);

-- Location: FF_X12_Y12_N5
\U1|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|cnt~10_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(12));

-- Location: LCCOMB_X12_Y11_N0
\U1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~26_combout\ = (\U1|cnt\(13) & (!\U1|Add0~25\)) # (!\U1|cnt\(13) & ((\U1|Add0~25\) # (GND)))
-- \U1|Add0~27\ = CARRY((!\U1|Add0~25\) # (!\U1|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(13),
	datad => VCC,
	cin => \U1|Add0~25\,
	combout => \U1|Add0~26_combout\,
	cout => \U1|Add0~27\);

-- Location: LCCOMB_X12_Y11_N2
\U1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~28_combout\ = (\U1|cnt\(14) & (\U1|Add0~27\ $ (GND))) # (!\U1|cnt\(14) & (!\U1|Add0~27\ & VCC))
-- \U1|Add0~29\ = CARRY((\U1|cnt\(14) & !\U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(14),
	datad => VCC,
	cin => \U1|Add0~27\,
	combout => \U1|Add0~28_combout\,
	cout => \U1|Add0~29\);

-- Location: LCCOMB_X11_Y11_N6
\U1|cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~8_combout\ = (!\U1|Equal0~8_combout\ & \U1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~8_combout\,
	datad => \U1|Add0~28_combout\,
	combout => \U1|cnt~8_combout\);

-- Location: FF_X11_Y11_N7
\U1|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|cnt~8_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(14));

-- Location: LCCOMB_X12_Y11_N4
\U1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~30_combout\ = (\U1|cnt\(15) & (!\U1|Add0~29\)) # (!\U1|cnt\(15) & ((\U1|Add0~29\) # (GND)))
-- \U1|Add0~31\ = CARRY((!\U1|Add0~29\) # (!\U1|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(15),
	datad => VCC,
	cin => \U1|Add0~29\,
	combout => \U1|Add0~30_combout\,
	cout => \U1|Add0~31\);

-- Location: LCCOMB_X12_Y11_N6
\U1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~32_combout\ = (\U1|cnt\(16) & (\U1|Add0~31\ $ (GND))) # (!\U1|cnt\(16) & (!\U1|Add0~31\ & VCC))
-- \U1|Add0~33\ = CARRY((\U1|cnt\(16) & !\U1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(16),
	datad => VCC,
	cin => \U1|Add0~31\,
	combout => \U1|Add0~32_combout\,
	cout => \U1|Add0~33\);

-- Location: LCCOMB_X12_Y11_N8
\U1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~34_combout\ = (\U1|cnt\(17) & (!\U1|Add0~33\)) # (!\U1|cnt\(17) & ((\U1|Add0~33\) # (GND)))
-- \U1|Add0~35\ = CARRY((!\U1|Add0~33\) # (!\U1|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(17),
	datad => VCC,
	cin => \U1|Add0~33\,
	combout => \U1|Add0~34_combout\,
	cout => \U1|Add0~35\);

-- Location: LCCOMB_X11_Y11_N16
\U1|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~6_combout\ = (\U1|Add0~34_combout\ & !\U1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~34_combout\,
	datad => \U1|Equal0~8_combout\,
	combout => \U1|cnt~6_combout\);

-- Location: FF_X11_Y11_N17
\U1|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|cnt~6_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(17));

-- Location: LCCOMB_X12_Y11_N30
\U1|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~7_combout\ = (!\U1|Equal0~8_combout\ & \U1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~8_combout\,
	datac => \U1|Add0~30_combout\,
	combout => \U1|cnt~7_combout\);

-- Location: FF_X12_Y11_N31
\U1|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|cnt~7_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(15));

-- Location: FF_X12_Y11_N7
\U1|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|Add0~32_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(16));

-- Location: LCCOMB_X11_Y11_N8
\U1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (\U1|cnt\(14) & (\U1|cnt\(17) & (\U1|cnt\(15) & !\U1|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(14),
	datab => \U1|cnt\(17),
	datac => \U1|cnt\(15),
	datad => \U1|cnt\(16),
	combout => \U1|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y11_N10
\U1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~36_combout\ = (\U1|cnt\(18) & (\U1|Add0~35\ $ (GND))) # (!\U1|cnt\(18) & (!\U1|Add0~35\ & VCC))
-- \U1|Add0~37\ = CARRY((\U1|cnt\(18) & !\U1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(18),
	datad => VCC,
	cin => \U1|Add0~35\,
	combout => \U1|Add0~36_combout\,
	cout => \U1|Add0~37\);

-- Location: LCCOMB_X12_Y11_N12
\U1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~38_combout\ = (\U1|cnt\(19) & (!\U1|Add0~37\)) # (!\U1|cnt\(19) & ((\U1|Add0~37\) # (GND)))
-- \U1|Add0~39\ = CARRY((!\U1|Add0~37\) # (!\U1|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|cnt\(19),
	datad => VCC,
	cin => \U1|Add0~37\,
	combout => \U1|Add0~38_combout\,
	cout => \U1|Add0~39\);

-- Location: LCCOMB_X11_Y11_N24
\U1|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~5_combout\ = (\U1|Add0~38_combout\ & !\U1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~38_combout\,
	datad => \U1|Equal0~8_combout\,
	combout => \U1|cnt~5_combout\);

-- Location: FF_X11_Y11_N25
\U1|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|cnt~5_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(19));

-- Location: LCCOMB_X11_Y11_N20
\U1|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~3_combout\ = (!\U1|Equal0~8_combout\ & \U1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~8_combout\,
	datad => \U1|Add0~42_combout\,
	combout => \U1|cnt~3_combout\);

-- Location: FF_X11_Y11_N21
\U1|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|cnt~3_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(21));

-- Location: FF_X12_Y11_N11
\U1|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|Add0~36_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(18));

-- Location: LCCOMB_X11_Y11_N22
\U1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (\U1|cnt\(20) & (\U1|cnt\(21) & (!\U1|cnt\(18) & \U1|cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(20),
	datab => \U1|cnt\(21),
	datac => \U1|cnt\(18),
	datad => \U1|cnt\(19),
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y11_N14
\U1|cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|cnt~9_combout\ = (\U1|Add0~26_combout\ & !\U1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~26_combout\,
	datad => \U1|Equal0~8_combout\,
	combout => \U1|cnt~9_combout\);

-- Location: FF_X11_Y11_N15
\U1|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|cnt~9_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(13));

-- Location: FF_X12_Y12_N27
\U1|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U1|Add0~20_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|cnt\(10));

-- Location: LCCOMB_X11_Y11_N12
\U1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = (\U1|cnt\(12) & (\U1|cnt\(13) & (!\U1|cnt\(10) & !\U1|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cnt\(12),
	datab => \U1|cnt\(13),
	datac => \U1|cnt\(10),
	datad => \U1|cnt\(11),
	combout => \U1|Equal0~3_combout\);

-- Location: LCCOMB_X11_Y11_N18
\U1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~4_combout\ = (\U1|Equal0~0_combout\ & (\U1|Equal0~2_combout\ & (\U1|Equal0~1_combout\ & \U1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \U1|Equal0~2_combout\,
	datac => \U1|Equal0~1_combout\,
	datad => \U1|Equal0~3_combout\,
	combout => \U1|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y11_N0
\U1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~8_combout\ = (\U1|Equal0~7_combout\ & (\U1|Equal0~5_combout\ & (\U1|Equal0~6_combout\ & \U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~7_combout\,
	datab => \U1|Equal0~5_combout\,
	datac => \U1|Equal0~6_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|Equal0~8_combout\);

-- Location: FF_X10_Y11_N15
\U2|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U2|Add0~2_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	ena => \U1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cnt\(1));

-- Location: LCCOMB_X10_Y11_N16
\U2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~4_combout\ = (\U2|cnt\(2) & (\U2|Add0~3\ $ (GND))) # (!\U2|cnt\(2) & (!\U2|Add0~3\ & VCC))
-- \U2|Add0~5\ = CARRY((\U2|cnt\(2) & !\U2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(2),
	datad => VCC,
	cin => \U2|Add0~3\,
	combout => \U2|Add0~4_combout\,
	cout => \U2|Add0~5\);

-- Location: LCCOMB_X10_Y11_N18
\U2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~6_combout\ = (\U2|cnt\(3) & (!\U2|Add0~5\)) # (!\U2|cnt\(3) & ((\U2|Add0~5\) # (GND)))
-- \U2|Add0~7\ = CARRY((!\U2|Add0~5\) # (!\U2|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|cnt\(3),
	datad => VCC,
	cin => \U2|Add0~5\,
	combout => \U2|Add0~6_combout\,
	cout => \U2|Add0~7\);

-- Location: FF_X10_Y11_N19
\U2|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U2|Add0~6_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	ena => \U1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cnt\(3));

-- Location: LCCOMB_X10_Y11_N10
\U2|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cnt~2_combout\ = (!\U2|Equal0~1_combout\ & \U2|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Equal0~1_combout\,
	datad => \U2|Add0~4_combout\,
	combout => \U2|cnt~2_combout\);

-- Location: FF_X10_Y11_N11
\U2|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U2|cnt~2_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	ena => \U1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cnt\(2));

-- Location: LCCOMB_X10_Y11_N26
\U2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal0~1_combout\ = (\U2|Equal0~0_combout\ & (!\U2|cnt\(3) & (\U2|cnt\(1) & !\U2|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal0~0_combout\,
	datab => \U2|cnt\(3),
	datac => \U2|cnt\(1),
	datad => \U2|cnt\(2),
	combout => \U2|Equal0~1_combout\);

-- Location: LCCOMB_X10_Y11_N20
\U2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~8_combout\ = (\U2|cnt\(4) & (\U2|Add0~7\ $ (GND))) # (!\U2|cnt\(4) & (!\U2|Add0~7\ & VCC))
-- \U2|Add0~9\ = CARRY((\U2|cnt\(4) & !\U2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|cnt\(4),
	datad => VCC,
	cin => \U2|Add0~7\,
	combout => \U2|Add0~8_combout\,
	cout => \U2|Add0~9\);

-- Location: FF_X10_Y11_N21
\U2|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U2|Add0~8_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	ena => \U1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cnt\(4));

-- Location: LCCOMB_X10_Y11_N22
\U2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~10_combout\ = (\U2|cnt\(5) & (!\U2|Add0~9\)) # (!\U2|cnt\(5) & ((\U2|Add0~9\) # (GND)))
-- \U2|Add0~11\ = CARRY((!\U2|Add0~9\) # (!\U2|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(5),
	datad => VCC,
	cin => \U2|Add0~9\,
	combout => \U2|Add0~10_combout\,
	cout => \U2|Add0~11\);

-- Location: LCCOMB_X10_Y11_N24
\U2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~12_combout\ = \U2|Add0~11\ $ (!\U2|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|cnt\(6),
	cin => \U2|Add0~11\,
	combout => \U2|Add0~12_combout\);

-- Location: LCCOMB_X10_Y11_N28
\U2|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cnt~0_combout\ = (!\U2|Equal0~1_combout\ & \U2|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Equal0~1_combout\,
	datad => \U2|Add0~12_combout\,
	combout => \U2|cnt~0_combout\);

-- Location: FF_X10_Y11_N29
\U2|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U2|cnt~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	ena => \U1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cnt\(6));

-- Location: LCCOMB_X10_Y11_N6
\U2|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|cnt~1_combout\ = (!\U2|Equal0~1_combout\ & \U2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal0~1_combout\,
	datac => \U2|Add0~10_combout\,
	combout => \U2|cnt~1_combout\);

-- Location: FF_X10_Y11_N7
\U2|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U2|cnt~1_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	ena => \U1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cnt\(5));

-- Location: LCCOMB_X9_Y10_N16
\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \U2|cnt\(4) $ (VCC)
-- \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\U2|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|cnt\(4),
	datad => VCC,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X9_Y10_N22
\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X9_Y10_N24
\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X9_Y10_N12
\U3|Div0|auto_generated|divider|divider|StageOut[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U2|cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U2|cnt\(5),
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\);

-- Location: LCCOMB_X8_Y10_N24
\U3|Div0|auto_generated|divider|divider|StageOut[21]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\ = (!\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\);

-- Location: LCCOMB_X8_Y10_N20
\U3|Div0|auto_generated|divider|divider|StageOut[20]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\ = (!\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U2|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U2|cnt\(3),
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\);

-- Location: LCCOMB_X8_Y10_N4
\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\U3|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\) # 
-- (\U3|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\)))) # (!\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\U3|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\) # 
-- (\U3|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\)))))
-- \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\U3|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\) # 
-- (\U3|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\,
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X9_Y10_N0
\U3|Div0|auto_generated|divider|divider|StageOut[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\ = (!\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X9_Y10_N28
\U3|Div0|auto_generated|divider|divider|StageOut[23]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U2|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U2|cnt\(6),
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\);

-- Location: LCCOMB_X8_Y10_N6
\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\U3|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\ & (!\U3|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ & 
-- !\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\,
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X8_Y10_N8
\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X9_Y10_N4
\U3|Div0|auto_generated|divider|divider|StageOut[27]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U2|cnt\(4)))) # 
-- (!\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \U2|cnt\(4),
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\);

-- Location: LCCOMB_X10_Y11_N0
\U3|Div0|auto_generated|divider|divider|StageOut[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \U2|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \U2|cnt\(3),
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X9_Y11_N18
\U3|Div0|auto_generated|divider|divider|StageOut[25]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\ = (!\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \U2|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \U2|cnt\(2),
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\);

-- Location: LCCOMB_X9_Y11_N6
\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\U3|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\) # (\U3|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\)))
-- \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\U3|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\) # (\U3|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\,
	datad => VCC,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X9_Y11_N8
\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\U3|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\) # 
-- (\U3|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\U3|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\ & 
-- (!\U3|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\)))
-- \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\U3|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\ & (!\U3|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\ & 
-- !\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X9_Y11_N10
\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\U3|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\U3|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\)))) # (!\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\U3|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\U3|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\)))))
-- \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\U3|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\U3|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\,
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X9_Y11_N12
\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\U3|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\ & (!\U3|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\ & 
-- !\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X9_Y11_N14
\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X10_Y11_N8
\U3|Div0|auto_generated|divider|divider|StageOut[33]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\ = (!\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\);

-- Location: LCCOMB_X9_Y11_N0
\U3|Div0|auto_generated|divider|divider|StageOut[32]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\);

-- Location: LCCOMB_X9_Y11_N16
\U3|Div0|auto_generated|divider|divider|StageOut[31]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\ = (!\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\);

-- Location: LCCOMB_X9_Y11_N2
\U3|Div0|auto_generated|divider|divider|StageOut[30]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \U2|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \U2|cnt\(1),
	combout => \U3|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\);

-- Location: LCCOMB_X9_Y11_N20
\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\U3|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\) # (\U3|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\,
	datad => VCC,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X9_Y11_N22
\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\U3|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\ & (!\U3|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\ & 
-- !\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\,
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X9_Y11_N24
\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\U3|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\) # 
-- (\U3|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X9_Y11_N26
\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\U3|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\ & (!\U3|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\ & 
-- !\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\,
	datad => VCC,
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X9_Y11_N28
\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X8_Y11_N20
\U5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|Mux6~0_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \U5|Mux6~0_combout\);

-- Location: IOIBUF_X67_Y6_N15
\tipo_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tipo_in,
	o => \tipo_in~input_o\);

-- Location: LCCOMB_X8_Y11_N30
\U5|ssd[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ssd[0]~0_combout\ = \U5|Mux6~0_combout\ $ (\tipo_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Mux6~0_combout\,
	datad => \tipo_in~input_o\,
	combout => \U5|ssd[0]~0_combout\);

-- Location: LCCOMB_X8_Y11_N24
\U5|ssd[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ssd[1]~1_combout\ = \tipo_in~input_o\ $ (((\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (!\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \tipo_in~input_o\,
	combout => \U5|ssd[1]~1_combout\);

-- Location: LCCOMB_X8_Y11_N18
\U5|ssd[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ssd[2]~2_combout\ = \tipo_in~input_o\ $ (((\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- !\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \tipo_in~input_o\,
	combout => \U5|ssd[2]~2_combout\);

-- Location: LCCOMB_X8_Y11_N8
\U5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|Mux3~0_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ 
-- & !\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (!\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \U5|Mux3~0_combout\);

-- Location: LCCOMB_X8_Y11_N14
\U5|ssd[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ssd[3]~3_combout\ = \U5|Mux3~0_combout\ $ (\tipo_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|Mux3~0_combout\,
	datad => \tipo_in~input_o\,
	combout => \U5|ssd[3]~3_combout\);

-- Location: LCCOMB_X8_Y11_N4
\U5|ssd[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ssd[4]~4_combout\ = \tipo_in~input_o\ $ ((((!\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # 
-- (!\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \tipo_in~input_o\,
	combout => \U5|ssd[4]~4_combout\);

-- Location: LCCOMB_X8_Y11_N22
\U5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|Mux1~0_combout\ = (\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((!\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \U5|Mux1~0_combout\);

-- Location: LCCOMB_X8_Y11_N28
\U5|ssd[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ssd[5]~5_combout\ = \U5|Mux1~0_combout\ $ (\tipo_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|Mux1~0_combout\,
	datad => \tipo_in~input_o\,
	combout => \U5|ssd[5]~5_combout\);

-- Location: LCCOMB_X8_Y11_N6
\U5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|Mux0~0_combout\ = ((\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # 
-- (!\U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (\U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # 
-- (!\U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \U3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \U3|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \U5|Mux0~0_combout\);

-- Location: LCCOMB_X8_Y11_N0
\U5|ssd[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|ssd[6]~6_combout\ = \U5|Mux0~0_combout\ $ (\tipo_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Mux0~0_combout\,
	datad => \tipo_in~input_o\,
	combout => \U5|ssd[6]~6_combout\);

-- Location: LCCOMB_X5_Y9_N16
\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \U2|cnt\(4) $ (VCC)
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\U2|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(4),
	datad => VCC,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X5_Y9_N18
\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\U2|cnt\(5) & (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\U2|cnt\(5) & 
-- (!\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\U2|cnt\(5) & !\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|cnt\(5),
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X5_Y9_N20
\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\U2|cnt\(6) & (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\U2|cnt\(6) & 
-- (!\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\U2|cnt\(6) & !\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(6),
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X5_Y9_N24
\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X5_Y9_N8
\U3|Mod0|auto_generated|divider|divider|StageOut[35]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[35]~44_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[35]~44_combout\);

-- Location: LCCOMB_X5_Y9_N28
\U3|Mod0|auto_generated|divider|divider|StageOut[34]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[34]~46_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[34]~46_combout\);

-- Location: LCCOMB_X5_Y9_N6
\U3|Mod0|auto_generated|divider|divider|StageOut[33]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[33]~47_combout\ = (\U2|cnt\(4) & \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|cnt\(4),
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[33]~47_combout\);

-- Location: LCCOMB_X6_Y9_N4
\U3|Mod0|auto_generated|divider|divider|StageOut[32]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U2|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U2|cnt\(3),
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[32]~49_combout\);

-- Location: LCCOMB_X6_Y9_N24
\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\U3|Mod0|auto_generated|divider|divider|StageOut[34]~45_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[34]~46_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\U3|Mod0|auto_generated|divider|divider|StageOut[34]~45_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[34]~46_combout\)))))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[34]~45_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[34]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[34]~45_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[34]~46_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X6_Y9_N30
\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X5_Y9_N2
\U3|Mod0|auto_generated|divider|divider|StageOut[45]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & (\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- !\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\);

-- Location: LCCOMB_X6_Y9_N6
\U3|Mod0|auto_generated|divider|divider|StageOut[44]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[44]~52_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[44]~52_combout\);

-- Location: LCCOMB_X5_Y9_N4
\U3|Mod0|auto_generated|divider|divider|StageOut[43]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U2|cnt\(5)))) # 
-- (!\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U2|cnt\(5),
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\);

-- Location: LCCOMB_X5_Y9_N30
\U3|Mod0|auto_generated|divider|divider|StageOut[42]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U2|cnt\(4)))) # 
-- (!\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \U2|cnt\(4),
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\);

-- Location: LCCOMB_X6_Y9_N12
\U3|Mod0|auto_generated|divider|divider|StageOut[41]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[41]~55_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U2|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U2|cnt\(3),
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[41]~55_combout\);

-- Location: LCCOMB_X7_Y9_N28
\U3|Mod0|auto_generated|divider|divider|StageOut[40]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[40]~57_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U2|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U2|cnt\(2),
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[40]~57_combout\);

-- Location: LCCOMB_X7_Y9_N16
\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\U3|Mod0|auto_generated|divider|divider|StageOut[42]~54_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\U3|Mod0|auto_generated|divider|divider|StageOut[42]~54_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\)))))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[42]~54_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[42]~54_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[42]~78_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X7_Y9_N20
\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\U3|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[44]~52_combout\))))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\) # 
-- ((\U3|Mod0|auto_generated|divider|divider|StageOut[44]~52_combout\) # (GND))))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\U3|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\) # ((\U3|Mod0|auto_generated|divider|divider|StageOut[44]~52_combout\) # 
-- (!\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[44]~76_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[44]~52_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X7_Y9_N22
\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\U3|Mod0|auto_generated|divider|divider|StageOut[45]~51_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[45]~51_combout\ & 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\)))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|StageOut[45]~51_combout\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\ & 
-- !\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[45]~51_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[45]~71_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X7_Y9_N24
\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X8_Y9_N18
\U3|Mod0|auto_generated|divider|divider|StageOut[54]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[54]~61_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[54]~61_combout\);

-- Location: LCCOMB_X7_Y9_N30
\U3|Mod0|auto_generated|divider|divider|StageOut[53]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[53]~62_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[53]~62_combout\);

-- Location: LCCOMB_X7_Y9_N4
\U3|Mod0|auto_generated|divider|divider|StageOut[52]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[52]~74_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\) # 
-- ((\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[43]~77_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[52]~74_combout\);

-- Location: LCCOMB_X8_Y9_N28
\U3|Mod0|auto_generated|divider|divider|StageOut[51]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[51]~64_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[51]~64_combout\);

-- Location: LCCOMB_X8_Y9_N26
\U3|Mod0|auto_generated|divider|divider|StageOut[50]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[50]~65_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[50]~65_combout\);

-- Location: LCCOMB_X8_Y9_N0
\U3|Mod0|auto_generated|divider|divider|StageOut[49]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[49]~66_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \U2|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \U2|cnt\(2),
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[49]~66_combout\);

-- Location: LCCOMB_X8_Y9_N24
\U3|Mod0|auto_generated|divider|divider|StageOut[48]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\ = (!\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \U2|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \U2|cnt\(1),
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\);

-- Location: LCCOMB_X8_Y9_N2
\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\U3|Mod0|auto_generated|divider|divider|StageOut[48]~59_combout\) # (\U3|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\)))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\U3|Mod0|auto_generated|divider|divider|StageOut[48]~59_combout\) # (\U3|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[48]~59_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[48]~60_combout\,
	datad => VCC,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X8_Y9_N4
\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\U3|Mod0|auto_generated|divider|divider|StageOut[49]~67_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[49]~66_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[49]~67_combout\ & 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[49]~66_combout\)))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|StageOut[49]~67_combout\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[49]~66_combout\ & 
-- !\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[49]~67_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[49]~66_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X8_Y9_N6
\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\U3|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[50]~65_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\U3|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[50]~65_combout\)))))
-- \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\) # 
-- (\U3|Mod0|auto_generated|divider|divider|StageOut[50]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[50]~65_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X8_Y9_N8
\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|StageOut[51]~75_combout\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[51]~64_combout\ & 
-- !\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[51]~75_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[51]~64_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X8_Y9_N10
\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\U3|Mod0|auto_generated|divider|divider|StageOut[52]~63_combout\) # ((\U3|Mod0|auto_generated|divider|divider|StageOut[52]~74_combout\) # 
-- (!\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[52]~63_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[52]~74_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X8_Y9_N12
\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\U3|Mod0|auto_generated|divider|divider|StageOut[53]~73_combout\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[53]~62_combout\ & 
-- !\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[53]~73_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[53]~62_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X8_Y9_N14
\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\U3|Mod0|auto_generated|divider|divider|StageOut[54]~72_combout\) # ((\U3|Mod0|auto_generated|divider|divider|StageOut[54]~61_combout\) # 
-- (!\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[54]~72_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[54]~61_combout\,
	datad => VCC,
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X8_Y9_N16
\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X8_Y9_N20
\U3|Mod0|auto_generated|divider|divider|StageOut[58]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[49]~67_combout\) # 
-- ((\U3|Mod0|auto_generated|divider|divider|StageOut[49]~66_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[49]~67_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|StageOut[49]~66_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\);

-- Location: LCCOMB_X7_Y9_N26
\U3|Mod0|auto_generated|divider|divider|StageOut[50]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U2|cnt\(3)))) # 
-- (!\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U2|cnt\(3),
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\);

-- Location: LCCOMB_X8_Y9_N30
\U3|Mod0|auto_generated|divider|divider|StageOut[59]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[59]~70_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[50]~65_combout\) # 
-- ((\U3|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\)))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[50]~65_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[50]~79_combout\,
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[59]~70_combout\);

-- Location: FF_X10_Y11_N13
\U2|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz_in~inputclkctrl_outclk\,
	d => \U2|Add0~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	ena => \U1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|cnt\(0));

-- Location: LCCOMB_X1_Y11_N20
\U4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux6~0_combout\ = (!\U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[59]~70_combout\ & (\U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ $ (\U2|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[59]~70_combout\,
	datad => \U2|cnt\(0),
	combout => \U4|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y11_N10
\U4|ssd[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|ssd[0]~0_combout\ = \U4|Mux6~0_combout\ $ (\tipo_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|Mux6~0_combout\,
	datad => \tipo_in~input_o\,
	combout => \U4|ssd[0]~0_combout\);

-- Location: LCCOMB_X8_Y9_N22
\U3|Mod0|auto_generated|divider|divider|StageOut[57]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ = (\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\U2|cnt\(1))) # (!\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \U2|cnt\(1),
	datad => \U3|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\);

-- Location: LCCOMB_X1_Y11_N12
\U4|ssd[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|ssd[1]~1_combout\ = \tipo_in~input_o\ $ (((\U2|cnt\(0) $ (!\U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\)) # (!\U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(0),
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datad => \tipo_in~input_o\,
	combout => \U4|ssd[1]~1_combout\);

-- Location: LCCOMB_X1_Y11_N18
\U4|ssd[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|ssd[2]~2_combout\ = \tipo_in~input_o\ $ (((!\U2|cnt\(0) & (!\U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & \U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(0),
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datad => \tipo_in~input_o\,
	combout => \U4|ssd[2]~2_combout\);

-- Location: LCCOMB_X1_Y11_N0
\U4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux3~0_combout\ = (!\U3|Mod0|auto_generated|divider|divider|StageOut[59]~70_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & (\U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & \U2|cnt\(0))) # 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & (\U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ $ (\U2|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[59]~70_combout\,
	datad => \U2|cnt\(0),
	combout => \U4|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y11_N2
\U4|ssd[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|ssd[3]~3_combout\ = \U4|Mux3~0_combout\ $ (\tipo_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|Mux3~0_combout\,
	datad => \tipo_in~input_o\,
	combout => \U4|ssd[3]~3_combout\);

-- Location: LCCOMB_X1_Y11_N24
\U4|ssd[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|ssd[4]~4_combout\ = \tipo_in~input_o\ $ (((\U2|cnt\(0)) # ((\U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & !\U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|cnt\(0),
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datad => \tipo_in~input_o\,
	combout => \U4|ssd[4]~4_combout\);

-- Location: LCCOMB_X1_Y11_N26
\U4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux1~0_combout\ = (!\U3|Mod0|auto_generated|divider|divider|StageOut[59]~70_combout\ & ((\U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & ((\U2|cnt\(0)) # (!\U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\))) # 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & (!\U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\ & \U2|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[59]~70_combout\,
	datad => \U2|cnt\(0),
	combout => \U4|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y11_N28
\U4|ssd[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|ssd[5]~5_combout\ = \U4|Mux1~0_combout\ $ (\tipo_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|Mux1~0_combout\,
	datad => \tipo_in~input_o\,
	combout => \U4|ssd[5]~5_combout\);

-- Location: LCCOMB_X1_Y11_N22
\U4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux0~0_combout\ = (\U3|Mod0|auto_generated|divider|divider|StageOut[59]~70_combout\) # ((\U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & ((!\U2|cnt\(0)) # (!\U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\))) # 
-- (!\U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ & (\U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	datab => \U3|Mod0|auto_generated|divider|divider|StageOut[58]~69_combout\,
	datac => \U3|Mod0|auto_generated|divider|divider|StageOut[59]~70_combout\,
	datad => \U2|cnt\(0),
	combout => \U4|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y11_N4
\U4|ssd[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|ssd[6]~6_combout\ = \U4|Mux0~0_combout\ $ (\tipo_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|Mux0~0_combout\,
	datad => \tipo_in~input_o\,
	combout => \U4|ssd[6]~6_combout\);

ww_ssd_D(0) <= \ssd_D[0]~output_o\;

ww_ssd_D(1) <= \ssd_D[1]~output_o\;

ww_ssd_D(2) <= \ssd_D[2]~output_o\;

ww_ssd_D(3) <= \ssd_D[3]~output_o\;

ww_ssd_D(4) <= \ssd_D[4]~output_o\;

ww_ssd_D(5) <= \ssd_D[5]~output_o\;

ww_ssd_D(6) <= \ssd_D[6]~output_o\;

ww_ssd_U(0) <= \ssd_U[0]~output_o\;

ww_ssd_U(1) <= \ssd_U[1]~output_o\;

ww_ssd_U(2) <= \ssd_U[2]~output_o\;

ww_ssd_U(3) <= \ssd_U[3]~output_o\;

ww_ssd_U(4) <= \ssd_U[4]~output_o\;

ww_ssd_U(5) <= \ssd_U[5]~output_o\;

ww_ssd_U(6) <= \ssd_U[6]~output_o\;
END structure;


