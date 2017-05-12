-- Copyright (C) 1991-2009 Altera Corporation
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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 9.1 Build 222 10/21/2009 SJ Full Version"
-- CREATED		"Sun Apr 09 11:37:57 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY divider IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		B4 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		pin_name24 :  INOUT  STD_LOGIC;
		pin_name25 :  INOUT  STD_LOGIC;
		pin_name26 :  INOUT  STD_LOGIC;
		pin_name27 :  INOUT  STD_LOGIC
	);
END divider;

ARCHITECTURE bdf_type OF divider IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT \74161_2\
	PORT(CLRN : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 ENP : IN STD_LOGIC;
		 LDN : IN STD_LOGIC;
		 ENT : IN STD_LOGIC;
		 RCO : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \74161_2\: COMPONENT IS true;
ATTRIBUTE noopt OF \74161_2\: COMPONENT IS true;

COMPONENT \74175_0\
	PORT(CLRN : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 3D : IN STD_LOGIC;
		 2D : IN STD_LOGIC;
		 1D : IN STD_LOGIC;
		 4D : IN STD_LOGIC;
		 1Q : OUT STD_LOGIC;
		 3Q : OUT STD_LOGIC;
		 2Q : OUT STD_LOGIC;
		 4Q : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \74175_0\: COMPONENT IS true;
ATTRIBUTE noopt OF \74175_0\: COMPONENT IS true;

COMPONENT \74283_1\
	PORT(CIN : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 A2 : IN STD_LOGIC;
		 B2 : IN STD_LOGIC;
		 A3 : IN STD_LOGIC;
		 A4 : IN STD_LOGIC;
		 B4 : IN STD_LOGIC;
		 B1 : IN STD_LOGIC;
		 B3 : IN STD_LOGIC;
		 SUM4 : OUT STD_LOGIC;
		 COUT : OUT STD_LOGIC;
		 SUM1 : OUT STD_LOGIC;
		 SUM2 : OUT STD_LOGIC;
		 SUM3 : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \74283_1\: COMPONENT IS true;
ATTRIBUTE noopt OF \74283_1\: COMPONENT IS true;

SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;


BEGIN 



b2v_inst : 74175_0
PORT MAP(CLRN => SYNTHESIZED_WIRE_25,
		 CLK => SYNTHESIZED_WIRE_26,
		 3D => SYNTHESIZED_WIRE_2,
		 2D => SYNTHESIZED_WIRE_3,
		 1D => SYNTHESIZED_WIRE_4,
		 4D => SYNTHESIZED_WIRE_5,
		 1Q => pin_name27,
		 3Q => pin_name25,
		 2Q => pin_name26,
		 4Q => pin_name24);


b2v_inst1 : 74283_1
PORT MAP(CIN => SYNTHESIZED_WIRE_25,
		 A1 => pin_name27,
		 A2 => pin_name26,
		 B2 => SYNTHESIZED_WIRE_7,
		 A3 => pin_name25,
		 A4 => pin_name24,
		 B4 => SYNTHESIZED_WIRE_8,
		 B1 => SYNTHESIZED_WIRE_9,
		 B3 => SYNTHESIZED_WIRE_10,
		 SUM4 => SYNTHESIZED_WIRE_5,
		 COUT => SYNTHESIZED_WIRE_27,
		 SUM1 => SYNTHESIZED_WIRE_4,
		 SUM2 => SYNTHESIZED_WIRE_3,
		 SUM3 => SYNTHESIZED_WIRE_2);


SYNTHESIZED_WIRE_26 <= clk AND SYNTHESIZED_WIRE_27;


SYNTHESIZED_WIRE_12 <= NOT(B4);



SYNTHESIZED_WIRE_21 <= NOT(B2);



SYNTHESIZED_WIRE_14 <= NOT(B3);



SYNTHESIZED_WIRE_23 <= NOT(B1);



SYNTHESIZED_WIRE_8 <= SYNTHESIZED_WIRE_12 AND SYNTHESIZED_WIRE_27;


SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_14 AND SYNTHESIZED_WIRE_27;


b2v_inst2 : 74161_2
PORT MAP(CLRN => SYNTHESIZED_WIRE_25,
		 CLK => SYNTHESIZED_WIRE_26,
		 ENP => SYNTHESIZED_WIRE_25,
		 LDN => SYNTHESIZED_WIRE_25,
		 ENT => SYNTHESIZED_WIRE_25,
		 RCO => SYNTHESIZED_WIRE_25);


SYNTHESIZED_WIRE_7 <= SYNTHESIZED_WIRE_21 AND SYNTHESIZED_WIRE_27;


SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_23 AND SYNTHESIZED_WIRE_27;


END bdf_type;