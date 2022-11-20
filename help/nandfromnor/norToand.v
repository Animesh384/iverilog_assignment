module norToand(input a, b, output y);

wire w1, w2;

nor(w1, a, a);
nor(w2, b, b);
nor(y, w2, w1);

endmodule

module norToand_test;
reg a, b;
wire y;
norToand m(a, b, y);
initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    a=0; b=0;
    #10 a=0; b=1;
    #10 a=1; b=0;
    #10 a=1; b=1;
    #10 $finish;
end
    
endmodule