(* This file was generated by lv6 version 6.101.27. *)
(*  lv6 -ec -node PC8 PCtest.lus -o PCtest.ec *)
(* on YEAST-Laptop the 07/01/2021 at 12:35:46 *)

node PC8(start:bool; reset:bool; C:bool; Z:bool; P:bool) 
returns (EI0:bool; EI1:bool; _EI0:bool; _EI1:bool);
var
   _0D_4:bool;
   _0_0split_3_4:bool;
   _0_0split_4_4:bool;
   _0_0split_5_4:bool;
   _0_0split_6_4:bool;
   _0_0_0split_9_1_4:bool;
   _0_0_0split_8_1_4:bool;
   _0_0_0split_7_1_4:bool;
   _0char_4:bool;
   _0reset_4:bool;
   _0D_3:bool;
   _0_0split_3_3:bool;
   _0_0split_4_3:bool;
   _0_0split_5_3:bool;
   _0_0split_6_3:bool;
   _0_0_0split_9_1_3:bool;
   _0_0_0split_8_1_3:bool;
   _0_0_0split_7_1_3:bool;
   _0char_3:bool;
   _0set_3:bool;
   _0split_2:bool;
let
   _EI1 = (EI0) and (_0split_2);
   _0split_2 = not (start);
   _EI0 = start;
   _0set_3 = false;
   _0char_3 = true;
   _0_0split_5_3 = (_0_0split_3_3) and (_0_0split_4_3);
   _0_0split_4_3 = (_0_0_0split_8_1_3) or (_0_0_0split_9_1_3);
   _0_0_0split_7_1_3 = not (_0char_3);
   _0_0_0split_8_1_3 = (_0_0_0split_7_1_3) and (EI1);
   _0_0_0split_9_1_3 = (_0char_3) and (_EI1);
   _0_0split_3_3 = not (reset);
   _0D_3 = (_0set_3) or (_0_0split_5_3);
   _0_0split_6_3 = pre (_0D_3);
   EI1 = true -> _0_0split_6_3;
   _0reset_4 = false;
   _0char_4 = true;
   _0_0split_5_4 = (_0_0split_3_4) and (_0_0split_4_4);
   _0_0split_4_4 = (_0_0_0split_8_1_4) or (_0_0_0split_9_1_4);
   _0_0_0split_7_1_4 = not (_0char_4);
   _0_0_0split_8_1_4 = (_0_0_0split_7_1_4) and (EI0);
   _0_0_0split_9_1_4 = (_0char_4) and (_EI0);
   _0_0split_3_4 = not (_0reset_4);
   _0D_4 = (reset) or (_0_0split_5_4);
   _0_0split_6_4 = pre (_0D_4);
   EI0 = true -> _0_0split_6_4;
tel
-- end of node PCtest__PC8
