`timescale 1ns/1ps

module adder_tb;

    reg A;
    reg B;

    wire Sum;
    wire Carry;

    adder uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
    );

    initial begin

        // 0 + 0
        A = 0;
        B = 0;
        #10;

        // 0 + 1
        A = 0;
        B = 1;
        #10;

        // 1 + 0
        A = 1;
        B = 0;
        #10;

        // 1 + 1
        A = 1;
        B = 1;
        #10;

        $finish;
    end

endmodule