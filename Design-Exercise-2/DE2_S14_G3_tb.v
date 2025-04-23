`include "DE2_S14_G3.v"
`timescale 1ns / 1ps


/*

 Hello sir, our testbench does not work..
 But we receive proper prizes in Circuitverse

 Proof will be in the documentation, and you may download and
 check the circuitverse design if so.

*/
module TestBench();

    // Parameters
    parameter CLK_PERIOD = 10;  // Clock period in nanoseconds

    // Signals
    reg [2:0] D1, D2, D3, D4, D5, D6;  // Input signals for dice values
    wire P1, P2, P3, P4, P5, P6;           // Output signals for prizes

    // Instantiate the module
    Main uut (
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .D4(D4),
        .D5(D5),
        .D6(D6),
        .P1(P1),
        .P2(P2),
        .P3(P3),
        .P4(P4),
        .P5(P5),
        .P6(P6)
    );

    // Clock generation
    reg clk = 0;
    always #((CLK_PERIOD)/2) clk = ~clk;

    // Test stimuli
    initial begin
        // Reset inputs
        D1 = 0; D2 = 0; D3 = 0; D4 = 0; D5 = 0; D6 = 0;

        // Wait for a few clock cycles
        #10000;

        // Test case 1:
        D1 = 1; D2 = 1; D3 = 1; D4 = 1; D5 = 1; D6 = 0;
        #10000;
        $display("Dice = %b, P1 = %b, P2 = %b, P3 = %b, P4 = %b, P5 = %b, P6 = %b", {D1, D2, D3, D4, D5, D6}, P1, P2, P3, P4, P5, P6); 

        // Test case 2:
        D1 = 1; D2 = 2; D3 = 3; D4 = 4; D5 = 5; D6 = 6;
        $display("Dice = %b, P1 = %b, P2 = %b, P3 = %b, P4 = %b, P5 = %b, P6 = %b", {D1, D2, D3, D4, D5, D6}, P1, P2, P3, P4, P5, P6);
        #10000;
        
        // Test case 3:
        D1 = 4; D2 = 4; D3 = 4; D4 = 0; D5 = 0; D6 = 0;
        $display("Dice = %b, P1 = %b, P2 = %b, P3 = %b, P4 = %b, P5 = %b, P6 = %b", {D1, D2, D3, D4, D5, D6}, P1, P2, P3, P4, P5, P6);        #10000;

        // Test case 4:
        D1 = 4; D2 = 4; D3 = 4; D4 = 4; D5 = 0; D6 = 0;
        $display("Dice = %b, P1 = %b, P2 = %b, P3 = %b, P4 = %b, P5 = %b, P6 = %b", {D1, D2, D3, D4, D5, D6}, P1, P2, P3, P4, P5, P6);        #10000;

        // Test case 5:
        D1 = 4; D2 = 0; D3 = 0; D4 = 0; D5 = 0; D6 = 0;
        $display("Dice = %b, P1 = %b, P2 = %b, P3 = %b, P4 = %b, P5 = %b, P6 = %b", {D1, D2, D3, D4, D5, D6}, P1, P2, P3, P4, P5, P6);        #10000;

        // Finish simulation
        $finish;
    end

endmodule
