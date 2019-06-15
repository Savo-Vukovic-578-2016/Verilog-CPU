`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:57:05 12/08/2018 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

// ALU_ADD	2'b00;
// ALU_SUB	2'b10
// ALU_AND	2'b10;
// ALU_OR	2'b11

module ALU(clock,registarA,registarB,rezult,enable,operation_bit0,operation_bit1,carry,z,operation); //operation
		input [0:0] clock;
		output reg [0:0] carry;
		input [0:0] enable;
		input [3:0] registarA,registarB;
		input [0:0] operation_bit0,operation_bit1;
		reg [4:0] temp;
		output reg [3:0] rezult;
		output z;
		assign z = ~|rezult;
		output reg [1:0] operation;
		
		always @(posedge clock)
		begin
			if(enable == 1)
			begin
				if(operation_bit0 == 0 && operation_bit1 == 0)
					begin
						{carry,rezult} = registarA + registarB;
					end
				else if(operation_bit0 == 0 && operation_bit1 == 1)
					begin
						{carry,rezult} = registarA - registarB;
						//carry = (registarA > registarB) ? 0 : 1;
					end
				else if(operation_bit0 == 1 && operation_bit1 == 0)
					begin
						rezult = registarA & registarB;
						carry = 0;
					end
				else if(operation_bit0 == 1 && operation_bit1 == 1)
					begin
					rezult = registarA | registarB;
					carry = 0;
					end
			end
			operation[0] = operation_bit1;
			operation[1] = operation_bit0;
		end
endmodule // ALU
