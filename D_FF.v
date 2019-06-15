`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:09 12/02/2018 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF(s,clk,q,enabling);
	input wire [0:0] s;
	input wire [0:0] clk;
	output reg [0:0] q;
	input wire [0:0] enabling;
	always @(posedge clk)
	begin
		if(enabling == 1)
		begin
			q <= s;
		end
	end

endmodule
