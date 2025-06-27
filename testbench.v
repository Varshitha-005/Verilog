`include "example.v"
module test;
  reg A, B, C, D, E, F;
  wire Y;
  example uut (A, B, C, D, E, F, Y);
  initial begin
    $display("A B C D E F | Y");
    $monitor("%b %b %b %b %b %b | %b", A, B, C, D, E, F, Y);
    A = 0; B = 0; C = 1; D = 1; E = 0; F = 0; #10;
    A = 1; B = 1; C = 0; D = 1; E = 1; F = 1; #10;
    A = 1; B = 0; C = 1; D = 1; E = 0; F = 1; #10;
    $finish;
  end
endmodule
