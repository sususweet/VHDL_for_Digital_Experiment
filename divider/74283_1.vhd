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

LIBRARY altera;
USE altera.maxplus2.all; 

LIBRARY work;

ENTITY 74283_1 IS 
PORT 
( 
	CIN	:	IN	 STD_LOGIC;
	A1	:	IN	 STD_LOGIC;
	A2	:	IN	 STD_LOGIC;
	B2	:	IN	 STD_LOGIC;
	A3	:	IN	 STD_LOGIC;
	A4	:	IN	 STD_LOGIC;
	B4	:	IN	 STD_LOGIC;
	B1	:	IN	 STD_LOGIC;
	B3	:	IN	 STD_LOGIC;
	SUM4	:	OUT	 STD_LOGIC;
	COUT	:	OUT	 STD_LOGIC;
	SUM1	:	OUT	 STD_LOGIC;
	SUM2	:	OUT	 STD_LOGIC;
	SUM3	:	OUT	 STD_LOGIC
); 
END 74283_1;

ARCHITECTURE bdf_type OF 74283_1 IS 
BEGIN 

-- instantiate macrofunction 

b2v_inst1 : 74283
PORT MAP(CIN => CIN,
		 A1 => A1,
		 A2 => A2,
		 B2 => B2,
		 A3 => A3,
		 A4 => A4,
		 B4 => B4,
		 B1 => B1,
		 B3 => B3,
		 SUM4 => SUM4,
		 COUT => COUT,
		 SUM1 => SUM1,
		 SUM2 => SUM2,
		 SUM3 => SUM3);

END bdf_type; 