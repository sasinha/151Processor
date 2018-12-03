`include "ProgramCounter.v"
`include "Adder.v"
`include "InstructionMemory.v"
`include "Controller.v"
`include "regfile64x32.v"
`include "ALU32bit.v"
`include "SignExtend.v"
`include "MUX1.v"

module Mips(
	input clk,
	output wire Overflow,
	output wire Equal,
	output wire Carry,
	output wire [31:0] Result,
	output wire [5:0] InstructionNum
	);

	wire [5:0] pcOut;
	wire [5:0] adderOut;
	wire [31:0] imRead;
	wire [5:0] rs;
	wire [5:0] rt;
	wire [5:0] rd;
	wire [14:0] immediate;
	wire [3:0] ALUopsel;
	wire MUXsel1;
	wire WE1;
	wire [31:0] RD1;
	wire [31:0] RD2;
	wire [31:0] ALUResult;
	wire [31:0] extImmediate;
	wire [31:0] OperandB2;
	wire of;
	wire eq;
	wire car;

	assign Result = ALUResult;
	assign Overflow = of;
	assign Equal = eq;
	assign Carry = car;
	assign InstructionNum = pcOut;

	ProgramCounter pc(
		.clk(clk),
		.count(adderOut),
		.outCount(pcOut)
	);
	Adder adder(
		.a(6'd1),
		.b(pcOut),
		.sum(adderOut)
	);
	InstructionMemory im(
		.Address(pcOut),
		.ReadData(imRead)
	);
	Controller controller(
		.Instruction(imRead),
		.RegWrite(WE1),
		.MUXsel1(MUXsel1),
		.RS(rs),
		.RD(rd),
		.ALUopsel(ALUopsel),
		.RT(rt),
		.Immediate(immediate)
	);
	regfile64x32 regfile(
		.RA1(rs),
		.RA2(rt),
		.WA(rd),
		.WD(ALUResult),
		.RD1(RD1),
		.RD2(RD2),
		.clk(clk),
		.WE1(WE1)
	);
	MUX1 mux(
		.R2D2(RD2),
		.imm(extImmediate),
		.MUXsel1(MUXsel1),
		.OperandB2(OperandB2)
	);
	SignExtend signExtend(
		.imm(immediate),
		.extimm(extImmediate)
	);
	ALU32bit alu(
		.OperandA(RD1),
		.OperandB(OperandB2),
		.ALUsel(ALUopsel),
		.ALUResult(ALUResult),
		.Overflow(of),
		.Equal(eq),
		.Carry(car)
	);
	

endmodule