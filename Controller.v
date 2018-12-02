module Controller(
	input [31:0] Instruction,
	output reg RegWrite,
	output reg MUXsel1,
	output reg [5:0] RS,
	output reg [5:0] RD,
	output reg [3:0] ALUopsel,
	output reg [5:0] RT,
	output reg [14:0] Immediate
	);

	always @(*)
	begin
		MUXsel1 = Instruction[31:31];
		RS = Instruction[30:25];
		RD = Instruction[24:19];
		ALUopsel = Instruction[18:15];
		RT = Instruction[14:9];
		Immediate = Instruction[14:0];
		RegWrite = 1;
	end

endmodule