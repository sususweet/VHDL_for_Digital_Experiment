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

ENTITY 74175_0 IS 
PORT 
( 
	CLRN	:	IN	 STD_LOGIC;
	CLK	:	IN	 STD_LOGIC;
	3D	:	IN	 STD_LOGIC;
	2D	:	IN	 STD_LOGIC;
	1D	:	IN	 STD_LOGIC;
	4D	:	IN	 STD_LOGIC;
	1Q	:	OUT	 STD_LOGIC;
	3Q	:	OUT	 STD_LOGIC;
	2Q	:	OUT	 STD_LOGIC;
	4Q	:	OUT	 STD_LOGIC
); 
END 74175_0;

ARCHITECTURE bdf_type OF 74175_0 IS 
BEGIN 

-- instantiate macrofunction 

b2v_inst : 74175
PORT MAP(CLRN => CLRN,
		 CLK => CLK,
		 3D => 3D,
		 2D => 2D,
		 1D => 1D,
		 4D => 4D,
		 1Q => 1Q,
		 3Q => 3Q,
		 2Q => 2Q,
		 4Q => 4Q);

END bdf_type; 