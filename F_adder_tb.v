`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Katie Bashus
// 
// Create Date: 09/11/2023 02:26:47 PM
// Design Name: 
// Module Name: F_adder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 

// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module F_adder_tb();

    reg At, Bt, Cint;
    wire Coutt, St;
    
    F_adder uut(.A(At), .B(Bt), .Cin(Cint), .Cout(Coutt), .Sum(St));
    
    initial 
    begin
        At=0; Bt=0; Cint=0;
        #10 At=0; Bt=0; Cint=1;
        #10 At=0; Bt=1; Cint=0;
        #10 At=0; Bt=1; Cint=1;
        #10 At=1; Bt=0; Cint=0;
        #10 At=1; Bt=0; Cint=1;
        #10 At=1; Bt=1; Cint=0;
        #10 At=1; Bt=1; Cint=1;
        #10
        $stop;
    end
    
endmodule

