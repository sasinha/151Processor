`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2018 10:23:43 AM
// Design Name: 
// Module Name: MUX1
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


module MUX1(
    input [31:0] R2D2,
    input [31:0] imm,
    input MUXsel1,
    output [31:0] OperandB2
    );
    
    reg [31:0] MUXout;
    assign OperandB2 = MUXout;
    
    always@(R2D2 or imm or MUXsel1)
    if(MUXsel1 == 1'b0)
        MUXout = R2D2;
    else
        MUXout = imm;
        
endmodule
