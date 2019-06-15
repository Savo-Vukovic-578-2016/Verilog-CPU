`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:34 12/08/2018 
// Design Name: 
// Module Name:    selecting_display 
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
module selecting_display(clk7s,a0,a1,b0,b1,c0,c1,d0,d1,e0,e1,f0,f1,g0,g1,dp0,dp1,a,b,c,d,e,f,g,AN0,AN1,AN2,dp);
			input wire [0:0]a0,a1,b0,b1,c0,c1,d0,d1,e0,e1,f0,f1,g0,g1,dp0,dp1,clk7s;
			output reg a,b,c,d,e,f,g,AN0,AN1,AN2 = 1,dp;
			reg counter = 0;
			always @(posedge clk7s)
			begin
			counter <= ~counter;
			if(counter == 0)
				begin
				a <= a0;
				b <= b0;
				c <= c0;
				d <= d0;
				e <= e0;
				f <= f0;
				g <= g0;
				dp <= dp0;
				AN0 <= 0;
				AN1 <= 1;
				end
			else
				begin
				a <= a1;
				b <= b1;
				c <= c1;
				d <= d1;
				e <= e1;
				f <= f1;
				g <= g1;
				dp <= dp1;
				AN0 <= 1;
				AN1 <= 0;
				end
		end

endmodule
