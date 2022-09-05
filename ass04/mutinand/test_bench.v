module test_;
wire f;
reg sel,a,b;
mutiplexcer ob1(f,sel,a,b);
initial begin
    //$dumpfile("dump.vcd");
    $dumpvars;
    
    a=0;b=1;
    #10 sel=0;
    #10 sel=1;
    #10 $finish;
end  
endmodule