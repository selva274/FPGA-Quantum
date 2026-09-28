module hello (
    input wire [3:0] A,
    input wire [3:0] B,
    output wire greater,
    output wire less,
    output wire equal
);

assign greater = (A > B);
assign less    = (A < B);
assign equal   = (A == B);

endmodule