`include "logic_gates.v"
module test;
    reg A, B;
    wire Y_and, Y_or, Y_not, Y_nand, Y_nor;
    and_gate u1 (A, B, Y_and);
    or_gate  u2 (A, B, Y_or);
    not_gate u3 (A, Y_not);         
    nand_gate u4 (A, B, Y_nand);
    nor_gate  u5 (A, B, Y_nor);
    initial begin
        $display("A B | AND OR NOT NAND NOR");
        $monitor("%b %b |  %b   %b   %b    %b    %b", A, B, Y_and, Y_or, Y_not, Y_nand, Y_nor);
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        $finish;
    end
endmodule
