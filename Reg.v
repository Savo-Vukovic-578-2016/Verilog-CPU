`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:13 12/02/2018 
// Design Name: 
// Module Name:    Reg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Reg(clock,sw1,sw2,sw3,sw4,out,enabling);
		
		input wire [0:0] enabling;				//enabling input
		input wire [0:0] 	clock; 				//input clock
		input wire [0:0] sw1,sw2,sw3,sw4;   //actual input
		output wire [3:0] out;					//actual output
		
		D_FF d1(.s(sw1),.clk(clock),.q(out[3]),.enabling(enabling)); //bit najvece tezine
		D_FF d2(.s(sw2),.clk(clock),.q(out[2]),.enabling(enabling));
		D_FF d3(.s(sw3),.clk(clock),.q(out[1]),.enabling(enabling));
		D_FF d4(.s(sw4),.clk(clock),.q(out[0]),.enabling(enabling)); //bit najmanje tezine
		
endmodule
