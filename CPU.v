`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:45 12/08/2018 
// Design Name: 
// Module Name:    CPU 
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
	module CPU(input enabling,clock,SW4,SW5,SW6,SW7,operation_bit0,operation_bit1, enable, output [3:0] rezult, output carry,z,AN0,AN1,AN2,a,b,c,d,e,fp,g,dp);//);
		
		//input [0:0] clock,SW0,SW1,SW2,SW3,SW4,SW5,SW6,SW7,enable;
		//input [0:0] taster;
		//output [3:0] rezult;
		//output [0:0] AN0,AN1,AN2,AN3,a,b,c,d,e,fp,g,dp;
		
		
		
		wire c1;					wire fo;	
		wire clk7s; wire c0;	wire f1;	
		wire a0;		wire d0;	wire g0;	
		wire a1;		wire d1;	wire g1; 
		wire b0;		wire e0;	wire dp0;
		wire b1;		wire e1;	wire dp1;
		wire enabling_ = ~enabling;
		
		wire [3:0] registar1;
		wire [3:0] registar2;
		wire [1:0] op;
		Reg Reg1(.clock(clock),.sw1(SW4),.sw2(SW5),.sw3(SW6),.sw4(SW7),.out(registar1),.enabling(enabling));
		Reg Reg2(.clock(clock),.sw1(SW4),.sw2(SW5),.sw3(SW6),.sw4(SW7),.out(registar2),.enabling(enabling_));
		
		ALU alu(.clock(clock),.registarA(registar1),.registarB(registar2),.rezult(rezult),.enable(enable),.operation_bit0(operation_bit0),.operation_bit1(operation_bit1),.carry(carry),.z(z),.operation(op));//,.operation(op));
		
		/*
		* @display 0, sluzi za prezentovanje displeja #1
		* @display 1, sluzi za prezentovanje displeja #2
		* @selector, sluzi za neizmenicno prikazivanje 
		  jednog pa drugog displeja pri odredjenoj fr-
		  -ekvenciji tako da ljudsko oko ne moze da detektuje.
		* @deljenje, sluzi za mofidikaciju i dobianje 
			odredjene frekvencije
		*/
		
	display_7s display0(.clock(clock),.number(0),.dp(dp0),.a(a0),.b(b0),.c(c0),.d(d0),.e(e0),.f(f0),.g(g0));
	display_7s display1(.clock(clock),.number(op),.dp(dp1),.a(a1),.b(b1),.c(c1),.d(d1),.e(e1),.f(f1),.g(g1));
	selecting_display selector(.clk7s(clk7s),.a0(a0),.a1(a1),.b0(b0),.b1(b1),.c0(c0),.c1(c1),.d0(d0),.d1(d1),.e0(e0),.e1(e1),.f0(f0),.f1(f1),.g0(g0),.g1(g1),.dp0(dp0),.dp1(dp1),.a(a),.b(b),.c(c),.d(d),.e(e),.f(fp),.g(g),.AN0(AN0),.AN1(AN1),.AN2(AN2),.dp(dp));	
	delilac_frekvencije deljenje(.clock(clock),.clk7s(clk7s));  
		
	/*	
		always @(posedge clock)
		begin
			if(!taster)
			begin
				if(counter == 4)
					begin
						counter <= 0;
					end
				else
					begin
					counter <= counter + 1;
					end
			end
		end*/
			
			
		




endmodule
