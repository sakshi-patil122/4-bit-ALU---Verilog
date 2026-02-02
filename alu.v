module alu(
    input [3:0] A,
    input [3:0] B,
    input [2:0] control,
    output reg[3:0] Result,
    output reg Carry,
    output reg Zero

);
always @(*) begin
    Carry =0;
    case (control)
        3'b000 : {Carry,Result} = A+B;
        3'b001 : {Carry,Result} = A-B;
        3'b010 : Result = A&B;
        3'b011 : Result = A|B;
        3'b100 : Result = A^B;
        default: Result =4'b000;
    endcase

    if(Result==4'b0000)
        Zero =1;
    else
        Zero =0;

end
endmodule

