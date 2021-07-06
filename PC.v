`timescale 1ns / 1ps

module PC(
    input clk,          //ʱ���ź�
    input rst,          //��λ�ź�
    input [31:2]NPC,    //��һ��ָ���ַ
    input PCWr,         //ʹ���ź�
    output reg [31:2]PC //��ǰָ���ַ
);
    reg [1:0] t;
    wire [31:0] PC_full;
    assign PC_full = {PC,t};

    always @(posedge clk,posedge rst) 
        begin
            if(rst)
                {PC,t} <= 32'h0000_3000;
            else if(PCWr)
                PC <= NPC;
        end
endmodule