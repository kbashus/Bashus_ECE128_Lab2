`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Katie Bashus
// Create Date: 09/11/2023 01:39:00 PM
// Design Name: 
// Module Name: F_adder
// Tool Versions: 
// Description: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module F_adder(A, B, Cin, Cout, Sum);
    input A, B, Cin;
    output reg Cout, Sum;
    
    always@(A, B, Cin)
        case({A, B, Cin})
            3'b000: begin Sum=0; Cout=0; end
            3'b001: begin Sum=1; Cout=0; end
            3'b010: begin Sum=1; Cout=0; end
            3'b011: begin Sum=0; Cout=1; end
            3'b100: begin Sum=1; Cout=0; end
            3'b101: begin Sum=0; Cout=1; end
            3'b110: begin Sum=0; Cout=1; end
            3'b111: begin Sum=1; Cout=1; end
        endcase
  
endmodule
