// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Wed Nov 03 18:02:03 2021"

module seq_block_verilog(
	CLK,
	Y
);


input wire	CLK;
output wire	[2:0] Y;

wire	[2:0] Q;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;




assign	SYNTHESIZED_WIRE_1 = Q[2] ~^ Q[1];

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_0 = Q[1] & Q[0];

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_4 | Q[2];

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_5 ~^ Q[1];


T_ff	b2v_T_ff_0(
	.T(SYNTHESIZED_WIRE_6),
	.CLK(CLK),
	.q(Q[0]),
	.q_bar(SYNTHESIZED_WIRE_4));


T_ff	b2v_T_ff_1(
	.T(SYNTHESIZED_WIRE_7),
	.CLK(CLK),
	.q(Q[1]),
	.q_bar(SYNTHESIZED_WIRE_2));


T_ff	b2v_T_ff_2(
	.T(SYNTHESIZED_WIRE_8),
	.CLK(CLK),
	.q(Q[2]),
	.q_bar(SYNTHESIZED_WIRE_3));

assign	Y = Q;

endmodule
