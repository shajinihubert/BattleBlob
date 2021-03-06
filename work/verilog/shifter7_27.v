/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shifter7_27 (
    input [6:0] a,
    input [2:0] b,
    input [5:0] alufn,
    output reg [6:0] shift
  );
  
  
  
  always @* begin
    
    case (alufn[0+2-:3])
      3'h0: begin
        shift = a << b[0+2-:3];
      end
      3'h1: begin
        shift = a >> b[0+2-:3];
      end
      3'h3: begin
        shift = $signed(a) >>> b[0+2-:3];
      end
      default: begin
        shift = a;
      end
    endcase
  end
endmodule
