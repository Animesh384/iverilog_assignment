module comparator(input a,b, output g,e,l);
    assign g=a&~b;
    assign l=~a&b;
    assign e=~((a&~b)+(~a&b));
    //xnor(e,a,b);
endmodule