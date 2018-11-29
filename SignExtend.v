`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 11:23:46 PM
// Design Name: 
// Module Name: SignExtend
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


module SignExtend(
    input [14:0] imm,
    input clk,
    output [31:0] extimm
    );
    
    reg[31:0] extended;
    
    assign extimm = extended;
    
    always@(posedge clk) begin
        extended[31:0] <= { { 15{imm[14]}}, imm[14:0] };
    end
    
        
endmodule
