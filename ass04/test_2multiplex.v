module test_;
    reg i0,i1,s;
    wire f;
    bitmutiplexcer a1(s,i0,i1,f);
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
        $display($time,"|i0|i1|s|f");
        $monitor($time,"|%d |%d |%d|%d|",i0,i1,s,f);
        i0=1; i1=0;
        #10 s=0;
        #10 s=1;
        #10 $finish;
    end

endmodule