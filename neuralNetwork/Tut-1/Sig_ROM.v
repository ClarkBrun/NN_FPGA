`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2019 18:36:19
// Design Name: 
// Module Name: Sig_ROM
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


module Sig_ROM #(parameter inWidth=10, dataWidth=16) (
    input           clk,
    input   [inWidth-1:0]   x,
    output  [dataWidth-1:0]  out
    );
    
    reg [dataWidth-1:0] mem [2**inWidth-1:0];
    reg [inWidth-1:0] y;
	// It is ROM using distributed RAM
	initial
	begin
		$readmemb("sigContent.mif",mem);
	end
    
    always @(posedge clk)
    begin
        if($signed(x) >= 0)
            y <= x+(2**(inWidth-1));
        else 
            y <= x-(2**(inWidth-1));      
    end
    // Using distributed RAM
	// the smallest block RAM is 18kbits
	// Even if this 18kbits are not fully used, the unused part cannot be fetched anymore
    assign out = mem[y];
    
endmodule
