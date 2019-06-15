`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:11:17 12/02/2018
// Design Name:   Reg
// Module Name:   D:/Xilinx Workstation/First_Project/kl.v
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

module kl;

	// Inputs
	reg s1;
	reg s2;
	reg s3;
	reg s4;
	reg clk;

	// Outputs
	wire q0;
	wire q1;
	wire q2;
	wire q3;

	// Instantiate the Unit Under Test (UUT)
	Reg uut (
		.s1(s1), 
		.s2(s2), 
		.s3(s3), 
		.s4(s4), 
		.clk(clk), 
		.q0(q0), 
		.q1(q1), 
		.q2(q2), 
		.q3(q3)
	);

	initial begin
		// Initialize Inputs
		s1 = 0;
		s2 = 1;
		s3 = 0;
		s4 = 0;
		clk = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
      	s1 = 0;
		s2 = 0;
		s3 = 0;
		s4 = 0;
#100;
	s1 = 1;
		s2 = 1;
		s3 = 1;
		s4 = 1;		
		// Add stimulus here

	end
	always @(*)
	begin 
	#40;
	clk <= ~clk;
	end
      
endmodule

