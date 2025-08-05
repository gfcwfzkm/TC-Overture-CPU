module debouncer_27000
  (input  clk,
   input  reset,
   input  in_raw,
   input  deb_en,
   output debounced,
   output released,
   output pressed);
  wire [14:0] counter_reg;
  wire [14:0] counter_next;
  wire output_reg;
  wire output_next;
  wire n1582_o;
  wire n1583_o;
  wire n1586_o;
  wire [14:0] n1588_o;
  wire [14:0] n1589_o;
  wire n1591_o;
  wire [14:0] n1592_o;
  wire n1594_o;
  wire n1596_o;
  wire n1599_o;
  wire [14:0] n1601_o;
  wire [14:0] n1602_o;
  wire n1604_o;
  wire [14:0] n1605_o;
  wire n1607_o;
  wire n1609_o;
  wire n1612_o;
  wire [14:0] n1614_o;
  wire n1615_o;
  reg [14:0] n1617_q;
  reg n1618_q;
  assign debounced = output_reg;
  assign released = n1609_o;
  assign pressed = n1612_o;
  /* src/peripherals/debouncer.vhdl:49:12  */
  assign counter_reg = n1617_q; // (signal)
  /* src/peripherals/debouncer.vhdl:49:25  */
  assign counter_next = n1614_o; // (signal)
  /* src/peripherals/debouncer.vhdl:50:12  */
  assign output_reg = n1618_q; // (signal)
  /* src/peripherals/debouncer.vhdl:50:24  */
  assign output_next = n1615_o; // (signal)
  /* src/peripherals/debouncer.vhdl:77:28  */
  assign n1582_o = counter_reg == 15'b110100101111000;
  /* src/peripherals/debouncer.vhdl:79:31  */
  assign n1583_o = ~output_reg;
  /* src/peripherals/debouncer.vhdl:79:17  */
  assign n1586_o = n1583_o ? 1'b1 : 1'b0;
  /* src/peripherals/debouncer.vhdl:86:49  */
  assign n1588_o = counter_reg + 15'b000000000000001;
  /* src/peripherals/debouncer.vhdl:85:17  */
  assign n1589_o = deb_en ? n1588_o : counter_reg;
  /* src/peripherals/debouncer.vhdl:77:13  */
  assign n1591_o = n1582_o ? n1586_o : 1'b0;
  /* src/peripherals/debouncer.vhdl:77:13  */
  assign n1592_o = n1582_o ? counter_reg : n1589_o;
  /* src/peripherals/debouncer.vhdl:77:13  */
  assign n1594_o = n1582_o ? 1'b1 : output_reg;
  /* src/peripherals/debouncer.vhdl:91:28  */
  assign n1596_o = counter_reg == 15'b000000000000000;
  /* src/peripherals/debouncer.vhdl:93:17  */
  assign n1599_o = output_reg ? 1'b1 : 1'b0;
  /* src/peripherals/debouncer.vhdl:100:49  */
  assign n1601_o = counter_reg - 15'b000000000000001;
  /* src/peripherals/debouncer.vhdl:99:17  */
  assign n1602_o = deb_en ? n1601_o : counter_reg;
  /* src/peripherals/debouncer.vhdl:91:13  */
  assign n1604_o = n1596_o ? n1599_o : 1'b0;
  /* src/peripherals/debouncer.vhdl:91:13  */
  assign n1605_o = n1596_o ? counter_reg : n1602_o;
  /* src/peripherals/debouncer.vhdl:91:13  */
  assign n1607_o = n1596_o ? 1'b0 : output_reg;
  /* src/peripherals/debouncer.vhdl:75:9  */
  assign n1609_o = in_raw ? 1'b0 : n1604_o;
  /* src/peripherals/debouncer.vhdl:75:9  */
  assign n1612_o = in_raw ? n1591_o : 1'b0;
  /* src/peripherals/debouncer.vhdl:75:9  */
  assign n1614_o = in_raw ? n1592_o : n1605_o;
  /* src/peripherals/debouncer.vhdl:75:9  */
  assign n1615_o = in_raw ? n1594_o : n1607_o;
  /* src/peripherals/debouncer.vhdl:61:9  */
  always @(posedge clk or posedge reset)
    if (reset)
      n1617_q <= 15'b000000000000000;
    else
      n1617_q <= counter_next;
  /* src/peripherals/debouncer.vhdl:61:9  */
  always @(posedge clk or posedge reset)
    if (reset)
      n1618_q <= 1'b0;
    else
      n1618_q <= output_next;
endmodule

