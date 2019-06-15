`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:47:22 12/08/2018
// Design Name:   CPU
// Module Name:   D:/Xilinx Workstation/First_Project/ss.v
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

module ss;

	// Inputs
	reg [0:0] clock;
	reg [0:0] SW0;
	reg [0:0] SW1;
	reg [0:0] SW2;
	reg [0:0] SW3;
	reg [0:0] SW4;
	reg [0:0] SW5;
	reg [0:0] SW6;
	reg [0:0] SW7;
	reg [0:0] enable;
	reg [1:0] operation;

	// Outputs
	wire [3:0] rezult;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
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
		.operation(operation), 
		.rezult(rezult)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		SW0 = 1;
		SW1 = 1;
		SW2 = 1;
		SW3 = 0;
		SW4 = 0;
		SW5 = 0;
		SW6 = 0;
		SW7 = 0;
		enable = 1;
		operation = 2'b00;

		// Wait 100 ns for global reset to finish
		#100;
		enable = 0;
		#100;
		enable = 1;
		
		SW0 = 1;
		SW1 = 1;
		SW2 = 1;
		SW3 = 1;
		SW4 = 0;
		SW5 = 0;
		SW6 = 1;
		SW7 = 1;
		operation = 2'b01;
		
			#100;
		enable = 0;
		#100;
		enable = 1;
		
		
        
		// Add stimulus here

	end
	always @(*)
	begin
	#40;
	clock <= ~clock;
	end
      
endmodule

