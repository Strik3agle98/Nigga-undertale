`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2020 04:05:34 PM
// Design Name: 
// Module Name: testPlayer
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


module testPlayer(

    );
    wire [31:0]state;
    wire [15:0]position;
    wire isDeath;
    reg [0:15] instruction;
    reg clk;
    wire [7:0] HP;
    wire [7:0] ATK;
    
    Player a(state,position,isDeath,instruction,clk,HP,ATK);
    
    always
    #5 clk=~clk;
    
    initial
    begin
    #0 clk=0;
    instruction = 0;
    
    #20 instruction = 16'b0001000000010000; //heal 1
    #20 instruction = 16'b0010000111010000; // damage to death
    #60 instruction = 16'b0011000000100000; // atk +1
    #20 instruction = 16'b0001000000010000; //heal 1
    #20 instruction = 16'b0100000001010000; // set atk 5
    #20 instruction = 16'b0000000000010000; //idle
    #20 instruction = 16'b0101000000000000; //up
    #40 instruction = 16'b0101000000010000; //left
    #40 instruction = 16'b0101000000100010; //down
    #30 instruction = 16'b0101000000110000; //right
    #50 instruction = 16'b0000000000010000; //idle
    #20 $finish;
    end
endmodule
