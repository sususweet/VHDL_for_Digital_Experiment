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
-- Created on Fri May 12 17:21:24 2017

LIBRARY ieee;
USE ieee.std_logic_1164.all;


--  Entity Declaration

ENTITY seller IS
	-- {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
	PORT
	(
		X : IN STD_LOGIC;
		Y : IN STD_LOGIC;
		CLK : IN STD_LOGIC;
		P : OUT STD_LOGIC;
		S : OUT STD_LOGIC
	);
	-- {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
	
END seller;


--  Architecture Body

ARCHITECTURE seller_architecture OF seller IS
	TYPE state IS (st0,st1,st2);
	SIGNAL cur_state, next_state : state;
	
BEGIN
	PROCESS(CLK)
	BEGIN
		IF(RISING_EDGE(CLK)) THEN
			cur_state <= next_state;
        END IF;
	END PROCESS;

	PROCESS(X,Y,cur_state)
	VARIABLE input:std_logic_vector(1 DOWNTO 0);
	VARIABLE output:std_logic_vector(1 DOWNTO 0);
	BEGIN
		input := X&Y;
		CASE cur_state IS 
			WHEN st0 =>
				IF input = "00" THEN
					output := "00";
					next_state <= st0;
				ELSIF input = "01" THEN
					output := "00";
					next_state <= st2;
				ELSIF input = "10" THEN
					output := "00";
					next_state <= st1;
				ELSE 
					output := "00";
					next_state <= st0;
				END IF;
				
			WHEN st1 =>
				IF input = "00" THEN
					output := "00";
					next_state <= st1;
				ELSIF input = "01" THEN
					output := "01";
					next_state <= st0;
				ELSIF input = "10" THEN
					output := "00";
					next_state <= st2;
				ELSE 
					output := "00";
					next_state <= st1;
				END IF;
				
			WHEN st2 =>
				IF input = "00" THEN
					output := "00";
					next_state <= st2;
				ELSIF input = "10" THEN
					output := "01";
					next_state <= st0;
				ELSIF input = "01" THEN
					output := "11";
					next_state <= st0;
				ELSE 
					output := "00";
					next_state <= st2;
				END IF;
		END CASE;
		P <= output(1);
		S <= output(0);
	END PROCESS;

END seller_architecture;
