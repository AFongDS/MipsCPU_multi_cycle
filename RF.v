module RF(
    input  [4:0]  rs,      //读操作地址1
    input  [4:0]  rt
    input  [4:0]  rd,       //写操作地址1
    input  [31:0] WD,       //写入的数据
    input         clk,
    input         RFWr,
    output [31:0] RD1,      //读出的数据1
    output [31:0] RD2
);
reg [31:0] regfile [31:0];

integer i;
initial 
begin
    for (i = 0; i < 32; i = i + 1)
    register[i] = 0;
end

always @(posedge clk) 
begin
    if (RFWr)
        regfile[rd] <= WD;
end

assign RD1 = (rs==0)? 0:regfile[rs];
assign RD2 = (rt==0)? 0:regfile[rt];