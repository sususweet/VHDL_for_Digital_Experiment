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

ENTITY 74161_2 IS 
PORT 
( 
	CLRN	:	IN	 STD_LOGIC;
	CLK	:	IN	 STD_LOGIC;
	ENP	:	IN	 STD_LOGIC;
	LDN	:	IN	 STD_LOGIC;
	ENT	:	IN	 STD_LOGIC;
	RCO	:	OUT	 STD_LOGIC
); 
END 74161_2;

ARCHITECTURE bdf_type OF 74161_2 IS 
BEGIN 

-- instantiate macrofunction 

b2v_inst2 : 74161
PORT MAP(CLRN => CLRN,
		 CLK => CLK,
		 ENP => ENP,
		 LDN => LDN,
		 ENT => ENT,
		 RCO => RCO);

END bdf_type; 