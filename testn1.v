`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:32:22 12/09/2018
// Design Name:   CPU
// Module Name:   D:/Xilinx Workstation/First_Project/testn1.v
// Project Name:  First_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testn1;

	// Inputs
	reg enabling;
	reg clock;
	reg SW0;
	reg SW1;
	reg SW2;
	reg SW3;
	reg SW4;
	reg SW5;
	reg SW6;
	reg SW7;
	reg enable;

	// Outputs
	wire [3:0] rezult;
	wire AN0;
	wire AN1;
	wire AN2;
	wire a;
	wire b;
	wire c;
	wire d;
	wire e;
	wire fp;
	wire g;
	wire dp;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.enabling(enabling), 
		.clock(clock), 
		.SW0(SW0), 
		.SW1(SW1), 
		.SW2(SW2), 
		.SW3(SW3), 
		.SW4(SW4), 
		.SW5(SW5), 
		.SW6(SW6), 
		.SW7(SW7), 
		.enable(enable), 
		.rezult(rezult), 
		.AN0(AN0), 
		.AN1(AN1), 
		.AN2(AN2), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.fp(fp), 
		.g(g), 
		.dp(dp)
	);

	initial begin
		// Initialize Inputs
		enabling = 0;
		clock = 0;
		SW0 = 1;
		SW1 = 1;
		SW2 = 1;
		SW3 = 1;
		SW4 = 0;
		SW5 = 0;
		SW6 = 0;
		SW7 = 0;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#400;
		
		enabling = 1;
		SW0 = 0;
		SW1 = 1;
		SW2 = 0;
		SW3 = 1;
		
		
        
		// Add stimulus here

	end
	always @(*)
	begin
	#40;
	clock <= ~clock;
	end
      
endmodule

