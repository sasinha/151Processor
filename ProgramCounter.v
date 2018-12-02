module ProgramCounter(
	input clk,
	input [5:0] count,
	output reg [5:0] outCount
	);

	always @(posedge clk && count < 26) 
	begin
		outCount = count;
	end

endmodule