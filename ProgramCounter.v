module ProgramCounter(
	input clk,
	input [5:0] count,
	output reg [5:0] outCount
	);
	
	initial begin
		outCount = 0;
	end

	always @(posedge clk && count < 2) 
	begin
		outCount = count;
	end

endmodule