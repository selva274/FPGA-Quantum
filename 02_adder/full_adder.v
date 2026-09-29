module half_adder (
    input wire A,
    input wire B,
    output wire Sum,
    output wire Carry
);

    assign Sum   = A ^ B;
    assign Carry = A & B;

endmodule


module full_adder (
    input wire A,
    input wire B,
    input wire Cin,
    output wire Sum,
    output wire Cout
);

    wire sum1;
    wire carry1;
    wire carry2;

    // First Half Adder
    half_adder HA1 (
        .A(A),
        .B(B),
        .Sum(sum1),
        .Carry(carry1)
    );

    // Second Half Adder
    half_adder HA2 (
        .A(sum1),
        .B(Cin),
        .Sum(Sum),
        .Carry(carry2)
    );

    // OR the two carry outputs
    assign Cout = carry1 | carry2;

endmodule