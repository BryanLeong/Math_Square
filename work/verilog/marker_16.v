/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module marker_16 (
    input clk,
    input rst,
    input [35:0] num,
    input [17:0] op,
    output reg [5:0] results
  );
  
  
  
  localparam COMPUTE_state = 1'd0;
  localparam COMPARE_state = 1'd1;
  
  reg M_state_d, M_state_q = COMPUTE_state;
  reg [2:0] M_eqn_d, M_eqn_q = 1'h0;
  reg [7:0] M_reg_d, M_reg_q = 1'h0;
  reg [5:0] M_res_d, M_res_q = 1'h0;
  
  localparam MAP = 72'h678345258147036210;
  
  wire [1-1:0] M_alu_z;
  wire [1-1:0] M_alu_v;
  wire [1-1:0] M_alu_n;
  wire [8-1:0] M_alu_result;
  reg [8-1:0] M_alu_a;
  reg [8-1:0] M_alu_b;
  reg [6-1:0] M_alu_alufn;
  alu_24 alu (
    .a(M_alu_a),
    .b(M_alu_b),
    .alufn(M_alu_alufn),
    .z(M_alu_z),
    .v(M_alu_v),
    .n(M_alu_n),
    .result(M_alu_result)
  );
  
  always @* begin
    M_state_d = M_state_q;
    M_res_d = M_res_q;
    M_eqn_d = M_eqn_q;
    M_reg_d = M_reg_q;
    
    M_alu_alufn = 1'h0;
    results = M_res_q;
    
    case (M_state_q)
      COMPUTE_state: begin
        
        case (op[(M_eqn_q)*3+2-:3])
          1'h1: begin
            M_alu_alufn = 6'h00;
            M_alu_a = num[(MAP[(M_eqn_q)*12+0+3-:4])*4+3-:4];
            M_alu_b = num[(MAP[(M_eqn_q)*12+4+3-:4])*4+3-:4];
          end
          2'h2: begin
            M_alu_alufn = 6'h01;
            M_alu_a = num[(MAP[(M_eqn_q)*12+0+3-:4])*4+3-:4];
            M_alu_b = num[(MAP[(M_eqn_q)*12+4+3-:4])*4+3-:4];
          end
          2'h3: begin
            M_alu_alufn = 6'h02;
            M_alu_a = num[(MAP[(M_eqn_q)*12+0+3-:4])*4+3-:4];
            M_alu_b = num[(MAP[(M_eqn_q)*12+4+3-:4])*4+3-:4];
          end
          3'h4: begin
            M_alu_alufn = 6'h02;
            M_alu_a = num[(MAP[(M_eqn_q)*12+4+3-:4])*4+3-:4];
            M_alu_b = num[(MAP[(M_eqn_q)*12+8+3-:4])*4+3-:4];
          end
        endcase
        M_reg_d = M_alu_result;
        M_state_d = COMPARE_state;
      end
      COMPARE_state: begin
        M_alu_alufn = 6'h33;
        if (op[0+2-:3] == 3'h4) begin
          M_alu_a = num[(MAP[(M_eqn_q)*12+0+3-:4])*4+3-:4];
          M_alu_b = M_reg_q;
        end else begin
          M_alu_a = M_reg_q;
          M_alu_b = num[(MAP[(M_eqn_q)*12+8+3-:4])*4+3-:4];
        end
        if (M_eqn_q == 3'h5) begin
          M_eqn_d = 1'h0;
        end else begin
          M_eqn_d = M_eqn_q + 1'h1;
        end
        M_res_d[(M_eqn_q)*1+0-:1] = M_alu_result[0+0-:1];
        M_state_d = COMPUTE_state;
      end
    endcase
  end
  
  always @(posedge clk) begin
    M_eqn_q <= M_eqn_d;
    M_reg_q <= M_reg_d;
    M_res_q <= M_res_d;
    
    if (rst == 1'b1) begin
      M_state_q <= 1'h0;
    end else begin
      M_state_q <= M_state_d;
    end
  end
  
endmodule