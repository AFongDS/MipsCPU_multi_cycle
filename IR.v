`timescale 1ns / 1ps

module IR (
   input    clk,
   input    rst,
   input    IRWr, 
   input  [31:0] ins_in,       //ָ������
   output reg [31:0] ins_out      //ָ�����
);
    always @(posedge clk or posedge rst) 
        begin
            if(rst)
                ins_out <= 0;
            else if (IRWr)
                ins_out <= ins_in;
        end

endmodule