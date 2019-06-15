`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:51:36 12/08/2018
// Design Name:   CPU
// Module Name:   D:/Xilinx Workstation/First_Project/savo.v
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

module savo;

	// Inputs
	reg taster;
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
		.taster(taster), 
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
		taster = 0;
		clock = 0;
		SW0 = 1;
		SW1 = 0;
		SW2 = 0;
		SW3 = 0;
		SW4 = 0;
		SW5 = 1;
		SW6 = 1;
		SW7 = 1;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#1000;
		
		clock = 0;
		SW0 = 1;
		SW1 = 0;
		SW2 = 0;
		SW3 = 0;
		SW4 = 0;
		SW5 = 1;
		SW6 = 1;
		SW7 = 1;
		enable = 1;
		
        
		// Add stimulus here

	end
	always @(*)
	begin
	#40;
	clock <= ~clock;
	end
      
endmodule

