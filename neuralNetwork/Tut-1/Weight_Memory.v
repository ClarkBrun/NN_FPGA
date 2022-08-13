`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2019 17:25:12
// Design Name: 
// Module Name: Weight_Memory
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
`include "include.v"

module Weight_Memory #(parameter numWeight = 3, neuronNo=5,layerNo=1,addressWidth=10,dataWidth=16,weightFile="w_1_15.mif") 
    ( 
    input clk,
    input wen,
    input ren,
    input [addressWidth-1:0] wadd,
    input [addressWidth-1:0] radd,
    input [dataWidth-1:0] win,
    output reg [dataWidth-1:0] wout);
    // [dataWidth-1:0] defines the single value's dataWidth
	// [numWeight-1:0] defines the depth of mem
	// This is for a signle neuron and [numWeight-1:0] is the number of incomes to a neuron
    reg [dataWidth-1:0] mem [numWeight-1:0];
	// This is to load the weight matrix into our memory 
	// it acts like a ROM means its content cannot be changed
	// It is a ROM using Block RAM
    `ifdef pretrained
        initial
		begin
	        $readmemb(weightFile, mem);
	    end
	// This is to write the weight values into memory single by single
	// wen means write enable
	// win means write input
	// wadd means where to store the values
	// it acts as a RAM
	`else
		always @(posedge clk)
		begin
			if (wen)
			begin
				mem[wadd] <= win;
			end
		end 
    `endif
    
    always @(posedge clk)
    begin
        if (ren)
        begin
            wout <= mem[radd];
        end
    end 
endmodule
