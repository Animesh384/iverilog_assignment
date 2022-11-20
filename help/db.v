module db (
    input v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,
    output y0,y1,y2,y3
);
assign y0=v1|v3|v5|v7|v9;
assign y1=v2|v3|v6|v7;
assign y2=v4|v5|v6|v7;
assign y3=v8|v9;
    
endmodule

module db_test;
reg v0,v1,v2,v3,v4,v5,v6,v7,v8,v9;
wire y0,y1,y2,y3;
db abc(v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,y0,y1,y2,y3);
initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    assign v0=0;assign v1=0;assign v2=0;assign v3=0;assign v4=0;assign v5=0;assign v6=0;assign v7=0;assign v8=1;assign v9=0;
    #10 $finish;
end
    
endmodule