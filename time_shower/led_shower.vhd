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
-- Created on Thu Jun 01 14:20:27 2017

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Entity Declaration

ENTITY led_shower IS
	-- {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
	PORT
	(
		CLK : IN STD_LOGIC;
		Q1 : IN STD_LOGIC_VECTOR(3 downto 0);
		Q2 : IN STD_LOGIC_VECTOR(3 downto 0);
		Q3 : IN STD_LOGIC_VECTOR(3 downto 0);
		Q4 : IN STD_LOGIC_VECTOR(3 downto 0);
		Q5 : IN STD_LOGIC_VECTOR(3 downto 0);
		Q6 : IN STD_LOGIC_VECTOR(3 downto 0);
		WLED : OUT STD_LOGIC_VECTOR(5 downto 0);
		DLED : OUT STD_LOGIC_VECTOR(6 downto 0)
	);
	-- {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
	
END led_shower;


--  Architecture Body

ARCHITECTURE led_shower_architecture OF led_shower IS
	SIGNAL CNT6: INTEGER RANGE 0 TO 5 := 0;
	SIGNAL SHUJU: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	PROCESS(CLK)
	BEGIN
		IF RISING_EDGE(CLK) THEN
			CNT6 <= CNT6 + 1;
			CASE CNT6 IS
				WHEN 0 => WLED <= "000001"; SHUJU <= Q1;
				WHEN 1 => WLED <= "000010"; SHUJU <= Q2; 
				WHEN 2 => WLED <= "000100"; SHUJU <= Q3;
				WHEN 3 => WLED <= "001000"; SHUJU <= Q4;
				WHEN 4 => WLED <= "010000"; SHUJU <= Q5;
				WHEN 5 => WLED <= "100000"; SHUJU <= Q6;
				WHEN OTHERS => NULL;
			END CASE;
		END IF;
	END PROCESS;

	PROCESS(SHUJU)
	BEGIN
		CASE SHUJU IS
			WHEN "0000" => DLED <= "0000001" ; --- 0
			WHEN "0001" => DLED <= "1001111" ; --- 1    
			WHEN "0010" => DLED <= "0010010" ; --- 2   
			WHEN "0011" => DLED <= "0000110" ; --- 3   
			WHEN "0100" => DLED <= "1001100" ; --- 4  
			WHEN "0101" => DLED <= "0100100" ; --- 5     
			WHEN "0110" => DLED <= "0100000" ; --- 6   
			WHEN "0111" => DLED <= "0001111" ; --- 7   
			WHEN "1000" => DLED <= "0000000" ; --- 8    
			WHEN "1001" => DLED <= "0000100" ; --- 9   
			WHEN others => DLED <= "1111111" ; 
		END CASE;
	END PROCESS;

END led_shower_architecture;