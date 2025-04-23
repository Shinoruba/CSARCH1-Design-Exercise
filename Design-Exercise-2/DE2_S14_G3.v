/*

 Hello sir, our testbench does not work..
 But we receive proper prizes in Circuitverse

 Proof will be in the documentation, and you may download and
 check the circuitverse design if so.

*/

/*
  Element Usage Report
    Input - 38 times
    OrGate - 8 times
    Output - 18 times
    Adder - 4 times
    Splitter - 1 times
    Decoder - 7 times
    ConstantVal - 1 times
    AndGate - 3 times
    NorGate - 1 times
    NotGate - 2 times
    XnorGate - 1 times
    SubCircuit - 12 times
*/

module P4_Condition(Win, \4_One-Face , \4_Two-Face , \4_Three-Face , \4_Five-Face , \4_Six-Face );
  output Win;
  input \4_One-Face , \4_Two-Face , \4_Three-Face , \4_Five-Face , \4_Six-Face ;
  wire or_0_out;
  assign or_0_out = \4_One-Face  | \4_Two-Face  | \4_Three-Face  | \4_Five-Face  | \4_Six-Face ;
  assign Win = or_0_out;
endmodule

module High_Counter(\1_High , \2_High , \3_High , \4_High , \5_High , \6_High , Dice_1, Dice_2, Dice_3, Dice_4, Dice_5, Dice_6);
  output \1_High ,  \2_High ,  \3_High ,  \4_High ,  \5_High ,  \6_High ;
  input Dice_1, Dice_2, Dice_3, Dice_4, Dice_5, Dice_6;
  wire Adder_1_Cout, Adder_1_Sum, Adder_2_Cout, Adder_2_Sum, Decoder_0_out_0, Decoder_0_out_1, Decoder_0_out_2, Decoder_0_out_3, Decoder_0_out_4, Decoder_0_out_5, Adder_3_Cout, Adder_3_Sum, Adder_0_Cout, Adder_0_Sum, const_0;
  wire [2:0] Splitter_0_cmb;
  assign Adder_1_Sum = Dice_4 + Dice_5 + Dice_6;
  assign Adder_2_Sum = Adder_0_Sum + Adder_1_Sum + const_0;
  assign Splitter_0_cmb = {Adder_3_Cout,Adder_3_Sum,Adder_2_Sum};
  Decoder8 #(3) Decoder_0(, Decoder_0_out_0, Decoder_0_out_1, Decoder_0_out_2, Decoder_0_out_3, Decoder_0_out_4, Decoder_0_out_5, , Splitter_0_cmb);
  assign \6_High  = Decoder_0_out_5;
  assign \5_High  = Decoder_0_out_4;
  assign \4_High  = Decoder_0_out_3;
  assign \3_High  = Decoder_0_out_2;
  assign \2_High  = Decoder_0_out_1;
  assign \1_High  = Decoder_0_out_0;
  assign Adder_3_Sum = Adder_0_Cout + Adder_1_Cout + Adder_2_Cout;
  assign Adder_0_Sum = Dice_1 + Dice_2 + Dice_3;
  assign const_0 = 1'b0;
endmodule

module P1_Condition(Win, \4_Four-Face , \5_One-Face , \5_Two-Face , \5_Three-Face , \5_Five-Face , \5_Six-Face );
  output Win;
  input \4_Four-Face , \5_One-Face , \5_Two-Face , \5_Three-Face , \5_Five-Face , \5_Six-Face ;
  wire or_0_out;
  assign or_0_out = \4_Four-Face  | \5_One-Face  | \5_Two-Face  | \5_Three-Face  | \5_Five-Face  | \5_Six-Face ;
  assign Win = or_0_out;
endmodule

module P2_Condition(Win, \3_One-Face , \3_Two-Face , \3_Four-Face , \3_Five-Face , \3_Six-Face , \3_Three-Face , \1_One-Face , \1_Two-Face , \1_Three-Face , \1_Four-Face , \1_Five-Face , \1_Six-Face );
  output Win;
  input \3_One-Face , \3_Two-Face , \3_Four-Face , \3_Five-Face , \3_Six-Face , \3_Three-Face , \1_One-Face , \1_Two-Face , \1_Three-Face , \1_Four-Face , \1_Five-Face , \1_Six-Face ;
  wire and_0_out, or_0_out, nor_0_out, not_0_out, and_1_out, xnor_0_out;
  assign and_0_out = \1_Three-Face  & \1_Two-Face  & \1_One-Face  & \1_Five-Face  & \1_Five-Face  & \1_Six-Face ;
  assign or_0_out = and_1_out | and_0_out;
  assign Win = or_0_out;
  assign nor_0_out = ~(\3_Three-Face  | \3_Two-Face  | \3_One-Face  | \3_Four-Face  | \3_Five-Face  | \3_Six-Face );
  assign not_0_out = ~nor_0_out;
  assign and_1_out = xnor_0_out & not_0_out;
  assign xnor_0_out = ~(\3_Three-Face  ^ \3_Two-Face  ^ \3_One-Face  ^ \3_Four-Face  ^ \3_Five-Face  ^ \3_Six-Face );
