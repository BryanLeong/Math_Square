/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module display_1 (
    input clk,
    input rst,
    input [35:0] num,
    input [17:0] op,
    output reg mosi0,
    output reg cs0,
    output reg sck0,
    output reg mosi1,
    output reg cs1,
    output reg sck1,
    output reg mosi2,
    output reg cs2,
    output reg sck2
  );
  
  
  
  wire [1-1:0] M_mod0_sck;
  wire [1-1:0] M_mod0_mosi;
  wire [1-1:0] M_mod0_cs;
  wire [1-1:0] M_mod0_frozen;
  reg [256-1:0] M_mod0_data_in;
  reg [1-1:0] M_mod0_thaw;
  led_matrix_4 mod0 (
    .clk(clk),
    .rst(rst),
    .data_in(M_mod0_data_in),
    .thaw(M_mod0_thaw),
    .sck(M_mod0_sck),
    .mosi(M_mod0_mosi),
    .cs(M_mod0_cs),
    .frozen(M_mod0_frozen)
  );
  wire [1-1:0] M_mod1_sck;
  wire [1-1:0] M_mod1_mosi;
  wire [1-1:0] M_mod1_cs;
  wire [1-1:0] M_mod1_frozen;
  reg [256-1:0] M_mod1_data_in;
  reg [1-1:0] M_mod1_thaw;
  led_matrix_5 mod1 (
    .clk(clk),
    .rst(rst),
    .data_in(M_mod1_data_in),
    .thaw(M_mod1_thaw),
    .sck(M_mod1_sck),
    .mosi(M_mod1_mosi),
    .cs(M_mod1_cs),
    .frozen(M_mod1_frozen)
  );
  wire [1-1:0] M_mod2_sck;
  wire [1-1:0] M_mod2_mosi;
  wire [1-1:0] M_mod2_cs;
  wire [1-1:0] M_mod2_frozen;
  reg [256-1:0] M_mod2_data_in;
  reg [1-1:0] M_mod2_thaw;
  led_matrix_6 mod2 (
    .clk(clk),
    .rst(rst),
    .data_in(M_mod2_data_in),
    .thaw(M_mod2_thaw),
    .sck(M_mod2_sck),
    .mosi(M_mod2_mosi),
    .cs(M_mod2_cs),
    .frozen(M_mod2_frozen)
  );
  localparam THAW0_scheduler = 2'd0;
  localparam THAW1_scheduler = 2'd1;
  localparam THAW2_scheduler = 2'd2;
  
  reg [1:0] M_scheduler_d, M_scheduler_q = THAW0_scheduler;
  
  localparam DIGITS = 150'h3f5efebffc217afef5efc9cfd6bdadc3f4fe3f;
  
  localparam OPERATORS = 90'h14a52082511442108e20000;
  
  reg [767:0] col;
  
  integer i;
  
  always @* begin
    M_scheduler_d = M_scheduler_q;
    
    mosi0 = M_mod0_mosi;
    cs0 = M_mod0_cs;
    sck0 = M_mod0_sck;
    mosi1 = M_mod1_mosi;
    cs1 = M_mod1_cs;
    sck1 = M_mod1_sck;
    mosi2 = M_mod2_mosi;
    cs2 = M_mod2_cs;
    sck2 = M_mod2_sck;
    M_mod0_thaw = 1'h0;
    M_mod1_thaw = 1'h0;
    M_mod2_thaw = 1'h0;
    col[0+31-:32] = 32'h00000000;
    col[32+31-:32] = {1'h0, DIGITS[(num[0+0+3-:4])*15+0+4-:5], 1'h0, OPERATORS[(op[3+2-:3])*15+0+4-:5], 1'h0, DIGITS[(num[12+0+3-:4])*15+0+4-:5], 1'h0, 5'h0a, 1'h0, DIGITS[(num[24+0+3-:4])*15+0+4-:5], 2'h0};
    col[64+31-:32] = {1'h0, DIGITS[(num[0+0+3-:4])*15+5+4-:5], 1'h0, OPERATORS[(op[3+2-:3])*15+5+4-:5], 1'h0, DIGITS[(num[12+0+3-:4])*15+5+4-:5], 1'h0, 5'h0a, 1'h0, DIGITS[(num[24+0+3-:4])*15+5+4-:5], 2'h0};
    col[96+31-:32] = {1'h0, DIGITS[(num[0+0+3-:4])*15+10+4-:5], 1'h0, OPERATORS[(op[3+2-:3])*15+10+4-:5], 1'h0, DIGITS[(num[12+0+3-:4])*15+10+4-:5], 1'h0, 5'h0a, 1'h0, DIGITS[(num[24+0+3-:4])*15+10+4-:5], 2'h0};
    col[128+31-:32] = 32'h00000000;
    col[160+31-:32] = {1'h0, OPERATORS[(op[0+2-:3])*15+0+4-:5], 7'h00, OPERATORS[(op[12+2-:3])*15+0+4-:5], 7'h00, OPERATORS[(op[15+2-:3])*15+0+4-:5], 2'h0};
    col[192+31-:32] = {1'h0, OPERATORS[(op[0+2-:3])*15+5+4-:5], 7'h00, OPERATORS[(op[12+2-:3])*15+5+4-:5], 7'h00, OPERATORS[(op[15+2-:3])*15+5+4-:5], 2'h0};
    col[224+31-:32] = {1'h0, OPERATORS[(op[0+2-:3])*15+10+4-:5], 7'h00, OPERATORS[(op[12+2-:3])*15+10+4-:5], 7'h00, OPERATORS[(op[15+2-:3])*15+10+4-:5], 2'h0};
    col[256+31-:32] = 32'h00000000;
    col[288+31-:32] = {1'h0, DIGITS[(num[0+4+3-:4])*15+0+4-:5], 1'h0, OPERATORS[(op[6+2-:3])*15+0+4-:5], 1'h0, DIGITS[(num[12+4+3-:4])*15+0+4-:5], 1'h0, 5'h0a, 1'h0, DIGITS[(num[24+4+3-:4])*15+0+4-:5], 2'h0};
    col[320+31-:32] = {1'h0, DIGITS[(num[0+4+3-:4])*15+5+4-:5], 1'h0, OPERATORS[(op[6+2-:3])*15+5+4-:5], 1'h0, DIGITS[(num[12+4+3-:4])*15+5+4-:5], 1'h0, 5'h0a, 1'h0, DIGITS[(num[24+4+3-:4])*15+5+4-:5], 2'h0};
    col[352+31-:32] = {1'h0, DIGITS[(num[0+4+3-:4])*15+10+4-:5], 1'h0, OPERATORS[(op[6+2-:3])*15+10+4-:5], 1'h0, DIGITS[(num[12+4+3-:4])*15+10+4-:5], 1'h0, 5'h0a, 1'h0, DIGITS[(num[24+4+3-:4])*15+10+4-:5], 2'h0};
    col[384+31-:32] = 32'h00000000;
    col[416+31-:32] = 32'h00000000;
    col[448+31-:32] = 32'h28028028;
    col[480+31-:32] = 32'h28028028;
    col[512+31-:32] = 32'h28028028;
    col[544+31-:32] = 32'h00000000;
    col[576+31-:32] = 32'h00000000;
    col[608+31-:32] = 32'h00000000;
    col[640+31-:32] = {1'h0, DIGITS[(num[0+8+3-:4])*15+0+4-:5], 1'h0, OPERATORS[(op[9+2-:3])*15+0+4-:5], 1'h0, DIGITS[(num[12+8+3-:4])*15+0+4-:5], 1'h0, 5'h0a, 1'h0, DIGITS[(num[24+8+3-:4])*15+0+4-:5], 2'h0};
    col[672+31-:32] = {1'h0, DIGITS[(num[0+8+3-:4])*15+5+4-:5], 1'h0, OPERATORS[(op[9+2-:3])*15+5+4-:5], 1'h0, DIGITS[(num[12+8+3-:4])*15+5+4-:5], 1'h0, 5'h0a, 1'h0, DIGITS[(num[24+8+3-:4])*15+5+4-:5], 2'h0};
    col[704+31-:32] = {1'h0, DIGITS[(num[0+8+3-:4])*15+10+4-:5], 1'h0, OPERATORS[(op[9+2-:3])*15+10+4-:5], 1'h0, DIGITS[(num[12+8+3-:4])*15+10+4-:5], 1'h0, 5'h0a, 1'h0, DIGITS[(num[24+8+3-:4])*15+10+4-:5], 2'h0};
    col[736+31-:32] = 32'h00000000;
    for (i = 1'h0; i < 4'h8; i = i + 1) begin
      M_mod0_data_in[(i)*32+31-:32] = col[(i)*32+31-:32];
      M_mod1_data_in[(i)*32+31-:32] = col[(i + 4'h8)*32+31-:32];
      M_mod2_data_in[(i)*32+31-:32] = col[(i + 5'h10)*32+31-:32];
    end
    
    case (M_scheduler_q)
      THAW0_scheduler: begin
        if (M_mod2_frozen == 1'h1) begin
          M_mod0_thaw = 1'h1;
          M_scheduler_d = THAW1_scheduler;
        end
      end
      THAW1_scheduler: begin
        if (M_mod0_frozen == 1'h1) begin
          M_mod1_thaw = 1'h1;
          M_scheduler_d = THAW2_scheduler;
        end
      end
      THAW2_scheduler: begin
        if (M_mod1_frozen == 1'h1) begin
          M_mod2_thaw = 1'h1;
          M_scheduler_d = THAW0_scheduler;
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_scheduler_q <= 1'h0;
    end else begin
      M_scheduler_q <= M_scheduler_d;
    end
  end
  
endmodule
