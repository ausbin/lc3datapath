module nibble_to_7seg
    (
        input [3:0] nibble,
        output [6:0] hex
    );

    // 7seg values
    parameter hexval0 = ~7'b0111111;
    parameter hexval1 = ~7'b0000110;
    parameter hexval2 = ~7'b1011011;
    parameter hexval3 = ~7'b1001111;
    parameter hexval4 = ~7'b1100110;
    parameter hexval5 = ~7'b1101101;
    parameter hexval6 = ~7'b1111101;
    parameter hexval7 = ~7'b0000111;
    parameter hexval8 = ~7'b1111111;
    parameter hexval9 = ~7'b1100111;
    parameter hexvalA = ~7'b1110111;
    parameter hexvalB = ~7'b1111100;
    parameter hexvalC = ~7'b0111001;
    parameter hexvalD = ~7'b1011110;
    parameter hexvalE = ~7'b1111001;
    parameter hexvalF = ~7'b1110001;
    parameter hexvalU = ~7'b1000000;

    assign hex = (nibble == 4'h0)? hexval0 :
                 (nibble == 4'h1)? hexval1 :
                 (nibble == 4'h2)? hexval2 :
                 (nibble == 4'h3)? hexval3 :
                 (nibble == 4'h4)? hexval4 :
                 (nibble == 4'h5)? hexval5 :
                 (nibble == 4'h6)? hexval6 :
                 (nibble == 4'h7)? hexval7 :
                 (nibble == 4'h8)? hexval8 :
                 (nibble == 4'h9)? hexval9 :
                 (nibble == 4'hA)? hexvalA :
                 (nibble == 4'hB)? hexvalB :
                 (nibble == 4'hC)? hexvalC :
                 (nibble == 4'hD)? hexvalD :
                 (nibble == 4'hE)? hexvalE :
                 (nibble == 4'hF)? hexvalF :
                                   hexvalU;
endmodule
