/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     MODULES = 4
     CLK_DIV = 6
*/
module led_matrix_4 (
    input clk,
    input rst,
    input [255:0] data_in,
    output reg sck,
    output reg mosi,
    output reg cs,
    input thaw,
    output reg frozen
  );
  
  localparam MODULES = 3'h4;
  localparam CLK_DIV = 3'h6;
  
  
  localparam DISABLE_TEST_state = 4'd0;
  localparam DISABLE_DECODE_state = 4'd1;
  localparam SET_INTENSITY_state = 4'd2;
  localparam SET_SCANLIMIT_state = 4'd3;
  localparam CLEAR_LINE0_state = 4'd4;
  localparam CLEAR_LINE1_state = 4'd5;
  localparam CLEAR_LINE2_state = 4'd6;
  localparam CLEAR_LINE3_state = 4'd7;
  localparam CLEAR_LINE4_state = 4'd8;
  localparam CLEAR_LINE5_state = 4'd9;
  localparam CLEAR_LINE6_state = 4'd10;
  localparam CLEAR_LINE7_state = 4'd11;
  localparam DISABLE_SHUTDOWN_state = 4'd12;
  localparam READY_state = 4'd13;
  localparam BUSY_state = 4'd14;
  localparam FROZEN_state = 4'd15;
  
  reg [3:0] M_state_d, M_state_q = DISABLE_TEST_state;
  wire [1-1:0] M_spi_mosi;
  wire [1-1:0] M_spi_sck;
  wire [64-1:0] M_spi_data_out;
  wire [1-1:0] M_spi_new_data;
  wire [1-1:0] M_spi_busy;
  reg [1-1:0] M_spi_miso;
  reg [1-1:0] M_spi_start;
  reg [64-1:0] M_spi_data_in;
  spi_master_7 spi (
    .clk(clk),
    .rst(rst),
    .miso(M_spi_miso),
    .start(M_spi_start),
    .data_in(M_spi_data_in),
    .mosi(M_spi_mosi),
    .sck(M_spi_sck),
    .data_out(M_spi_data_out),
    .new_data(M_spi_new_data),
    .busy(M_spi_busy)
  );
  reg [63:0] M_data_reg_d, M_data_reg_q = 1'h0;
  reg [2:0] M_line_d, M_line_q = 1'h0;
  
  localparam LINE_MAP = 64'h0102030405060708;
  
  reg [63:0] line_data;
  
  always @* begin
    M_state_d = M_state_q;
    M_line_d = M_line_q;
    M_data_reg_d = M_data_reg_q;
    
    M_spi_miso = 1'bz;
    M_spi_start = 1'h0;
    M_spi_data_in = M_data_reg_q;
    sck = M_spi_sck;
    mosi = M_spi_mosi;
    cs = !M_spi_busy;
    frozen = 1'h0;
    line_data[0+15-:16] = {LINE_MAP[(M_line_q)*8+7-:8], data_in[(M_line_q)*32+0+7-:8]};
    line_data[16+15-:16] = {LINE_MAP[(M_line_q)*8+7-:8], data_in[(M_line_q)*32+8+7-:8]};
    line_data[32+15-:16] = {LINE_MAP[(M_line_q)*8+7-:8], data_in[(M_line_q)*32+16+7-:8]};
    line_data[48+15-:16] = {LINE_MAP[(M_line_q)*8+7-:8], data_in[(M_line_q)*32+24+7-:8]};
    
    case (M_state_q)
      DISABLE_TEST_state: begin
        M_data_reg_d = 64'h0f000f000f000f00;
        if (M_data_reg_q != 64'h0f000f000f000f00) begin
          M_spi_start = 1'h1;
        end else begin
          if (!M_spi_busy) begin
            M_state_d = DISABLE_DECODE_state;
          end
        end
      end
      DISABLE_DECODE_state: begin
        M_data_reg_d = 64'h0900090009000900;
        if (M_data_reg_q != 64'h0900090009000900) begin
          M_spi_start = 1'h1;
        end else begin
          if (!M_spi_busy) begin
            M_state_d = SET_INTENSITY_state;
          end
        end
      end
      SET_INTENSITY_state: begin
        M_data_reg_d = 64'h0a000a000a000a00;
        if (M_data_reg_q != 64'h0a000a000a000a00) begin
          M_spi_start = 1'h1;
        end else begin
          if (!M_spi_busy) begin
            M_state_d = SET_SCANLIMIT_state;
          end
        end
      end
      SET_SCANLIMIT_state: begin
        M_data_reg_d = 64'h0b070b070b070b07;
        if (M_data_reg_q != 64'h0b070b070b070b07) begin
          M_spi_start = 1'h1;
        end else begin
          if (!M_spi_busy) begin
            M_state_d = CLEAR_LINE1_state;
          end
        end
      end
      CLEAR_LINE0_state: begin
        M_data_reg_d = 64'h0100010001000100;
        if (M_data_reg_q != 64'h0100010001000100) begin
          M_spi_start = 1'h1;
        end else begin
          if (!M_spi_busy) begin
            M_state_d = CLEAR_LINE1_state;
          end
        end
      end
      CLEAR_LINE1_state: begin
        M_data_reg_d = 64'h0200020002000200;
        if (M_data_reg_q != 64'h0200020002000200) begin
          M_spi_start = 1'h1;
        end else begin
          if (!M_spi_busy) begin
            M_state_d = CLEAR_LINE2_state;
          end
        end
      end
      CLEAR_LINE2_state: begin
        M_data_reg_d = 64'h0300030003000300;
        if (M_data_reg_q != 64'h0300030003000300) begin
          M_spi_start = 1'h1;
        end else begin
          if (!M_spi_busy) begin
            M_state_d = CLEAR_LINE3_state;
          end
        end
      end
      CLEAR_LINE3_state: begin
        M_data_reg_d = 64'h0400040004000400;
        if (M_data_reg_q != 64'h0400040004000400) begin
          M_spi_start = 1'h1;
        end else begin
          if (!M_spi_busy) begin
            M_state_d = CLEAR_LINE4_state;
          end
        end
      end
      CLEAR_LINE4_state: begin
        M_data_reg_d = 64'h0500050005000500;
        if (M_data_reg_q != 64'h0500050005000500) begin
          M_spi_start = 1'h1;
        end else begin
          if (!M_spi_busy) begin
            M_state_d = CLEAR_LINE5_state;
          end
        end
      end
      CLEAR_LINE5_state: begin
        M_data_reg_d = 64'h0600060006000600;
        if (M_data_reg_q != 64'h0600060006000600) begin
          M_spi_start = 1'h1;
        end else begin
          if (!M_spi_busy) begin
            M_state_d = CLEAR_LINE6_state;
          end
        end
      end
      CLEAR_LINE6_state: begin
        M_data_reg_d = 64'h0700070007000700;
        if (M_data_reg_q != 64'h0700070007000700) begin
          M_spi_start = 1'h1;
        end else begin
          if (!M_spi_busy) begin
            M_state_d = CLEAR_LINE7_state;
          end
        end
      end
      CLEAR_LINE7_state: begin
        M_data_reg_d = 64'h0800080008000800;
        if (M_data_reg_q != 64'h0800080008000800) begin
          M_spi_start = 1'h1;
        end else begin
          if (!M_spi_busy) begin
            M_state_d = DISABLE_SHUTDOWN_state;
          end
        end
      end
      DISABLE_SHUTDOWN_state: begin
        M_data_reg_d = 64'h0c010c010c010c01;
        if (M_data_reg_q != 64'h0c010c010c010c01) begin
          M_spi_start = 1'h1;
        end else begin
          if (!M_spi_busy) begin
            M_state_d = READY_state;
            M_line_d = 1'h0;
          end
        end
      end
      READY_state: begin
        M_data_reg_d = line_data;
        if (M_data_reg_q != line_data) begin
          M_spi_start = 1'h1;
        end
        M_state_d = BUSY_state;
      end
      BUSY_state: begin
        if (!M_spi_busy) begin
          M_state_d = READY_state;
          if (M_line_q == 3'h7) begin
            M_line_d = 1'h0;
            M_state_d = FROZEN_state;
          end else begin
            M_line_d = M_line_q + 1'h1;
          end
        end
      end
      FROZEN_state: begin
        frozen = 1'h1;
        if (thaw) begin
          M_state_d = READY_state;
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    M_data_reg_q <= M_data_reg_d;
    M_line_q <= M_line_d;
    
    if (rst == 1'b1) begin
      M_state_q <= 1'h0;
    end else begin
      M_state_q <= M_state_d;
    end
  end
  
endmodule
