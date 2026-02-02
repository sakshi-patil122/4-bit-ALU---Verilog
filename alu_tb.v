module alu_tb;
    reg [3:0] A,B;
    reg [2:0] control;
    wire [3:0] Result;
    wire Carry, Zero;

    alu uut (.A(A),.B(B), .control(control), .Result(Result), .Carry(Carry), .Zero(Zero));

    initial begin
        $dumpfile("alu.vcd");
        $dumpvars(0, alu_tb);

        A= 4'b0011; B=4'b0001; control= 3'b000; #10;
        A= 4'b0100; B = 4'b0010; control = 3'b001; #10;
        A = 4'b1100; B = 4'b1010; control = 3'b010; #10;
        A = 4'b1100; B = 4'b1010; control = 3'b011; #10;
        A = 4'b1100; B = 4'b1010; control = 3'b100; #10;

        $finish;
    end
endmodule


