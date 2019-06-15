`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:26:14 12/02/2018
// Design Name:   Reg
// Module Name:   D:/Xilinx Workstation/First_Project/tt.v
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

module tt;

	// Inputs
	reg [3:0] s1;
	reg clk;

	// Outputs
	wire q0;
	wire q1;
	wire q2;
	wire q3;

	// Instantiate the Unit Under Test (UUT)
	Reg uut (
		.s1(s1), 
		.clk(clk), 
		.q0(q0), 
		.q1(q1), 
		.q2(q2), 
		.q3(q3)
	);

	initial begin
		// Initialize Inputs
		s1 = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		s1 = 4;
		#100;
		s1 = 8;
        
		// Add stimulus here

	end
		always @(*)
	begin
	#40;
	clk <= ~clk;
	end
      
      
endmodule

