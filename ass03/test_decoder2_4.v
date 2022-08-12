module test_decoder2_4;
  reg a,b;
  wire d0,d1,d2,d3;
  decoder2_4 a1(a,b,d0,d1,d2,d3);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      $display($time,"time|a|b|d0|d1|d2|d3|");
      $monitor($time,"time|%d|%d|%d |%d |%d |%d |",a,b,d0,d1,d2,d3);
      a=0; b=0;
      #10  a=0; b=1;
      #10  a=1; b=0;
      #10  a=1; b=1;
      #10 $finish;
    end
endmodule