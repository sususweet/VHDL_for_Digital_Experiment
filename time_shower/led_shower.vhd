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
		TWINKLE_CLK : IN STD_LOGIC;
		Q1 : IN STD_LOGIC_VECTOR(3 downto 0);
		Q2 : IN STD_LOGIC_VECTOR(3 downto 0);
		Q3 : IN STD_LOGIC_VECTOR(3 downto 0);
		Q4 : IN STD_LOGIC_VECTOR(3 downto 0);
		Q5 : IN STD_LOGIC_VECTOR(3 downto 0);
		Q6 : IN STD_LOGIC_VECTOR(3 downto 0);
		
		D1 : IN STD_LOGIC;
		D2 : IN STD_LOGIC;
		D3 : IN STD_LOGIC;
		D4 : IN STD_LOGIC;
		D5 : IN STD_LOGIC;
		D6 : IN STD_LOGIC;
		
		WLED : OUT STD_LOGIC_VECTOR(5 downto 0);
		DLED : OUT STD_LOGIC_VECTOR(6 downto 0);
		DOT : OUT STD_LOGIC
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
				WHEN 0 => 
					WLED <= "111110"; SHUJU <= Q1;
					DOT <= D1;
				WHEN 1 => 
					WLED <= "111101"; SHUJU <= Q2;
					DOT <= D2; 
				WHEN 2 => 
					WLED <= "111011"; SHUJU <= Q3;
					DOT <= D3;
				WHEN 3 => 
					WLED <= "110111"; SHUJU <= Q4;
					DOT <= D4;
				WHEN 4 => 
					WLED <= "101111"; SHUJU <= Q5;
					DOT <= D5;
				WHEN 5 => 
					WLED <= "011111"; SHUJU <= Q6;
					DOT <= D6;
					CNT6 <= 0;
				WHEN OTHERS => NULL;
			END CASE;
		END IF;
	END PROCESS;

	PROCESS(SHUJU)
	BEGIN
		CASE SHUJU IS
			WHEN "0000" => DLED <= "1000000" ; --- 0
			WHEN "0001" => DLED <= "1111001" ; --- 1    
			WHEN "0010" => DLED <= "0100100" ; --- 2   
			WHEN "0011" => DLED <= "0110000" ; --- 3   
			WHEN "0100" => DLED <= "0011001" ; --- 4  
			WHEN "0101" => DLED <= "0010010" ; --- 5     
			WHEN "0110" => DLED <= "0000010" ; --- 6   
			WHEN "0111" => DLED <= "1111000" ; --- 7   
			WHEN "1000" => DLED <= "0000000" ; --- 8    
			WHEN "1001" => DLED <= "0010000" ; --- 9 
			WHEN "1010" => DLED <= "0111111" ; --- - 
			WHEN others => DLED <= "1111111" ; 
		END CASE;
	END PROCESS;

END led_shower_architecture;
