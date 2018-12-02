`include "Mips.v"

module Mips_tb;
	reg clk;
	wire [5:0] InstructionNum;
	wire [31:0] Result;
	wire Overflow;
	wire Equal;
	wire Carry;

	Mips mips(
		.clk(clk),
		.Overflow(Overflow),
		.Equal(Equal),
		.Carry(Carry),
		.Result(Result),
		.InstructionNum(InstructionNum)
	);
	
	initial begin
		clk = 0;
		forever #10 clk = ~clk;
	end

	always@(*) begin
		$display("Instruction #%d", InstructionNum);
		$display("ALUResult: %h", Result);
		$display("Overflow: %d", Overflow);
		$display("Equal: %d", Equal);
		$display("Carry: %d", Carry);
		#20;
	end


endmodule