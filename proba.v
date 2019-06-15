`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:33:55 12/15/2018
// Design Name:   CPU
// Module Name:   D:/Xilinx Workstation/First_Project/proba.v
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

module proba;

	// Inputs
	reg enabling;
	reg clock;
	reg SW4;
	reg SW5;
	reg SW6;
	reg SW7;
	reg operation_bit0;
	reg operation_bit1;
	reg enable;

	// Outputs
	wire [3:0] rezult;
	wire carry;
	wire z;
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
		.SW4(SW4), 
		.SW5(SW5), 
		.SW6(SW6), 
		.SW7(SW7), 
		.operation_bit0(operation_bit0), 
		.operation_bit1(operation_bit1), 
		.enable(enable), 
		.rezult(rezult), 
		.carry(carry), 
		.z(z), 
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
		SW4 = 0;
		SW5 = 0;
		SW6 = 0;
		SW7 = 0;
		operation_bit0 = 0;
		operation_bit1 = 0;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