endmodule

module P3_Condition(Win, \3_Four-Face );
  output Win;
  input \3_Four-Face ;
  assign Win = \3_Four-Face ;
endmodule

module P5_Condition(Win, \2_4-Face );
  output Win;
  input \2_4-Face ;
  assign Win = \2_4-Face ;
endmodule

module P6_Condition(Win, \1_Four-Face );
  output Win;
  input \1_Four-Face ;
  assign Win = \1_Four-Face ;
endmodule








module Main(P1, P2, P3, P4, P5, P6, D1, D2, D3, D4, D5, D6);
  output P1,  P2,  P3,  P4,  P5,  P6;
  input [2:0] D1, D2, D3, D4, D5, D6;
  wire DEC_6_out_0, DEC_6_out_1, DEC_6_out_2, DEC_6_out_3, DEC_6_out_4, DEC_6_out_5, \6-Face_Counter_out_0 , \6-Face_Counter_out_1 , \6-Face_Counter_out_2 , \6-Face_Counter_out_3 , \6-Face_Counter_out_4 , \6-Face_Counter_out_5 , or_4_out, P1_Condition_6_out, P4_Condition_9_out, P2_Condition_7_out, not_0_out, and_0_out, \5-Face_Counter_out_0 , \5-Face_Counter_out_1 , \5-Face_Counter_out_2 , \5-Face_Counter_out_3 , \5-Face_Counter_out_4 , \5-Face_Counter_out_5 , or_3_out, \4-Face_Counter_out_0 , \4-Face_Counter_out_1 , \4-Face_Counter_out_2 , \4-Face_Counter_out_3 , \4-Face_Counter_out_4 , \4-Face_Counter_out_5 , P3_Condition_8_out, P5_Condition_10_out, P6_Condition_11_out, \3-Face_Counter_out_0 , \3-Face_Counter_out_1 , \3-Face_Counter_out_2 , \3-Face_Counter_out_3 , \3-Face_Counter_out_4 , \3-Face_Counter_out_5 , or_2_out, \2-Face_Counter_out_0 , \2-Face_Counter_out_1 , \2-Face_Counter_out_2 , \2-Face_Counter_out_3 , \2-Face_Counter_out_4 , \2-Face_Counter_out_5 , or_1_out, \1-Face_Counter_out_0 , \1-Face_Counter_out_1 , \1-Face_Counter_out_2 , \1-Face_Counter_out_3 , \1-Face_Counter_out_4 , \1-Face_Counter_out_5 , or_0_out, DEC_5_out_0, DEC_5_out_1, DEC_5_out_2, DEC_5_out_3, DEC_5_out_4, DEC_5_out_5, DEC_4_out_0, DEC_4_out_1, DEC_4_out_2, DEC_4_out_3, DEC_4_out_4, DEC_4_out_5, DEC_3_out_0, DEC_3_out_1, DEC_3_out_2, DEC_3_out_3, DEC_3_out_4, DEC_3_out_5, DEC_2_out_0, DEC_2_out_1, DEC_2_out_2, DEC_2_out_3, DEC_2_out_4, DEC_2_out_5, DEC_1_out_0, DEC_1_out_1, DEC_1_out_2, DEC_1_out_3, DEC_1_out_4, DEC_1_out_5;
  Decoder8 #(3) DEC_6(, DEC_6_out_0, DEC_6_out_1, DEC_6_out_2, DEC_6_out_3, DEC_6_out_4, DEC_6_out_5, , D6);
  High_Counter \6-Face_Counter (\6-Face_Counter_out_0 , \6-Face_Counter_out_1 , \6-Face_Counter_out_2 , \6-Face_Counter_out_3 , \6-Face_Counter_out_4 , \6-Face_Counter_out_5 , DEC_1_out_5, DEC_2_out_5, DEC_3_out_5, DEC_4_out_5, DEC_5_out_5, DEC_6_out_5);
  assign or_4_out = \6-Face_Counter_out_4  | \6-Face_Counter_out_5 ;
  P1_Condition P1_Condition_6(P1_Condition_6_out, \4-Face_Counter_out_3 , or_0_out, or_1_out, or_2_out, or_3_out, or_4_out);
  assign P1 = P1_Condition_6_out;
  P4_Condition P4_Condition_9(P4_Condition_9_out, \1-Face_Counter_out_3 , \2-Face_Counter_out_3 , \3-Face_Counter_out_3 , \5-Face_Counter_out_3 , \6-Face_Counter_out_3 );
  assign P4 = P4_Condition_9_out;
  P2_Condition P2_Condition_7(P2_Condition_7_out, \1-Face_Counter_out_2 , \2-Face_Counter_out_2 , \4-Face_Counter_out_2 , \5-Face_Counter_out_2 , \6-Face_Counter_out_2 , \3-Face_Counter_out_2 , \1-Face_Counter_out_0 , \2-Face_Counter_out_0 , \3-Face_Counter_out_0 , \4-Face_Counter_out_0 , \5-Face_Counter_out_0 , \6-Face_Counter_out_0 );
  assign P2 = P2_Condition_7_out;
  assign not_0_out = ~P2_Condition_7_out;
  assign and_0_out = not_0_out & P3_Condition_8_out;
  assign P3 = and_0_out;
  High_Counter \5-Face_Counter (\5-Face_Counter_out_0 , \5-Face_Counter_out_1 , \5-Face_Counter_out_2 , \5-Face_Counter_out_3 , \5-Face_Counter_out_4 , \5-Face_Counter_out_5 , DEC_1_out_4, DEC_2_out_4, DEC_3_out_4, DEC_4_out_4, DEC_5_out_4, DEC_6_out_4);
  assign or_3_out = \5-Face_Counter_out_4  | \5-Face_Counter_out_5 ;
  High_Counter \4-Face_Counter (\4-Face_Counter_out_0 , \4-Face_Counter_out_1 , \4-Face_Counter_out_2 , \4-Face_Counter_out_3 , \4-Face_Counter_out_4 , \4-Face_Counter_out_5 , DEC_1_out_3, DEC_2_out_3, DEC_3_out_3, DEC_4_out_3, DEC_5_out_3, DEC_6_out_3);
  P3_Condition P3_Condition_8(P3_Condition_8_out, \4-Face_Counter_out_2 );
  P5_Condition P5_Condition_10(P5_Condition_10_out, \4-Face_Counter_out_1 );
  assign P5 = P5_Condition_10_out;
  P6_Condition P6_Condition_11(P6_Condition_11_out, \4-Face_Counter_out_0 );
  assign P6 = P6_Condition_11_out;
  High_Counter \3-Face_Counter (\3-Face_Counter_out_0 , \3-Face_Counter_out_1 , \3-Face_Counter_out_2 , \3-Face_Counter_out_3 , \3-Face_Counter_out_4 , \3-Face_Counter_out_5 , DEC_1_out_2, DEC_2_out_2, DEC_3_out_2, DEC_4_out_2, DEC_5_out_2, DEC_6_out_2);
  assign or_2_out = \3-Face_Counter_out_4  | \3-Face_Counter_out_5 ;
  High_Counter \2-Face_Counter (\2-Face_Counter_out_0 , \2-Face_Counter_out_1 , \2-Face_Counter_out_2 , \2-Face_Counter_out_3 , \2-Face_Counter_out_4 , \2-Face_Counter_out_5 , DEC_1_out_1, DEC_2_out_1, DEC_3_out_1, DEC_4_out_1, DEC_5_out_1, DEC_6_out_1);
  assign or_1_out = \2-Face_Counter_out_4  | \2-Face_Counter_out_5 ;
  High_Counter \1-Face_Counter (\1-Face_Counter_out_0 , \1-Face_Counter_out_1 , \1-Face_Counter_out_2 , \1-Face_Counter_out_3 , \1-Face_Counter_out_4 , \1-Face_Counter_out_5 , DEC_1_out_0, DEC_2_out_0, DEC_3_out_0, DEC_4_out_0, DEC_5_out_0, DEC_6_out_0);
  assign or_0_out = \1-Face_Counter_out_4  | \1-Face_Counter_out_5 ;
  Decoder8 #(3) DEC_5(, DEC_5_out_0, DEC_5_out_1, DEC_5_out_2, DEC_5_out_3, DEC_5_out_4, DEC_5_out_5, , D5);
  Decoder8 #(3) DEC_4(, DEC_4_out_0, DEC_4_out_1, DEC_4_out_2, DEC_4_out_3, DEC_4_out_4, DEC_4_out_5, , D4);
  Decoder8 #(3) DEC_3(, DEC_3_out_0, DEC_3_out_1, DEC_3_out_2, DEC_3_out_3, DEC_3_out_4, DEC_3_out_5, , D3);
  Decoder8 #(3) DEC_2(, DEC_2_out_0, DEC_2_out_1, DEC_2_out_2, DEC_2_out_3, DEC_2_out_4, DEC_2_out_5, , D2);
  Decoder8 #(3) DEC_1(, DEC_1_out_0, DEC_1_out_1, DEC_1_out_2, DEC_1_out_3, DEC_1_out_4, DEC_1_out_5, , D1);
endmodule

module Decoder8(out0, out1, out2, out3, out4, out5, out6, out7, sel);
  output reg out0, out1, out2, out3, out4, out5, out6, out7;
  input [2:0] sel;
  
  always @ (*) begin
    out0 = 0;
    out1 = 0;
    out2 = 0;
    out3 = 0;
    out4 = 0;
    out5 = 0;
    out6 = 0;
    out7 = 0;
    case (sel)
      0 : out0 = 1;
      1 : out1 = 1;
      2 : out2 = 1;
      3 : out3 = 1;
      4 : out4 = 1;
      5 : out5 = 1;
      6 : out6 = 1;
      7 : out7 = 1;
    endcase
  end
endmodule
