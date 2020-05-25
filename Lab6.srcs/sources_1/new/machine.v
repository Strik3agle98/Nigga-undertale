`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2020 02:26:43 PM
// Design Name: 
// Module Name: machine
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


module machine(
    output reg[7:0] nextState,
    input wire[7:0] state,
    input wire[7:0] inp,
    input wire isDeath,
    input wire clk
    );
    
    //key enum
    parameter IDLE = 4'b0000;
    parameter UP = 4'b0001;
    parameter LEFT = 4'b0010;
    parameter DOWN = 4'b0011;
    parameter RIGHT = 4'b0100;
    parameter ENTER = 4'b0101;
    
    //page enum
    parameter NULL = 4'b0000;
    parameter START = 4'b1000;
    parameter DODGE = 4'b1001;
    parameter ATTACK = 4'b1010;
    parameter ACTION = 4'b1011; 
    
    wire[3:0] keyboard;
    wire[3:0] menuInp;
    assign keyboard = inp[7:4];
    assign menuInp = inp[3:0];
    
    wire[3:0] page;
    wire[3:0] substage;
    assign keyboard = state[7:4];
    assign menuInp = state[3:0];
    
    
    
endmodule
