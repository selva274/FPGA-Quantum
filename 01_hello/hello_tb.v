`timescale 1ns/1ps

module hello_tb;

    reg [3:0] A;
    reg [3:0] B;

    wire greater;
    wire less;
    wire equal;

    hello uut (
        .A(A),
        .B(B),
        .greater(greater),
        .less(less),
        .equal(equal)
    );

    initial begin

        // A = 5, B = 3
        A = 4'b0110;
        B = 4'b1000;
        #10;

        // A = 2, B = 7
        A = 4'b0010;
        B = 4'b0111;
        #10;

        // A = 9, B = 9
        A = 4'b1001;
        B = 4'b1001;
        #10;

        // A = 15, B = 1
        A = 4'b1111;
        B = 4'b0001;
        #10;

        $finish;

    end

endmodule