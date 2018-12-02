`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2018 12:12:08 PM
// Design Name: 
// Module Name: ALU32bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU32bit(
    input [31:0] OperandA,
    input [31:0] OperandB,
    input [3:0] ALUsel,
    output [31:0] ALUResult,
    output [0:0] Overflow,
    output [0:0] Equal,
    output [0:0] Carry
    );
    
    reg [31:0] ALUout;
    assign ALUResult = ALUout;
    
    always @(*)
    begin 
        case(ALUsel)
        4'b0000:
            ALUout = ALUout;
        4'b0001:
            ALUout = OperandA + OperandB;
        4'b0010:
            ALUout = OperandA - OperandB;
        4'b0101:
            ALUout = OperandA & OperandB;
        4'b0110:
            ALUout = OperandA | OperandB;
        4'b0111:
            ALUout = ~OperandA;
        4'b1000:
            ALUout = OperandA ^ OperandB;
        4'b1001:
            ALUout = OperandA << 1;
        4'b1011:
            ALUout = OperandA;
        default:
            ALUout = OperandA + OperandB;
        endcase
    end
endmodule
