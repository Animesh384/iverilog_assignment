module string();
reg [8*28:0]string;
initial
begin
    string="hello verilog world";
    $display("%s\n",string);
end
endmodule
