module PC(
    input clk,          //ʱ���ź�
    input rst,          //��λ�ź�
    input [31:2]NPC,    //��һ��ָ���ַ
    input PCWr,         //ʹ���ź�
    output reg [31:2]PC //��ǰָ���ַ
);
    reg [1:0] t;

    always @(posedge clk,posedge rst) 
        begin
            if(rst)
                {PC,t} <= 32'h0000_3000;
            else if(PCWr)
                PC <= NPC;
        end
endmodule