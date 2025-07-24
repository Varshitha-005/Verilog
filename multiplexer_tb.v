module mux_2to1_tb;
    reg a, b, sel;
    wire y;
    mux_2to1 uut (.a(a), .b(b), .sel(sel), .y(y));
    initial begin
        $display("sel a b | y");
        $display("--------|--");
        a = 0; b = 1; sel = 0; #10;
        $display(" %b   %b %b | %b", sel, a, b, y);
        a = 0; b = 1; sel = 1; #10;
        $display(" %b   %b %b | %b", sel, a, b, y);
        a = 1; b = 0; sel = 0; #10;
        $display(" %b   %b %b | %b", sel, a, b, y);
        a = 1; b = 0; sel = 1; #10;
        $display(" %b   %b %b | %b", sel, a, b, y);
        $finish;
    end
endmodule
