module Adder(
	input [5:0] a,
	input [5:0] b,
	output reg [5:0] sum
	);
	
	always @(*)
	begin
		sum = a + b;
	end

endmodule