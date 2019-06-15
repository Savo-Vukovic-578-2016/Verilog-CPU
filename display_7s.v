`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:23 12/08/2018 
// Design Name: 
// Module Name:    display_7s 
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
module display_7s(clock,number,dp,a,b,c,d,e,f,g);
		output reg[0:0]a = 0;
		output reg[0:0]b = 0;
		output reg[0:0]c = 0;
		output reg[0:0]d = 0;
		output reg[0:0]e = 0;
		output reg[0:0]f = 0;
		output reg[0:0]g = 0;
		output reg[0:0]dp = 0;
		input wire[0:0]clock;
		input wire [3:0]number;
		always @(posedge clock)
		begin
			if(number == 0)
				begin
				a <= 0;
				b <= 0;
				c <= 0;
				d <= 0;
				e <= 0;
				f <= 0;
				g <= 1;
				dp <= 1;
				end
			else if(number == 1)
				begin
				a <= 1;
				b <= 0;
				c <= 0;
				d <= 1;
				e <= 1;
				f <= 1;
				g <= 1;
				dp <= 1;
				end
			else if(number == 2)
				begin
				a <= 0;
				b <= 0;
				c <= 1;
				d <= 0;
				e <= 0;
				f <= 1;
				g <= 0;
				dp <= 1;
				end
			else if(number == 3)
				begin
				a <= 0;
				b <= 0;
				c <= 0;
				d <= 0;
				e <= 1;
				f <= 1;
				g <= 0;
				dp <= 1;
				end
			else if(number == 4)
				begin
				a <= 1;
				b <= 0;
				c <= 0;
				d <= 1;
				e <= 1;
				f <= 0;
				g <= 0;
				dp <= 1;
				end
			else if(number == 5)
				begin
				a <= 0;
				b <= 1;
				c <= 0;
				d <= 0;
				e <= 1;
				f <= 0;
				g <= 0;
				dp <= 1;
				end
			else if(number == 6)
				begin
				a <= 0;
				b <= 1;
				c <= 0;
				d <= 0;
				e <= 0;
				f <= 0;
				g <= 0;
				dp <= 1;
				end
			else if(number == 7)
				begin
				a <= 0;
				b <= 0;
				c <= 0;
				d <= 1;
				e <= 1;
				f <= 1;
				g <= 1;
				dp <= 1;
				end
			else if(number == 8)
				begin
				a <= 0;
				b <= 0;
				c <= 0;
				d <= 0;
				e <= 0;
				f <= 0;
				g <= 0;
				dp <= 1;
				end
			else if(number == 9)
				begin
				a <= 0;
				b <= 0;
				c <= 0;
				d <= 0;
				e <= 1;
				f <= 0;
				g <= 0;
				dp <= 1;
				end
		end
endmodule