module bimoded
(output reg clk_i, 
output reg reset_i, 
output reg [63:0] branch_address, 
output reg real_ton
);

always #1 clk_i = !clk_i;
initial 
begin
    clk_i=0;
    reset_i = 1;
    #50
    reset_i = 0;
    // Simulación 1
    #50;
    branch_address = 64'h0000_54A1_0000_0001;
    real_ton = 0;
    #50;

    branch_address = 64'h0000_0000_0000_000B;
    real_ton = 1;
    #50;

    branch_address = 64'h0000_0000_0000_0CBA;
    real_ton = 0;
    #50;

    branch_address = 64'h0000_0000_0000_BBBB;
    real_ton = 1;
    #50;
    $finish;
    end
    
 
endmodule
