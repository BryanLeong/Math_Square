/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module levels_7 (
    input [10:0] levelSelected,
    output reg [35:0] num,
    output reg [17:0] op
  );
  
  
  
  always @* begin
    if (levelSelected == 1'h1) begin
      num[0+3-:4] = 3'h5;
      num[4+3-:4] = 3'h4;
      num[8+3-:4] = 4'h9;
      num[12+3-:4] = 2'h3;
      num[16+3-:4] = 2'h3;
      num[20+3-:4] = 1'h1;
      num[24+3-:4] = 4'h8;
      num[28+3-:4] = 1'h1;
      num[32+3-:4] = 4'h8;
      op[0+2-:3] = 1'h1;
      op[3+2-:3] = 1'h1;
      op[6+2-:3] = 2'h2;
      op[9+2-:3] = 2'h2;
      op[12+2-:3] = 3'h4;
      op[15+2-:3] = 3'h4;
    end else begin
      if (levelSelected == 2'h2) begin
        num[0+3-:4] = 4'h9;
        num[4+3-:4] = 3'h6;
        num[8+3-:4] = 2'h3;
        num[12+3-:4] = 2'h3;
        num[16+3-:4] = 2'h2;
        num[20+3-:4] = 3'h6;
        num[24+3-:4] = 2'h3;
        num[28+3-:4] = 2'h3;
        num[32+3-:4] = 4'h9;
        op[0+2-:3] = 2'h2;
        op[3+2-:3] = 3'h4;
        op[6+2-:3] = 3'h4;
        op[9+2-:3] = 1'h1;
        op[12+2-:3] = 2'h3;
        op[15+2-:3] = 2'h3;
      end else begin
        if (levelSelected == 2'h3) begin
          num[0+3-:4] = 1'h0;
          num[4+3-:4] = 2'h2;
          num[8+3-:4] = 1'h0;
          num[12+3-:4] = 4'h8;
          num[16+3-:4] = 3'h6;
          num[20+3-:4] = 2'h2;
          num[24+3-:4] = 4'h8;
          num[28+3-:4] = 4'h8;
          num[32+3-:4] = 1'h0;
          op[0+2-:3] = 2'h3;
          op[3+2-:3] = 1'h1;
          op[6+2-:3] = 1'h1;
          op[9+2-:3] = 2'h3;
          op[12+2-:3] = 2'h2;
          op[15+2-:3] = 2'h2;
        end else begin
          if (levelSelected == 3'h4) begin
            num[0+3-:4] = 1'h1;
            num[4+3-:4] = 1'h0;
            num[8+3-:4] = 1'h1;
            num[12+3-:4] = 3'h7;
            num[16+3-:4] = 1'h1;
            num[20+3-:4] = 3'h7;
            num[24+3-:4] = 3'h7;
            num[28+3-:4] = 1'h0;
            num[32+3-:4] = 3'h7;
            op[0+2-:3] = 2'h2;
            op[3+2-:3] = 2'h3;
            op[6+2-:3] = 3'h4;
            op[9+2-:3] = 2'h3;
            op[12+2-:3] = 2'h3;
            op[15+2-:3] = 2'h2;
          end else begin
            if (levelSelected == 3'h5) begin
              num[0+3-:4] = 1'h0;
              num[4+3-:4] = 4'h8;
              num[8+3-:4] = 1'h0;
              num[12+3-:4] = 4'h9;
              num[16+3-:4] = 3'h4;
              num[20+3-:4] = 3'h5;
              num[24+3-:4] = 1'h0;
              num[28+3-:4] = 2'h2;
              num[32+3-:4] = 1'h0;
              op[0+2-:3] = 2'h3;
              op[3+2-:3] = 2'h3;
              op[6+2-:3] = 3'h4;
              op[9+2-:3] = 2'h3;
              op[12+2-:3] = 2'h2;
              op[15+2-:3] = 2'h3;
            end else begin
              if (levelSelected == 3'h6) begin
                num[0+3-:4] = 3'h5;
                num[4+3-:4] = 1'h0;
                num[8+3-:4] = 3'h5;
                num[12+3-:4] = 2'h2;
                num[16+3-:4] = 1'h1;
                num[20+3-:4] = 2'h2;
                num[24+3-:4] = 2'h3;
                num[28+3-:4] = 1'h1;
                num[32+3-:4] = 2'h3;
                op[0+2-:3] = 1'h1;
                op[3+2-:3] = 2'h2;
                op[6+2-:3] = 1'h1;
                op[9+2-:3] = 2'h2;
                op[12+2-:3] = 3'h4;
                op[15+2-:3] = 2'h3;
              end else begin
                if (levelSelected == 3'h7) begin
                  num[0+3-:4] = 1'h0;
                  num[4+3-:4] = 3'h4;
                  num[8+3-:4] = 1'h0;
                  num[12+3-:4] = 1'h1;
                  num[16+3-:4] = 2'h2;
                  num[20+3-:4] = 2'h3;
                  num[24+3-:4] = 1'h0;
                  num[28+3-:4] = 3'h6;
                  num[32+3-:4] = 1'h0;
                  op[0+2-:3] = 3'h4;
                  op[3+2-:3] = 1'h1;
                  op[6+2-:3] = 1'h1;
                  op[9+2-:3] = 2'h3;
                  op[12+2-:3] = 1'h1;
                  op[15+2-:3] = 3'h4;
                end else begin
                  if (levelSelected == 4'h8) begin
                    num[0+3-:4] = 3'h7;
                    num[4+3-:4] = 1'h0;
                    num[8+3-:4] = 3'h7;
                    num[12+3-:4] = 3'h6;
                    num[16+3-:4] = 1'h1;
                    num[20+3-:4] = 3'h6;
                    num[24+3-:4] = 1'h1;
                    num[28+3-:4] = 1'h1;
                    num[32+3-:4] = 1'h1;
                    op[0+2-:3] = 1'h1;
                    op[3+2-:3] = 2'h2;
                    op[6+2-:3] = 1'h1;
                    op[9+2-:3] = 2'h2;
                    op[12+2-:3] = 2'h3;
                    op[15+2-:3] = 3'h4;
                  end else begin
                    if (levelSelected == 4'h9) begin
                      num[0+3-:4] = 4'h9;
                      num[4+3-:4] = 4'h8;
                      num[8+3-:4] = 1'h1;
                      num[12+3-:4] = 1'h1;
                      num[16+3-:4] = 3'h6;
                      num[20+3-:4] = 3'h6;
                      num[24+3-:4] = 4'h9;
                      num[28+3-:4] = 2'h2;
                      num[32+3-:4] = 3'h7;
                      op[0+2-:3] = 2'h2;
                      op[3+2-:3] = 3'h4;
                      op[6+2-:3] = 2'h2;
                      op[9+2-:3] = 1'h1;
                      op[12+2-:3] = 2'h3;
                      op[15+2-:3] = 2'h2;
                    end else begin
                      if (levelSelected == 4'ha) begin
                        num[0+3-:4] = 2'h2;
                        num[4+3-:4] = 1'h1;
                        num[8+3-:4] = 2'h3;
                        num[12+3-:4] = 3'h4;
                        num[16+3-:4] = 2'h3;
                        num[20+3-:4] = 1'h1;
                        num[24+3-:4] = 3'h6;
                        num[28+3-:4] = 2'h3;
                        num[32+3-:4] = 2'h3;
                        op[0+2-:3] = 1'h1;
                        op[3+2-:3] = 1'h1;
                        op[6+2-:3] = 2'h3;
                        op[9+2-:3] = 3'h4;
                        op[12+2-:3] = 2'h2;
                        op[15+2-:3] = 2'h2;
                      end else begin
                        num[0+3-:4] = 3'h4;
                        num[4+3-:4] = 3'h5;
                        num[8+3-:4] = 4'h9;
                        num[12+3-:4] = 2'h2;
                        num[16+3-:4] = 2'h2;
                        num[20+3-:4] = 3'h4;
                        num[24+3-:4] = 4'h8;
                        num[28+3-:4] = 2'h3;
                        num[32+3-:4] = 3'h5;
                        op[0+2-:3] = 1'h1;
                        op[3+2-:3] = 2'h3;
                        op[6+2-:3] = 2'h2;
                        op[9+2-:3] = 2'h2;
                        op[12+2-:3] = 2'h3;
                        op[15+2-:3] = 2'h2;
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
endmodule
