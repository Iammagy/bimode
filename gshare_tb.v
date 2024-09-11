`include "Gshare.v"
`include "gshare_tester.v"

module gs_tb;
    // señales para el testbench
    wire clk_i;
    wire reset_i;
    wire [63:0] branch_address;
    wire real_ton;
    wire prediction;
    wire porcentaje_de_aciertos;

    initial 
    begin
        $dumpfile("sim.vcd");
        $dumpvars(-1, uut);
        $monitor("Time: %0d | Addr: %h | Taken: %b | Prediction: %b | Global History: %b | porcentaje de aciertos: %",
                 $time, branch_address, real_ton, prediction, uut.global_history,porcentaje_de_aciertos);
        
    end
    
    bimode uut (
        .clk_i(clk_i),
        .reset_i(reset_i),
        .branch_address(branch_address),
        .real_ton(real_ton),
        .prediction(prediction)
    );

    bimoded uuut(
        .clk_i(clk_i),
        .reset_i(reset_i),
        .branch_address(branch_address),
        .real_ton(real_ton)
    );

endmodule 