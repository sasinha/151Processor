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
    output wire [31:0] ALUResult,
    output reg Overflow,
    output reg Equal,
    output reg Carry
    );
    
    reg [31:0] ALUout;
    assign ALUResult = ALUout;
    
    always @(*)
    begin 
        if (OperandA == OperandB) begin
            Equal = 1'd1;
        end

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
            ALUout = OperandA << OperandB;
        4'b1011:
            ALUout = OperandB;
        default:
            ALUout = OperandA + OperandB;
        endcase
    end
endmodule
