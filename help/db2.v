module db (
    input [9:0]v,
    output [3:0]y
);
assign y[0]=v[1]|v[3]|v[5]|v[7]|v[9];
assign y[1]=v[2]|v[3]|v[6]|v[7];
assign y[2]=v[4]|v[5]|v[6]|v[7];
assign y[3]=v[8]|v[9];
    
endmodule

module db_test;
reg [9:0]v;
wire [3:0]y;
db abc(v,y);
initial begin
    $dumpfile("dump.vcd");
    $dumpvars;

    // assign v0=0;assign v1=0;assign v2=0;assign v3=0;assign v4=0;assign v5=0;assign v6=0;assign v7=0;assign v8=1;assign v9=0;
    // assign v[9:0] = 0;

    assign v = 0;
    assign v[7] = 1;

    #10 $finish;
end
    
endmodule