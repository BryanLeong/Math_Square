/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module compare_25 (
    input [5:0] alufn,
    input [0:0] z,
    input [0:0] v,
    input [0:0] n,
    output reg [7:0] result
  );
  
  
  
  always @* begin
    
    case (alufn[1+1-:2])
      2'h1: begin
        result = z;
      end
      2'h2: begin
        result = n ^ v;
      end
      2'h3: begin
        result = (n ^ v) | z;
      end
      default: begin
        result = 1'h0;
      end
    endcase
  end
endmodule
