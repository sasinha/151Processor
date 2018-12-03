`include "Mips.v"

module Mips_tb;
	reg clk;
	wire [5:0] InstructionNum;
	wire [31:0] Result;
	wire Overflow;
	wire Equal;
	wire Carry;
	wire RegDest[5:0];

	Mips mips(
		.clk(clk),
		.Overflow(Overflow),
		.Equal(Equal),
		.Carry(Carry),
		.Result(Result),
		.InstructionNum(InstructionNum)
	);
	
	initial begin
		$dumpfile("mips_tb.vcd");
   		$dumpvars(0,mips);
		clk = 0;
		forever #10 clk = ~clk;
	end

endmodule