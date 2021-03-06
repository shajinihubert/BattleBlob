/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg [4:0] p1sc,
    output reg [6:0] p1sr,
    output reg [4:0] p1ogc,
    output reg [6:0] p1ogr,
    output reg [4:0] p1orc,
    output reg [6:0] p1orr,
    output reg [4:0] p2sc,
    output reg [6:0] p2sr,
    output reg [4:0] p2ogc,
    output reg [6:0] p2ogr,
    output reg [4:0] p2orc,
    output reg [6:0] p2orr,
    input p1left,
    input p1right,
    input p1Up,
    input p1Dn,
    input p1Etr,
    input p2Lft,
    input p2Rgt,
    input p2Up,
    input p2Dn,
    input p2Etr
  );
  
  
  
  reg rst;
  
  reg [4:0] p1Btn;
  reg [4:0] p2Btn;
  
  reg p1_onesleft;
  reg p2_onesleft;
  
  reg [104:0] sp1sdff;
  
  reg [104:0] sp1odff;
  
  reg [104:0] sp2sdff;
  
  reg [104:0] sp2odff;
  
  reg [1:0] sp1_blob;
  
  reg [1:0] sp2_blob;
  
  reg [4:0] sp1_tempc;
  
  reg [6:0] sp1_tempr;
  
  reg [4:0] sp2_tempc;
  
  reg [6:0] sp2_tempr;
  
  reg [3:0] sactivated;
  
  wire [5-1:0] M_dmP1s_greenc;
  wire [7-1:0] M_dmP1s_greenr;
  wire [5-1:0] M_dmP1s_redc;
  wire [7-1:0] M_dmP1s_redr;
  reg [105-1:0] M_dmP1s_confirmed;
  reg [5-1:0] M_dmP1s_tempc;
  reg [7-1:0] M_dmP1s_tempr;
  reg [1-1:0] M_dmP1s_activate;
  dotMatrix_1 dmP1s (
    .clk(clk),
    .rst(rst),
    .confirmed(M_dmP1s_confirmed),
    .tempc(M_dmP1s_tempc),
    .tempr(M_dmP1s_tempr),
    .activate(M_dmP1s_activate),
    .greenc(M_dmP1s_greenc),
    .greenr(M_dmP1s_greenr),
    .redc(M_dmP1s_redc),
    .redr(M_dmP1s_redr)
  );
  
  wire [5-1:0] M_dmP1o_greenc;
  wire [7-1:0] M_dmP1o_greenr;
  wire [5-1:0] M_dmP1o_redc;
  wire [7-1:0] M_dmP1o_redr;
  reg [105-1:0] M_dmP1o_confirmed;
  reg [5-1:0] M_dmP1o_tempc;
  reg [7-1:0] M_dmP1o_tempr;
  reg [1-1:0] M_dmP1o_activate;
  dotMatrix_1 dmP1o (
    .clk(clk),
    .rst(rst),
    .confirmed(M_dmP1o_confirmed),
    .tempc(M_dmP1o_tempc),
    .tempr(M_dmP1o_tempr),
    .activate(M_dmP1o_activate),
    .greenc(M_dmP1o_greenc),
    .greenr(M_dmP1o_greenr),
    .redc(M_dmP1o_redc),
    .redr(M_dmP1o_redr)
  );
  
  wire [5-1:0] M_dmP2s_greenc;
  wire [7-1:0] M_dmP2s_greenr;
  wire [5-1:0] M_dmP2s_redc;
  wire [7-1:0] M_dmP2s_redr;
  reg [105-1:0] M_dmP2s_confirmed;
  reg [5-1:0] M_dmP2s_tempc;
  reg [7-1:0] M_dmP2s_tempr;
  reg [1-1:0] M_dmP2s_activate;
  dotMatrix_1 dmP2s (
    .clk(clk),
    .rst(rst),
    .confirmed(M_dmP2s_confirmed),
    .tempc(M_dmP2s_tempc),
    .tempr(M_dmP2s_tempr),
    .activate(M_dmP2s_activate),
    .greenc(M_dmP2s_greenc),
    .greenr(M_dmP2s_greenr),
    .redc(M_dmP2s_redc),
    .redr(M_dmP2s_redr)
  );
  
  wire [5-1:0] M_dmP2o_greenc;
  wire [7-1:0] M_dmP2o_greenr;
  wire [5-1:0] M_dmP2o_redc;
  wire [7-1:0] M_dmP2o_redr;
  reg [105-1:0] M_dmP2o_confirmed;
  reg [5-1:0] M_dmP2o_tempc;
  reg [7-1:0] M_dmP2o_tempr;
  reg [1-1:0] M_dmP2o_activate;
  dotMatrix_1 dmP2o (
    .clk(clk),
    .rst(rst),
    .confirmed(M_dmP2o_confirmed),
    .tempc(M_dmP2o_tempc),
    .tempr(M_dmP2o_tempr),
    .activate(M_dmP2o_activate),
    .greenc(M_dmP2o_greenc),
    .greenr(M_dmP2o_greenr),
    .redc(M_dmP2o_redc),
    .redr(M_dmP2o_redr)
  );
  
  integer i;
  integer j;
  
  wire [1-1:0] M_edge_detectorP1up_out;
  reg [1-1:0] M_edge_detectorP1up_in;
  edge_detector_5 edge_detectorP1up (
    .clk(clk),
    .in(M_edge_detectorP1up_in),
    .out(M_edge_detectorP1up_out)
  );
  wire [1-1:0] M_button_condP1up_out;
  reg [1-1:0] M_button_condP1up_in;
  button_conditioner_6 button_condP1up (
    .clk(clk),
    .in(M_button_condP1up_in),
    .out(M_button_condP1up_out)
  );
  wire [1-1:0] M_edge_detectorP1down_out;
  reg [1-1:0] M_edge_detectorP1down_in;
  edge_detector_5 edge_detectorP1down (
    .clk(clk),
    .in(M_edge_detectorP1down_in),
    .out(M_edge_detectorP1down_out)
  );
  wire [1-1:0] M_button_condP1down_out;
  reg [1-1:0] M_button_condP1down_in;
  button_conditioner_6 button_condP1down (
    .clk(clk),
    .in(M_button_condP1down_in),
    .out(M_button_condP1down_out)
  );
  wire [1-1:0] M_edge_detectorP1left_out;
  reg [1-1:0] M_edge_detectorP1left_in;
  edge_detector_5 edge_detectorP1left (
    .clk(clk),
    .in(M_edge_detectorP1left_in),
    .out(M_edge_detectorP1left_out)
  );
  wire [1-1:0] M_button_condP1left_out;
  reg [1-1:0] M_button_condP1left_in;
  button_conditioner_6 button_condP1left (
    .clk(clk),
    .in(M_button_condP1left_in),
    .out(M_button_condP1left_out)
  );
  wire [1-1:0] M_edge_detectorP1right_out;
  reg [1-1:0] M_edge_detectorP1right_in;
  edge_detector_5 edge_detectorP1right (
    .clk(clk),
    .in(M_edge_detectorP1right_in),
    .out(M_edge_detectorP1right_out)
  );
  wire [1-1:0] M_button_condP1right_out;
  reg [1-1:0] M_button_condP1right_in;
  button_conditioner_6 button_condP1right (
    .clk(clk),
    .in(M_button_condP1right_in),
    .out(M_button_condP1right_out)
  );
  wire [1-1:0] M_edge_detectorP1enter_out;
  reg [1-1:0] M_edge_detectorP1enter_in;
  edge_detector_5 edge_detectorP1enter (
    .clk(clk),
    .in(M_edge_detectorP1enter_in),
    .out(M_edge_detectorP1enter_out)
  );
  wire [1-1:0] M_button_condP1enter_out;
  reg [1-1:0] M_button_condP1enter_in;
  button_conditioner_6 button_condP1enter (
    .clk(clk),
    .in(M_button_condP1enter_in),
    .out(M_button_condP1enter_out)
  );
  wire [1-1:0] M_edge_detectorP2up_out;
  reg [1-1:0] M_edge_detectorP2up_in;
  edge_detector_5 edge_detectorP2up (
    .clk(clk),
    .in(M_edge_detectorP2up_in),
    .out(M_edge_detectorP2up_out)
  );
  wire [1-1:0] M_button_condP2up_out;
  reg [1-1:0] M_button_condP2up_in;
  button_conditioner_6 button_condP2up (
    .clk(clk),
    .in(M_button_condP2up_in),
    .out(M_button_condP2up_out)
  );
  wire [1-1:0] M_edge_detectorP2down_out;
  reg [1-1:0] M_edge_detectorP2down_in;
  edge_detector_5 edge_detectorP2down (
    .clk(clk),
    .in(M_edge_detectorP2down_in),
    .out(M_edge_detectorP2down_out)
  );
  wire [1-1:0] M_button_condP2down_out;
  reg [1-1:0] M_button_condP2down_in;
  button_conditioner_6 button_condP2down (
    .clk(clk),
    .in(M_button_condP2down_in),
    .out(M_button_condP2down_out)
  );
  wire [1-1:0] M_edge_detectorP2left_out;
  reg [1-1:0] M_edge_detectorP2left_in;
  edge_detector_5 edge_detectorP2left (
    .clk(clk),
    .in(M_edge_detectorP2left_in),
    .out(M_edge_detectorP2left_out)
  );
  wire [1-1:0] M_button_condP2left_out;
  reg [1-1:0] M_button_condP2left_in;
  button_conditioner_6 button_condP2left (
    .clk(clk),
    .in(M_button_condP2left_in),
    .out(M_button_condP2left_out)
  );
  wire [1-1:0] M_edge_detectorP2right_out;
  reg [1-1:0] M_edge_detectorP2right_in;
  edge_detector_5 edge_detectorP2right (
    .clk(clk),
    .in(M_edge_detectorP2right_in),
    .out(M_edge_detectorP2right_out)
  );
  wire [1-1:0] M_button_condP2right_out;
  reg [1-1:0] M_button_condP2right_in;
  button_conditioner_6 button_condP2right (
    .clk(clk),
    .in(M_button_condP2right_in),
    .out(M_button_condP2right_out)
  );
  wire [1-1:0] M_edge_detectorP2enter_out;
  reg [1-1:0] M_edge_detectorP2enter_in;
  edge_detector_5 edge_detectorP2enter (
    .clk(clk),
    .in(M_edge_detectorP2enter_in),
    .out(M_edge_detectorP2enter_out)
  );
  wire [1-1:0] M_button_condP2enter_out;
  reg [1-1:0] M_button_condP2enter_in;
  button_conditioner_6 button_condP2enter (
    .clk(clk),
    .in(M_button_condP2enter_in),
    .out(M_button_condP2enter_out)
  );
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_25 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  reg [104:0] M_p1sdff_d, M_p1sdff_q = 1'h0;
  reg [104:0] M_p1odff_d, M_p1odff_q = 1'h0;
  reg [104:0] M_p2sdff_d, M_p2sdff_q = 1'h0;
  reg [104:0] M_p2odff_d, M_p2odff_q = 1'h0;
  reg [1:0] M_p1_blob_d, M_p1_blob_q = 1'h0;
  reg [1:0] M_p2_blob_d, M_p2_blob_q = 1'h0;
  reg [4:0] M_p1_tempc_d, M_p1_tempc_q = 1'h0;
  reg [6:0] M_p1_tempr_d, M_p1_tempr_q = 1'h0;
  reg [4:0] M_p2_tempc_d, M_p2_tempc_q = 1'h0;
  reg [6:0] M_p2_tempr_d, M_p2_tempr_q = 1'h0;
  reg [3:0] M_activated_d, M_activated_q = 1'h0;
  localparam INITIALISE_state = 4'd0;
  localparam PREP_state = 4'd1;
  localparam SETTLE_P1_state = 4'd2;
  localparam SETTLE_P2_state = 4'd3;
  localparam PLAY_state = 4'd4;
  localparam SETTLE_P1_OPP_state = 4'd5;
  localparam SETTLE_P2_OPP_state = 4'd6;
  localparam SETTLE_SELF_state = 4'd7;
  localparam WIN_state = 4'd8;
  
  reg [3:0] M_state_d, M_state_q = INITIALISE_state;
  
  wire [5-1:0] M_sh5_shift;
  reg [5-1:0] M_sh5_a;
  reg [3-1:0] M_sh5_b;
  reg [6-1:0] M_sh5_alufn;
  shifter5_26 sh5 (
    .a(M_sh5_a),
    .b(M_sh5_b),
    .alufn(M_sh5_alufn),
    .shift(M_sh5_shift)
  );
  
  wire [7-1:0] M_sh7_shift;
  reg [7-1:0] M_sh7_a;
  reg [3-1:0] M_sh7_b;
  reg [6-1:0] M_sh7_alufn;
  shifter7_27 sh7 (
    .a(M_sh7_a),
    .b(M_sh7_b),
    .alufn(M_sh7_alufn),
    .shift(M_sh7_shift)
  );
  
  wire [3-1:0] M_add1_sum;
  reg [3-1:0] M_add1_a;
  reg [3-1:0] M_add1_b;
  reg [6-1:0] M_add1_alufn;
  mojo_adder_28 add1 (
    .a(M_add1_a),
    .b(M_add1_b),
    .alufn(M_add1_alufn),
    .sum(M_add1_sum)
  );
  
  always @* begin
    M_state_d = M_state_q;
    M_p2odff_d = M_p2odff_q;
    M_activated_d = M_activated_q;
    M_p2_tempr_d = M_p2_tempr_q;
    M_p2_tempc_d = M_p2_tempc_q;
    M_p1_blob_d = M_p1_blob_q;
    M_p2sdff_d = M_p2sdff_q;
    M_p2_blob_d = M_p2_blob_q;
    M_p1_tempc_d = M_p1_tempc_q;
    M_p1odff_d = M_p1odff_q;
    M_p1_tempr_d = M_p1_tempr_q;
    M_p1sdff_d = M_p1sdff_q;
    
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    M_sh5_a = 5'h00;
    M_sh7_a = 7'h00;
    M_sh5_b = 3'h1;
    M_sh7_b = 3'h1;
    M_sh5_alufn = 6'h00;
    M_sh7_alufn = 6'h00;
    M_add1_b = 3'h2;
    M_add1_alufn = 6'h00;
    M_add1_a = 1'h0;
    sp1sdff = M_p1sdff_q;
    sp1odff = M_p1odff_q;
    sp2sdff = M_p2sdff_q;
    sp2odff = M_p2odff_q;
    sp1_blob = M_p1_blob_q;
    sp2_blob = M_p2_blob_q;
    sp1_tempc = M_p1_tempc_q;
    sp1_tempr = M_p1_tempr_q;
    sp2_tempc = M_p2_tempc_q;
    sp2_tempr = M_p2_tempr_q;
    sactivated = M_activated_q;
    M_button_condP1up_in = p1Up;
    M_edge_detectorP1up_in = M_button_condP1up_out;
    M_button_condP1down_in = p1Dn;
    M_edge_detectorP1down_in = M_button_condP1down_out;
    M_button_condP1left_in = p1left;
    M_edge_detectorP1left_in = M_button_condP1left_out;
    M_button_condP1right_in = p1right;
    M_edge_detectorP1right_in = M_button_condP1right_out;
    M_button_condP1enter_in = p1Etr;
    M_edge_detectorP1enter_in = M_button_condP1enter_out;
    M_button_condP2up_in = p2Up;
    M_edge_detectorP2up_in = M_button_condP2up_out;
    M_button_condP2down_in = p2Dn;
    M_edge_detectorP2down_in = M_button_condP2down_out;
    M_button_condP2left_in = p2Lft;
    M_edge_detectorP2left_in = M_button_condP2left_out;
    M_button_condP2right_in = p2Rgt;
    M_edge_detectorP2right_in = M_button_condP2right_out;
    M_button_condP2enter_in = p2Etr;
    M_edge_detectorP2enter_in = M_button_condP2enter_out;
    p1Btn = {M_edge_detectorP1up_out, M_edge_detectorP1down_out, M_edge_detectorP1left_out, M_edge_detectorP1right_out, M_edge_detectorP1enter_out};
    p2Btn = {M_edge_detectorP2up_out, M_edge_detectorP2down_out, M_edge_detectorP2left_out, M_edge_detectorP2right_out, M_edge_detectorP2enter_out};
    p1sc = M_dmP1s_greenc;
    p1sr = M_dmP1s_greenr;
    p1ogc = M_dmP1o_greenc;
    p1ogr = M_dmP1o_greenr;
    p1orc = M_dmP1o_redc;
    p1orr = M_dmP1o_redr;
    p2sc = M_dmP2s_greenc;
    p2sr = M_dmP2s_greenr;
    p2ogc = M_dmP2o_greenc;
    p2ogr = M_dmP2o_greenr;
    p2orc = M_dmP2o_redc;
    p2orr = M_dmP2o_redr;
    p1sc = M_dmP1o_greenc;
    p1sr = M_dmP1o_greenr;
    p1ogc = M_dmP1s_greenc;
    p1ogr = M_dmP1s_greenr;
    p1orc = M_dmP1s_redc;
    p1orr = M_dmP1s_redr;
    p2sc = M_dmP2o_greenc;
    p2sr = M_dmP2o_greenr;
    p2ogc = M_dmP2s_greenc;
    p2ogr = M_dmP2s_greenr;
    p2orc = M_dmP2s_redc;
    p2orr = M_dmP2s_redr;
    M_dmP1s_activate = sactivated[0+0-:1];
    M_dmP1s_confirmed = sp1sdff;
    M_dmP1s_tempc = sp1_tempc;
    M_dmP1s_tempr = sp1_tempr;
    M_dmP1o_activate = sactivated[1+0-:1];
    M_dmP1o_confirmed = sp1odff;
    M_dmP1o_tempc = sp1_tempc;
    M_dmP1o_tempr = sp1_tempr;
    M_dmP2s_activate = sactivated[2+0-:1];
    M_dmP2s_confirmed = sp2sdff;
    M_dmP2s_tempc = sp2_tempc;
    M_dmP2s_tempr = sp2_tempr;
    M_dmP2o_activate = sactivated[3+0-:1];
    M_dmP2o_confirmed = sp2odff;
    M_dmP2o_tempc = sp2_tempc;
    M_dmP2o_tempr = sp2_tempr;
    p1_onesleft = 1'h0;
    p2_onesleft = 1'h0;
    
    case (M_state_q)
      INITIALISE_state: begin
        M_p1_tempc_d = 5'h03;
        M_p1_tempr_d = 7'h03;
        M_p2_tempc_d = 5'h03;
        M_p2_tempr_d = 7'h03;
        M_p1_blob_d = 1'h0;
        M_p2_blob_d = 1'h0;
        M_activated_d = 4'h5;
        M_state_d = PREP_state;
      end
      PREP_state: begin
        M_sh5_a = sp2_tempc;
        M_sh7_a = sp2_tempr;
        
        case (p2Btn)
          5'h10: begin
            if (sp2_tempc <= 5'h0c) begin
              if (sp2_blob != 2'h2) begin
                M_sh5_alufn = 6'h00;
                M_p2_tempc_d = M_sh5_shift;
              end
            end
          end
          5'h08: begin
            if (sp2_tempc >= 5'h06) begin
              if (sp2_blob != 2'h2) begin
                M_sh5_alufn = 6'h01;
                M_p2_tempc_d = M_sh5_shift;
              end
            end
          end
          5'h02: begin
            if (sp2_tempr <= 7'h30) begin
              if (sp2_blob != 2'h2) begin
                M_sh7_alufn = 6'h00;
                M_p2_tempr_d = M_sh7_shift;
              end
            end
          end
          5'h04: begin
            if (sp2_tempr >= 7'h06) begin
              if (sp2_blob != 2'h2) begin
                M_sh7_alufn = 6'h01;
                M_p2_tempr_d = M_sh7_shift;
              end
            end
          end
          5'h01: begin
            if (sp2_blob != 2'h2) begin
              M_state_d = SETTLE_P2_state;
            end
          end
        endcase
        
        case (p1Btn)
          5'h10: begin
            if (sp1_tempc <= 5'h0c) begin
              if (sp1_blob != 2'h2) begin
                M_sh5_a = sp1_tempc;
                M_sh5_alufn = 6'h00;
                M_p1_tempc_d = M_sh5_shift;
              end
            end
          end
          5'h08: begin
            if (sp1_tempc >= 5'h06) begin
              if (sp1_blob != 2'h2) begin
                M_sh5_a = sp1_tempc;
                M_sh5_alufn = 6'h01;
                M_p1_tempc_d = M_sh5_shift;
              end
            end
          end
          5'h02: begin
            if (sp1_tempr <= 7'h30) begin
              if (sp1_blob != 2'h2) begin
                M_sh7_a = sp1_tempr;
                M_sh7_alufn = 6'h00;
                M_p1_tempr_d = M_sh7_shift;
              end
            end
          end
          5'h04: begin
            if (sp1_tempr >= 7'h06) begin
              if (sp1_blob != 2'h2) begin
                M_sh7_a = sp1_tempr;
                M_sh7_alufn = 6'h01;
                M_p1_tempr_d = M_sh7_shift;
              end
            end
          end
          5'h01: begin
            if (sp1_blob != 2'h2) begin
              M_state_d = SETTLE_P1_state;
            end
          end
        endcase
      end
      SETTLE_P1_state: begin
        M_p1_blob_d = sp1_blob + 1'h1;
        for (i = 1'h0; i < 3'h5; i = i + 1) begin
          for (j = 1'h0; j < 3'h7; j = j + 1) begin
            if (sp1_tempc[(i)*1+0-:1] == 1'h1 && sp1_tempr[(j)*1+0-:1] == 1'h1) begin
              M_p1sdff_d[(i)*21+(j)*3+2-:3] = 1'h1;
            end else begin
              M_p1sdff_d[(i)*21+(j)*3+2-:3] = sp1sdff[(i)*21+(j)*3+2-:3];
            end
          end
        end
        if (sp1_blob == 1'h1 && sp2_blob == 2'h2) begin
          M_activated_d = 4'ha;
          M_p1_blob_d = 1'h0;
          M_p2_blob_d = 1'h0;
          M_p1_tempc_d = 5'h01;
          M_p1_tempr_d = 7'h01;
          M_p2_tempc_d = 5'h01;
          M_p2_tempr_d = 7'h01;
          M_state_d = PLAY_state;
        end else begin
          M_state_d = PREP_state;
        end
      end
      SETTLE_P2_state: begin
        M_p2_blob_d = sp2_blob + 1'h1;
        for (i = 1'h0; i < 3'h5; i = i + 1) begin
          for (j = 1'h0; j < 3'h7; j = j + 1) begin
            if (sp2_tempc[(i)*1+0-:1] == 1'h1 && sp2_tempr[(j)*1+0-:1] == 1'h1) begin
              M_p2sdff_d[(i)*21+(j)*3+2-:3] = 1'h1;
            end else begin
              M_p2sdff_d[(i)*21+(j)*3+2-:3] = sp2sdff[(i)*21+(j)*3+2-:3];
            end
          end
        end
        if (sp1_blob == 2'h2 && sp2_blob == 1'h1) begin
          M_activated_d = 4'ha;
          M_p1_blob_d = 1'h0;
          M_p2_blob_d = 1'h0;
          M_p1_tempc_d = 5'h01;
          M_p1_tempr_d = 7'h01;
          M_p2_tempc_d = 5'h01;
          M_p2_tempr_d = 7'h01;
          M_state_d = PLAY_state;
        end else begin
          M_state_d = PREP_state;
        end
      end
      PLAY_state: begin
        M_sh5_a = sp2_tempc;
        M_sh7_a = sp2_tempr;
        
        case (p2Btn)
          5'h10: begin
            if (sp2_tempc <= 5'h08) begin
              if (sp2_blob != 1'h1) begin
                M_sh5_alufn = 6'h00;
                M_p2_tempc_d = M_sh5_shift;
              end
            end
          end
          5'h08: begin
            if (sp2_tempc >= 5'h02) begin
              if (sp2_blob != 1'h1) begin
                M_sh5_alufn = 6'h01;
                M_p2_tempc_d = M_sh5_shift;
              end
            end
          end
          5'h02: begin
            if (sp2_tempr <= 7'h20) begin
              if (sp2_blob != 1'h1) begin
                M_sh7_alufn = 6'h00;
                M_p2_tempr_d = M_sh7_shift;
              end
            end
          end
          5'h04: begin
            if (sp2_tempr >= 7'h02) begin
              if (sp2_blob != 1'h1) begin
                M_sh7_alufn = 6'h01;
                M_p2_tempr_d = M_sh7_shift;
              end
            end
          end
          5'h01: begin
            if (sp2_blob != 1'h1) begin
              M_state_d = SETTLE_P2_OPP_state;
            end
          end
        endcase
        
        case (p1Btn)
          5'h10: begin
            if (sp1_tempc <= 5'h08) begin
              if (sp1_blob != 1'h1) begin
                M_sh5_a = sp1_tempc;
                M_sh5_alufn = 6'h00;
                M_p1_tempc_d = M_sh5_shift;
              end
            end
          end
          5'h08: begin
            if (sp1_tempc >= 5'h02) begin
              if (sp1_blob != 1'h1) begin
                M_sh5_a = sp1_tempc;
                M_sh5_alufn = 6'h01;
                M_p1_tempc_d = M_sh5_shift;
              end
            end
          end
          5'h02: begin
            if (sp1_tempr <= 7'h20) begin
              if (sp1_blob != 1'h1) begin
                M_sh7_a = sp1_tempr;
                M_sh7_alufn = 6'h00;
                M_p1_tempr_d = M_sh7_shift;
              end
            end
          end
          5'h04: begin
            if (sp1_tempr >= 7'h02) begin
              if (sp1_blob != 1'h1) begin
                M_sh7_a = sp1_tempr;
                M_sh7_alufn = 6'h01;
                M_p1_tempr_d = M_sh7_shift;
              end
            end
          end
          5'h01: begin
            if (sp1_blob != 2'h2) begin
              M_state_d = SETTLE_P1_OPP_state;
            end
          end
        endcase
      end
      SETTLE_P1_OPP_state: begin
        M_p1_blob_d = 1'h1;
        for (i = 1'h0; i < 3'h5; i = i + 1) begin
          for (j = 1'h0; j < 3'h7; j = j + 1) begin
            if (sp1_tempc[(i)*1+0-:1] == 1'h1 && sp1_tempr[(j)*1+0-:1] == 1'h1) begin
              M_p1odff_d[(i)*21+(j)*3+2-:3] = 3'h5;
            end
          end
        end
        if (sp2_blob == 1'h1) begin
          M_state_d = SETTLE_SELF_state;
        end else begin
          M_state_d = PLAY_state;
        end
      end
      SETTLE_P2_OPP_state: begin
        M_p2_blob_d = 1'h1;
        for (i = 1'h0; i < 3'h5; i = i + 1) begin
          for (j = 1'h0; j < 3'h7; j = j + 1) begin
            if (sp2_tempc[(i)*1+0-:1] == 1'h1 && sp2_tempr[(j)*1+0-:1] == 1'h1) begin
              M_p2odff_d[(i)*21+(j)*3+2-:3] = 3'h5;
            end
          end
        end
        if (sp1_blob == 1'h1) begin
          M_state_d = SETTLE_SELF_state;
        end else begin
          M_state_d = PLAY_state;
        end
      end
      SETTLE_SELF_state: begin
        M_p1_blob_d = 1'h0;
        M_p2_blob_d = 1'h0;
        for (i = 1'h0; i < 3'h5; i = i + 1) begin
          for (j = 1'h0; j < 3'h7; j = j + 1) begin
            if (sp1odff[(i)*21+(j)*3+2-:3] == 3'h5 && sp2sdff[(i)*21+(j)*3+2-:3] == 1'h1) begin
              sp2sdff[(i)*21+(j)*3+2-:3] = 2'h2;
              M_add1_a = sp2sdff[(i)*21+(j)*3+2-:3];
              sp1odff[(i)*21+(j)*3+2-:3] = M_add1_sum;
            end
            if (sp1odff[(i)*21+(j)*3+2-:3] == 3'h5 && sp2sdff[(i)*21+(j)*3+2-:3] == 1'h0) begin
              sp2sdff[(i)*21+(j)*3+2-:3] = 2'h3;
              M_add1_a = sp2sdff[(i)*21+(j)*3+2-:3];
              sp1odff[(i)*21+(j)*3+2-:3] = M_add1_sum;
            end
            if (sp2odff[(i)*21+(j)*3+2-:3] == 3'h5 && sp1sdff[(i)*21+(j)*3+2-:3] == 1'h1) begin
              sp1sdff[(i)*21+(j)*3+2-:3] = 2'h2;
              M_add1_a = sp1sdff[(i)*21+(j)*3+2-:3];
              sp2odff[(i)*21+(j)*3+2-:3] = M_add1_sum;
            end
            if (sp2odff[(i)*21+(j)*3+2-:3] == 3'h5 && sp1sdff[(i)*21+(j)*3+2-:3] == 1'h0) begin
              sp1sdff[(i)*21+(j)*3+2-:3] = 2'h3;
              M_add1_a = sp1sdff[(i)*21+(j)*3+2-:3];
              sp2odff[(i)*21+(j)*3+2-:3] = M_add1_sum;
            end
            if (sp1sdff[(i)*21+(j)*3+2-:3] == 1'h1) begin
              p1_onesleft = 1'h1;
            end
            if (sp2sdff[(i)*21+(j)*3+2-:3] == 1'h1) begin
              p2_onesleft = 1'h1;
            end
            if (p1_onesleft != 1'h0 && p2_onesleft != 1'h0) begin
              M_state_d = PLAY_state;
            end
          end
        end
        if (p1_onesleft == 1'h0 && p2_onesleft == 1'h0) begin
          for (i = 1'h0; i < 3'h5; i = i + 1) begin
            for (j = 1'h0; j < 3'h7; j = j + 1) begin
              sp1odff[(i)*21+(j)*3+2-:3] = 1'h0;
              sp1sdff[(i)*21+(j)*3+2-:3] = 2'h3;
              sp2odff[(i)*21+(j)*3+2-:3] = 1'h0;
              sp2sdff[(i)*21+(j)*3+2-:3] = 2'h3;
            end
          end
          M_state_d = WIN_state;
        end else begin
          if (p1_onesleft == 1'h0) begin
            for (i = 1'h0; i < 3'h5; i = i + 1) begin
              for (j = 1'h0; j < 3'h7; j = j + 1) begin
                sp1odff[(i)*21+(j)*3+2-:3] = 1'h0;
                sp1sdff[(i)*21+(j)*3+2-:3] = 2'h3;
                sp2odff[(i)*21+(j)*3+2-:3] = 1'h0;
                sp2sdff[(i)*21+(j)*3+2-:3] = 1'h1;
              end
            end
            M_state_d = WIN_state;
          end else begin
            if (p2_onesleft == 1'h0) begin
              M_state_d = WIN_state;
              for (i = 1'h0; i < 3'h5; i = i + 1) begin
                for (j = 1'h0; j < 3'h7; j = j + 1) begin
                  sp1odff[(i)*21+(j)*3+2-:3] = 1'h0;
                  sp1sdff[(i)*21+(j)*3+2-:3] = 1'h1;
                  sp2odff[(i)*21+(j)*3+2-:3] = 1'h0;
                  sp2sdff[(i)*21+(j)*3+2-:3] = 2'h3;
                end
              end
              M_state_d = WIN_state;
            end
          end
        end
        M_p1odff_d = sp1odff;
        M_p1sdff_d = sp1sdff;
        M_p2odff_d = sp2odff;
        M_p2sdff_d = sp2sdff;
      end
      WIN_state: begin
        M_state_d = WIN_state;
      end
    endcase
  end
  
  always @(posedge clk) begin
    M_p2_tempc_q <= M_p2_tempc_d;
  end
  
  
  always @(posedge clk) begin
    M_p2sdff_q <= M_p2sdff_d;
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_state_q <= 1'h0;
    end else begin
      M_state_q <= M_state_d;
    end
  end
  
  
  always @(posedge clk) begin
    M_p1odff_q <= M_p1odff_d;
  end
  
  
  always @(posedge clk) begin
    M_activated_q <= M_activated_d;
  end
  
  
  always @(posedge clk) begin
    M_p2_tempr_q <= M_p2_tempr_d;
  end
  
  
  always @(posedge clk) begin
    M_p1_blob_q <= M_p1_blob_d;
  end
  
  
  always @(posedge clk) begin
    M_p1_tempc_q <= M_p1_tempc_d;
  end
  
  
  always @(posedge clk) begin
    M_p2odff_q <= M_p2odff_d;
  end
  
  
  always @(posedge clk) begin
    M_p1_tempr_q <= M_p1_tempr_d;
  end
  
  
  always @(posedge clk) begin
    M_p2_blob_q <= M_p2_blob_d;
  end
  
  
  always @(posedge clk) begin
    M_p1sdff_q <= M_p1sdff_d;
  end
  
endmodule
