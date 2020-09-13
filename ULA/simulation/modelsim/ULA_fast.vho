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

-- DATE "09/12/2020 22:15:23"

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

ENTITY 	ULA IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	saida : OUT std_logic_vector(3 DOWNTO 0)
	);
END ULA;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[1]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[3]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sel[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
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
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \saida~16_combout\ : std_logic;
SIGNAL \saida~1_combout\ : std_logic;
SIGNAL \saida~2_combout\ : std_logic;
SIGNAL \saida~3_combout\ : std_logic;
SIGNAL \saida~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \saida~5_combout\ : std_logic;
SIGNAL \saida~6_combout\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \saida~7_combout\ : std_logic;
SIGNAL \saida~10_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \saida~8_combout\ : std_logic;
SIGNAL \saida~9_combout\ : std_logic;
SIGNAL \saida~11_combout\ : std_logic;
SIGNAL \saida~12_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \saida~13_combout\ : std_logic;
SIGNAL \saida~14_combout\ : std_logic;
SIGNAL \saida~15_combout\ : std_logic;
SIGNAL \saida~18_combout\ : std_logic;
SIGNAL \saida~17_combout\ : std_logic;
SIGNAL \saida~19_combout\ : std_logic;
SIGNAL \sel~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_sel <= sel;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X38_Y15_N6
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B~combout\(0) & (\A~combout\(0) $ (VCC))) # (!\B~combout\(0) & ((\A~combout\(0)) # (GND)))
-- \Add0~1\ = CARRY((\A~combout\(0)) # (!\B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X38_Y15_N8
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\B~combout\(1) & ((\A~combout\(1) & (!\Add0~1\)) # (!\A~combout\(1) & ((\Add0~1\) # (GND))))) # (!\B~combout\(1) & ((\A~combout\(1) & (\Add0~1\ & VCC)) # (!\A~combout\(1) & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\B~combout\(1) & ((!\Add0~1\) # (!\A~combout\(1)))) # (!\B~combout\(1) & (!\A~combout\(1) & !\Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X38_Y15_N24
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\B~combout\(2) $ (\A~combout\(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\B~combout\(2) & ((\A~combout\(2)) # (!\Add1~3\))) # (!\B~combout\(2) & (\A~combout\(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X38_Y15_N10
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\B~combout\(2) $ (\A~combout\(2) $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\B~combout\(2) & (\A~combout\(2) & !\Add0~3\)) # (!\B~combout\(2) & ((\A~combout\(2)) # (!\Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X38_Y15_N12
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \B~combout\(3) $ (\Add0~5\ $ (!\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(3),
	datad => \A~combout\(3),
	cin => \Add0~5\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X38_Y15_N26
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = \B~combout\(3) $ (\Add1~5\ $ (\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(3),
	datad => \A~combout\(3),
	cin => \Add1~5\,
	combout => \Add1~6_combout\);

-- Location: LCCOMB_X37_Y15_N24
\saida~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~16_combout\ = (\sel~combout\(1) & (((\sel~combout\(0))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & ((\Add0~6_combout\))) # (!\sel~combout\(0) & (\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \sel~combout\(1),
	datac => \Add0~6_combout\,
	datad => \sel~combout\(0),
	combout => \saida~16_combout\);

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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[1]~I\ : cycloneii_io
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
	padio => ww_sel(1),
	combout => \sel~combout\(1));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[2]~I\ : cycloneii_io
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
	padio => ww_sel(2),
	combout => \sel~combout\(2));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X38_Y15_N2
\saida~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~1_combout\ = (\A~combout\(1) & (\B~combout\(0) & (!\A~combout\(0) & \B~combout\(1)))) # (!\A~combout\(1) & ((\B~combout\(1)) # ((\B~combout\(0) & !\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(1),
	datac => \A~combout\(0),
	datad => \B~combout\(1),
	combout => \saida~1_combout\);

-- Location: LCCOMB_X37_Y15_N0
\saida~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~2_combout\ = (\B~combout\(2) & ((\saida~1_combout\) # (!\A~combout\(2)))) # (!\B~combout\(2) & (!\A~combout\(2) & \saida~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datac => \A~combout\(2),
	datad => \saida~1_combout\,
	combout => \saida~2_combout\);

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X37_Y15_N18
\saida~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~3_combout\ = (\saida~2_combout\ & ((\B~combout\(3)) # (!\A~combout\(3)))) # (!\saida~2_combout\ & (\B~combout\(3) & !\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida~2_combout\,
	datac => \B~combout\(3),
	datad => \A~combout\(3),
	combout => \saida~3_combout\);

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[0]~I\ : cycloneii_io
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
	padio => ww_sel(0),
	combout => \sel~combout\(0));

-- Location: LCCOMB_X37_Y15_N20
\saida~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~4_combout\ = (\saida~3_combout\ & ((\sel~combout\(1)) # (\sel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida~3_combout\,
	datac => \sel~combout\(1),
	datad => \sel~combout\(0),
	combout => \saida~4_combout\);

-- Location: LCCOMB_X38_Y15_N20
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\B~combout\(0) & (\A~combout\(0) $ (VCC))) # (!\B~combout\(0) & (\A~combout\(0) & VCC))
-- \Add1~1\ = CARRY((\B~combout\(0) & \A~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X38_Y15_N28
\saida~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~5_combout\ = (\sel~combout\(0) & (\Add0~0_combout\)) # (!\sel~combout\(0) & ((\Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datac => \Add1~0_combout\,
	datad => \sel~combout\(0),
	combout => \saida~5_combout\);

-- Location: LCCOMB_X38_Y15_N14
\saida~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~6_combout\ = (\sel~combout\(2) & (\saida~4_combout\)) # (!\sel~combout\(2) & ((\saida~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel~combout\(2),
	datac => \saida~4_combout\,
	datad => \saida~5_combout\,
	combout => \saida~6_combout\);

-- Location: LCCOMB_X38_Y15_N16
\saida~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = (\B~combout\(0) & ((\A~combout\(0)) # (\sel~combout\(2) $ (!\sel~combout\(0))))) # (!\B~combout\(0) & ((\sel~combout\(0) & ((\sel~combout\(2)))) # (!\sel~combout\(0) & (\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	datac => \sel~combout\(2),
	datad => \sel~combout\(0),
	combout => \saida~0_combout\);

-- Location: LCCOMB_X38_Y15_N0
\saida~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~7_combout\ = (\sel~combout\(1) & ((\sel~combout\(2) & (\saida~6_combout\)) # (!\sel~combout\(2) & ((\saida~0_combout\))))) # (!\sel~combout\(1) & ((\saida~6_combout\) # ((!\saida~0_combout\ & \sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \saida~6_combout\,
	datac => \saida~0_combout\,
	datad => \sel~combout\(2),
	combout => \saida~7_combout\);

-- Location: LCCOMB_X37_Y15_N30
\saida~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~10_combout\ = (!\A~combout\(1) & (!\sel~combout\(1) & !\sel~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datac => \sel~combout\(1),
	datad => \sel~combout\(0),
	combout => \saida~10_combout\);

-- Location: LCCOMB_X38_Y15_N22
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B~combout\(1) & ((\A~combout\(1) & (\Add1~1\ & VCC)) # (!\A~combout\(1) & (!\Add1~1\)))) # (!\B~combout\(1) & ((\A~combout\(1) & (!\Add1~1\)) # (!\A~combout\(1) & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\B~combout\(1) & (!\A~combout\(1) & !\Add1~1\)) # (!\B~combout\(1) & ((!\Add1~1\) # (!\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X38_Y15_N18
\saida~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~8_combout\ = (\sel~combout\(1) & (((\sel~combout\(0))))) # (!\sel~combout\(1) & ((\sel~combout\(0) & ((\Add0~2_combout\))) # (!\sel~combout\(0) & (\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \Add1~2_combout\,
	datac => \Add0~2_combout\,
	datad => \sel~combout\(0),
	combout => \saida~8_combout\);

-- Location: LCCOMB_X38_Y15_N4
\saida~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~9_combout\ = (\sel~combout\(1) & ((\B~combout\(1) & ((\A~combout\(1)) # (!\saida~8_combout\))) # (!\B~combout\(1) & (\A~combout\(1) & !\saida~8_combout\)))) # (!\sel~combout\(1) & (((\saida~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datac => \sel~combout\(1),
	datad => \saida~8_combout\,
	combout => \saida~9_combout\);

-- Location: LCCOMB_X37_Y15_N16
\saida~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~11_combout\ = (\sel~combout\(2) & ((\saida~4_combout\) # ((\saida~10_combout\)))) # (!\sel~combout\(2) & (((\saida~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~4_combout\,
	datab => \saida~10_combout\,
	datac => \sel~combout\(2),
	datad => \saida~9_combout\,
	combout => \saida~11_combout\);

-- Location: LCCOMB_X37_Y15_N2
\saida~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~12_combout\ = (\B~combout\(2) & ((\A~combout\(2)) # (\sel~combout\(2) $ (!\sel~combout\(0))))) # (!\B~combout\(2) & ((\sel~combout\(0) & ((\sel~combout\(2)))) # (!\sel~combout\(0) & (\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	datac => \sel~combout\(2),
	datad => \sel~combout\(0),
	combout => \saida~12_combout\);

-- Location: LCCOMB_X38_Y15_N30
\saida~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~13_combout\ = (\sel~combout\(0) & (\Add0~4_combout\)) # (!\sel~combout\(0) & ((\Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => \Add1~4_combout\,
	datad => \sel~combout\(0),
	combout => \saida~13_combout\);

-- Location: LCCOMB_X37_Y15_N28
\saida~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~14_combout\ = (\sel~combout\(2) & (\saida~4_combout\)) # (!\sel~combout\(2) & ((\saida~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel~combout\(2),
	datac => \saida~4_combout\,
	datad => \saida~13_combout\,
	combout => \saida~14_combout\);

-- Location: LCCOMB_X37_Y15_N22
\saida~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~15_combout\ = (\sel~combout\(1) & ((\sel~combout\(2) & ((\saida~14_combout\))) # (!\sel~combout\(2) & (\saida~12_combout\)))) # (!\sel~combout\(1) & ((\saida~14_combout\) # ((!\saida~12_combout\ & \sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~12_combout\,
	datab => \sel~combout\(1),
	datac => \sel~combout\(2),
	datad => \saida~14_combout\,
	combout => \saida~15_combout\);

-- Location: LCCOMB_X37_Y15_N12
\saida~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~18_combout\ = (!\sel~combout\(0) & (!\sel~combout\(1) & !\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datac => \sel~combout\(1),
	datad => \A~combout\(3),
	combout => \saida~18_combout\);

-- Location: LCCOMB_X37_Y15_N26
\saida~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~17_combout\ = (\saida~16_combout\ & (((\B~combout\(3) & \A~combout\(3))) # (!\sel~combout\(1)))) # (!\saida~16_combout\ & (\sel~combout\(1) & ((\B~combout\(3)) # (\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~16_combout\,
	datab => \sel~combout\(1),
	datac => \B~combout\(3),
	datad => \A~combout\(3),
	combout => \saida~17_combout\);

-- Location: LCCOMB_X37_Y15_N6
\saida~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida~19_combout\ = (\sel~combout\(2) & ((\saida~18_combout\) # ((\saida~4_combout\)))) # (!\sel~combout\(2) & (((\saida~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~18_combout\,
	datab => \saida~17_combout\,
	datac => \sel~combout\(2),
	datad => \saida~4_combout\,
	combout => \saida~19_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[0]~I\ : cycloneii_io
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
	datain => \saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(0));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[1]~I\ : cycloneii_io
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
	datain => \saida~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(1));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[2]~I\ : cycloneii_io
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
	datain => \saida~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(2));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[3]~I\ : cycloneii_io
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
	datain => \saida~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(3));
END structure;


