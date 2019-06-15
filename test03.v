`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:23:21 12/08/2018
// Design Name:   CPU
// Module Name:   D:/Xilinx Workstation/First_Project/test03.v
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

module test03;

	// Inputs
	reg [0:0] SW1;
	reg [0:0] SW2;
	reg [0:0] SW3;
	reg [0:0] SW4;
	reg [0:0] clock;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.SW1(SW1), 
		.SW2(SW2), 
		.SW3(SW3), 
		.SW4(SW4), 
		.clock(clock), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		SW1 = 0;
		SW2 = 0;
		SW3 = 0;
		SW4 = 0;
		clock = 0;

		// Wait 100 ns for global reset to finish
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

