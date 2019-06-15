`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:13:00 12/02/2018
// Design Name:   Reg
// Module Name:   D:/Xilinx Workstation/First_Project/test1.v
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

module test1;

	// Outputs
	wire ;

	// Instantiate the Unit Under Test (UUT)
	Reg uut (
		.()
	);

	initial begin
		// Initialize Inputs
		d = 4;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always @(*)
	begin
	#40;
	clk <= ~clk;
	end
endmodule



