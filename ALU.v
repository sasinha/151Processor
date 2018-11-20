// Alu
module ALU32bit(ALUopsel, OperandA, OperandB, ALUresult, Overflow, Equal, Carry);
	input ALUopsel, OperandA, OperandB
	output ALUresult, Overflow, Equal, Carry