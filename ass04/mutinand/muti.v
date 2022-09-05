module mutiplexcer(output f,input sel,a,b);
wire w1,w2,w3;
nand g1(w1,sel,sel);
nand g2(w2,w1,a);
nand g3(w3,sel,b);
nand g4(f,w2,w3);
endmodule