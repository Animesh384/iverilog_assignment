module test_;
    reg i0,i1,i2,i3,s0,s1;
    wire f;
    bitmutiplexcer a1(s0,s1,i0,i1,i2,i3,f);
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
        $display($time,"|i0|i1|i2|i3|s0|s1|f");
        $monitor($time,"|%d |%d |%d |%d |%d |%d |%d |",i0,i1,i2,i3,s0,s1,f);
        i0=1; i1=0;i2=1;i3=0;
        #10 s0=0;s1=0;
        #10 s0=0;s1=1; 
        #10 s0=1;s1=0;
        #10 s0=1;s1=1; 
        #10 $finish;
    end

endmodule