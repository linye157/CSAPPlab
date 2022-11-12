module count60_tb(

    );
    reg rst;
    reg clk;
    reg en;
    wire [6:0] count;
    wire co;
    initial begin
        rst = 0;
        clk = 0;
        en = 0;
        #100
        rst = 1;
        #40
        rst = 0;
        en = 1;
    end
    
    always #5 clk = ~clk;
    count_60 count60(rst,clk,en,count,co);    
endmodule
