`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:39:34 12/09/2018
// Design Name:   Reg
// Module Name:   D:/Xilinx Workstation/First_Project/testZaReg.v
// Project Name:  First_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testZaReg;

	// Inputs
	reg [0:0] clock;
	reg [0:0] sw1;
	reg [0:0] sw2;
	reg [0:0] sw3;
	reg [0:0] sw4;
	reg [0:0] enabling;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	Reg uut (
		.clock(clock), 
		.sw1(sw1), 
		.sw2(sw2), 
		.sw3(sw3), 
		.sw4(sw4), 
		.out(out), 
		.enabling(enabling)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		sw1 = 1;
		sw2 = 1;
		sw3 = 1;
		sw4 = 1;
		enabling = 0;

		// Wait 100 ns for global reset to finish
		#300;
		enabling = 1;
		sw1 = 1;
		sw2 = 0;
		sw3 = 1;
		sw4 = 0;
        
		// Add stimulus here

	end
	always @(*)
	begin
	#40;
	clock <= ~clock;
	end
      
endmodule

