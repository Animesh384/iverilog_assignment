module test_adder;
  reg a,b,c;
  wire sum,cout;
  adder a1(a,b,c,sum,cout);
  initial
  begin
	  $dumpfile("dump.vcd");
	  $dumpvars;
	  $display($time,"|a|b|c|sum|cout");
	  $monitor($time,"|%b|%b|%b|%b  |%b",a,b,c,sum,cout);
	  a=0; b=0; c=0;
	  #10 a=0; b=0; c=1;
	  #10 a=0; b=1; c=0;
	  #10 a=0; b=1; c=1;
	  #10 a=1; b=0; c=0;
	  #10 a=1; b=0; c=1;
	  #10 a=1; b=1; c=0;
	  #10 a=1; b=1; c=1;
	  $finish;
  end
endmodule


