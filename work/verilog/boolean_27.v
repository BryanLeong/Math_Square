/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boolean_27 (
    input [7:0] a,
    input [7:0] b,
    input [5:0] alufn,
    output reg [7:0] result
  );
  
  
  
  always @* begin
    
    case (alufn[0+3-:4])
      4'h8: begin
        result = a & b;
      end
      4'he: begin
        result = a | b;
      end
      4'h6: begin
        result = a ^ b;
      end
      4'ha: begin
        result = a;
      end
      default: begin
        result = 1'h0;
      end
    endcase
  end
endmodule
