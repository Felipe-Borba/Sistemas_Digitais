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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "09/10/2020 14:07:30"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula2 IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	upcode : IN std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0);
	flag : OUT std_logic
	);
END Aula2;

-- Design Ports Information
-- S[0]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[1]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[2]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[3]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- flag	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- upcode	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Aula2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_upcode : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_flag : std_logic;
SIGNAL \MX|saida[0]~0_combout\ : std_logic;
SIGNAL \upcode~combout\ : std_logic;
SIGNAL \SNB1|SC:1:SCi|s~0_combout\ : std_logic;
SIGNAL \MX|saida[1]~1_combout\ : std_logic;
SIGNAL \SNB1|SC:1:SCi|cout~0_combout\ : std_logic;
SIGNAL \SNB1|SC:2:SCi|s~0_combout\ : std_logic;
SIGNAL \SNB2|SC:1:SCi|cout~0_combout\ : std_logic;
SIGNAL \MX|saida[2]~2_combout\ : std_logic;
SIGNAL \SNB1|SC:2:SCi|cout~0_combout\ : std_logic;
SIGNAL \SNB1|SC:3:SCi|s~0_combout\ : std_logic;
SIGNAL \SNB2|SC:2:SCi|cout~0_combout\ : std_logic;
SIGNAL \MX|saida[3]~3_combout\ : std_logic;
SIGNAL \flag~0_combout\ : std_logic;
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_upcode <= upcode;
S <= ww_S;
flag <= ww_flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCCOMB_X56_Y35_N0
\MX|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MX|saida[0]~0_combout\ = \A~combout\(0) $ (\B~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(0),
	datad => \B~combout\(0),
	combout => \MX|saida[0]~0_combout\);

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\upcode~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_upcode,
	combout => \upcode~combout\);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X56_Y35_N2
\SNB1|SC:1:SCi|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SNB1|SC:1:SCi|s~0_combout\ = \B~combout\(1) $ (\A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(1),
	datad => \A~combout\(1),
	combout => \SNB1|SC:1:SCi|s~0_combout\);

-- Location: LCCOMB_X56_Y35_N12
\MX|saida[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MX|saida[1]~1_combout\ = \SNB1|SC:1:SCi|s~0_combout\ $ (((\B~combout\(0) & (\upcode~combout\ $ (\A~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upcode~combout\,
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \SNB1|SC:1:SCi|s~0_combout\,
	combout => \MX|saida[1]~1_combout\);

-- Location: LCCOMB_X56_Y35_N18
\SNB1|SC:1:SCi|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SNB1|SC:1:SCi|cout~0_combout\ = (\B~combout\(1) & ((\A~combout\(1)) # ((\B~combout\(0) & \A~combout\(0))))) # (!\B~combout\(1) & (\B~combout\(0) & (\A~combout\(0) & \A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \A~combout\(1),
	combout => \SNB1|SC:1:SCi|cout~0_combout\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCCOMB_X56_Y35_N24
\SNB1|SC:2:SCi|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SNB1|SC:2:SCi|s~0_combout\ = \B~combout\(2) $ (\A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datad => \A~combout\(2),
	combout => \SNB1|SC:2:SCi|s~0_combout\);

-- Location: LCCOMB_X56_Y35_N30
\SNB2|SC:1:SCi|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SNB2|SC:1:SCi|cout~0_combout\ = (\B~combout\(1) & (\A~combout\(1) & ((\A~combout\(0)) # (!\B~combout\(0))))) # (!\B~combout\(1) & (((\A~combout\(0)) # (\A~combout\(1))) # (!\B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \A~combout\(1),
	combout => \SNB2|SC:1:SCi|cout~0_combout\);

-- Location: LCCOMB_X56_Y35_N28
\MX|saida[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MX|saida[2]~2_combout\ = \SNB1|SC:2:SCi|s~0_combout\ $ (((\upcode~combout\ & ((!\SNB2|SC:1:SCi|cout~0_combout\))) # (!\upcode~combout\ & (\SNB1|SC:1:SCi|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \upcode~combout\,
	datab => \SNB1|SC:1:SCi|cout~0_combout\,
	datac => \SNB1|SC:2:SCi|s~0_combout\,
	datad => \SNB2|SC:1:SCi|cout~0_combout\,
	combout => \MX|saida[2]~2_combout\);

-- Location: LCCOMB_X56_Y35_N10
\SNB1|SC:2:SCi|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SNB1|SC:2:SCi|cout~0_combout\ = (\SNB1|SC:1:SCi|cout~0_combout\ & ((\B~combout\(2)) # (\A~combout\(2)))) # (!\SNB1|SC:1:SCi|cout~0_combout\ & (\B~combout\(2) & \A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SNB1|SC:1:SCi|cout~0_combout\,
	datac => \B~combout\(2),
	datad => \A~combout\(2),
	combout => \SNB1|SC:2:SCi|cout~0_combout\);

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCCOMB_X56_Y35_N16
\SNB1|SC:3:SCi|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SNB1|SC:3:SCi|s~0_combout\ = \B~combout\(3) $ (\A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(3),
	datad => \A~combout\(3),
	combout => \SNB1|SC:3:SCi|s~0_combout\);

-- Location: LCCOMB_X56_Y35_N6
\SNB2|SC:2:SCi|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SNB2|SC:2:SCi|cout~0_combout\ = (\SNB2|SC:1:SCi|cout~0_combout\ & ((\A~combout\(2)) # (!\B~combout\(2)))) # (!\SNB2|SC:1:SCi|cout~0_combout\ & (!\B~combout\(2) & \A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SNB2|SC:1:SCi|cout~0_combout\,
	datac => \B~combout\(2),
	datad => \A~combout\(2),
	combout => \SNB2|SC:2:SCi|cout~0_combout\);

-- Location: LCCOMB_X56_Y35_N20
\MX|saida[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MX|saida[3]~3_combout\ = \SNB1|SC:3:SCi|s~0_combout\ $ (((\upcode~combout\ & ((!\SNB2|SC:2:SCi|cout~0_combout\))) # (!\upcode~combout\ & (\SNB1|SC:2:SCi|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SNB1|SC:2:SCi|cout~0_combout\,
	datab => \upcode~combout\,
	datac => \SNB1|SC:3:SCi|s~0_combout\,
	datad => \SNB2|SC:2:SCi|cout~0_combout\,
	combout => \MX|saida[3]~3_combout\);

-- Location: LCCOMB_X56_Y35_N22
\flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \flag~0_combout\ = (\A~combout\(3)) # ((\B~combout\(3) & ((\SNB1|SC:2:SCi|cout~0_combout\))) # (!\B~combout\(3) & (\SNB2|SC:2:SCi|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SNB2|SC:2:SCi|cout~0_combout\,
	datab => \A~combout\(3),
	datac => \B~combout\(3),
	datad => \SNB1|SC:2:SCi|cout~0_combout\,
	combout => \flag~0_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MX|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(0));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MX|saida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(1));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MX|saida[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(2));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MX|saida[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(3));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\flag~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_flag);
END structure;


