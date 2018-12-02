`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 10:36:09 PM
// Design Name: 
// Module Name: regfile64x32
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


module regfile64x32(
    input [5:0] RA1,
    input [5:0] RA2,
    input [5:0] WA,
    input [31:0] WD,
    output [31:0] RD1,
    output [31:0] RD2,
    input clk,
    input WE1
    );
    
    reg[31:0] rf[63:0];
    
    assign RD1 = rf[RA1];
    assign RD2 = rf[RA2];
    
    integer i;
    initial begin
        for (i = 0; i < 64; i = i + 1) begin
            rf[i] <= 0;
        end
    end

    always @(posedge clk) begin
        if (WE1) rf[WA] <= WD;
    end
    
endmodule