module condition
  (input  [2:0] condition_op_i,
   input  [7:0] operand_i,
   output result_o);
  wire n1517_o;
  wire n1519_o;
  wire n1522_o;
  wire n1524_o;
  wire n1526_o;
  wire n1529_o;
  wire n1531_o;
  wire n1533_o;
  wire n1536_o;
  wire n1538_o;
  wire n1540_o;
  wire n1542_o;
  wire n1545_o;
  wire n1547_o;
  wire n1549_o;
  wire n1552_o;
  wire n1554_o;
  wire n1556_o;
  wire n1559_o;
  wire n1561_o;
  wire [7:0] n1562_o;
  reg n1566_o;
  assign result_o = n1566_o;
  /* src/overture/condition.vhdl:53:13  */
  assign n1517_o = condition_op_i == 3'b000;
  /* src/overture/condition.vhdl:58:30  */
  assign n1519_o = operand_i == 8'b00000000;
  /* src/overture/condition.vhdl:58:17  */
  assign n1522_o = n1519_o ? 1'b1 : 1'b0;
  /* src/overture/condition.vhdl:56:13  */
  assign n1524_o = condition_op_i == 3'b001;
  /* src/overture/condition.vhdl:65:30  */
  assign n1526_o = $signed(operand_i) < $signed(8'b00000000);
  /* src/overture/condition.vhdl:65:17  */
  assign n1529_o = n1526_o ? 1'b1 : 1'b0;
  /* src/overture/condition.vhdl:63:13  */
  assign n1531_o = condition_op_i == 3'b010;
  /* src/overture/condition.vhdl:72:30  */
  assign n1533_o = $signed(operand_i) <= $signed(8'b00000000);
  /* src/overture/condition.vhdl:72:17  */
  assign n1536_o = n1533_o ? 1'b1 : 1'b0;
  /* src/overture/condition.vhdl:70:13  */
  assign n1538_o = condition_op_i == 3'b011;
  /* src/overture/condition.vhdl:77:13  */
  assign n1540_o = condition_op_i == 3'b100;
  /* src/overture/condition.vhdl:82:30  */
  assign n1542_o = operand_i != 8'b00000000;
  /* src/overture/condition.vhdl:82:17  */
  assign n1545_o = n1542_o ? 1'b1 : 1'b0;
  /* src/overture/condition.vhdl:80:13  */
  assign n1547_o = condition_op_i == 3'b101;
  /* src/overture/condition.vhdl:89:30  */
  assign n1549_o = $signed(operand_i) >= $signed(8'b00000000);
  /* src/overture/condition.vhdl:89:17  */
  assign n1552_o = n1549_o ? 1'b1 : 1'b0;
  /* src/overture/condition.vhdl:87:13  */
  assign n1554_o = condition_op_i == 3'b110;
  /* src/overture/condition.vhdl:96:30  */
  assign n1556_o = $signed(operand_i) > $signed(8'b00000000);
  /* src/overture/condition.vhdl:96:17  */
  assign n1559_o = n1556_o ? 1'b1 : 1'b0;
  /* src/overture/condition.vhdl:94:13  */
  assign n1561_o = condition_op_i == 3'b111;
  assign n1562_o = {n1561_o, n1554_o, n1547_o, n1540_o, n1538_o, n1531_o, n1524_o, n1517_o};
  /* src/overture/condition.vhdl:52:9  */
  always @*
    case (n1562_o)
      8'b10000000: n1566_o = n1559_o;
      8'b01000000: n1566_o = n1552_o;
      8'b00100000: n1566_o = n1545_o;
      8'b00010000: n1566_o = 1'b1;
      8'b00001000: n1566_o = n1536_o;
      8'b00000100: n1566_o = n1529_o;
      8'b00000010: n1566_o = n1522_o;
      8'b00000001: n1566_o = 1'b0;
      default: n1566_o = 1'b0;
    endcase
endmodule

module barrel_shifter_8
  (input  [7:0] input_vector_i,
   input  [3:0] shift_amount_i,
   output [7:0] output_vector_o);
  wire [7:0] input_vector_reversed;
  wire [7:0] output_vector_reversed;
  wire shift_direction_left;
  wire [3:0] shift_amount_abs;
  wire [31:0] intermediate_vector;
  reg [8:0] bitshift_vector;
  wire n645_o;
  wire n646_o;
  wire [3:0] n647_o;
  wire n648_o;
  wire n649_o;
  wire n650_o;
  wire n651_o;
  wire n652_o;
  wire n653_o;
  wire n654_o;
  wire n655_o;
  wire [7:0] n656_o;
  wire n658_o;
  wire n659_o;
  wire n660_o;
  wire n661_o;
  wire [2:0] n662_o;
  wire [30:0] n663_o;
  wire [31:0] n664_o;
  wire [31:0] n666_o;
  wire [2:0] n667_o;
  wire [2:0] n670_o;
  wire [30:0] n671_o;
  wire [31:0] n672_o;
  wire [31:0] n674_o;
  wire n676_o;
  wire n677_o;
  wire n679_o;
  wire n680_o;
  wire n681_o;
  wire n682_o;
  wire [2:0] n683_o;
  wire [30:0] n684_o;
  wire [31:0] n685_o;
  wire [31:0] n687_o;
  wire [2:0] n688_o;
  wire [2:0] n691_o;
  wire [30:0] n692_o;
  wire [31:0] n693_o;
  wire [31:0] n695_o;
  wire n697_o;
  wire n698_o;
  wire n700_o;
  wire n701_o;
  wire n702_o;
  wire n703_o;
  wire [2:0] n704_o;
  wire [30:0] n705_o;
  wire [31:0] n706_o;
  wire [31:0] n708_o;
  wire [2:0] n709_o;
  wire [2:0] n712_o;
  wire [30:0] n713_o;
  wire [31:0] n714_o;
  wire [31:0] n716_o;
  wire n718_o;
  wire n719_o;
  wire n721_o;
  wire n722_o;
  wire n723_o;
  wire n724_o;
  wire [2:0] n725_o;
  wire [30:0] n726_o;
  wire [31:0] n727_o;
  wire [31:0] n729_o;
  wire [2:0] n730_o;
  wire [2:0] n733_o;
  wire [30:0] n734_o;
  wire [31:0] n735_o;
  wire [31:0] n737_o;
  wire n739_o;
  wire n740_o;
  wire n742_o;
  wire n743_o;
  wire n744_o;
  wire n745_o;
  wire [2:0] n746_o;
  wire [30:0] n747_o;
  wire [31:0] n748_o;
  wire [31:0] n750_o;
  wire [2:0] n751_o;
  wire [2:0] n754_o;
  wire [30:0] n755_o;
  wire [31:0] n756_o;
  wire [31:0] n758_o;
  wire n760_o;
  wire n761_o;
  wire n763_o;
  wire n764_o;
  wire n765_o;
  wire n766_o;
  wire [2:0] n767_o;
  wire [30:0] n768_o;
  wire [31:0] n769_o;
  wire [31:0] n771_o;
  wire [2:0] n772_o;
  wire [2:0] n775_o;
  wire [30:0] n776_o;
  wire [31:0] n777_o;
  wire [31:0] n779_o;
  wire n781_o;
  wire n782_o;
  wire n784_o;
  wire n785_o;
  wire n786_o;
  wire n787_o;
  wire [2:0] n788_o;
  wire [30:0] n789_o;
  wire [31:0] n790_o;
  wire [31:0] n792_o;
  wire [2:0] n793_o;
  wire [2:0] n796_o;
  wire [30:0] n797_o;
  wire [31:0] n798_o;
  wire [31:0] n800_o;
  wire n802_o;
  wire n803_o;
  wire n805_o;
  wire n806_o;
  wire n807_o;
  wire n808_o;
  wire [2:0] n809_o;
  wire [30:0] n810_o;
  wire [31:0] n811_o;
  wire [31:0] n813_o;
  wire [2:0] n814_o;
  wire [2:0] n817_o;
  wire [30:0] n818_o;
  wire [31:0] n819_o;
  wire [31:0] n821_o;
  wire n823_o;
  wire n824_o;
  wire n827_o;
  wire n828_o;
  wire n829_o;
  wire n830_o;
  wire [2:0] n831_o;
  wire [30:0] n832_o;
  wire [31:0] n833_o;
  wire [31:0] n835_o;
  wire [2:0] n836_o;
  wire [2:0] n839_o;
  wire [30:0] n840_o;
  wire [31:0] n841_o;
  wire [31:0] n843_o;
  wire n845_o;
  wire n846_o;
  wire n848_o;
  wire n849_o;
  wire n850_o;
  wire n851_o;
  wire [2:0] n852_o;
  wire [30:0] n853_o;
  wire [31:0] n854_o;
  wire [31:0] n856_o;
  wire [2:0] n857_o;
  wire [2:0] n860_o;
  wire [30:0] n861_o;
  wire [31:0] n862_o;
  wire [31:0] n864_o;
  wire n866_o;
  wire n867_o;
  wire n869_o;
  wire n870_o;
  wire n871_o;
  wire n872_o;
  wire [2:0] n873_o;
  wire [30:0] n874_o;
  wire [31:0] n875_o;
  wire [31:0] n877_o;
  wire [2:0] n878_o;
  wire [2:0] n881_o;
  wire [30:0] n882_o;
  wire [31:0] n883_o;
  wire [31:0] n885_o;
  wire n887_o;
  wire n888_o;
  wire n890_o;
  wire n891_o;
  wire n892_o;
  wire n893_o;
  wire [2:0] n894_o;
  wire [30:0] n895_o;
  wire [31:0] n896_o;
  wire [31:0] n898_o;
  wire [2:0] n899_o;
  wire [2:0] n902_o;
  wire [30:0] n903_o;
  wire [31:0] n904_o;
  wire [31:0] n906_o;
  wire n908_o;
  wire n909_o;
  wire n911_o;
  wire n912_o;
  wire n913_o;
  wire n914_o;
  wire [2:0] n915_o;
  wire [30:0] n916_o;
  wire [31:0] n917_o;
  wire [31:0] n919_o;
  wire [2:0] n920_o;
  wire [2:0] n923_o;
  wire [30:0] n924_o;
  wire [31:0] n925_o;
  wire [31:0] n927_o;
  wire n929_o;
  wire n930_o;
  wire n932_o;
  wire n933_o;
  wire n934_o;
  wire n935_o;
  wire [2:0] n936_o;
  wire [30:0] n937_o;
  wire [31:0] n938_o;
  wire [31:0] n940_o;
  wire [2:0] n941_o;
  wire [2:0] n944_o;
  wire [30:0] n945_o;
  wire [31:0] n946_o;
  wire [31:0] n948_o;
  wire n950_o;
  wire n951_o;
  wire n953_o;
  wire n954_o;
  wire n955_o;
  wire n956_o;
  wire [2:0] n957_o;
  wire [30:0] n958_o;
  wire [31:0] n959_o;
  wire [31:0] n961_o;
  wire [2:0] n962_o;
  wire [2:0] n965_o;
  wire [30:0] n966_o;
  wire [31:0] n967_o;
  wire [31:0] n969_o;
  wire n971_o;
  wire n972_o;
  wire n974_o;
  wire n975_o;
  wire n976_o;
  wire n977_o;
  wire [2:0] n978_o;
  wire [30:0] n979_o;
  wire [31:0] n980_o;
  wire [31:0] n982_o;
  wire [2:0] n983_o;
  wire [2:0] n986_o;
  wire [30:0] n987_o;
  wire [31:0] n988_o;
  wire [31:0] n990_o;
  wire n992_o;
  wire n993_o;
  wire n996_o;
  wire n997_o;
  wire n998_o;
  wire n999_o;
  wire [2:0] n1000_o;
  wire [30:0] n1001_o;
  wire [31:0] n1002_o;
  wire [31:0] n1004_o;
  wire [2:0] n1005_o;
  wire [2:0] n1008_o;
  wire [30:0] n1009_o;
  wire [31:0] n1010_o;
  wire [31:0] n1012_o;
  wire n1014_o;
  wire n1015_o;
  wire n1017_o;
  wire n1018_o;
  wire n1019_o;
  wire n1020_o;
  wire [2:0] n1021_o;
  wire [30:0] n1022_o;
  wire [31:0] n1023_o;
  wire [31:0] n1025_o;
  wire [2:0] n1026_o;
  wire [2:0] n1029_o;
  wire [30:0] n1030_o;
  wire [31:0] n1031_o;
  wire [31:0] n1033_o;
  wire n1035_o;
  wire n1036_o;
  wire n1038_o;
  wire n1039_o;
  wire n1040_o;
  wire n1041_o;
  wire [2:0] n1042_o;
  wire [30:0] n1043_o;
  wire [31:0] n1044_o;
  wire [31:0] n1046_o;
  wire [2:0] n1047_o;
  wire [2:0] n1050_o;
  wire [30:0] n1051_o;
  wire [31:0] n1052_o;
  wire [31:0] n1054_o;
  wire n1056_o;
  wire n1057_o;
  wire n1059_o;
  wire n1060_o;
  wire n1061_o;
  wire n1062_o;
  wire [2:0] n1063_o;
  wire [30:0] n1064_o;
  wire [31:0] n1065_o;
  wire [31:0] n1067_o;
  wire [2:0] n1068_o;
  wire [2:0] n1071_o;
  wire [30:0] n1072_o;
  wire [31:0] n1073_o;
  wire [31:0] n1075_o;
  wire n1077_o;
  wire n1078_o;
  wire n1080_o;
  wire n1081_o;
  wire n1082_o;
  wire n1083_o;
  wire [2:0] n1084_o;
  wire [30:0] n1085_o;
  wire [31:0] n1086_o;
  wire [31:0] n1088_o;
  wire [2:0] n1089_o;
  wire [2:0] n1092_o;
  wire [30:0] n1093_o;
  wire [31:0] n1094_o;
  wire [31:0] n1096_o;
  wire n1098_o;
  wire n1099_o;
  wire n1101_o;
  wire n1102_o;
  wire n1103_o;
  wire n1104_o;
  wire [2:0] n1105_o;
  wire [30:0] n1106_o;
  wire [31:0] n1107_o;
  wire [31:0] n1109_o;
  wire [2:0] n1110_o;
  wire [2:0] n1113_o;
  wire [30:0] n1114_o;
  wire [31:0] n1115_o;
  wire [31:0] n1117_o;
  wire n1119_o;
  wire n1120_o;
  wire n1122_o;
  wire n1123_o;
  wire n1124_o;
  wire n1125_o;
  wire [2:0] n1126_o;
  wire [30:0] n1127_o;
  wire [31:0] n1128_o;
  wire [31:0] n1130_o;
  wire [2:0] n1131_o;
  wire [2:0] n1134_o;
  wire [30:0] n1135_o;
  wire [31:0] n1136_o;
  wire [31:0] n1138_o;
  wire n1140_o;
  wire n1141_o;
  wire n1143_o;
  wire n1144_o;
  wire n1145_o;
  wire n1146_o;
  wire [2:0] n1147_o;
  wire [30:0] n1148_o;
  wire [31:0] n1149_o;
  wire [31:0] n1151_o;
  wire [2:0] n1152_o;
  wire [2:0] n1155_o;
  wire [30:0] n1156_o;
  wire [31:0] n1157_o;
  wire [31:0] n1159_o;
  wire n1161_o;
  wire n1162_o;
  wire n1164_o;
  wire n1165_o;
  wire n1166_o;
  wire n1167_o;
  wire n1168_o;
  wire n1169_o;
  wire n1170_o;
  wire n1171_o;
  wire [7:0] n1172_o;
  wire [7:0] n1173_o;
  wire [7:0] n1174_o;
  wire [7:0] n1175_o;
  wire [31:0] n1176_o;
  wire [8:0] n1177_o;
  wire n1178_o;
  wire n1179_o;
  wire n1180_o;
  wire n1181_o;
  wire n1182_o;
  wire n1183_o;
  wire n1184_o;
  wire n1185_o;
  wire [1:0] n1186_o;
  reg n1187_o;
  wire [1:0] n1188_o;
  reg n1189_o;
  wire n1190_o;
  wire n1191_o;
  wire n1192_o;
  wire n1193_o;
  wire n1194_o;
  wire n1195_o;
  wire n1196_o;
  wire n1197_o;
  wire n1198_o;
  wire n1199_o;
  wire [1:0] n1200_o;
  reg n1201_o;
  wire [1:0] n1202_o;
  reg n1203_o;
  wire n1204_o;
  wire n1205_o;
  wire n1206_o;
  wire n1207_o;
  wire n1208_o;
  wire n1209_o;
  wire n1210_o;
  wire n1211_o;
  wire n1212_o;
  wire n1213_o;
  wire [1:0] n1214_o;
  reg n1215_o;
  wire [1:0] n1216_o;
  reg n1217_o;
  wire n1218_o;
  wire n1219_o;
  wire n1220_o;
  wire n1221_o;
  wire n1222_o;
  wire n1223_o;
  wire n1224_o;
  wire n1225_o;
  wire n1226_o;
  wire n1227_o;
  wire [1:0] n1228_o;
  reg n1229_o;
  wire [1:0] n1230_o;
  reg n1231_o;
  wire n1232_o;
  wire n1233_o;
  wire n1234_o;
  wire n1235_o;
  wire n1236_o;
  wire n1237_o;
  wire n1238_o;
  wire n1239_o;
  wire n1240_o;
  wire n1241_o;
  wire [1:0] n1242_o;
  reg n1243_o;
  wire [1:0] n1244_o;
  reg n1245_o;
  wire n1246_o;
  wire n1247_o;
  wire n1248_o;
  wire n1249_o;
  wire n1250_o;
  wire n1251_o;
  wire n1252_o;
  wire n1253_o;
  wire n1254_o;
  wire n1255_o;
  wire [1:0] n1256_o;
  reg n1257_o;
  wire [1:0] n1258_o;
  reg n1259_o;
  wire n1260_o;
  wire n1261_o;
  wire n1262_o;
  wire n1263_o;
  wire n1264_o;
  wire n1265_o;
  wire n1266_o;
  wire n1267_o;
  wire n1268_o;
  wire n1269_o;
  wire [1:0] n1270_o;
  reg n1271_o;
  wire [1:0] n1272_o;
  reg n1273_o;
  wire n1274_o;
  wire n1275_o;
  wire n1276_o;
  wire n1277_o;
  wire n1278_o;
  wire n1279_o;
  wire n1280_o;
  wire n1281_o;
  wire n1282_o;
  wire n1283_o;
  wire [1:0] n1284_o;
  reg n1285_o;
  wire [1:0] n1286_o;
  reg n1287_o;
  wire n1288_o;
  wire n1289_o;
  wire n1290_o;
  wire n1291_o;
  wire n1292_o;
  wire n1293_o;
  wire n1294_o;
  wire n1295_o;
  wire n1296_o;
  wire n1297_o;
  wire [1:0] n1298_o;
  reg n1299_o;
  wire [1:0] n1300_o;
  reg n1301_o;
  wire n1302_o;
  wire n1303_o;
  wire n1304_o;
  wire n1305_o;
  wire n1306_o;
  wire n1307_o;
  wire n1308_o;
  wire n1309_o;
  wire n1310_o;
  wire n1311_o;
  wire [1:0] n1312_o;
  reg n1313_o;
  wire [1:0] n1314_o;
  reg n1315_o;
  wire n1316_o;
  wire n1317_o;
  wire n1318_o;
  wire n1319_o;
  wire n1320_o;
  wire n1321_o;
  wire n1322_o;
  wire n1323_o;
  wire n1324_o;
  wire n1325_o;
  wire [1:0] n1326_o;
  reg n1327_o;
  wire [1:0] n1328_o;
  reg n1329_o;
  wire n1330_o;
  wire n1331_o;
  wire n1332_o;
  wire n1333_o;
  wire n1334_o;
  wire n1335_o;
  wire n1336_o;
  wire n1337_o;
  wire n1338_o;
  wire n1339_o;
  wire [1:0] n1340_o;
  reg n1341_o;
  wire [1:0] n1342_o;
  reg n1343_o;
  wire n1344_o;
  wire n1345_o;
  wire n1346_o;
  wire n1347_o;
  wire n1348_o;
  wire n1349_o;
  wire n1350_o;
  wire n1351_o;
  wire n1352_o;
  wire n1353_o;
  wire [1:0] n1354_o;
  reg n1355_o;
  wire [1:0] n1356_o;
  reg n1357_o;
  wire n1358_o;
  wire n1359_o;
  wire n1360_o;
  wire n1361_o;
  wire n1362_o;
  wire n1363_o;
  wire n1364_o;
  wire n1365_o;
  wire n1366_o;
  wire n1367_o;
  wire [1:0] n1368_o;
  reg n1369_o;
  wire [1:0] n1370_o;
  reg n1371_o;
  wire n1372_o;
  wire n1373_o;
  wire n1374_o;
  wire n1375_o;
  wire n1376_o;
  wire n1377_o;
  wire n1378_o;
  wire n1379_o;
  wire n1380_o;
  wire n1381_o;
  wire [1:0] n1382_o;
  reg n1383_o;
  wire [1:0] n1384_o;
  reg n1385_o;
  wire n1386_o;
  wire n1387_o;
  wire n1388_o;
  wire n1389_o;
  wire n1390_o;
  wire n1391_o;
  wire n1392_o;
  wire n1393_o;
  wire n1394_o;
  wire n1395_o;
  wire [1:0] n1396_o;
  reg n1397_o;
  wire [1:0] n1398_o;
  reg n1399_o;
  wire n1400_o;
  wire n1401_o;
  wire n1402_o;
  wire n1403_o;
  wire n1404_o;
  wire n1405_o;
  wire n1406_o;
  wire n1407_o;
  wire n1408_o;
  wire n1409_o;
  wire [1:0] n1410_o;
  reg n1411_o;
  wire [1:0] n1412_o;
  reg n1413_o;
  wire n1414_o;
  wire n1415_o;
  wire n1416_o;
  wire n1417_o;
  wire n1418_o;
  wire n1419_o;
  wire n1420_o;
  wire n1421_o;
  wire n1422_o;
  wire n1423_o;
  wire [1:0] n1424_o;
  reg n1425_o;
  wire [1:0] n1426_o;
  reg n1427_o;
  wire n1428_o;
  wire n1429_o;
  wire n1430_o;
  wire n1431_o;
  wire n1432_o;
  wire n1433_o;
  wire n1434_o;
  wire n1435_o;
  wire n1436_o;
  wire n1437_o;
  wire [1:0] n1438_o;
  reg n1439_o;
  wire [1:0] n1440_o;
  reg n1441_o;
  wire n1442_o;
  wire n1443_o;
  wire n1444_o;
  wire n1445_o;
  wire n1446_o;
  wire n1447_o;
  wire n1448_o;
  wire n1449_o;
  wire n1450_o;
  wire n1451_o;
  wire [1:0] n1452_o;
  reg n1453_o;
  wire [1:0] n1454_o;
  reg n1455_o;
  wire n1456_o;
  wire n1457_o;
  wire n1458_o;
  wire n1459_o;
  wire n1460_o;
  wire n1461_o;
  wire n1462_o;
  wire n1463_o;
  wire n1464_o;
  wire n1465_o;
  wire [1:0] n1466_o;
  reg n1467_o;
  wire [1:0] n1468_o;
  reg n1469_o;
  wire n1470_o;
  wire n1471_o;
  wire n1472_o;
  wire n1473_o;
  wire n1474_o;
  wire n1475_o;
  wire n1476_o;
  wire n1477_o;
  wire n1478_o;
  wire n1479_o;
  wire [1:0] n1480_o;
  reg n1481_o;
  wire [1:0] n1482_o;
  reg n1483_o;
  wire n1484_o;
  wire n1485_o;
  wire n1486_o;
  wire n1487_o;
  wire n1488_o;
  wire n1489_o;
  wire n1490_o;
  wire n1491_o;
  wire n1492_o;
  wire n1493_o;
  wire [1:0] n1494_o;
  reg n1495_o;
  wire [1:0] n1496_o;
  reg n1497_o;
  wire n1498_o;
  wire n1499_o;
  wire n1500_o;
  wire n1501_o;
  wire n1502_o;
  wire n1503_o;
  wire n1504_o;
  wire n1505_o;
  wire n1506_o;
  wire n1507_o;
  wire [1:0] n1508_o;
  reg n1509_o;
  wire [1:0] n1510_o;
  reg n1511_o;
  wire n1512_o;
  wire n1513_o;
  assign output_vector_o = n1172_o;
  /* src/overture/barrel_shifter.vhdl:44:12  */
  assign input_vector_reversed = n1174_o; // (signal)
  /* src/overture/barrel_shifter.vhdl:46:12  */
  assign output_vector_reversed = n1175_o; // (signal)
  /* src/overture/barrel_shifter.vhdl:49:12  */
  assign shift_direction_left = n646_o; // (signal)
  /* src/overture/barrel_shifter.vhdl:51:12  */
  assign shift_amount_abs = n647_o; // (signal)
  /* src/overture/barrel_shifter.vhdl:55:12  */
  assign intermediate_vector = n1176_o; // (signal)
  /* src/overture/barrel_shifter.vhdl:59:12  */
  always @*
    bitshift_vector = n1177_o; // (isignal)
  initial
    bitshift_vector = 9'b000000000;
  /* src/overture/barrel_shifter.vhdl:64:47  */
  assign n645_o = shift_amount_i[3];
  /* src/overture/barrel_shifter.vhdl:64:29  */
  assign n646_o = ~n645_o;
  /* src/overture/barrel_shifter.vhdl:65:34  */
  assign n647_o = $signed(shift_amount_i) >= 0 ? shift_amount_i : -shift_amount_i;
  /* src/overture/barrel_shifter.vhdl:69:63  */
  assign n648_o = input_vector_i[0];
  /* src/overture/barrel_shifter.vhdl:69:63  */
  assign n649_o = input_vector_i[1];
  /* src/overture/barrel_shifter.vhdl:69:63  */
  assign n650_o = input_vector_i[2];
  /* src/overture/barrel_shifter.vhdl:69:63  */
  assign n651_o = input_vector_i[3];
  /* src/overture/barrel_shifter.vhdl:69:63  */
  assign n652_o = input_vector_i[4];
  /* src/overture/barrel_shifter.vhdl:69:63  */
  assign n653_o = input_vector_i[5];
  /* src/overture/barrel_shifter.vhdl:69:63  */
  assign n654_o = input_vector_i[6];
  /* src/overture/barrel_shifter.vhdl:69:63  */
  assign n655_o = input_vector_i[7];
  /* src/overture/barrel_shifter.vhdl:73:53  */
  assign n656_o = shift_direction_left ? input_vector_reversed : input_vector_i;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n658_o = intermediate_vector[8];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n659_o = shift_amount_abs[2];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n660_o = ~n659_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n661_o = n660_o ? n658_o : n677_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n662_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n663_o = {28'b0, n662_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n664_o = {1'b0, n663_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n666_o = 32'b00000000000000000000000000000000 + n664_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n667_o = n666_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n670_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n671_o = {28'b0, n670_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n672_o = {1'b0, n671_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n674_o = 32'b00000000000000000000000000001000 - n672_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n676_o = $signed(32'b00000000000000000000000000000000) < $signed(n674_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n677_o = n676_o ? n1191_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n679_o = intermediate_vector[9];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n680_o = shift_amount_abs[2];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n681_o = ~n680_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n682_o = n681_o ? n679_o : n698_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n683_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n684_o = {28'b0, n683_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n685_o = {1'b0, n684_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n687_o = 32'b00000000000000000000000000000001 + n685_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n688_o = n687_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n691_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n692_o = {28'b0, n691_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n693_o = {1'b0, n692_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n695_o = 32'b00000000000000000000000000001000 - n693_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n697_o = $signed(32'b00000000000000000000000000000001) < $signed(n695_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n698_o = n697_o ? n1205_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n700_o = intermediate_vector[10];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n701_o = shift_amount_abs[2];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n702_o = ~n701_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n703_o = n702_o ? n700_o : n719_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n704_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n705_o = {28'b0, n704_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n706_o = {1'b0, n705_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n708_o = 32'b00000000000000000000000000000010 + n706_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n709_o = n708_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n712_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n713_o = {28'b0, n712_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n714_o = {1'b0, n713_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n716_o = 32'b00000000000000000000000000001000 - n714_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n718_o = $signed(32'b00000000000000000000000000000010) < $signed(n716_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n719_o = n718_o ? n1219_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n721_o = intermediate_vector[11];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n722_o = shift_amount_abs[2];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n723_o = ~n722_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n724_o = n723_o ? n721_o : n740_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n725_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n726_o = {28'b0, n725_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n727_o = {1'b0, n726_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n729_o = 32'b00000000000000000000000000000011 + n727_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n730_o = n729_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n733_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n734_o = {28'b0, n733_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n735_o = {1'b0, n734_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n737_o = 32'b00000000000000000000000000001000 - n735_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n739_o = $signed(32'b00000000000000000000000000000011) < $signed(n737_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n740_o = n739_o ? n1233_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n742_o = intermediate_vector[12];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n743_o = shift_amount_abs[2];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n744_o = ~n743_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n745_o = n744_o ? n742_o : n761_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n746_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n747_o = {28'b0, n746_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n748_o = {1'b0, n747_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n750_o = 32'b00000000000000000000000000000100 + n748_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n751_o = n750_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n754_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n755_o = {28'b0, n754_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n756_o = {1'b0, n755_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n758_o = 32'b00000000000000000000000000001000 - n756_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n760_o = $signed(32'b00000000000000000000000000000100) < $signed(n758_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n761_o = n760_o ? n1247_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n763_o = intermediate_vector[13];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n764_o = shift_amount_abs[2];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n765_o = ~n764_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n766_o = n765_o ? n763_o : n782_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n767_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n768_o = {28'b0, n767_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n769_o = {1'b0, n768_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n771_o = 32'b00000000000000000000000000000101 + n769_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n772_o = n771_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n775_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n776_o = {28'b0, n775_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n777_o = {1'b0, n776_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n779_o = 32'b00000000000000000000000000001000 - n777_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n781_o = $signed(32'b00000000000000000000000000000101) < $signed(n779_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n782_o = n781_o ? n1261_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n784_o = intermediate_vector[14];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n785_o = shift_amount_abs[2];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n786_o = ~n785_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n787_o = n786_o ? n784_o : n803_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n788_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n789_o = {28'b0, n788_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n790_o = {1'b0, n789_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n792_o = 32'b00000000000000000000000000000110 + n790_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n793_o = n792_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n796_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n797_o = {28'b0, n796_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n798_o = {1'b0, n797_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n800_o = 32'b00000000000000000000000000001000 - n798_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n802_o = $signed(32'b00000000000000000000000000000110) < $signed(n800_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n803_o = n802_o ? n1275_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n805_o = intermediate_vector[15];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n806_o = shift_amount_abs[2];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n807_o = ~n806_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n808_o = n807_o ? n805_o : n824_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n809_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n810_o = {28'b0, n809_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n811_o = {1'b0, n810_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n813_o = 32'b00000000000000000000000000000111 + n811_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n814_o = n813_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n817_o = bitshift_vector[2:0];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n818_o = {28'b0, n817_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n819_o = {1'b0, n818_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n821_o = 32'b00000000000000000000000000001000 - n819_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n823_o = $signed(32'b00000000000000000000000000000111) < $signed(n821_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n824_o = n823_o ? n1289_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n827_o = intermediate_vector[16];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n828_o = shift_amount_abs[1];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n829_o = ~n828_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n830_o = n829_o ? n827_o : n846_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n831_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n832_o = {28'b0, n831_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n833_o = {1'b0, n832_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n835_o = 32'b00000000000000000000000000000000 + n833_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n836_o = n835_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n839_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n840_o = {28'b0, n839_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n841_o = {1'b0, n840_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n843_o = 32'b00000000000000000000000000001000 - n841_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n845_o = $signed(32'b00000000000000000000000000000000) < $signed(n843_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n846_o = n845_o ? n1303_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n848_o = intermediate_vector[17];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n849_o = shift_amount_abs[1];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n850_o = ~n849_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n851_o = n850_o ? n848_o : n867_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n852_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n853_o = {28'b0, n852_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n854_o = {1'b0, n853_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n856_o = 32'b00000000000000000000000000000001 + n854_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n857_o = n856_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n860_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n861_o = {28'b0, n860_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n862_o = {1'b0, n861_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n864_o = 32'b00000000000000000000000000001000 - n862_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n866_o = $signed(32'b00000000000000000000000000000001) < $signed(n864_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n867_o = n866_o ? n1317_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n869_o = intermediate_vector[18];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n870_o = shift_amount_abs[1];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n871_o = ~n870_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n872_o = n871_o ? n869_o : n888_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n873_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n874_o = {28'b0, n873_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n875_o = {1'b0, n874_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n877_o = 32'b00000000000000000000000000000010 + n875_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n878_o = n877_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n881_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n882_o = {28'b0, n881_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n883_o = {1'b0, n882_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n885_o = 32'b00000000000000000000000000001000 - n883_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n887_o = $signed(32'b00000000000000000000000000000010) < $signed(n885_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n888_o = n887_o ? n1331_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n890_o = intermediate_vector[19];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n891_o = shift_amount_abs[1];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n892_o = ~n891_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n893_o = n892_o ? n890_o : n909_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n894_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n895_o = {28'b0, n894_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n896_o = {1'b0, n895_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n898_o = 32'b00000000000000000000000000000011 + n896_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n899_o = n898_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n902_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n903_o = {28'b0, n902_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n904_o = {1'b0, n903_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n906_o = 32'b00000000000000000000000000001000 - n904_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n908_o = $signed(32'b00000000000000000000000000000011) < $signed(n906_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n909_o = n908_o ? n1345_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n911_o = intermediate_vector[20];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n912_o = shift_amount_abs[1];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n913_o = ~n912_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n914_o = n913_o ? n911_o : n930_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n915_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n916_o = {28'b0, n915_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n917_o = {1'b0, n916_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n919_o = 32'b00000000000000000000000000000100 + n917_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n920_o = n919_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n923_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n924_o = {28'b0, n923_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n925_o = {1'b0, n924_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n927_o = 32'b00000000000000000000000000001000 - n925_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n929_o = $signed(32'b00000000000000000000000000000100) < $signed(n927_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n930_o = n929_o ? n1359_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n932_o = intermediate_vector[21];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n933_o = shift_amount_abs[1];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n934_o = ~n933_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n935_o = n934_o ? n932_o : n951_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n936_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n937_o = {28'b0, n936_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n938_o = {1'b0, n937_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n940_o = 32'b00000000000000000000000000000101 + n938_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n941_o = n940_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n944_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n945_o = {28'b0, n944_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n946_o = {1'b0, n945_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n948_o = 32'b00000000000000000000000000001000 - n946_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n950_o = $signed(32'b00000000000000000000000000000101) < $signed(n948_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n951_o = n950_o ? n1373_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n953_o = intermediate_vector[22];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n954_o = shift_amount_abs[1];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n955_o = ~n954_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n956_o = n955_o ? n953_o : n972_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n957_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n958_o = {28'b0, n957_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n959_o = {1'b0, n958_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n961_o = 32'b00000000000000000000000000000110 + n959_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n962_o = n961_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n965_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n966_o = {28'b0, n965_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n967_o = {1'b0, n966_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n969_o = 32'b00000000000000000000000000001000 - n967_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n971_o = $signed(32'b00000000000000000000000000000110) < $signed(n969_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n972_o = n971_o ? n1387_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n974_o = intermediate_vector[23];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n975_o = shift_amount_abs[1];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n976_o = ~n975_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n977_o = n976_o ? n974_o : n993_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n978_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n979_o = {28'b0, n978_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n980_o = {1'b0, n979_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n982_o = 32'b00000000000000000000000000000111 + n980_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n983_o = n982_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n986_o = bitshift_vector[5:3];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n987_o = {28'b0, n986_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n988_o = {1'b0, n987_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n990_o = 32'b00000000000000000000000000001000 - n988_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n992_o = $signed(32'b00000000000000000000000000000111) < $signed(n990_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n993_o = n992_o ? n1401_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n996_o = intermediate_vector[24];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n997_o = shift_amount_abs[0];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n998_o = ~n997_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n999_o = n998_o ? n996_o : n1015_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n1000_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n1001_o = {28'b0, n1000_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1002_o = {1'b0, n1001_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1004_o = 32'b00000000000000000000000000000000 + n1002_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1005_o = n1004_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n1008_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n1009_o = {28'b0, n1008_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1010_o = {1'b0, n1009_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1012_o = 32'b00000000000000000000000000001000 - n1010_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n1014_o = $signed(32'b00000000000000000000000000000000) < $signed(n1012_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n1015_o = n1014_o ? n1415_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n1017_o = intermediate_vector[25];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n1018_o = shift_amount_abs[0];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n1019_o = ~n1018_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n1020_o = n1019_o ? n1017_o : n1036_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n1021_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n1022_o = {28'b0, n1021_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1023_o = {1'b0, n1022_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1025_o = 32'b00000000000000000000000000000001 + n1023_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1026_o = n1025_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n1029_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n1030_o = {28'b0, n1029_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1031_o = {1'b0, n1030_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1033_o = 32'b00000000000000000000000000001000 - n1031_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n1035_o = $signed(32'b00000000000000000000000000000001) < $signed(n1033_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n1036_o = n1035_o ? n1429_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n1038_o = intermediate_vector[26];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n1039_o = shift_amount_abs[0];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n1040_o = ~n1039_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n1041_o = n1040_o ? n1038_o : n1057_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n1042_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n1043_o = {28'b0, n1042_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1044_o = {1'b0, n1043_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1046_o = 32'b00000000000000000000000000000010 + n1044_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1047_o = n1046_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n1050_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n1051_o = {28'b0, n1050_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1052_o = {1'b0, n1051_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1054_o = 32'b00000000000000000000000000001000 - n1052_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n1056_o = $signed(32'b00000000000000000000000000000010) < $signed(n1054_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n1057_o = n1056_o ? n1443_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n1059_o = intermediate_vector[27];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n1060_o = shift_amount_abs[0];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n1061_o = ~n1060_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n1062_o = n1061_o ? n1059_o : n1078_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n1063_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n1064_o = {28'b0, n1063_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1065_o = {1'b0, n1064_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1067_o = 32'b00000000000000000000000000000011 + n1065_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1068_o = n1067_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n1071_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n1072_o = {28'b0, n1071_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1073_o = {1'b0, n1072_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1075_o = 32'b00000000000000000000000000001000 - n1073_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n1077_o = $signed(32'b00000000000000000000000000000011) < $signed(n1075_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n1078_o = n1077_o ? n1457_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n1080_o = intermediate_vector[28];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n1081_o = shift_amount_abs[0];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n1082_o = ~n1081_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n1083_o = n1082_o ? n1080_o : n1099_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n1084_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n1085_o = {28'b0, n1084_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1086_o = {1'b0, n1085_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1088_o = 32'b00000000000000000000000000000100 + n1086_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1089_o = n1088_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n1092_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n1093_o = {28'b0, n1092_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1094_o = {1'b0, n1093_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1096_o = 32'b00000000000000000000000000001000 - n1094_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n1098_o = $signed(32'b00000000000000000000000000000100) < $signed(n1096_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n1099_o = n1098_o ? n1471_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n1101_o = intermediate_vector[29];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n1102_o = shift_amount_abs[0];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n1103_o = ~n1102_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n1104_o = n1103_o ? n1101_o : n1120_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n1105_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n1106_o = {28'b0, n1105_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1107_o = {1'b0, n1106_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1109_o = 32'b00000000000000000000000000000101 + n1107_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1110_o = n1109_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n1113_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n1114_o = {28'b0, n1113_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1115_o = {1'b0, n1114_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1117_o = 32'b00000000000000000000000000001000 - n1115_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n1119_o = $signed(32'b00000000000000000000000000000101) < $signed(n1117_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n1120_o = n1119_o ? n1485_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n1122_o = intermediate_vector[30];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n1123_o = shift_amount_abs[0];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n1124_o = ~n1123_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n1125_o = n1124_o ? n1122_o : n1141_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n1126_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n1127_o = {28'b0, n1126_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1128_o = {1'b0, n1127_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1130_o = 32'b00000000000000000000000000000110 + n1128_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1131_o = n1130_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n1134_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n1135_o = {28'b0, n1134_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1136_o = {1'b0, n1135_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1138_o = 32'b00000000000000000000000000001000 - n1136_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n1140_o = $signed(32'b00000000000000000000000000000110) < $signed(n1138_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n1141_o = n1140_o ? n1499_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:83:66  */
  assign n1143_o = intermediate_vector[31];
  /* src/overture/barrel_shifter.vhdl:83:124  */
  assign n1144_o = shift_amount_abs[0];
  /* src/overture/barrel_shifter.vhdl:83:128  */
  assign n1145_o = ~n1144_o;
  /* src/overture/barrel_shifter.vhdl:83:103  */
  assign n1146_o = n1145_o ? n1143_o : n1162_o;
  /* src/overture/barrel_shifter.vhdl:84:97  */
  assign n1147_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:71  */
  assign n1148_o = {28'b0, n1147_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1149_o = {1'b0, n1148_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1151_o = 32'b00000000000000000000000000000111 + n1149_o;
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1152_o = n1151_o[2:0];  // trunc
  /* src/overture/barrel_shifter.vhdl:84:147  */
  assign n1155_o = bitshift_vector[8:6];
  /* src/overture/barrel_shifter.vhdl:84:121  */
  assign n1156_o = {28'b0, n1155_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1157_o = {1'b0, n1156_o};  //  uext
  /* src/overture/barrel_shifter.vhdl:84:119  */
  assign n1159_o = 32'b00000000000000000000000000001000 - n1157_o;
  /* src/overture/barrel_shifter.vhdl:84:110  */
  assign n1161_o = $signed(32'b00000000000000000000000000000111) < $signed(n1159_o);
  /* src/overture/barrel_shifter.vhdl:83:134  */
  assign n1162_o = n1161_o ? n1513_o : 1'b0;
  /* src/overture/barrel_shifter.vhdl:91:80  */
  assign n1164_o = intermediate_vector[0];
  /* src/overture/barrel_shifter.vhdl:91:80  */
  assign n1165_o = intermediate_vector[1];
  /* src/overture/barrel_shifter.vhdl:91:80  */
  assign n1166_o = intermediate_vector[2];
  /* src/overture/barrel_shifter.vhdl:91:80  */
  assign n1167_o = intermediate_vector[3];
  /* src/overture/barrel_shifter.vhdl:91:80  */
  assign n1168_o = intermediate_vector[4];
  /* src/overture/barrel_shifter.vhdl:91:80  */
  assign n1169_o = intermediate_vector[5];
  /* src/overture/barrel_shifter.vhdl:91:80  */
  assign n1170_o = intermediate_vector[6];
  /* src/overture/barrel_shifter.vhdl:91:80  */
  assign n1171_o = intermediate_vector[7];
  /* src/overture/barrel_shifter.vhdl:95:47  */
  assign n1172_o = shift_direction_left ? output_vector_reversed : n1173_o;
  /* src/overture/barrel_shifter.vhdl:96:41  */
  assign n1173_o = intermediate_vector[7:0];
  assign n1174_o = {n648_o, n649_o, n650_o, n651_o, n652_o, n653_o, n654_o, n655_o};
  assign n1175_o = {n1164_o, n1165_o, n1166_o, n1167_o, n1168_o, n1169_o, n1170_o, n1171_o};
  assign n1176_o = {n656_o, n1146_o, n1125_o, n1104_o, n1083_o, n1062_o, n1041_o, n1020_o, n999_o, n977_o, n956_o, n935_o, n914_o, n893_o, n872_o, n851_o, n830_o, n808_o, n787_o, n766_o, n745_o, n724_o, n703_o, n682_o, n661_o};
  assign n1177_o = {3'b001, 3'b010, 3'b100};
  /* src/overture/barrel_shifter.vhdl:34:9  */
  assign n1178_o = intermediate_vector[8];
  assign n1179_o = intermediate_vector[9];
  assign n1180_o = intermediate_vector[10];
  assign n1181_o = intermediate_vector[11];
  assign n1182_o = intermediate_vector[12];
  assign n1183_o = intermediate_vector[13];
  assign n1184_o = intermediate_vector[14];
  assign n1185_o = intermediate_vector[15];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1186_o = n667_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1186_o)
      2'b00: n1187_o = n1178_o;
      2'b01: n1187_o = n1179_o;
      2'b10: n1187_o = n1180_o;
      2'b11: n1187_o = n1181_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1188_o = n667_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1188_o)
      2'b00: n1189_o = n1182_o;
      2'b01: n1189_o = n1183_o;
      2'b10: n1189_o = n1184_o;
      2'b11: n1189_o = n1185_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1190_o = n667_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1191_o = n1190_o ? n1189_o : n1187_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1192_o = intermediate_vector[8];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1193_o = intermediate_vector[9];
  assign n1194_o = intermediate_vector[10];
  assign n1195_o = intermediate_vector[11];
  assign n1196_o = intermediate_vector[12];
  assign n1197_o = intermediate_vector[13];
  assign n1198_o = intermediate_vector[14];
  assign n1199_o = intermediate_vector[15];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1200_o = n688_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1200_o)
      2'b00: n1201_o = n1192_o;
      2'b01: n1201_o = n1193_o;
      2'b10: n1201_o = n1194_o;
      2'b11: n1201_o = n1195_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1202_o = n688_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1202_o)
      2'b00: n1203_o = n1196_o;
      2'b01: n1203_o = n1197_o;
      2'b10: n1203_o = n1198_o;
      2'b11: n1203_o = n1199_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1204_o = n688_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1205_o = n1204_o ? n1203_o : n1201_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1206_o = intermediate_vector[8];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1207_o = intermediate_vector[9];
  assign n1208_o = intermediate_vector[10];
  assign n1209_o = intermediate_vector[11];
  assign n1210_o = intermediate_vector[12];
  assign n1211_o = intermediate_vector[13];
  assign n1212_o = intermediate_vector[14];
  assign n1213_o = intermediate_vector[15];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1214_o = n709_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1214_o)
      2'b00: n1215_o = n1206_o;
      2'b01: n1215_o = n1207_o;
      2'b10: n1215_o = n1208_o;
      2'b11: n1215_o = n1209_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1216_o = n709_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1216_o)
      2'b00: n1217_o = n1210_o;
      2'b01: n1217_o = n1211_o;
      2'b10: n1217_o = n1212_o;
      2'b11: n1217_o = n1213_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1218_o = n709_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1219_o = n1218_o ? n1217_o : n1215_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1220_o = intermediate_vector[8];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1221_o = intermediate_vector[9];
  assign n1222_o = intermediate_vector[10];
  assign n1223_o = intermediate_vector[11];
  assign n1224_o = intermediate_vector[12];
  assign n1225_o = intermediate_vector[13];
  assign n1226_o = intermediate_vector[14];
  assign n1227_o = intermediate_vector[15];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1228_o = n730_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1228_o)
      2'b00: n1229_o = n1220_o;
      2'b01: n1229_o = n1221_o;
      2'b10: n1229_o = n1222_o;
      2'b11: n1229_o = n1223_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1230_o = n730_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1230_o)
      2'b00: n1231_o = n1224_o;
      2'b01: n1231_o = n1225_o;
      2'b10: n1231_o = n1226_o;
      2'b11: n1231_o = n1227_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1232_o = n730_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1233_o = n1232_o ? n1231_o : n1229_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1234_o = intermediate_vector[8];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1235_o = intermediate_vector[9];
  assign n1236_o = intermediate_vector[10];
  assign n1237_o = intermediate_vector[11];
  assign n1238_o = intermediate_vector[12];
  assign n1239_o = intermediate_vector[13];
  assign n1240_o = intermediate_vector[14];
  assign n1241_o = intermediate_vector[15];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1242_o = n751_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1242_o)
      2'b00: n1243_o = n1234_o;
      2'b01: n1243_o = n1235_o;
      2'b10: n1243_o = n1236_o;
      2'b11: n1243_o = n1237_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1244_o = n751_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1244_o)
      2'b00: n1245_o = n1238_o;
      2'b01: n1245_o = n1239_o;
      2'b10: n1245_o = n1240_o;
      2'b11: n1245_o = n1241_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1246_o = n751_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1247_o = n1246_o ? n1245_o : n1243_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1248_o = intermediate_vector[8];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1249_o = intermediate_vector[9];
  assign n1250_o = intermediate_vector[10];
  assign n1251_o = intermediate_vector[11];
  assign n1252_o = intermediate_vector[12];
  assign n1253_o = intermediate_vector[13];
  assign n1254_o = intermediate_vector[14];
  assign n1255_o = intermediate_vector[15];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1256_o = n772_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1256_o)
      2'b00: n1257_o = n1248_o;
      2'b01: n1257_o = n1249_o;
      2'b10: n1257_o = n1250_o;
      2'b11: n1257_o = n1251_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1258_o = n772_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1258_o)
      2'b00: n1259_o = n1252_o;
      2'b01: n1259_o = n1253_o;
      2'b10: n1259_o = n1254_o;
      2'b11: n1259_o = n1255_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1260_o = n772_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1261_o = n1260_o ? n1259_o : n1257_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1262_o = intermediate_vector[8];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1263_o = intermediate_vector[9];
  assign n1264_o = intermediate_vector[10];
  assign n1265_o = intermediate_vector[11];
  assign n1266_o = intermediate_vector[12];
  assign n1267_o = intermediate_vector[13];
  assign n1268_o = intermediate_vector[14];
  assign n1269_o = intermediate_vector[15];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1270_o = n793_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1270_o)
      2'b00: n1271_o = n1262_o;
      2'b01: n1271_o = n1263_o;
      2'b10: n1271_o = n1264_o;
      2'b11: n1271_o = n1265_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1272_o = n793_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1272_o)
      2'b00: n1273_o = n1266_o;
      2'b01: n1273_o = n1267_o;
      2'b10: n1273_o = n1268_o;
      2'b11: n1273_o = n1269_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1274_o = n793_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1275_o = n1274_o ? n1273_o : n1271_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1276_o = intermediate_vector[8];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1277_o = intermediate_vector[9];
  assign n1278_o = intermediate_vector[10];
  assign n1279_o = intermediate_vector[11];
  assign n1280_o = intermediate_vector[12];
  assign n1281_o = intermediate_vector[13];
  assign n1282_o = intermediate_vector[14];
  assign n1283_o = intermediate_vector[15];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1284_o = n814_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1284_o)
      2'b00: n1285_o = n1276_o;
      2'b01: n1285_o = n1277_o;
      2'b10: n1285_o = n1278_o;
      2'b11: n1285_o = n1279_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1286_o = n814_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1286_o)
      2'b00: n1287_o = n1280_o;
      2'b01: n1287_o = n1281_o;
      2'b10: n1287_o = n1282_o;
      2'b11: n1287_o = n1283_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1288_o = n814_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1289_o = n1288_o ? n1287_o : n1285_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1290_o = intermediate_vector[16];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1291_o = intermediate_vector[17];
  assign n1292_o = intermediate_vector[18];
  assign n1293_o = intermediate_vector[19];
  assign n1294_o = intermediate_vector[20];
  assign n1295_o = intermediate_vector[21];
  assign n1296_o = intermediate_vector[22];
  assign n1297_o = intermediate_vector[23];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1298_o = n836_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1298_o)
      2'b00: n1299_o = n1290_o;
      2'b01: n1299_o = n1291_o;
      2'b10: n1299_o = n1292_o;
      2'b11: n1299_o = n1293_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1300_o = n836_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1300_o)
      2'b00: n1301_o = n1294_o;
      2'b01: n1301_o = n1295_o;
      2'b10: n1301_o = n1296_o;
      2'b11: n1301_o = n1297_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1302_o = n836_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1303_o = n1302_o ? n1301_o : n1299_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1304_o = intermediate_vector[16];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1305_o = intermediate_vector[17];
  assign n1306_o = intermediate_vector[18];
  assign n1307_o = intermediate_vector[19];
  assign n1308_o = intermediate_vector[20];
  assign n1309_o = intermediate_vector[21];
  assign n1310_o = intermediate_vector[22];
  assign n1311_o = intermediate_vector[23];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1312_o = n857_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1312_o)
      2'b00: n1313_o = n1304_o;
      2'b01: n1313_o = n1305_o;
      2'b10: n1313_o = n1306_o;
      2'b11: n1313_o = n1307_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1314_o = n857_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1314_o)
      2'b00: n1315_o = n1308_o;
      2'b01: n1315_o = n1309_o;
      2'b10: n1315_o = n1310_o;
      2'b11: n1315_o = n1311_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1316_o = n857_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1317_o = n1316_o ? n1315_o : n1313_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1318_o = intermediate_vector[16];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1319_o = intermediate_vector[17];
  assign n1320_o = intermediate_vector[18];
  assign n1321_o = intermediate_vector[19];
  assign n1322_o = intermediate_vector[20];
  assign n1323_o = intermediate_vector[21];
  assign n1324_o = intermediate_vector[22];
  assign n1325_o = intermediate_vector[23];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1326_o = n878_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1326_o)
      2'b00: n1327_o = n1318_o;
      2'b01: n1327_o = n1319_o;
      2'b10: n1327_o = n1320_o;
      2'b11: n1327_o = n1321_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1328_o = n878_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1328_o)
      2'b00: n1329_o = n1322_o;
      2'b01: n1329_o = n1323_o;
      2'b10: n1329_o = n1324_o;
      2'b11: n1329_o = n1325_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1330_o = n878_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1331_o = n1330_o ? n1329_o : n1327_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1332_o = intermediate_vector[16];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1333_o = intermediate_vector[17];
  assign n1334_o = intermediate_vector[18];
  assign n1335_o = intermediate_vector[19];
  assign n1336_o = intermediate_vector[20];
  assign n1337_o = intermediate_vector[21];
  assign n1338_o = intermediate_vector[22];
  assign n1339_o = intermediate_vector[23];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1340_o = n899_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1340_o)
      2'b00: n1341_o = n1332_o;
      2'b01: n1341_o = n1333_o;
      2'b10: n1341_o = n1334_o;
      2'b11: n1341_o = n1335_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1342_o = n899_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1342_o)
      2'b00: n1343_o = n1336_o;
      2'b01: n1343_o = n1337_o;
      2'b10: n1343_o = n1338_o;
      2'b11: n1343_o = n1339_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1344_o = n899_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1345_o = n1344_o ? n1343_o : n1341_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1346_o = intermediate_vector[16];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1347_o = intermediate_vector[17];
  assign n1348_o = intermediate_vector[18];
  assign n1349_o = intermediate_vector[19];
  assign n1350_o = intermediate_vector[20];
  assign n1351_o = intermediate_vector[21];
  assign n1352_o = intermediate_vector[22];
  assign n1353_o = intermediate_vector[23];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1354_o = n920_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1354_o)
      2'b00: n1355_o = n1346_o;
      2'b01: n1355_o = n1347_o;
      2'b10: n1355_o = n1348_o;
      2'b11: n1355_o = n1349_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1356_o = n920_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1356_o)
      2'b00: n1357_o = n1350_o;
      2'b01: n1357_o = n1351_o;
      2'b10: n1357_o = n1352_o;
      2'b11: n1357_o = n1353_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1358_o = n920_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1359_o = n1358_o ? n1357_o : n1355_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1360_o = intermediate_vector[16];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1361_o = intermediate_vector[17];
  assign n1362_o = intermediate_vector[18];
  assign n1363_o = intermediate_vector[19];
  assign n1364_o = intermediate_vector[20];
  assign n1365_o = intermediate_vector[21];
  assign n1366_o = intermediate_vector[22];
  assign n1367_o = intermediate_vector[23];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1368_o = n941_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1368_o)
      2'b00: n1369_o = n1360_o;
      2'b01: n1369_o = n1361_o;
      2'b10: n1369_o = n1362_o;
      2'b11: n1369_o = n1363_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1370_o = n941_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1370_o)
      2'b00: n1371_o = n1364_o;
      2'b01: n1371_o = n1365_o;
      2'b10: n1371_o = n1366_o;
      2'b11: n1371_o = n1367_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1372_o = n941_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1373_o = n1372_o ? n1371_o : n1369_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1374_o = intermediate_vector[16];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1375_o = intermediate_vector[17];
  assign n1376_o = intermediate_vector[18];
  assign n1377_o = intermediate_vector[19];
  assign n1378_o = intermediate_vector[20];
  assign n1379_o = intermediate_vector[21];
  assign n1380_o = intermediate_vector[22];
  assign n1381_o = intermediate_vector[23];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1382_o = n962_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1382_o)
      2'b00: n1383_o = n1374_o;
      2'b01: n1383_o = n1375_o;
      2'b10: n1383_o = n1376_o;
      2'b11: n1383_o = n1377_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1384_o = n962_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1384_o)
      2'b00: n1385_o = n1378_o;
      2'b01: n1385_o = n1379_o;
      2'b10: n1385_o = n1380_o;
      2'b11: n1385_o = n1381_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1386_o = n962_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1387_o = n1386_o ? n1385_o : n1383_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1388_o = intermediate_vector[16];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1389_o = intermediate_vector[17];
  assign n1390_o = intermediate_vector[18];
  assign n1391_o = intermediate_vector[19];
  assign n1392_o = intermediate_vector[20];
  assign n1393_o = intermediate_vector[21];
  assign n1394_o = intermediate_vector[22];
  assign n1395_o = intermediate_vector[23];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1396_o = n983_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1396_o)
      2'b00: n1397_o = n1388_o;
      2'b01: n1397_o = n1389_o;
      2'b10: n1397_o = n1390_o;
      2'b11: n1397_o = n1391_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1398_o = n983_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1398_o)
      2'b00: n1399_o = n1392_o;
      2'b01: n1399_o = n1393_o;
      2'b10: n1399_o = n1394_o;
      2'b11: n1399_o = n1395_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1400_o = n983_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1401_o = n1400_o ? n1399_o : n1397_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1402_o = intermediate_vector[24];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1403_o = intermediate_vector[25];
  assign n1404_o = intermediate_vector[26];
  assign n1405_o = intermediate_vector[27];
  assign n1406_o = intermediate_vector[28];
  assign n1407_o = intermediate_vector[29];
  assign n1408_o = intermediate_vector[30];
  assign n1409_o = intermediate_vector[31];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1410_o = n1005_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1410_o)
      2'b00: n1411_o = n1402_o;
      2'b01: n1411_o = n1403_o;
      2'b10: n1411_o = n1404_o;
      2'b11: n1411_o = n1405_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1412_o = n1005_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1412_o)
      2'b00: n1413_o = n1406_o;
      2'b01: n1413_o = n1407_o;
      2'b10: n1413_o = n1408_o;
      2'b11: n1413_o = n1409_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1414_o = n1005_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1415_o = n1414_o ? n1413_o : n1411_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1416_o = intermediate_vector[24];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1417_o = intermediate_vector[25];
  assign n1418_o = intermediate_vector[26];
  assign n1419_o = intermediate_vector[27];
  assign n1420_o = intermediate_vector[28];
  assign n1421_o = intermediate_vector[29];
  assign n1422_o = intermediate_vector[30];
  assign n1423_o = intermediate_vector[31];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1424_o = n1026_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1424_o)
      2'b00: n1425_o = n1416_o;
      2'b01: n1425_o = n1417_o;
      2'b10: n1425_o = n1418_o;
      2'b11: n1425_o = n1419_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1426_o = n1026_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1426_o)
      2'b00: n1427_o = n1420_o;
      2'b01: n1427_o = n1421_o;
      2'b10: n1427_o = n1422_o;
      2'b11: n1427_o = n1423_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1428_o = n1026_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1429_o = n1428_o ? n1427_o : n1425_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1430_o = intermediate_vector[24];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1431_o = intermediate_vector[25];
  assign n1432_o = intermediate_vector[26];
  assign n1433_o = intermediate_vector[27];
  assign n1434_o = intermediate_vector[28];
  assign n1435_o = intermediate_vector[29];
  assign n1436_o = intermediate_vector[30];
  assign n1437_o = intermediate_vector[31];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1438_o = n1047_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1438_o)
      2'b00: n1439_o = n1430_o;
      2'b01: n1439_o = n1431_o;
      2'b10: n1439_o = n1432_o;
      2'b11: n1439_o = n1433_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1440_o = n1047_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1440_o)
      2'b00: n1441_o = n1434_o;
      2'b01: n1441_o = n1435_o;
      2'b10: n1441_o = n1436_o;
      2'b11: n1441_o = n1437_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1442_o = n1047_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1443_o = n1442_o ? n1441_o : n1439_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1444_o = intermediate_vector[24];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1445_o = intermediate_vector[25];
  assign n1446_o = intermediate_vector[26];
  assign n1447_o = intermediate_vector[27];
  assign n1448_o = intermediate_vector[28];
  assign n1449_o = intermediate_vector[29];
  assign n1450_o = intermediate_vector[30];
  assign n1451_o = intermediate_vector[31];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1452_o = n1068_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1452_o)
      2'b00: n1453_o = n1444_o;
      2'b01: n1453_o = n1445_o;
      2'b10: n1453_o = n1446_o;
      2'b11: n1453_o = n1447_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1454_o = n1068_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1454_o)
      2'b00: n1455_o = n1448_o;
      2'b01: n1455_o = n1449_o;
      2'b10: n1455_o = n1450_o;
      2'b11: n1455_o = n1451_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1456_o = n1068_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1457_o = n1456_o ? n1455_o : n1453_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1458_o = intermediate_vector[24];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1459_o = intermediate_vector[25];
  assign n1460_o = intermediate_vector[26];
  assign n1461_o = intermediate_vector[27];
  assign n1462_o = intermediate_vector[28];
  assign n1463_o = intermediate_vector[29];
  assign n1464_o = intermediate_vector[30];
  assign n1465_o = intermediate_vector[31];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1466_o = n1089_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1466_o)
      2'b00: n1467_o = n1458_o;
      2'b01: n1467_o = n1459_o;
      2'b10: n1467_o = n1460_o;
      2'b11: n1467_o = n1461_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1468_o = n1089_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1468_o)
      2'b00: n1469_o = n1462_o;
      2'b01: n1469_o = n1463_o;
      2'b10: n1469_o = n1464_o;
      2'b11: n1469_o = n1465_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1470_o = n1089_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1471_o = n1470_o ? n1469_o : n1467_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1472_o = intermediate_vector[24];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1473_o = intermediate_vector[25];
  assign n1474_o = intermediate_vector[26];
  assign n1475_o = intermediate_vector[27];
  assign n1476_o = intermediate_vector[28];
  assign n1477_o = intermediate_vector[29];
  assign n1478_o = intermediate_vector[30];
  assign n1479_o = intermediate_vector[31];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1480_o = n1110_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1480_o)
      2'b00: n1481_o = n1472_o;
      2'b01: n1481_o = n1473_o;
      2'b10: n1481_o = n1474_o;
      2'b11: n1481_o = n1475_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1482_o = n1110_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1482_o)
      2'b00: n1483_o = n1476_o;
      2'b01: n1483_o = n1477_o;
      2'b10: n1483_o = n1478_o;
      2'b11: n1483_o = n1479_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1484_o = n1110_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1485_o = n1484_o ? n1483_o : n1481_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1486_o = intermediate_vector[24];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1487_o = intermediate_vector[25];
  assign n1488_o = intermediate_vector[26];
  assign n1489_o = intermediate_vector[27];
  assign n1490_o = intermediate_vector[28];
  assign n1491_o = intermediate_vector[29];
  assign n1492_o = intermediate_vector[30];
  assign n1493_o = intermediate_vector[31];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1494_o = n1131_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1494_o)
      2'b00: n1495_o = n1486_o;
      2'b01: n1495_o = n1487_o;
      2'b10: n1495_o = n1488_o;
      2'b11: n1495_o = n1489_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1496_o = n1131_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1496_o)
      2'b00: n1497_o = n1490_o;
      2'b01: n1497_o = n1491_o;
      2'b10: n1497_o = n1492_o;
      2'b11: n1497_o = n1493_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1498_o = n1131_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1499_o = n1498_o ? n1497_o : n1495_o;
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1500_o = intermediate_vector[24];
  /* src/overture/barrel_shifter.vhdl:84:69  */
  assign n1501_o = intermediate_vector[25];
  assign n1502_o = intermediate_vector[26];
  assign n1503_o = intermediate_vector[27];
  assign n1504_o = intermediate_vector[28];
  assign n1505_o = intermediate_vector[29];
  assign n1506_o = intermediate_vector[30];
  assign n1507_o = intermediate_vector[31];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1508_o = n1152_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1508_o)
      2'b00: n1509_o = n1500_o;
      2'b01: n1509_o = n1501_o;
      2'b10: n1509_o = n1502_o;
      2'b11: n1509_o = n1503_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1510_o = n1152_o[1:0];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  always @*
    case (n1510_o)
      2'b00: n1511_o = n1504_o;
      2'b01: n1511_o = n1505_o;
      2'b10: n1511_o = n1506_o;
      2'b11: n1511_o = n1507_o;
    endcase
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1512_o = n1152_o[2];
  /* src/overture/barrel_shifter.vhdl:84:66  */
  assign n1513_o = n1512_o ? n1511_o : n1509_o;
endmodule

module alu
  (input  [2:0] alu_op_i,
   input  [7:0] operand_a_i,
   input  [7:0] operand_b_i,
   output [7:0] result_o);
  wire [7:0] n618_o;
  wire n620_o;
  wire [7:0] n621_o;
  wire n623_o;
  wire [7:0] n624_o;
  wire n626_o;
  wire [7:0] n627_o;
  wire n629_o;
  wire [7:0] n630_o;
  wire n632_o;
  wire [7:0] n633_o;
  wire n635_o;
  wire [7:0] n636_o;
  wire n638_o;
  wire [6:0] n639_o;
  reg [7:0] n641_o;
  assign result_o = n641_o;
  /* src/overture/alu.vhdl:54:41  */
  assign n618_o = operand_a_i | operand_b_i;
  /* src/overture/alu.vhdl:53:13  */
  assign n620_o = alu_op_i == 3'b000;
  /* src/overture/alu.vhdl:56:41  */
  assign n621_o = ~(operand_a_i & operand_b_i);
  /* src/overture/alu.vhdl:55:13  */
  assign n623_o = alu_op_i == 3'b001;
  /* src/overture/alu.vhdl:58:41  */
  assign n624_o = ~(operand_a_i | operand_b_i);
  /* src/overture/alu.vhdl:57:13  */
  assign n626_o = alu_op_i == 3'b010;
  /* src/overture/alu.vhdl:60:41  */
  assign n627_o = operand_a_i & operand_b_i;
  /* src/overture/alu.vhdl:59:13  */
  assign n629_o = alu_op_i == 3'b011;
  /* src/overture/alu.vhdl:62:68  */
  assign n630_o = operand_a_i + operand_b_i;
  /* src/overture/alu.vhdl:61:13  */
  assign n632_o = alu_op_i == 3'b100;
  /* src/overture/alu.vhdl:64:68  */
  assign n633_o = operand_a_i - operand_b_i;
  /* src/overture/alu.vhdl:63:13  */
  assign n635_o = alu_op_i == 3'b101;
  /* src/overture/alu.vhdl:66:41  */
  assign n636_o = operand_a_i ^ operand_b_i;
  /* src/overture/alu.vhdl:65:13  */
  assign n638_o = alu_op_i == 3'b110;
  assign n639_o = {n638_o, n635_o, n632_o, n629_o, n626_o, n623_o, n620_o};
  /* src/overture/alu.vhdl:52:9  */
  always @*
    case (n639_o)
      7'b1000000: n641_o = n636_o;
      7'b0100000: n641_o = n633_o;
      7'b0010000: n641_o = n630_o;
      7'b0001000: n641_o = n627_o;
      7'b0000100: n641_o = n624_o;
      7'b0000010: n641_o = n621_o;
      7'b0000001: n641_o = n618_o;
      default: n641_o = 8'b00000000;
    endcase
endmodule

module delay_27000000_8f550429353b561f37bf264d5b9f8ea86cb39159
  (input  clk,
   input  reset,
   input  [7:0] address_i,
   input  write_enable_i,
   input  read_enable_i,
   input  [7:0] data_in_i,
   output [7:0] data_out_o);
  reg [24:0] delay_reg;
  reg [24:0] delay_next;
  reg [7:0] counter_reg;
  reg [7:0] counter_next;
  wire is_selected;
  wire internal_read_enable;
  wire internal_write_enable;
  wire [24:0] n582_o;
  wire [7:0] n584_o;
  wire n590_o;
  wire n591_o;
  wire n593_o;
  wire n594_o;
  wire [7:0] n595_o;
  wire n599_o;
  wire [24:0] n601_o;
  wire n603_o;
  wire [7:0] n605_o;
  wire [7:0] n606_o;
  wire [24:0] n608_o;
  wire [7:0] n609_o;
  wire [24:0] n611_o;
  wire [7:0] n612_o;
  reg [24:0] n614_q;
  reg [7:0] n615_q;
  assign data_out_o = n595_o;
  /* src/peripherals/delay.vhdl:54:12  */
  always @*
    delay_reg = n614_q; // (isignal)
  initial
    delay_reg = 25'b0000000000000000000000000;
  /* src/peripherals/delay.vhdl:54:23  */
  always @*
    delay_next = n611_o; // (isignal)
  initial
    delay_next = 25'b0000000000000000000000000;
  /* src/peripherals/delay.vhdl:55:12  */
  always @*
    counter_reg = n615_q; // (isignal)
  initial
    counter_reg = 8'b00000000;
  /* src/peripherals/delay.vhdl:55:25  */
  always @*
    counter_next = n612_o; // (isignal)
  initial
    counter_next = 8'b00000000;
  /* src/peripherals/delay.vhdl:57:12  */
  assign is_selected = n591_o; // (signal)
  /* src/peripherals/delay.vhdl:58:12  */
  assign internal_read_enable = n593_o; // (signal)
  /* src/peripherals/delay.vhdl:59:12  */
  assign internal_write_enable = n594_o; // (signal)
  /* src/peripherals/delay.vhdl:66:13  */
  assign n582_o = reset ? 25'b0000000000000000000000000 : delay_next;
  /* src/peripherals/delay.vhdl:66:13  */
  assign n584_o = reset ? 8'b00000000 : counter_next;
  /* src/peripherals/delay.vhdl:77:39  */
  assign n590_o = address_i == 8'b00010011;
  /* src/peripherals/delay.vhdl:77:24  */
  assign n591_o = n590_o ? 1'b1 : 1'b0;
  /* src/peripherals/delay.vhdl:80:43  */
  assign n593_o = read_enable_i & is_selected;
  /* src/peripherals/delay.vhdl:81:45  */
  assign n594_o = write_enable_i & is_selected;
  /* src/peripherals/delay.vhdl:84:49  */
  assign n595_o = internal_read_enable ? counter_reg : 8'b00000000;
  /* src/peripherals/delay.vhdl:98:26  */
  assign n599_o = $unsigned(delay_reg) > $unsigned(25'b0000000000000000000000000);
  /* src/peripherals/delay.vhdl:100:41  */
  assign n601_o = delay_reg - 25'b0000000000000000000000001;
  /* src/peripherals/delay.vhdl:106:32  */
  assign n603_o = $unsigned(counter_reg) > $unsigned(8'b00000000);
  /* src/peripherals/delay.vhdl:107:49  */
  assign n605_o = counter_reg - 8'b00000001;
  /* src/peripherals/delay.vhdl:106:17  */
  assign n606_o = n603_o ? n605_o : counter_reg;
  /* src/peripherals/delay.vhdl:98:13  */
  assign n608_o = n599_o ? n601_o : 25'b1100110111111110011000000;
  /* src/peripherals/delay.vhdl:98:13  */
  assign n609_o = n599_o ? counter_reg : n606_o;
  /* src/peripherals/delay.vhdl:93:9  */
  assign n611_o = internal_write_enable ? 25'b1100110111111110011000000 : n608_o;
  /* src/peripherals/delay.vhdl:93:9  */
  assign n612_o = internal_write_enable ? data_in_i : n609_o;
  /* src/peripherals/delay.vhdl:65:9  */
  always @(posedge clk)
    n614_q <= n582_o;
  initial
    n614_q = 25'b0000000000000000000000000;
  /* src/peripherals/delay.vhdl:65:9  */
  always @(posedge clk)
    n615_q <= n584_o;
  initial
    n615_q = 8'b00000000;
endmodule

module delay_27000_b29ef73d392af6b717c08025ed05d31a4c4c962a
  (input  clk,
   input  reset,
   input  [7:0] address_i,
   input  write_enable_i,
   input  read_enable_i,
   input  [7:0] data_in_i,
   output [7:0] data_out_o);
  reg [14:0] delay_reg;
  reg [14:0] delay_next;
  reg [7:0] counter_reg;
  reg [7:0] counter_next;
  wire is_selected;
  wire internal_read_enable;
  wire internal_write_enable;
  wire [14:0] n540_o;
  wire [7:0] n542_o;
  wire n548_o;
  wire n549_o;
  wire n551_o;
  wire n552_o;
  wire [7:0] n553_o;
  wire n557_o;
  wire [14:0] n559_o;
  wire n561_o;
  wire [7:0] n563_o;
  wire [7:0] n564_o;
  wire [14:0] n566_o;
  wire [7:0] n567_o;
  wire [14:0] n569_o;
  wire [7:0] n570_o;
  reg [14:0] n572_q;
  reg [7:0] n573_q;
  assign data_out_o = n553_o;
  /* src/peripherals/delay.vhdl:54:12  */
  always @*
    delay_reg = n572_q; // (isignal)
  initial
    delay_reg = 15'b000000000000000;
  /* src/peripherals/delay.vhdl:54:23  */
  always @*
    delay_next = n569_o; // (isignal)
  initial
    delay_next = 15'b000000000000000;
  /* src/peripherals/delay.vhdl:55:12  */
  always @*
    counter_reg = n573_q; // (isignal)
  initial
    counter_reg = 8'b00000000;
  /* src/peripherals/delay.vhdl:55:25  */
  always @*
    counter_next = n570_o; // (isignal)
  initial
    counter_next = 8'b00000000;
  /* src/peripherals/delay.vhdl:57:12  */
  assign is_selected = n549_o; // (signal)
  /* src/peripherals/delay.vhdl:58:12  */
  assign internal_read_enable = n551_o; // (signal)
  /* src/peripherals/delay.vhdl:59:12  */
  assign internal_write_enable = n552_o; // (signal)
  /* src/peripherals/delay.vhdl:66:13  */
  assign n540_o = reset ? 15'b000000000000000 : delay_next;
  /* src/peripherals/delay.vhdl:66:13  */
  assign n542_o = reset ? 8'b00000000 : counter_next;
  /* src/peripherals/delay.vhdl:77:39  */
  assign n548_o = address_i == 8'b00010010;
  /* src/peripherals/delay.vhdl:77:24  */
  assign n549_o = n548_o ? 1'b1 : 1'b0;
  /* src/peripherals/delay.vhdl:80:43  */
  assign n551_o = read_enable_i & is_selected;
  /* src/peripherals/delay.vhdl:81:45  */
  assign n552_o = write_enable_i & is_selected;
  /* src/peripherals/delay.vhdl:84:49  */
  assign n553_o = internal_read_enable ? counter_reg : 8'b00000000;
  /* src/peripherals/delay.vhdl:98:26  */
  assign n557_o = $unsigned(delay_reg) > $unsigned(15'b000000000000000);
  /* src/peripherals/delay.vhdl:100:41  */
  assign n559_o = delay_reg - 15'b000000000000001;
  /* src/peripherals/delay.vhdl:106:32  */
  assign n561_o = $unsigned(counter_reg) > $unsigned(8'b00000000);
  /* src/peripherals/delay.vhdl:107:49  */
  assign n563_o = counter_reg - 8'b00000001;
  /* src/peripherals/delay.vhdl:106:17  */
  assign n564_o = n561_o ? n563_o : counter_reg;
  /* src/peripherals/delay.vhdl:98:13  */
  assign n566_o = n557_o ? n559_o : 15'b110100101111000;
  /* src/peripherals/delay.vhdl:98:13  */
  assign n567_o = n557_o ? counter_reg : n564_o;
  /* src/peripherals/delay.vhdl:93:9  */
  assign n569_o = internal_write_enable ? 15'b110100101111000 : n566_o;
  /* src/peripherals/delay.vhdl:93:9  */
  assign n570_o = internal_write_enable ? data_in_i : n567_o;
  /* src/peripherals/delay.vhdl:65:9  */
  always @(posedge clk)
    n572_q <= n540_o;
  initial
    n572_q = 15'b000000000000000;
  /* src/peripherals/delay.vhdl:65:9  */
  always @(posedge clk)
    n573_q <= n542_o;
  initial
    n573_q = 8'b00000000;
endmodule

module delay_27_7818f420e30d1f01fee896a2a9af6b734c9aeae6
  (input  clk,
   input  reset,
   input  [7:0] address_i,
   input  write_enable_i,
   input  read_enable_i,
   input  [7:0] data_in_i,
   output [7:0] data_out_o);
  reg [4:0] delay_reg;
  reg [4:0] delay_next;
  reg [7:0] counter_reg;
  reg [7:0] counter_next;
  wire is_selected;
  wire internal_read_enable;
  wire internal_write_enable;
  wire [4:0] n498_o;
  wire [7:0] n500_o;
  wire n506_o;
  wire n507_o;
  wire n509_o;
  wire n510_o;
  wire [7:0] n511_o;
  wire n515_o;
  wire [4:0] n517_o;
  wire n519_o;
  wire [7:0] n521_o;
  wire [7:0] n522_o;
  wire [4:0] n524_o;
  wire [7:0] n525_o;
  wire [4:0] n527_o;
  wire [7:0] n528_o;
  reg [4:0] n530_q;
  reg [7:0] n531_q;
  assign data_out_o = n511_o;
  /* src/peripherals/delay.vhdl:54:12  */
  always @*
    delay_reg = n530_q; // (isignal)
  initial
    delay_reg = 5'b00000;
  /* src/peripherals/delay.vhdl:54:23  */
  always @*
    delay_next = n527_o; // (isignal)
  initial
    delay_next = 5'b00000;
  /* src/peripherals/delay.vhdl:55:12  */
  always @*
    counter_reg = n531_q; // (isignal)
  initial
    counter_reg = 8'b00000000;
  /* src/peripherals/delay.vhdl:55:25  */
  always @*
    counter_next = n528_o; // (isignal)
  initial
    counter_next = 8'b00000000;
  /* src/peripherals/delay.vhdl:57:12  */
  assign is_selected = n507_o; // (signal)
  /* src/peripherals/delay.vhdl:58:12  */
  assign internal_read_enable = n509_o; // (signal)
  /* src/peripherals/delay.vhdl:59:12  */
  assign internal_write_enable = n510_o; // (signal)
  /* src/peripherals/delay.vhdl:66:13  */
  assign n498_o = reset ? 5'b00000 : delay_next;
  /* src/peripherals/delay.vhdl:66:13  */
  assign n500_o = reset ? 8'b00000000 : counter_next;
  /* src/peripherals/delay.vhdl:77:39  */
  assign n506_o = address_i == 8'b00010001;
  /* src/peripherals/delay.vhdl:77:24  */
  assign n507_o = n506_o ? 1'b1 : 1'b0;
  /* src/peripherals/delay.vhdl:80:43  */
  assign n509_o = read_enable_i & is_selected;
  /* src/peripherals/delay.vhdl:81:45  */
  assign n510_o = write_enable_i & is_selected;
  /* src/peripherals/delay.vhdl:84:49  */
  assign n511_o = internal_read_enable ? counter_reg : 8'b00000000;
  /* src/peripherals/delay.vhdl:98:26  */
  assign n515_o = $unsigned(delay_reg) > $unsigned(5'b00000);
  /* src/peripherals/delay.vhdl:100:41  */
  assign n517_o = delay_reg - 5'b00001;
  /* src/peripherals/delay.vhdl:106:32  */
  assign n519_o = $unsigned(counter_reg) > $unsigned(8'b00000000);
  /* src/peripherals/delay.vhdl:107:49  */
  assign n521_o = counter_reg - 8'b00000001;
  /* src/peripherals/delay.vhdl:106:17  */
  assign n522_o = n519_o ? n521_o : counter_reg;
  /* src/peripherals/delay.vhdl:98:13  */
  assign n524_o = n515_o ? n517_o : 5'b11011;
  /* src/peripherals/delay.vhdl:98:13  */
  assign n525_o = n515_o ? counter_reg : n522_o;
  /* src/peripherals/delay.vhdl:93:9  */
  assign n527_o = internal_write_enable ? 5'b11011 : n524_o;
  /* src/peripherals/delay.vhdl:93:9  */
  assign n528_o = internal_write_enable ? data_in_i : n525_o;
  /* src/peripherals/delay.vhdl:65:9  */
  always @(posedge clk)
    n530_q <= n498_o;
  initial
    n530_q = 5'b00000;
  /* src/peripherals/delay.vhdl:65:9  */
  always @(posedge clk)
    n531_q <= n500_o;
  initial
    n531_q = 8'b00000000;
endmodule

module gpio_34a12b9d5d93ecae9e83faabe2db8b8ac094a1b7
  (input  clk,
   input  reset,
   input  [4:0] joystick,
   input  [7:0] address_i,
   input  write_enable_i,
   input  read_enable_i,
   input  [7:0] data_in_i,
   output [4:0] leds,
   output [7:0] data_out_o);
  wire [4:0] joystick_debounced;
  wire [4:0] output_reg;
  wire is_selected;
  wire debounce_joystick_n1_debouncer_entity_debounced;
  wire debounce_joystick_n1_debouncer_entity_released;
  wire debounce_joystick_n1_debouncer_entity_pressed;
  wire n454_o;
  localparam n455_o = 1'b1;
  wire debounce_joystick_n2_debouncer_entity_debounced;
  wire debounce_joystick_n2_debouncer_entity_released;
  wire debounce_joystick_n2_debouncer_entity_pressed;
  wire n457_o;
  localparam n458_o = 1'b1;
  wire debounce_joystick_n3_debouncer_entity_debounced;
  wire debounce_joystick_n3_debouncer_entity_released;
  wire debounce_joystick_n3_debouncer_entity_pressed;
  wire n460_o;
  localparam n461_o = 1'b1;
  wire debounce_joystick_n4_debouncer_entity_debounced;
  wire debounce_joystick_n4_debouncer_entity_released;
  wire debounce_joystick_n4_debouncer_entity_pressed;
  wire n463_o;
  localparam n464_o = 1'b1;
  wire debounce_joystick_n5_debouncer_entity_debounced;
  wire debounce_joystick_n5_debouncer_entity_released;
  wire debounce_joystick_n5_debouncer_entity_pressed;
  wire n466_o;
  localparam n467_o = 1'b1;
  wire n471_o;
  wire n472_o;
  wire [7:0] n475_o;
  wire n476_o;
  wire [7:0] n477_o;
  wire n481_o;
  wire [4:0] n482_o;
  wire [4:0] n483_o;
  wire [4:0] n485_o;
  wire [4:0] n488_o;
  reg [4:0] n489_q;
  assign leds = output_reg;
  assign data_out_o = n477_o;
  /* src/peripherals/gpio.vhdl:54:12  */
  assign joystick_debounced = n488_o; // (signal)
  /* src/peripherals/gpio.vhdl:57:12  */
  assign output_reg = n489_q; // (signal)
  /* src/peripherals/gpio.vhdl:60:12  */
  assign is_selected = n472_o; // (signal)
  /* src/peripherals/gpio.vhdl:66:9  */
  debouncer_27000 debounce_joystick_n1_debouncer_entity (
    .clk(clk),
    .reset(reset),
    .in_raw(n454_o),
    .deb_en(n455_o),
    .debounced(debounce_joystick_n1_debouncer_entity_debounced),
    .released(),
    .pressed());
  /* src/peripherals/gpio.vhdl:73:35  */
  assign n454_o = joystick[4];
  /* src/peripherals/gpio.vhdl:66:9  */
  debouncer_27000 debounce_joystick_n2_debouncer_entity (
    .clk(clk),
    .reset(reset),
    .in_raw(n457_o),
    .deb_en(n458_o),
    .debounced(debounce_joystick_n2_debouncer_entity_debounced),
    .released(),
    .pressed());
  /* src/peripherals/gpio.vhdl:73:35  */
  assign n457_o = joystick[3];
  /* src/peripherals/gpio.vhdl:66:9  */
  debouncer_27000 debounce_joystick_n3_debouncer_entity (
    .clk(clk),
    .reset(reset),
    .in_raw(n460_o),
    .deb_en(n461_o),
    .debounced(debounce_joystick_n3_debouncer_entity_debounced),
    .released(),
    .pressed());
  /* src/peripherals/gpio.vhdl:73:35  */
  assign n460_o = joystick[2];
  /* src/peripherals/gpio.vhdl:66:9  */
  debouncer_27000 debounce_joystick_n4_debouncer_entity (
    .clk(clk),
    .reset(reset),
    .in_raw(n463_o),
    .deb_en(n464_o),
    .debounced(debounce_joystick_n4_debouncer_entity_debounced),
    .released(),
    .pressed());
  /* src/peripherals/gpio.vhdl:73:35  */
  assign n463_o = joystick[1];
  /* src/peripherals/gpio.vhdl:66:9  */
  debouncer_27000 debounce_joystick_n5_debouncer_entity (
    .clk(clk),
    .reset(reset),
    .in_raw(n466_o),
    .deb_en(n467_o),
    .debounced(debounce_joystick_n5_debouncer_entity_debounced),
    .released(),
    .pressed());
  /* src/peripherals/gpio.vhdl:73:35  */
  assign n466_o = joystick[0];
  /* src/peripherals/gpio.vhdl:81:39  */
  assign n471_o = address_i == 8'b00010000;
  /* src/peripherals/gpio.vhdl:81:24  */
  assign n472_o = n471_o ? 1'b1 : 1'b0;
  /* src/peripherals/gpio.vhdl:83:25  */
  assign n475_o = {3'b000, joystick_debounced};
  /* src/peripherals/gpio.vhdl:83:69  */
  assign n476_o = read_enable_i & is_selected;
  /* src/peripherals/gpio.vhdl:83:46  */
  assign n477_o = n476_o ? n475_o : 8'b00000000;
  /* src/peripherals/gpio.vhdl:97:38  */
  assign n481_o = write_enable_i & is_selected;
  /* src/peripherals/gpio.vhdl:99:44  */
  assign n482_o = data_in_i[4:0];
  /* src/peripherals/gpio.vhdl:97:17  */
  assign n483_o = n481_o ? n482_o : output_reg;
  /* src/peripherals/gpio.vhdl:92:13  */
  assign n485_o = reset ? 5'b00000 : n483_o;
  assign n488_o = {debounce_joystick_n1_debouncer_entity_debounced, debounce_joystick_n2_debouncer_entity_debounced, debounce_joystick_n3_debouncer_entity_debounced, debounce_joystick_n4_debouncer_entity_debounced, debounce_joystick_n5_debouncer_entity_debounced};
  /* src/peripherals/gpio.vhdl:91:9  */
  always @(posedge clk)
    n489_q <= n485_o;
endmodule

module ram_16_8_c088da704afbba144cf24d5031b3e5be9155c155
  (input  clk_i,
   input  reset_i,
   input  [7:0] address_i,
   input  write_enable_i,
   input  read_enable_i,
   input  [7:0] data_in_i,
   output [7:0] data_out_o);
  wire [127:0] ram_data;
  wire [3:0] internal_address;
  wire internal_read_enable;
  wire internal_write_enable;
  wire is_selected;
  wire n323_o;
  wire n325_o;
  wire n326_o;
  wire n327_o;
  wire n329_o;
  wire n330_o;
  wire [7:0] n332_o;
  wire [3:0] n333_o;
  wire [3:0] n334_o;
  wire [3:0] n338_o;
  wire [7:0] n341_o;
  wire [3:0] n348_o;
  wire [127:0] n351_o;
  wire [127:0] n353_o;
  reg [127:0] n356_q;
  wire [7:0] n357_o;
  wire [7:0] n358_o;
  wire [7:0] n359_o;
  wire [7:0] n360_o;
  wire [7:0] n361_o;
  wire [7:0] n362_o;
  wire [7:0] n363_o;
  wire [7:0] n364_o;
  wire [7:0] n365_o;
  wire [7:0] n366_o;
  wire [7:0] n367_o;
  wire [7:0] n368_o;
  wire [7:0] n369_o;
  wire [7:0] n370_o;
  wire [7:0] n371_o;
  wire [7:0] n372_o;
  wire [1:0] n373_o;
  reg [7:0] n374_o;
  wire [1:0] n375_o;
  reg [7:0] n376_o;
  wire [1:0] n377_o;
  reg [7:0] n378_o;
  wire [1:0] n379_o;
  reg [7:0] n380_o;
  wire [1:0] n381_o;
  reg [7:0] n382_o;
  wire n383_o;
  wire n384_o;
  wire n385_o;
  wire n386_o;
  wire n387_o;
  wire n388_o;
  wire n389_o;
  wire n390_o;
  wire n391_o;
  wire n392_o;
  wire n393_o;
  wire n394_o;
  wire n395_o;
  wire n396_o;
  wire n397_o;
  wire n398_o;
  wire n399_o;
  wire n400_o;
  wire n401_o;
  wire n402_o;
  wire n403_o;
  wire n404_o;
  wire n405_o;
  wire n406_o;
  wire n407_o;
  wire n408_o;
  wire n409_o;
  wire n410_o;
  wire n411_o;
  wire n412_o;
  wire n413_o;
  wire n414_o;
  wire n415_o;
  wire n416_o;
  wire n417_o;
  wire n418_o;
  wire [7:0] n419_o;
  wire [7:0] n420_o;
  wire [7:0] n421_o;
  wire [7:0] n422_o;
  wire [7:0] n423_o;
  wire [7:0] n424_o;
  wire [7:0] n425_o;
  wire [7:0] n426_o;
  wire [7:0] n427_o;
  wire [7:0] n428_o;
  wire [7:0] n429_o;
  wire [7:0] n430_o;
  wire [7:0] n431_o;
  wire [7:0] n432_o;
  wire [7:0] n433_o;
  wire [7:0] n434_o;
  wire [7:0] n435_o;
  wire [7:0] n436_o;
  wire [7:0] n437_o;
  wire [7:0] n438_o;
  wire [7:0] n439_o;
  wire [7:0] n440_o;
  wire [7:0] n441_o;
  wire [7:0] n442_o;
  wire [7:0] n443_o;
  wire [7:0] n444_o;
  wire [7:0] n445_o;
  wire [7:0] n446_o;
  wire [7:0] n447_o;
  wire [7:0] n448_o;
  wire [7:0] n449_o;
  wire [7:0] n450_o;
  wire [127:0] n451_o;
  assign data_out_o = n341_o;
  /* src/peripherals/ram.vhdl:52:12  */
  assign ram_data = n356_q; // (signal)
  /* src/peripherals/ram.vhdl:54:12  */
  assign internal_address = n334_o; // (signal)
  /* src/peripherals/ram.vhdl:55:12  */
  assign internal_read_enable = n329_o; // (signal)
  /* src/peripherals/ram.vhdl:56:12  */
  assign internal_write_enable = n330_o; // (signal)
  /* src/peripherals/ram.vhdl:57:12  */
  assign is_selected = n327_o; // (signal)
  /* src/peripherals/ram.vhdl:62:50  */
  assign n323_o = $unsigned(address_i) >= $unsigned(8'b00000000);
  /* src/peripherals/ram.vhdl:63:50  */
  assign n325_o = $unsigned(address_i) < $unsigned(8'b00010000);
  /* src/peripherals/ram.vhdl:62:82  */
  assign n326_o = n325_o & n323_o;
  /* src/peripherals/ram.vhdl:62:24  */
  assign n327_o = n326_o ? 1'b1 : 1'b0;
  /* src/peripherals/ram.vhdl:67:43  */
  assign n329_o = read_enable_i & is_selected;
  /* src/peripherals/ram.vhdl:68:45  */
  assign n330_o = write_enable_i & is_selected;
  /* src/peripherals/ram.vhdl:69:52  */
  assign n332_o = address_i - 8'b00000000;
  /* src/peripherals/ram.vhdl:69:25  */
  assign n333_o = n332_o[3:0];  // trunc
  /* src/peripherals/ram.vhdl:69:96  */
  assign n334_o = is_selected ? n333_o : 4'b0000;
  /* src/peripherals/ram.vhdl:73:28  */
  assign n338_o = 4'b1111 - internal_address;
  /* src/peripherals/ram.vhdl:73:68  */
  assign n341_o = internal_read_enable ? n382_o : 8'b00000000;
  /* src/peripherals/ram.vhdl:87:30  */
  assign n348_o = 4'b1111 - internal_address;
  /* src/peripherals/ram.vhdl:85:17  */
  assign n351_o = internal_write_enable ? n451_o : ram_data;
  /* src/peripherals/ram.vhdl:81:13  */
  assign n353_o = reset_i ? 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 : n351_o;
  /* src/peripherals/ram.vhdl:79:9  */
  always @(posedge clk_i)
    n356_q <= n353_o;
  /* src/peripherals/ram.vhdl:41:9  */
  assign n357_o = ram_data[7:0];
  assign n358_o = ram_data[15:8];
  /* src/peripherals/ram.vhdl:87:30  */
  assign n359_o = ram_data[23:16];
  /* src/peripherals/ram.vhdl:77:5  */
  assign n360_o = ram_data[31:24];
  /* src/peripherals/ram.vhdl:73:28  */
  assign n361_o = ram_data[39:32];
  /* src/peripherals/ram.vhdl:79:9  */
  assign n362_o = ram_data[47:40];
  assign n363_o = ram_data[55:48];
  assign n364_o = ram_data[63:56];
  assign n365_o = ram_data[71:64];
  assign n366_o = ram_data[79:72];
  assign n367_o = ram_data[87:80];
  assign n368_o = ram_data[95:88];
  assign n369_o = ram_data[103:96];
  assign n370_o = ram_data[111:104];
  assign n371_o = ram_data[119:112];
  assign n372_o = ram_data[127:120];
  /* src/peripherals/ram.vhdl:73:27  */
  assign n373_o = n338_o[1:0];
  /* src/peripherals/ram.vhdl:73:27  */
  always @*
    case (n373_o)
      2'b00: n374_o = n357_o;
      2'b01: n374_o = n358_o;
      2'b10: n374_o = n359_o;
      2'b11: n374_o = n360_o;
    endcase
  /* src/peripherals/ram.vhdl:73:27  */
  assign n375_o = n338_o[1:0];
  /* src/peripherals/ram.vhdl:73:27  */
  always @*
    case (n375_o)
      2'b00: n376_o = n361_o;
      2'b01: n376_o = n362_o;
      2'b10: n376_o = n363_o;
      2'b11: n376_o = n364_o;
    endcase
  /* src/peripherals/ram.vhdl:73:27  */
  assign n377_o = n338_o[1:0];
  /* src/peripherals/ram.vhdl:73:27  */
  always @*
    case (n377_o)
      2'b00: n378_o = n365_o;
      2'b01: n378_o = n366_o;
      2'b10: n378_o = n367_o;
      2'b11: n378_o = n368_o;
    endcase
  /* src/peripherals/ram.vhdl:73:27  */
  assign n379_o = n338_o[1:0];
  /* src/peripherals/ram.vhdl:73:27  */
  always @*
    case (n379_o)
      2'b00: n380_o = n369_o;
      2'b01: n380_o = n370_o;
      2'b10: n380_o = n371_o;
      2'b11: n380_o = n372_o;
    endcase
  /* src/peripherals/ram.vhdl:73:27  */
  assign n381_o = n338_o[3:2];
  /* src/peripherals/ram.vhdl:73:27  */
  always @*
    case (n381_o)
      2'b00: n382_o = n374_o;
      2'b01: n382_o = n376_o;
      2'b10: n382_o = n378_o;
      2'b11: n382_o = n380_o;
    endcase
  /* src/peripherals/ram.vhdl:87:21  */
  assign n383_o = n348_o[3];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n384_o = ~n383_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n385_o = n348_o[2];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n386_o = ~n385_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n387_o = n384_o & n386_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n388_o = n384_o & n385_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n389_o = n383_o & n386_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n390_o = n383_o & n385_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n391_o = n348_o[1];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n392_o = ~n391_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n393_o = n387_o & n392_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n394_o = n387_o & n391_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n395_o = n388_o & n392_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n396_o = n388_o & n391_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n397_o = n389_o & n392_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n398_o = n389_o & n391_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n399_o = n390_o & n392_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n400_o = n390_o & n391_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n401_o = n348_o[0];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n402_o = ~n401_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n403_o = n393_o & n402_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n404_o = n393_o & n401_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n405_o = n394_o & n402_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n406_o = n394_o & n401_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n407_o = n395_o & n402_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n408_o = n395_o & n401_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n409_o = n396_o & n402_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n410_o = n396_o & n401_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n411_o = n397_o & n402_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n412_o = n397_o & n401_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n413_o = n398_o & n402_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n414_o = n398_o & n401_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n415_o = n399_o & n402_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n416_o = n399_o & n401_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n417_o = n400_o & n402_o;
  /* src/peripherals/ram.vhdl:87:21  */
  assign n418_o = n400_o & n401_o;
  assign n419_o = ram_data[7:0];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n420_o = n403_o ? data_in_i : n419_o;
  assign n421_o = ram_data[15:8];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n422_o = n404_o ? data_in_i : n421_o;
  assign n423_o = ram_data[23:16];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n424_o = n405_o ? data_in_i : n423_o;
  assign n425_o = ram_data[31:24];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n426_o = n406_o ? data_in_i : n425_o;
  assign n427_o = ram_data[39:32];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n428_o = n407_o ? data_in_i : n427_o;
  assign n429_o = ram_data[47:40];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n430_o = n408_o ? data_in_i : n429_o;
  assign n431_o = ram_data[55:48];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n432_o = n409_o ? data_in_i : n431_o;
  assign n433_o = ram_data[63:56];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n434_o = n410_o ? data_in_i : n433_o;
  assign n435_o = ram_data[71:64];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n436_o = n411_o ? data_in_i : n435_o;
  assign n437_o = ram_data[79:72];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n438_o = n412_o ? data_in_i : n437_o;
  assign n439_o = ram_data[87:80];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n440_o = n413_o ? data_in_i : n439_o;
  assign n441_o = ram_data[95:88];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n442_o = n414_o ? data_in_i : n441_o;
  assign n443_o = ram_data[103:96];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n444_o = n415_o ? data_in_i : n443_o;
  assign n445_o = ram_data[111:104];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n446_o = n416_o ? data_in_i : n445_o;
  assign n447_o = ram_data[119:112];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n448_o = n417_o ? data_in_i : n447_o;
  assign n449_o = ram_data[127:120];
  /* src/peripherals/ram.vhdl:87:21  */
  assign n450_o = n418_o ? data_in_i : n449_o;
  assign n451_o = {n450_o, n448_o, n446_o, n444_o, n442_o, n440_o, n438_o, n436_o, n434_o, n432_o, n430_o, n428_o, n426_o, n424_o, n422_o, n420_o};
endmodule

module write_back
  (input  [1:0] instruction_type_i,
   input  [2:0] dst_reg_i,
   input  [7:0] result_data_i,
   output [7:0] register_data_o,
   output registers_write_enable_o,
   output [2:0] registers_write_address_o,
   output [7:0] io_data_o,
   output io_data_write_enable_o);
  wire n295_o;
  wire n297_o;
  wire n298_o;
  wire n300_o;
  wire n303_o;
  wire n306_o;
  wire n308_o;
  wire [1:0] n309_o;
  reg n312_o;
  reg [2:0] n314_o;
  reg [7:0] n315_o;
  reg n317_o;
  assign register_data_o = result_data_i;
  assign registers_write_enable_o = n312_o;
  assign registers_write_address_o = n314_o;
  assign io_data_o = n315_o;
  assign io_data_write_enable_o = n317_o;
  /* src/overture/write_back.vhdl:55:13  */
  assign n295_o = instruction_type_i == 2'b00;
  /* src/overture/write_back.vhdl:55:23  */
  assign n297_o = instruction_type_i == 2'b01;
  /* src/overture/write_back.vhdl:55:23  */
  assign n298_o = n295_o | n297_o;
  /* src/overture/write_back.vhdl:58:30  */
  assign n300_o = dst_reg_i == 3'b111;
  /* src/overture/write_back.vhdl:58:17  */
  assign n303_o = n300_o ? 1'b0 : 1'b1;
  /* src/overture/write_back.vhdl:58:17  */
  assign n306_o = n300_o ? 1'b1 : 1'b0;
  /* src/overture/write_back.vhdl:57:13  */
  assign n308_o = instruction_type_i == 2'b10;
  assign n309_o = {n308_o, n298_o};
  /* src/overture/write_back.vhdl:54:9  */
  always @*
    case (n309_o)
      2'b10: n312_o = n303_o;
      2'b01: n312_o = 1'b1;
      default: n312_o = 1'b0;
    endcase
  /* src/overture/write_back.vhdl:54:9  */
  always @*
    case (n309_o)
      2'b10: n314_o = dst_reg_i;
      2'b01: n314_o = dst_reg_i;
      default: n314_o = dst_reg_i;
    endcase
  /* src/overture/write_back.vhdl:54:9  */
  always @*
    case (n309_o)
      2'b10: n315_o = result_data_i;
      2'b01: n315_o = result_data_i;
      default: n315_o = result_data_i;
    endcase
  /* src/overture/write_back.vhdl:54:9  */
  always @*
    case (n309_o)
      2'b10: n317_o = n306_o;
      2'b01: n317_o = 1'b0;
      default: n317_o = 1'b0;
    endcase
endmodule

module registers
  (input  clk_i,
   input  reset_i,
   input  [2:0] write_address_i,
   input  [7:0] write_data_i,
   input  write_enable_i,
   input  [2:0] read_address_i,
   output [7:0] read_data_o,
   output [7:0] jump_address_o,
   output [7:0] alu_operand_a_o,
   output [7:0] io_address_o);
  wire [55:0] register_file;
  wire n215_o;
  wire [7:0] n216_o;
  wire [2:0] n219_o;
  wire [7:0] n222_o;
  wire [7:0] n223_o;
  wire [7:0] n224_o;
  wire n228_o;
  wire n229_o;
  wire [2:0] n232_o;
  wire [55:0] n235_o;
  wire [55:0] n237_o;
  reg [55:0] n240_q;
  wire [7:0] n241_o;
  wire [7:0] n242_o;
  wire [7:0] n243_o;
  wire [7:0] n244_o;
  wire [7:0] n245_o;
  wire [7:0] n246_o;
  wire [7:0] n247_o;
  wire [1:0] n248_o;
  reg [7:0] n249_o;
  wire n250_o;
  wire [7:0] n251_o;
  wire n252_o;
  wire [7:0] n253_o;
  wire n254_o;
  wire [7:0] n255_o;
  wire n256_o;
  wire n257_o;
  wire n258_o;
  wire n259_o;
  wire n260_o;
  wire n261_o;
  wire n262_o;
  wire n263_o;
  wire n264_o;
  wire n265_o;
  wire n266_o;
  wire n267_o;
  wire n268_o;
  wire n269_o;
  wire n270_o;
  wire n271_o;
  wire n272_o;
  wire [7:0] n273_o;
  wire [7:0] n274_o;
  wire [7:0] n275_o;
  wire [7:0] n276_o;
  wire [7:0] n277_o;
  wire [7:0] n278_o;
  wire [7:0] n279_o;
  wire [7:0] n280_o;
  wire [7:0] n281_o;
  wire [7:0] n282_o;
  wire [7:0] n283_o;
  wire [7:0] n284_o;
  wire [7:0] n285_o;
  wire [7:0] n286_o;
  wire [55:0] n287_o;
  assign read_data_o = n216_o;
  assign jump_address_o = n222_o;
  assign alu_operand_a_o = n223_o;
  assign io_address_o = n224_o;
  /* src/overture/registers.vhdl:55:12  */
  assign register_file = n240_q; // (signal)
  /* src/overture/registers.vhdl:60:46  */
  assign n215_o = read_address_i == 3'b111;
  /* src/overture/registers.vhdl:60:26  */
  assign n216_o = n215_o ? 8'b00000000 : n255_o;
  /* src/overture/registers.vhdl:60:73  */
  assign n219_o = 3'b110 - read_address_i;
  /* src/overture/registers.vhdl:63:37  */
  assign n222_o = register_file[55:48];
  /* src/overture/registers.vhdl:64:37  */
  assign n223_o = register_file[47:40];
  /* src/overture/registers.vhdl:65:37  */
  assign n224_o = register_file[7:0];
  /* src/overture/registers.vhdl:76:71  */
  assign n228_o = $unsigned(write_address_i) < $unsigned(3'b111);
  /* src/overture/registers.vhdl:76:41  */
  assign n229_o = n228_o & write_enable_i;
  /* src/overture/registers.vhdl:78:35  */
  assign n232_o = 3'b110 - write_address_i;
  /* src/overture/registers.vhdl:76:17  */
  assign n235_o = n229_o ? n287_o : register_file;
  /* src/overture/registers.vhdl:71:13  */
  assign n237_o = reset_i ? 56'b00000000000000000000000000000000000000000000000000000000 : n235_o;
  /* src/overture/registers.vhdl:70:9  */
  always @(posedge clk_i)
    n240_q <= n237_o;
  /* src/overture/registers.vhdl:46:9  */
  assign n241_o = register_file[7:0];
  /* src/overture/registers.vhdl:44:9  */
  assign n242_o = register_file[15:8];
  /* src/overture/registers.vhdl:42:9  */
  assign n243_o = register_file[23:16];
  /* src/overture/registers.vhdl:39:9  */
  assign n244_o = register_file[31:24];
  assign n245_o = register_file[39:32];
  /* src/overture/registers.vhdl:78:35  */
  assign n246_o = register_file[47:40];
  /* src/overture/registers.vhdl:68:5  */
  assign n247_o = register_file[55:48];
  /* src/overture/registers.vhdl:60:72  */
  assign n248_o = n219_o[1:0];
  /* src/overture/registers.vhdl:60:72  */
  always @*
    case (n248_o)
      2'b00: n249_o = n241_o;
      2'b01: n249_o = n242_o;
      2'b10: n249_o = n243_o;
      2'b11: n249_o = n244_o;
    endcase
  assign n250_o = n219_o[0];
  /* src/overture/registers.vhdl:60:72  */
  assign n251_o = n250_o ? n246_o : n245_o;
  assign n252_o = n219_o[1];
  /* src/overture/registers.vhdl:60:72  */
  assign n253_o = n252_o ? n247_o : n251_o;
  /* src/overture/registers.vhdl:60:72  */
  assign n254_o = n219_o[2];
  /* src/overture/registers.vhdl:60:72  */
  assign n255_o = n254_o ? n253_o : n249_o;
  /* src/overture/registers.vhdl:78:21  */
  assign n256_o = n232_o[2];
  /* src/overture/registers.vhdl:78:21  */
  assign n257_o = ~n256_o;
  /* src/overture/registers.vhdl:78:21  */
  assign n258_o = n232_o[1];
  /* src/overture/registers.vhdl:78:21  */
  assign n259_o = ~n258_o;
  /* src/overture/registers.vhdl:78:21  */
  assign n260_o = n257_o & n259_o;
  /* src/overture/registers.vhdl:78:21  */
  assign n261_o = n257_o & n258_o;
  /* src/overture/registers.vhdl:78:21  */
  assign n262_o = n256_o & n259_o;
  /* src/overture/registers.vhdl:78:21  */
  assign n263_o = n256_o & n258_o;
  /* src/overture/registers.vhdl:78:21  */
  assign n264_o = n232_o[0];
  /* src/overture/registers.vhdl:78:21  */
  assign n265_o = ~n264_o;
  /* src/overture/registers.vhdl:78:21  */
  assign n266_o = n260_o & n265_o;
  /* src/overture/registers.vhdl:78:21  */
  assign n267_o = n260_o & n264_o;
  /* src/overture/registers.vhdl:78:21  */
  assign n268_o = n261_o & n265_o;
  /* src/overture/registers.vhdl:78:21  */
  assign n269_o = n261_o & n264_o;
  /* src/overture/registers.vhdl:78:21  */
  assign n270_o = n262_o & n265_o;
  /* src/overture/registers.vhdl:78:21  */
  assign n271_o = n262_o & n264_o;
  /* src/overture/registers.vhdl:78:21  */
  assign n272_o = n263_o & n265_o;
  assign n273_o = register_file[7:0];
  /* src/overture/registers.vhdl:78:21  */
  assign n274_o = n266_o ? write_data_i : n273_o;
  assign n275_o = register_file[15:8];
  /* src/overture/registers.vhdl:78:21  */
  assign n276_o = n267_o ? write_data_i : n275_o;
  assign n277_o = register_file[23:16];
  /* src/overture/registers.vhdl:78:21  */
  assign n278_o = n268_o ? write_data_i : n277_o;
  assign n279_o = register_file[31:24];
  /* src/overture/registers.vhdl:78:21  */
  assign n280_o = n269_o ? write_data_i : n279_o;
  assign n281_o = register_file[39:32];
  /* src/overture/registers.vhdl:78:21  */
  assign n282_o = n270_o ? write_data_i : n281_o;
  assign n283_o = register_file[47:40];
  /* src/overture/registers.vhdl:78:21  */
  assign n284_o = n271_o ? write_data_i : n283_o;
  assign n285_o = register_file[55:48];
  /* src/overture/registers.vhdl:78:21  */
  assign n286_o = n272_o ? write_data_i : n285_o;
  assign n287_o = {n286_o, n284_o, n282_o, n280_o, n278_o, n276_o, n274_o};
endmodule

module execute
  (input  [1:0] instruction_type_i,
   input  [2:0] alu_op_i,
   input  [2:0] jump_condition_i,
   input  [2:0] dst_reg_i,
   input  [7:0] alu_operand_a_i,
   input  [7:0] source_register_i,
   input  [5:0] immediate_value_i,
   output [1:0] instruction_type_o,
   output [2:0] dst_reg_o,
   output [7:0] result_data_o,
   output condition_result_o);
  wire [7:0] alu_result;
  wire [7:0] logic_alu_result;
  wire [7:0] barrel_shift_result;
  wire n190_o;
  wire [7:0] n191_o;
  wire [7:0] n193_o;
  wire n195_o;
  wire n197_o;
  wire n199_o;
  wire n201_o;
  wire [3:0] n203_o;
  reg [7:0] n204_o;
  wire [7:0] alu_inst_result_o;
  wire [7:0] barrel_shifter_inst_output_vector_o;
  wire [3:0] n206_o;
  wire jmp_condition_check_inst_result_o;
  assign instruction_type_o = instruction_type_i;
  assign dst_reg_o = dst_reg_i;
  assign result_data_o = n204_o;
  assign condition_result_o = jmp_condition_check_inst_result_o;
  /* src/overture/execute.vhdl:48:12  */
  assign alu_result = n191_o; // (signal)
  /* src/overture/execute.vhdl:49:12  */
  assign logic_alu_result = alu_inst_result_o; // (signal)
  /* src/overture/execute.vhdl:50:12  */
  assign barrel_shift_result = barrel_shifter_inst_output_vector_o; // (signal)
  /* src/overture/execute.vhdl:61:50  */
  assign n190_o = alu_op_i != 3'b111;
  /* src/overture/execute.vhdl:61:36  */
  assign n191_o = n190_o ? logic_alu_result : barrel_shift_result;
  /* src/overture/execute.vhdl:65:31  */
  assign n193_o = {2'b00, immediate_value_i};
  /* src/overture/execute.vhdl:65:53  */
  assign n195_o = instruction_type_i == 2'b00;
  /* src/overture/execute.vhdl:66:51  */
  assign n197_o = instruction_type_i == 2'b01;
  /* src/overture/execute.vhdl:67:53  */
  assign n199_o = instruction_type_i == 2'b10;
  /* src/overture/execute.vhdl:68:53  */
  assign n201_o = instruction_type_i == 2'b11;
  assign n203_o = {n201_o, n199_o, n197_o, n195_o};
  /* src/overture/execute.vhdl:64:5  */
  always @*
    case (n203_o)
      4'b1000: n204_o = source_register_i;
      4'b0100: n204_o = source_register_i;
      4'b0010: n204_o = alu_result;
      4'b0001: n204_o = n193_o;
      default: n204_o = 8'b00000000;
    endcase
  /* src/overture/execute.vhdl:72:5  */
  alu alu_inst (
    .alu_op_i(alu_op_i),
    .operand_a_i(alu_operand_a_i),
    .operand_b_i(source_register_i),
    .result_o(alu_inst_result_o));
  /* src/overture/execute.vhdl:81:5  */
  barrel_shifter_8 barrel_shifter_inst (
    .input_vector_i(alu_operand_a_i),
    .shift_amount_i(n206_o),
    .output_vector_o(barrel_shifter_inst_output_vector_o));
  /* src/overture/execute.vhdl:87:55  */
  assign n206_o = source_register_i[3:0];
  /* src/overture/execute.vhdl:92:5  */
  condition jmp_condition_check_inst (
    .condition_op_i(jump_condition_i),
    .operand_i(source_register_i),
    .result_o(jmp_condition_check_inst_result_o));
endmodule

module decode
  (input  [7:0] fetched_instruction_i,
   output [1:0] instruction_type_o,
   output [2:0] alu_op_o,
   output [2:0] jump_condition_o,
   output [2:0] src_reg_o,
   output [2:0] dst_reg_o,
   output [5:0] immediate_value_o,
   output halt_o);
  wire [1:0] n122_o;
  wire [5:0] n125_o;
  wire n127_o;
  wire [2:0] n128_o;
  wire n130_o;
  wire [2:0] n131_o;
  wire [2:0] n133_o;
  wire [2:0] n136_o;
  wire [2:0] n139_o;
  wire n142_o;
  wire n144_o;
  wire [2:0] n145_o;
  wire [2:0] n146_o;
  wire n148_o;
  wire [2:0] n149_o;
  wire n151_o;
  wire [2:0] n152_o;
  wire [2:0] n154_o;
  wire [2:0] n157_o;
  wire n160_o;
  wire n162_o;
  wire [3:0] n163_o;
  reg [2:0] n165_o;
  reg [2:0] n168_o;
  reg [2:0] n171_o;
  reg [2:0] n175_o;
  reg [5:0] n178_o;
  reg n182_o;
  assign instruction_type_o = n122_o;
  assign alu_op_o = n165_o;
  assign jump_condition_o = n168_o;
  assign src_reg_o = n171_o;
  assign dst_reg_o = n175_o;
  assign immediate_value_o = n178_o;
  assign halt_o = n182_o;
  /* src/overture/decode.vhdl:43:48  */
  assign n122_o = fetched_instruction_i[7:6];
  /* src/overture/decode.vhdl:71:59  */
  assign n125_o = fetched_instruction_i[5:0];
  /* src/overture/decode.vhdl:66:13  */
  assign n127_o = n122_o == 2'b00;
  /* src/overture/decode.vhdl:79:41  */
  assign n128_o = fetched_instruction_i[5:3];
  /* src/overture/decode.vhdl:79:54  */
  assign n130_o = n128_o != 3'b000;
  /* src/overture/decode.vhdl:84:54  */
  assign n131_o = fetched_instruction_i[2:0];
  /* src/overture/decode.vhdl:79:17  */
  assign n133_o = n130_o ? 3'b000 : n131_o;
  /* src/overture/decode.vhdl:79:17  */
  assign n136_o = n130_o ? 3'b000 : 3'b010;
  /* src/overture/decode.vhdl:79:17  */
  assign n139_o = n130_o ? 3'b000 : 3'b011;
  /* src/overture/decode.vhdl:79:17  */
  assign n142_o = n130_o ? 1'b1 : 1'b0;
  /* src/overture/decode.vhdl:73:13  */
  assign n144_o = n122_o == 2'b01;
  /* src/overture/decode.vhdl:88:51  */
  assign n145_o = fetched_instruction_i[5:3];
  /* src/overture/decode.vhdl:89:51  */
  assign n146_o = fetched_instruction_i[2:0];
  /* src/overture/decode.vhdl:87:13  */
  assign n148_o = n122_o == 2'b10;
  /* src/overture/decode.vhdl:96:41  */
  assign n149_o = fetched_instruction_i[5:3];
  /* src/overture/decode.vhdl:96:54  */
  assign n151_o = n149_o != 3'b000;
  /* src/overture/decode.vhdl:100:62  */
  assign n152_o = fetched_instruction_i[2:0];
  /* src/overture/decode.vhdl:96:17  */
  assign n154_o = n151_o ? 3'b000 : n152_o;
  /* src/overture/decode.vhdl:96:17  */
  assign n157_o = n151_o ? 3'b000 : 3'b011;
  /* src/overture/decode.vhdl:96:17  */
  assign n160_o = n151_o ? 1'b1 : 1'b0;
  /* src/overture/decode.vhdl:91:13  */
  assign n162_o = n122_o == 2'b11;
  assign n163_o = {n162_o, n148_o, n144_o, n127_o};
  /* src/overture/decode.vhdl:65:9  */
  always @*
    case (n163_o)
      4'b1000: n165_o = 3'b000;
      4'b0100: n165_o = 3'b000;
      4'b0010: n165_o = n133_o;
      4'b0001: n165_o = 3'b000;
      default: n165_o = 3'b000;
    endcase
  /* src/overture/decode.vhdl:65:9  */
  always @*
    case (n163_o)
      4'b1000: n168_o = n154_o;
      4'b0100: n168_o = 3'b000;
      4'b0010: n168_o = 3'b000;
      4'b0001: n168_o = 3'b000;
      default: n168_o = 3'b000;
    endcase
  /* src/overture/decode.vhdl:65:9  */
  always @*
    case (n163_o)
      4'b1000: n171_o = n157_o;
      4'b0100: n171_o = n145_o;
      4'b0010: n171_o = n136_o;
      4'b0001: n171_o = 3'b000;
      default: n171_o = 3'b000;
    endcase
  /* src/overture/decode.vhdl:65:9  */
  always @*
    case (n163_o)
      4'b1000: n175_o = 3'b000;
      4'b0100: n175_o = n146_o;
      4'b0010: n175_o = n139_o;
      4'b0001: n175_o = 3'b000;
      default: n175_o = 3'b000;
    endcase
  /* src/overture/decode.vhdl:65:9  */
  always @*
    case (n163_o)
      4'b1000: n178_o = 6'b000000;
      4'b0100: n178_o = 6'b000000;
      4'b0010: n178_o = 6'b000000;
      4'b0001: n178_o = n125_o;
      default: n178_o = 6'b000000;
    endcase
  /* src/overture/decode.vhdl:65:9  */
  always @*
    case (n163_o)
      4'b1000: n182_o = n160_o;
      4'b0100: n182_o = 1'b0;
      4'b0010: n182_o = n142_o;
      4'b0001: n182_o = 1'b0;
      default: n182_o = 1'b1;
    endcase
endmodule

module fetch
  (input  clk_i,
   input  reset_i,
   input  perform_jump_i,
   input  [7:0] jump_address_i,
   input  halt_i,
   input  [7:0] memory_data_i,
   output [7:0] memory_address_o,
   output [7:0] fetched_instruction_o);
  reg [7:0] program_counter_reg;
  wire [7:0] n107_o;
  wire [7:0] n108_o;
  wire [7:0] n109_o;
  wire [7:0] n111_o;
  reg [7:0] n114_q;
  assign memory_address_o = program_counter_reg;
  assign fetched_instruction_o = memory_data_i;
  /* src/overture/fetch.vhdl:45:12  */
  always @*
    program_counter_reg = n114_q; // (isignal)
  initial
    program_counter_reg = 8'b00000000;
  /* src/overture/fetch.vhdl:66:68  */
  assign n107_o = program_counter_reg + 8'b00000001;
  /* src/overture/fetch.vhdl:61:21  */
  assign n108_o = perform_jump_i ? jump_address_i : n107_o;
  /* src/overture/fetch.vhdl:57:17  */
  assign n109_o = halt_i ? program_counter_reg : n108_o;
  /* src/overture/fetch.vhdl:53:13  */
  assign n111_o = reset_i ? 8'b00000000 : n109_o;
  /* src/overture/fetch.vhdl:52:9  */
  always @(posedge clk_i)
    n114_q <= n111_o;
  initial
    n114_q = 8'b00000000;
endmodule

module soc_io
  (input  clk,
   input  reset,
   input  [4:0] joystick,
   input  uart_rx,
   input  [7:0] io_address,
   input  [7:0] io_data_write,
   input  io_data_write_enable,
   input  io_data_read_enable,
   output uart_tx,
   output [4:0] leds,
   output rgbled_ser,
   output [7:0] io_data_read);
  wire [7:0] io_data_from_ram;
  wire [7:0] io_data_from_gpio;
  wire [7:0] io_data_from_delay_us;
  wire [7:0] io_data_from_delay_ms;
  wire [7:0] io_data_from_delay_s;
  wire [7:0] n90_o;
  wire [7:0] n91_o;
  wire [7:0] n92_o;
  wire [7:0] n93_o;
  wire [7:0] overture_ram_data_out_o;
  wire [4:0] overture_gpio_leds;
  wire [7:0] overture_gpio_data_out_o;
  wire [7:0] overture_delay_us_data_out_o;
  wire [7:0] overture_delay_ms_data_out_o;
  wire [7:0] overture_delay_s_data_out_o;
  localparam n100_o = 1'b0;
  assign uart_tx = uart_rx;
  assign leds = overture_gpio_leds;
  assign rgbled_ser = n100_o;
  assign io_data_read = n93_o;
  /* src/peripherals/soc_io.vhdl:54:12  */
  assign io_data_from_ram = overture_ram_data_out_o; // (signal)
  /* src/peripherals/soc_io.vhdl:55:12  */
  assign io_data_from_gpio = overture_gpio_data_out_o; // (signal)
  /* src/peripherals/soc_io.vhdl:56:12  */
  assign io_data_from_delay_us = overture_delay_us_data_out_o; // (signal)
  /* src/peripherals/soc_io.vhdl:57:12  */
  assign io_data_from_delay_ms = overture_delay_ms_data_out_o; // (signal)
  /* src/peripherals/soc_io.vhdl:58:12  */
  assign io_data_from_delay_s = overture_delay_s_data_out_o; // (signal)
  /* src/peripherals/soc_io.vhdl:64:38  */
  assign n90_o = io_data_from_ram | io_data_from_gpio;
  /* src/peripherals/soc_io.vhdl:64:59  */
  assign n91_o = n90_o | io_data_from_delay_us;
  /* src/peripherals/soc_io.vhdl:64:84  */
  assign n92_o = n91_o | io_data_from_delay_ms;
  /* src/peripherals/soc_io.vhdl:65:43  */
  assign n93_o = n92_o | io_data_from_delay_s;
  /* src/peripherals/soc_io.vhdl:68:5  */
  ram_16_8_c088da704afbba144cf24d5031b3e5be9155c155 overture_ram (
    .clk_i(clk),
    .reset_i(reset),
    .address_i(io_address),
    .write_enable_i(io_data_write_enable),
    .read_enable_i(io_data_read_enable),
    .data_in_i(io_data_write),
    .data_out_o(overture_ram_data_out_o));
  /* src/peripherals/soc_io.vhdl:85:5  */
  gpio_34a12b9d5d93ecae9e83faabe2db8b8ac094a1b7 overture_gpio (
    .clk(clk),
    .reset(reset),
    .joystick(joystick),
    .address_i(io_address),
    .write_enable_i(io_data_write_enable),
    .read_enable_i(io_data_read_enable),
    .data_in_i(io_data_write),
    .leds(overture_gpio_leds),
    .data_out_o(overture_gpio_data_out_o));
  /* src/peripherals/soc_io.vhdl:102:5  */
  delay_27_7818f420e30d1f01fee896a2a9af6b734c9aeae6 overture_delay_us (
    .clk(clk),
    .reset(reset),
    .address_i(io_address),
    .write_enable_i(io_data_write_enable),
    .read_enable_i(io_data_read_enable),
    .data_in_i(io_data_write),
    .data_out_o(overture_delay_us_data_out_o));
  /* src/peripherals/soc_io.vhdl:118:5  */
  delay_27000_b29ef73d392af6b717c08025ed05d31a4c4c962a overture_delay_ms (
    .clk(clk),
    .reset(reset),
    .address_i(io_address),
    .write_enable_i(io_data_write_enable),
    .read_enable_i(io_data_read_enable),
    .data_in_i(io_data_write),
    .data_out_o(overture_delay_ms_data_out_o));
  /* src/peripherals/soc_io.vhdl:134:5  */
  delay_27000000_8f550429353b561f37bf264d5b9f8ea86cb39159 overture_delay_s (
    .clk(clk),
    .reset(reset),
    .address_i(io_address),
    .write_enable_i(io_data_write_enable),
    .read_enable_i(io_data_read_enable),
    .data_in_i(io_data_write),
    .data_out_o(overture_delay_s_data_out_o));
endmodule

module rom_256_8
  (input  [7:0] address_i,
   output [7:0] data_out_o);
  reg [2047:0] rom_data;
  wire [7:0] n81_o;
  wire [7:0] n85_data; // mem_rd
  assign data_out_o = n85_data;
  /* src/rom.vhdl:35:12  */
  always @*
    rom_data = 2048'b00000000100001101000010000000001100001011010011110110001000100001000011010100111100011101010000110101010010001001010110010011101000000001000000100000001100000100100010110110001000100101000011010011111101110110001100111000101100011100000000110000001101100100100010010011110000001111000000101000101000001011100010111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111; // (isignal)
  initial
    rom_data = 2048'b00000000100001101000010000000001100001011010011110110001000100001000011010100111100011101010000110101010010001001010110010011101000000001000000100000001100000100100010110110001000100101000011010011111101110110001100111000101100011100000000110000001101100100100010010011110000001111000000101000101000001011100010111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
  /* src/rom.vhdl:82:28  */
  assign n81_o = 8'b11111111 - address_i;
  /* src/rom.vhdl:26:9  */
  reg [7:0] n84[255:0] ; // memory
  initial begin
    n84[255] = 8'b00000000;
    n84[254] = 8'b10000110;
    n84[253] = 8'b10000100;
    n84[252] = 8'b00000001;
    n84[251] = 8'b10000101;
    n84[250] = 8'b10100111;
    n84[249] = 8'b10110001;
    n84[248] = 8'b00010000;
    n84[247] = 8'b10000110;
    n84[246] = 8'b10100111;
    n84[245] = 8'b10001110;
    n84[244] = 8'b10100001;
    n84[243] = 8'b10101010;
    n84[242] = 8'b01000100;
    n84[241] = 8'b10101100;
    n84[240] = 8'b10011101;
    n84[239] = 8'b00000000;
    n84[238] = 8'b10000001;
    n84[237] = 8'b00000001;
    n84[236] = 8'b10000010;
    n84[235] = 8'b01000101;
    n84[234] = 8'b10110001;
    n84[233] = 8'b00010010;
    n84[232] = 8'b10000110;
    n84[231] = 8'b10011111;
    n84[230] = 8'b10111011;
    n84[229] = 8'b00011001;
    n84[228] = 8'b11000101;
    n84[227] = 8'b10001110;
    n84[226] = 8'b00000001;
    n84[225] = 8'b10000001;
    n84[224] = 8'b10110010;
    n84[223] = 8'b01000100;
    n84[222] = 8'b10011110;
    n84[221] = 8'b00000111;
    n84[220] = 8'b10000001;
    n84[219] = 8'b01000101;
    n84[218] = 8'b00000101;
    n84[217] = 8'b11000101;
    n84[216] = 8'b11111111;
    n84[215] = 8'b11111111;
    n84[214] = 8'b11111111;
    n84[213] = 8'b11111111;
    n84[212] = 8'b11111111;
    n84[211] = 8'b11111111;
    n84[210] = 8'b11111111;
    n84[209] = 8'b11111111;
    n84[208] = 8'b11111111;
    n84[207] = 8'b11111111;
    n84[206] = 8'b11111111;
    n84[205] = 8'b11111111;
    n84[204] = 8'b11111111;
    n84[203] = 8'b11111111;
    n84[202] = 8'b11111111;
    n84[201] = 8'b11111111;
    n84[200] = 8'b11111111;
    n84[199] = 8'b11111111;
    n84[198] = 8'b11111111;
    n84[197] = 8'b11111111;
    n84[196] = 8'b11111111;
    n84[195] = 8'b11111111;
    n84[194] = 8'b11111111;
    n84[193] = 8'b11111111;
    n84[192] = 8'b11111111;
    n84[191] = 8'b11111111;
    n84[190] = 8'b11111111;
    n84[189] = 8'b11111111;
    n84[188] = 8'b11111111;
    n84[187] = 8'b11111111;
    n84[186] = 8'b11111111;
    n84[185] = 8'b11111111;
    n84[184] = 8'b11111111;
    n84[183] = 8'b11111111;
    n84[182] = 8'b11111111;
    n84[181] = 8'b11111111;
    n84[180] = 8'b11111111;
    n84[179] = 8'b11111111;
    n84[178] = 8'b11111111;
    n84[177] = 8'b11111111;
    n84[176] = 8'b11111111;
    n84[175] = 8'b11111111;
    n84[174] = 8'b11111111;
    n84[173] = 8'b11111111;
    n84[172] = 8'b11111111;
    n84[171] = 8'b11111111;
    n84[170] = 8'b11111111;
    n84[169] = 8'b11111111;
    n84[168] = 8'b11111111;
    n84[167] = 8'b11111111;
    n84[166] = 8'b11111111;
    n84[165] = 8'b11111111;
    n84[164] = 8'b11111111;
    n84[163] = 8'b11111111;
    n84[162] = 8'b11111111;
    n84[161] = 8'b11111111;
    n84[160] = 8'b11111111;
    n84[159] = 8'b11111111;
    n84[158] = 8'b11111111;
    n84[157] = 8'b11111111;
    n84[156] = 8'b11111111;
    n84[155] = 8'b11111111;
    n84[154] = 8'b11111111;
    n84[153] = 8'b11111111;
    n84[152] = 8'b11111111;
    n84[151] = 8'b11111111;
    n84[150] = 8'b11111111;
    n84[149] = 8'b11111111;
    n84[148] = 8'b11111111;
    n84[147] = 8'b11111111;
    n84[146] = 8'b11111111;
    n84[145] = 8'b11111111;
    n84[144] = 8'b11111111;
    n84[143] = 8'b11111111;
    n84[142] = 8'b11111111;
    n84[141] = 8'b11111111;
    n84[140] = 8'b11111111;
    n84[139] = 8'b11111111;
    n84[138] = 8'b11111111;
    n84[137] = 8'b11111111;
    n84[136] = 8'b11111111;
    n84[135] = 8'b11111111;
    n84[134] = 8'b11111111;
    n84[133] = 8'b11111111;
    n84[132] = 8'b11111111;
    n84[131] = 8'b11111111;
    n84[130] = 8'b11111111;
    n84[129] = 8'b11111111;
    n84[128] = 8'b11111111;
    n84[127] = 8'b11111111;
    n84[126] = 8'b11111111;
    n84[125] = 8'b11111111;
    n84[124] = 8'b11111111;
    n84[123] = 8'b11111111;
    n84[122] = 8'b11111111;
    n84[121] = 8'b11111111;
    n84[120] = 8'b11111111;
    n84[119] = 8'b11111111;
    n84[118] = 8'b11111111;
    n84[117] = 8'b11111111;
    n84[116] = 8'b11111111;
    n84[115] = 8'b11111111;
    n84[114] = 8'b11111111;
    n84[113] = 8'b11111111;
    n84[112] = 8'b11111111;
    n84[111] = 8'b11111111;
    n84[110] = 8'b11111111;
    n84[109] = 8'b11111111;
    n84[108] = 8'b11111111;
    n84[107] = 8'b11111111;
    n84[106] = 8'b11111111;
    n84[105] = 8'b11111111;
    n84[104] = 8'b11111111;
    n84[103] = 8'b11111111;
    n84[102] = 8'b11111111;
    n84[101] = 8'b11111111;
    n84[100] = 8'b11111111;
    n84[99] = 8'b11111111;
    n84[98] = 8'b11111111;
    n84[97] = 8'b11111111;
    n84[96] = 8'b11111111;
    n84[95] = 8'b11111111;
    n84[94] = 8'b11111111;
    n84[93] = 8'b11111111;
    n84[92] = 8'b11111111;
    n84[91] = 8'b11111111;
    n84[90] = 8'b11111111;
    n84[89] = 8'b11111111;
    n84[88] = 8'b11111111;
    n84[87] = 8'b11111111;
    n84[86] = 8'b11111111;
    n84[85] = 8'b11111111;
    n84[84] = 8'b11111111;
    n84[83] = 8'b11111111;
    n84[82] = 8'b11111111;
    n84[81] = 8'b11111111;
    n84[80] = 8'b11111111;
    n84[79] = 8'b11111111;
    n84[78] = 8'b11111111;
    n84[77] = 8'b11111111;
    n84[76] = 8'b11111111;
    n84[75] = 8'b11111111;
    n84[74] = 8'b11111111;
    n84[73] = 8'b11111111;
    n84[72] = 8'b11111111;
    n84[71] = 8'b11111111;
    n84[70] = 8'b11111111;
    n84[69] = 8'b11111111;
    n84[68] = 8'b11111111;
    n84[67] = 8'b11111111;
    n84[66] = 8'b11111111;
    n84[65] = 8'b11111111;
    n84[64] = 8'b11111111;
    n84[63] = 8'b11111111;
    n84[62] = 8'b11111111;
    n84[61] = 8'b11111111;
    n84[60] = 8'b11111111;
    n84[59] = 8'b11111111;
    n84[58] = 8'b11111111;
    n84[57] = 8'b11111111;
    n84[56] = 8'b11111111;
    n84[55] = 8'b11111111;
    n84[54] = 8'b11111111;
    n84[53] = 8'b11111111;
    n84[52] = 8'b11111111;
    n84[51] = 8'b11111111;
    n84[50] = 8'b11111111;
    n84[49] = 8'b11111111;
    n84[48] = 8'b11111111;
    n84[47] = 8'b11111111;
    n84[46] = 8'b11111111;
    n84[45] = 8'b11111111;
    n84[44] = 8'b11111111;
    n84[43] = 8'b11111111;
    n84[42] = 8'b11111111;
    n84[41] = 8'b11111111;
    n84[40] = 8'b11111111;
    n84[39] = 8'b11111111;
    n84[38] = 8'b11111111;
    n84[37] = 8'b11111111;
    n84[36] = 8'b11111111;
    n84[35] = 8'b11111111;
    n84[34] = 8'b11111111;
    n84[33] = 8'b11111111;
    n84[32] = 8'b11111111;
    n84[31] = 8'b11111111;
    n84[30] = 8'b11111111;
    n84[29] = 8'b11111111;
    n84[28] = 8'b11111111;
    n84[27] = 8'b11111111;
    n84[26] = 8'b11111111;
    n84[25] = 8'b11111111;
    n84[24] = 8'b11111111;
    n84[23] = 8'b11111111;
    n84[22] = 8'b11111111;
    n84[21] = 8'b11111111;
    n84[20] = 8'b11111111;
    n84[19] = 8'b11111111;
    n84[18] = 8'b11111111;
    n84[17] = 8'b11111111;
    n84[16] = 8'b11111111;
    n84[15] = 8'b11111111;
    n84[14] = 8'b11111111;
    n84[13] = 8'b11111111;
    n84[12] = 8'b11111111;
    n84[11] = 8'b11111111;
    n84[10] = 8'b11111111;
    n84[9] = 8'b11111111;
    n84[8] = 8'b11111111;
    n84[7] = 8'b11111111;
    n84[6] = 8'b11111111;
    n84[5] = 8'b11111111;
    n84[4] = 8'b11111111;
    n84[3] = 8'b11111111;
    n84[2] = 8'b11111111;
    n84[1] = 8'b11111111;
    n84[0] = 8'b11111111;
    end
  assign n85_data = n84[n81_o];
  /* src/rom.vhdl:82:28  */
endmodule

module overture
  (input  clk_i,
   input  reset_i,
   input  [7:0] memory_data_i,
   input  [7:0] io_data_read_i,
   output [7:0] memory_address_o,
   output [7:0] io_address_o,
   output [7:0] io_data_write_o,
   output io_data_write_enable_o,
   output io_data_read_enable_o,
   output cpu_halted_o);
  wire perform_jump_ex_fe;
  wire [7:0] jump_address_rf_fe;
  wire cpu_halt_de_fe;
  wire [7:0] fetched_instruction_fe_de;
  wire [1:0] instruction_type_de_ex;
  wire [1:0] instruction_type_ex_wb;
  wire [5:0] immediate_value_de_ex;
  wire [2:0] alu_op_de_ex;
  wire [2:0] jump_condition_de_ex;
  wire [2:0] src_reg_addr_de_rf;
  wire [2:0] dst_reg_addr_de_ex;
  wire [2:0] dst_reg_addr_ex_wb;
  wire [7:0] result_data_ex_wb;
  wire [7:0] alu_operand_a_rf_ex;
  wire [7:0] source_register_ex;
  wire [7:0] read_register_rf_ex;
  wire register_write_enable_wb_rf;
  wire [2:0] write_address_wb_rf;
  wire [7:0] write_data_wb_rf;
  reg cpu_halted_reg;
  wire n43_o;
  wire [7:0] fetch_unit_memory_address_o;
  wire [7:0] fetch_unit_fetched_instruction_o;
  wire [1:0] decode_unit_instruction_type_o;
  wire [2:0] decode_unit_alu_op_o;
  wire [2:0] decode_unit_jump_condition_o;
  wire [2:0] decode_unit_src_reg_o;
  wire [2:0] decode_unit_dst_reg_o;
  wire [5:0] decode_unit_immediate_value_o;
  wire decode_unit_halt_o;
  wire n56_o;
  wire [7:0] n57_o;
  wire n60_o;
  wire n61_o;
  wire [1:0] execute_unit_instruction_type_o;
  wire [2:0] execute_unit_dst_reg_o;
  wire [7:0] execute_unit_result_data_o;
  wire execute_unit_condition_result_o;
  wire [7:0] register_file_read_data_o;
  wire [7:0] register_file_jump_address_o;
  wire [7:0] register_file_alu_operand_a_o;
  wire [7:0] register_file_io_address_o;
  wire [7:0] write_back_unit_register_data_o;
  wire write_back_unit_registers_write_enable_o;
  wire [2:0] write_back_unit_registers_write_address_o;
  wire [7:0] write_back_unit_io_data_o;
  wire write_back_unit_io_data_write_enable_o;
  reg n76_q;
  assign memory_address_o = fetch_unit_memory_address_o;
  assign io_address_o = register_file_io_address_o;
  assign io_data_write_o = write_back_unit_io_data_o;
  assign io_data_write_enable_o = write_back_unit_io_data_write_enable_o;
  assign io_data_read_enable_o = n61_o;
  assign cpu_halted_o = cpu_halted_reg;
  /* src/overture/overture.vhdl:95:12  */
  assign perform_jump_ex_fe = execute_unit_condition_result_o; // (signal)
  /* src/overture/overture.vhdl:97:12  */
  assign jump_address_rf_fe = register_file_jump_address_o; // (signal)
  /* src/overture/overture.vhdl:99:12  */
  assign cpu_halt_de_fe = decode_unit_halt_o; // (signal)
  /* src/overture/overture.vhdl:101:12  */
  assign fetched_instruction_fe_de = fetch_unit_fetched_instruction_o; // (signal)
  /* src/overture/overture.vhdl:103:12  */
  assign instruction_type_de_ex = decode_unit_instruction_type_o; // (signal)
  /* src/overture/overture.vhdl:105:12  */
  assign instruction_type_ex_wb = execute_unit_instruction_type_o; // (signal)
  /* src/overture/overture.vhdl:107:12  */
  assign immediate_value_de_ex = decode_unit_immediate_value_o; // (signal)
  /* src/overture/overture.vhdl:109:12  */
  assign alu_op_de_ex = decode_unit_alu_op_o; // (signal)
  /* src/overture/overture.vhdl:111:12  */
  assign jump_condition_de_ex = decode_unit_jump_condition_o; // (signal)
  /* src/overture/overture.vhdl:113:12  */
  assign src_reg_addr_de_rf = decode_unit_src_reg_o; // (signal)
  /* src/overture/overture.vhdl:115:12  */
  assign dst_reg_addr_de_ex = decode_unit_dst_reg_o; // (signal)
  /* src/overture/overture.vhdl:117:12  */
  assign dst_reg_addr_ex_wb = execute_unit_dst_reg_o; // (signal)
  /* src/overture/overture.vhdl:119:12  */
  assign result_data_ex_wb = execute_unit_result_data_o; // (signal)
  /* src/overture/overture.vhdl:121:12  */
  assign alu_operand_a_rf_ex = register_file_alu_operand_a_o; // (signal)
  /* src/overture/overture.vhdl:125:12  */
  assign source_register_ex = n57_o; // (signal)
  /* src/overture/overture.vhdl:127:12  */
  assign read_register_rf_ex = register_file_read_data_o; // (signal)
  /* src/overture/overture.vhdl:129:12  */
  assign register_write_enable_wb_rf = write_back_unit_registers_write_enable_o; // (signal)
  /* src/overture/overture.vhdl:131:12  */
  assign write_address_wb_rf = write_back_unit_registers_write_address_o; // (signal)
  /* src/overture/overture.vhdl:133:12  */
  assign write_data_wb_rf = write_back_unit_register_data_o; // (signal)
  /* src/overture/overture.vhdl:136:12  */
  always @*
    cpu_halted_reg = n76_q; // (isignal)
  initial
    cpu_halted_reg = 1'b0;
  /* src/overture/overture.vhdl:145:13  */
  assign n43_o = reset_i ? 1'b0 : cpu_halt_de_fe;
  /* src/overture/overture.vhdl:154:5  */
  fetch fetch_unit (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .perform_jump_i(perform_jump_ex_fe),
    .jump_address_i(jump_address_rf_fe),
    .halt_i(cpu_halt_de_fe),
    .memory_data_i(memory_data_i),
    .memory_address_o(fetch_unit_memory_address_o),
    .fetched_instruction_o(fetch_unit_fetched_instruction_o));
  /* src/overture/overture.vhdl:166:5  */
  decode decode_unit (
    .fetched_instruction_i(fetched_instruction_fe_de),
    .instruction_type_o(decode_unit_instruction_type_o),
    .alu_op_o(decode_unit_alu_op_o),
    .jump_condition_o(decode_unit_jump_condition_o),
    .src_reg_o(decode_unit_src_reg_o),
    .dst_reg_o(decode_unit_dst_reg_o),
    .immediate_value_o(decode_unit_immediate_value_o),
    .halt_o(decode_unit_halt_o));
  /* src/overture/overture.vhdl:178:66  */
  assign n56_o = src_reg_addr_de_rf == 3'b111;
  /* src/overture/overture.vhdl:178:42  */
  assign n57_o = n56_o ? io_data_read_i : read_register_rf_ex;
  /* src/overture/overture.vhdl:179:58  */
  assign n60_o = src_reg_addr_de_rf == 3'b111;
  /* src/overture/overture.vhdl:179:34  */
  assign n61_o = n60_o ? 1'b1 : 1'b0;
  /* src/overture/overture.vhdl:181:5  */
  execute execute_unit (
    .instruction_type_i(instruction_type_de_ex),
    .alu_op_i(alu_op_de_ex),
    .jump_condition_i(jump_condition_de_ex),
    .dst_reg_i(dst_reg_addr_de_ex),
    .alu_operand_a_i(alu_operand_a_rf_ex),
    .source_register_i(source_register_ex),
    .immediate_value_i(immediate_value_de_ex),
    .instruction_type_o(execute_unit_instruction_type_o),
    .dst_reg_o(execute_unit_dst_reg_o),
    .result_data_o(execute_unit_result_data_o),
    .condition_result_o(execute_unit_condition_result_o));
  /* src/overture/overture.vhdl:196:5  */
  registers register_file (
    .clk_i(clk_i),
    .reset_i(reset_i),
    .write_address_i(write_address_wb_rf),
    .write_data_i(write_data_wb_rf),
    .write_enable_i(register_write_enable_wb_rf),
    .read_address_i(src_reg_addr_de_rf),
    .read_data_o(register_file_read_data_o),
    .jump_address_o(register_file_jump_address_o),
    .alu_operand_a_o(register_file_alu_operand_a_o),
    .io_address_o(register_file_io_address_o));
  /* src/overture/overture.vhdl:210:5  */
  write_back write_back_unit (
    .instruction_type_i(instruction_type_ex_wb),
    .dst_reg_i(dst_reg_addr_ex_wb),
    .result_data_i(result_data_ex_wb),
    .register_data_o(write_back_unit_register_data_o),
    .registers_write_enable_o(write_back_unit_registers_write_enable_o),
    .registers_write_address_o(write_back_unit_registers_write_address_o),
    .io_data_o(write_back_unit_io_data_o),
    .io_data_write_enable_o(write_back_unit_io_data_write_enable_o));
  /* src/overture/overture.vhdl:144:9  */
  always @(posedge clk_i)
    n76_q <= n43_o;
  initial
    n76_q = 1'b0;
endmodule

module soc_top
  (input  clk,
   input  reset_unsanitized,
   input  [4:0] joystick_unsanitized,
   input  uart_rx_unsanitized,
   output uart_tx,
   output [4:0] leds_n,
   output cpu_halted_n,
   output rgbled_ser);
  reg [20:0] sanitizing_reg;
  wire reset;
  wire [7:0] memory_data;
  wire [7:0] memory_address;
  wire [7:0] io_address;
  wire [7:0] io_data_from_cpu;
  wire [7:0] io_data_to_cpu;
  wire io_data_write_enable;
  wire io_data_read_enable;
  wire [4:0] leds;
  wire cpu_halted;
  wire [4:0] joystick;
  wire uart_rx;
  wire n5_o;
  wire [4:0] n6_o;
  wire n7_o;
  wire [4:0] n8_o;
  wire n9_o;
  wire [4:0] n12_o;
  wire [5:0] n13_o;
  wire n14_o;
  wire [6:0] n15_o;
  wire [6:0] n16_o;
  wire [6:0] n17_o;
  wire [20:0] n18_o;
  wire [7:0] overture_cpu_memory_address_o;
  wire [7:0] overture_cpu_io_address_o;
  wire [7:0] overture_cpu_io_data_write_o;
  wire overture_cpu_io_data_write_enable_o;
  wire overture_cpu_io_data_read_enable_o;
  wire overture_cpu_cpu_halted_o;
  wire [7:0] overture_rom_data_out_o;
  wire overture_iomap_uart_tx;
  wire [4:0] overture_iomap_leds;
  wire overture_iomap_rgbled_ser;
  wire [7:0] overture_iomap_io_data_read;
  reg [20:0] n32_q;
  assign uart_tx = overture_iomap_uart_tx;
  assign leds_n = n8_o;
  assign cpu_halted_n = n9_o;
  assign rgbled_ser = overture_iomap_rgbled_ser;
  /* src/soc_top.vhdl:32:12  */
  always @*
    sanitizing_reg = n32_q; // (isignal)
  initial
    sanitizing_reg = 21'b000000000000000000000;
  /* src/soc_top.vhdl:34:12  */
  assign reset = n5_o; // (signal)
  /* src/soc_top.vhdl:36:12  */
  assign memory_data = overture_rom_data_out_o; // (signal)
  /* src/soc_top.vhdl:37:12  */
  assign memory_address = overture_cpu_memory_address_o; // (signal)
  /* src/soc_top.vhdl:38:12  */
  assign io_address = overture_cpu_io_address_o; // (signal)
  /* src/soc_top.vhdl:39:12  */
  assign io_data_from_cpu = overture_cpu_io_data_write_o; // (signal)
  /* src/soc_top.vhdl:40:12  */
  assign io_data_to_cpu = overture_iomap_io_data_read; // (signal)
  /* src/soc_top.vhdl:41:12  */
  assign io_data_write_enable = overture_cpu_io_data_write_enable_o; // (signal)
  /* src/soc_top.vhdl:42:12  */
  assign io_data_read_enable = overture_cpu_io_data_read_enable_o; // (signal)
  /* src/soc_top.vhdl:44:12  */
  assign leds = overture_iomap_leds; // (signal)
  /* src/soc_top.vhdl:45:12  */
  assign cpu_halted = overture_cpu_cpu_halted_o; // (signal)
  /* src/soc_top.vhdl:46:12  */
  assign joystick = n6_o; // (signal)
  /* src/soc_top.vhdl:47:12  */
  assign uart_rx = n7_o; // (signal)
  /* src/soc_top.vhdl:52:37  */
  assign n5_o = sanitizing_reg[0];
  /* src/soc_top.vhdl:53:37  */
  assign n6_o = sanitizing_reg[5:1];
  /* src/soc_top.vhdl:54:37  */
  assign n7_o = sanitizing_reg[6];
  /* src/soc_top.vhdl:57:24  */
  assign n8_o = ~leds;
  /* src/soc_top.vhdl:58:24  */
  assign n9_o = ~cpu_halted;
  /* src/soc_top.vhdl:65:34  */
  assign n12_o = ~joystick_unsanitized;
  /* src/soc_top.vhdl:64:54  */
  assign n13_o = {uart_rx_unsanitized, n12_o};
  /* src/soc_top.vhdl:66:34  */
  assign n14_o = ~reset_unsanitized;
  /* src/soc_top.vhdl:65:59  */
  assign n15_o = {n13_o, n14_o};
  /* src/soc_top.vhdl:67:48  */
  assign n16_o = sanitizing_reg[20:14];
  /* src/soc_top.vhdl:68:48  */
  assign n17_o = sanitizing_reg[13:7];
  assign n18_o = {n15_o, n16_o, n17_o};
  /* src/soc_top.vhdl:73:5  */
  overture overture_cpu (
    .clk_i(clk),
    .reset_i(reset),
    .memory_data_i(memory_data),
    .io_data_read_i(io_data_to_cpu),
    .memory_address_o(overture_cpu_memory_address_o),
    .io_address_o(overture_cpu_io_address_o),
    .io_data_write_o(overture_cpu_io_data_write_o),
    .io_data_write_enable_o(overture_cpu_io_data_write_enable_o),
    .io_data_read_enable_o(overture_cpu_io_data_read_enable_o),
    .cpu_halted_o(overture_cpu_cpu_halted_o));
  /* src/soc_top.vhdl:88:5  */
  rom_256_8 overture_rom (
    .address_i(memory_address),
    .data_out_o(overture_rom_data_out_o));
  /* src/soc_top.vhdl:95:5  */
  soc_io overture_iomap (
    .clk(clk),
    .reset(reset),
    .joystick(joystick),
    .uart_rx(uart_rx),
    .io_address(io_address),
    .io_data_write(io_data_from_cpu),
    .io_data_write_enable(io_data_write_enable),
    .io_data_read_enable(io_data_read_enable),
    .uart_tx(overture_iomap_uart_tx),
    .leds(overture_iomap_leds),
    .rgbled_ser(overture_iomap_rgbled_ser),
    .io_data_read(overture_iomap_io_data_read));
  /* src/soc_top.vhdl:63:9  */
  always @(posedge clk)
    n32_q <= n18_o;
  initial
    n32_q = 21'b000000000000000000000;
endmodule

