`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:02:37 12/08/2018
// Design Name:   CPU
// Module Name:   D:/Xilinx Workstation/First_Project/test01.v
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

module test01;

	// Inputs
	reg SW1;
	reg SW2;
	reg SW3;
	reg SW4;
	reg clock;
	reg operation;
	reg enable;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.SW1(SW1), 
		.SW2(SW2), 
		.SW3(SW3), 
		.SW4(SW4), 
		.clock(clock), 
		.operation(operation), 
		.enable(enable)
	);

	initial begin
		// Initialize Inputs
		SW1 = 0;
		SW2 = 0;
		SW3 = 0;
		SW4 = 0;
		clock = 0;
		operation = 0;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		SW1 = 0;
		SW2 = 1;
		SW3 = 0;
		SW4 = 0;
      #100;
		SW1 = 1;
		SW2 = 1;
		SW3 = 1;
		SW4 = 1;
		// Add stimulus here

	end
	always @(*)
	begin
	#40;
	clock <= ~clock;
	end
endmodule

