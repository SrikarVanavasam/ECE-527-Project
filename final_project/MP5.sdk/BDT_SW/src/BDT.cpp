#include "BDT.h"
#include "parameters.h"

template<>
void BDT::BDT<n_trees, n_classes, input_arr_t, score_t, threshold_t>::tree_scores(input_arr_t x, score_t scores[n_trees][fn_classes(n_classes)]) const {
  scores[0][0] = tree_0_0.decision_function(x);
  scores[1][0] = tree_1_0.decision_function(x);
  scores[2][0] = tree_2_0.decision_function(x);
  scores[3][0] = tree_3_0.decision_function(x);
  scores[4][0] = tree_4_0.decision_function(x);
  scores[5][0] = tree_5_0.decision_function(x);
  scores[6][0] = tree_6_0.decision_function(x);
  scores[7][0] = tree_7_0.decision_function(x);
  scores[8][0] = tree_8_0.decision_function(x);
  scores[9][0] = tree_9_0.decision_function(x);
  scores[10][0] = tree_10_0.decision_function(x);
  scores[11][0] = tree_11_0.decision_function(x);
  scores[12][0] = tree_12_0.decision_function(x);
  scores[13][0] = tree_13_0.decision_function(x);
  scores[14][0] = tree_14_0.decision_function(x);
  scores[15][0] = tree_15_0.decision_function(x);
  scores[16][0] = tree_16_0.decision_function(x);
  scores[17][0] = tree_17_0.decision_function(x);
  scores[18][0] = tree_18_0.decision_function(x);
  scores[19][0] = tree_19_0.decision_function(x);
  scores[20][0] = tree_20_0.decision_function(x);
  scores[21][0] = tree_21_0.decision_function(x);
  scores[22][0] = tree_22_0.decision_function(x);
  scores[23][0] = tree_23_0.decision_function(x);
  scores[24][0] = tree_24_0.decision_function(x);
  scores[25][0] = tree_25_0.decision_function(x);
  scores[26][0] = tree_26_0.decision_function(x);
  scores[27][0] = tree_27_0.decision_function(x);
  scores[28][0] = tree_28_0.decision_function(x);
  scores[29][0] = tree_29_0.decision_function(x);
  scores[30][0] = tree_30_0.decision_function(x);
  scores[31][0] = tree_31_0.decision_function(x);
  scores[32][0] = tree_32_0.decision_function(x);
  scores[33][0] = tree_33_0.decision_function(x);
  scores[34][0] = tree_34_0.decision_function(x);
  scores[35][0] = tree_35_0.decision_function(x);
  scores[36][0] = tree_36_0.decision_function(x);
  scores[37][0] = tree_37_0.decision_function(x);
  scores[38][0] = tree_38_0.decision_function(x);
  scores[39][0] = tree_39_0.decision_function(x);
  scores[40][0] = tree_40_0.decision_function(x);
  scores[41][0] = tree_41_0.decision_function(x);
  scores[42][0] = tree_42_0.decision_function(x);
  scores[43][0] = tree_43_0.decision_function(x);
  scores[44][0] = tree_44_0.decision_function(x);
  scores[45][0] = tree_45_0.decision_function(x);
  scores[46][0] = tree_46_0.decision_function(x);
  scores[47][0] = tree_47_0.decision_function(x);
  scores[48][0] = tree_48_0.decision_function(x);
  scores[49][0] = tree_49_0.decision_function(x);
  scores[50][0] = tree_50_0.decision_function(x);
  scores[51][0] = tree_51_0.decision_function(x);
  scores[52][0] = tree_52_0.decision_function(x);
  scores[53][0] = tree_53_0.decision_function(x);
  scores[54][0] = tree_54_0.decision_function(x);
  scores[55][0] = tree_55_0.decision_function(x);
  scores[56][0] = tree_56_0.decision_function(x);
  scores[57][0] = tree_57_0.decision_function(x);
  scores[58][0] = tree_58_0.decision_function(x);
  scores[59][0] = tree_59_0.decision_function(x);
  scores[60][0] = tree_60_0.decision_function(x);
  scores[61][0] = tree_61_0.decision_function(x);
  scores[62][0] = tree_62_0.decision_function(x);
  scores[63][0] = tree_63_0.decision_function(x);
  scores[64][0] = tree_64_0.decision_function(x);
  scores[65][0] = tree_65_0.decision_function(x);
  scores[66][0] = tree_66_0.decision_function(x);
  scores[67][0] = tree_67_0.decision_function(x);
  scores[68][0] = tree_68_0.decision_function(x);
  scores[69][0] = tree_69_0.decision_function(x);
  scores[70][0] = tree_70_0.decision_function(x);
  scores[71][0] = tree_71_0.decision_function(x);
  scores[72][0] = tree_72_0.decision_function(x);
  scores[73][0] = tree_73_0.decision_function(x);
  scores[74][0] = tree_74_0.decision_function(x);
}
