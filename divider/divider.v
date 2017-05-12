// Copyright (C) 1991-2009 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 9.1 Build 222 10/21/2009 SJ Full Version"
// CREATED		"Sun Apr 09 11:38:14 2017"

module divider(
	clk,
	B4,
	B3,
	B2,
	B1,
	pin_name24,
	pin_name25,
	pin_name26,
	pin_name27
);


input	clk;
input	B4;
input	B3;
input	B2;
input	B1;
inout	pin_name24;
inout	pin_name25;
inout	pin_name26;
inout	pin_name27;

wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_23;





\74175 	b2v_inst(
	.CLRN(SYNTHESIZED_WIRE_25),
	.CLK(SYNTHESIZED_WIRE_26),
	.3D(SYNTHESIZED_WIRE_2),
	.2D(SYNTHESIZED_WIRE_3),
	.1D(SYNTHESIZED_WIRE_4),
	.4D(SYNTHESIZED_WIRE_5),
	
	.1Q(pin_name27),
	
	.3Q(pin_name25),
	.2Q(pin_name26),
	
	.4Q(pin_name24)
	);


\74283 	b2v_inst1(
	.CIN(SYNTHESIZED_WIRE_25),
	.A1(pin_name27),
	.A2(pin_name26),
	.B2(SYNTHESIZED_WIRE_7),
	.A3(pin_name25),
	.A4(pin_name24),
	.B4(SYNTHESIZED_WIRE_8),
	.B1(SYNTHESIZED_WIRE_9),
	.B3(SYNTHESIZED_WIRE_10),
	.SUM4(SYNTHESIZED_WIRE_5),
	.COUT(SYNTHESIZED_WIRE_27),
	.SUM1(SYNTHESIZED_WIRE_4),
	.SUM2(SYNTHESIZED_WIRE_3),
	.SUM3(SYNTHESIZED_WIRE_2));

assign	SYNTHESIZED_WIRE_26 = clk & SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_12 =  ~B4;

assign	SYNTHESIZED_WIRE_21 =  ~B2;

assign	SYNTHESIZED_WIRE_14 =  ~B3;

assign	SYNTHESIZED_WIRE_23 =  ~B1;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_14 & SYNTHESIZED_WIRE_27;


\74161 	b2v_inst2(
	.CLRN(SYNTHESIZED_WIRE_25),
	.CLK(SYNTHESIZED_WIRE_26),
	.ENP(SYNTHESIZED_WIRE_25),
	.LDN(SYNTHESIZED_WIRE_25),
	
	
	.ENT(SYNTHESIZED_WIRE_25),
	
	
	
	
	
	
	.RCO(SYNTHESIZED_WIRE_25));

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_21 & SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_23 & SYNTHESIZED_WIRE_27;


endmodule
