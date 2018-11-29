`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 04:43:13 PM
// Design Name: 
// Module Name: ALU32tb
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


module ALU32tb(

    );
    
    reg [31:0] OperandA;
    reg [31:0] OperandB;
    reg [3:0] ALUsel;
    
    wire [31:0] ALUresult;

    ALU32bit uut(
    .OperandA(OperandA),
    .OperandB(OperandB),
    .ALUsel(ALUsel),
    .ALUresult(ALUresult)
    );
    
    initial begin
    OperandA = 32'b00000000000000000000000000001000;OperandB = 32'b0000000000000000000000000000001;
    ALUsel = 4'b0001; #20
    
    $stop;
    end
endmodule
