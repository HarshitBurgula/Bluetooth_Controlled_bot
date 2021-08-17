`timescale 1ns / 1ps
module vedic16b_tb();

	reg [15:0] a;
	reg [15:0] b;
	wire [31:0] c;
	
	vedic16b tb(.a(a),.b(b),.c(c));

	initial begin
		a = 0;
		b = 0;
		#100;
		
		a = 16'd12;
		b = 16'd24;
		#100;
		
		a = 16'd11;
		b = 16'd13;
		#100;
		
		a = 16'd24;
		b = 16'd2;
		#100;
		
		a = 16'd200;
		b = 16'd21;
		#100;
		
		a = 16'd48;
		b = 16'd36;
		#100;$finish;
	end
      
endmodule