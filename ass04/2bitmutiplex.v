module bitmutiplexcer(input s,i0,i1,output f);
    assign f=(~s&i0)|(s&i1);
endmodule