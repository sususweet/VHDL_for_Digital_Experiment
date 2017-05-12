-- WARNING: Do NOT edit the input and output ports in this file in a text
-- editor if you plan to continue editing the block that represents it in
-- the Block Editor! File corruption is VERY likely to occur.

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


-- Generated by Quartus II Version 9.1 (Build Build 222 10/21/2009)
-- Created on Tue May 09 15:09:09 2017

LIBRARY ieee;
USE ieee.std_logic_1164.all;


--  Entity Declaration

ENTITY xor4b IS
	-- {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
	PORT
	(
		a : IN STD_LOGIC;
		b : IN STD_LOGIC;
		c : IN STD_LOGIC;
		d : IN STD_LOGIC;
		z : OUT STD_LOGIC
	);
	-- {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
	
END xor4b;


--  Architecture Body

ARCHITECTURE xor4b_architecture OF xor4b IS

	SIGNAL z1,z2: STD_LOGIC;

BEGIN
	z1<=a xor b;
	z2<=c xor d;
	z<=z1 xor z2;

END xor4b_architecture;
