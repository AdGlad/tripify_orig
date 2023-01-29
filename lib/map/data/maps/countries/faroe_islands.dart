import 'package:flutter/material.dart';

class SMapFaroeIslandsColors {
  /// Østerø
  final Color? foOS;

  /// Norderøerne
  final Color? foNO;

  /// Sandø
  final Color? foSA;

  /// Strømø
  final Color? foST;

  /// Suderø
  final Color? foSU;

  /// Vågø
  final Color? foVG;
  SMapFaroeIslandsColors({
    this.foOS,
    this.foNO,
    this.foSA,
    this.foST,
    this.foSU,
    this.foVG,
  });
  Map<String, Color?> toMap() {
    return {
      "FO-OS": foOS,
      "FO-NO": foNO,
      "FO-SA": foSA,
      "FO-ST": foST,
      "FO-SU": foSU,
      "FO-VG": foVG,
    };
  }

  static SMapFaroeIslandsColors fromMap(Map<String, Color?> map) {
    return SMapFaroeIslandsColors(
      foOS: map["FO-OS"],
      foNO: map["FO-NO"],
      foSA: map["FO-SA"],
      foST: map["FO-ST"],
      foSU: map["FO-SU"],
      foVG: map["FO-VG"],
    );
  }
}

class SMapFaroeIslands {
  static const String instructions =
      """{"n": "FaroeIslands", "w": 529.10907, "h": 792.95703, "g": {"a": "-7.681426,62.400788","b": "-6.258475,61.394739"}, "i":[{"n": "Østerø", "u": "FO-OS", "i": ["m0.6937953,0.2580324", "l0.6937953,0.2582215", "l0.6973485,0.2591800", "l0.7168152,0.2644514", "l0.7207652,0.2675032", "l0.7217858,0.2708704", "l0.7222394,0.2723585", "l0.7261705,0.2754608", "l0.7263217,0.2754608", "l0.7317081,0.2753221", "l0.7370945,0.2799882", "l0.7454482,0.2872017", "l0.7457695,0.2874791", "l0.7421597,0.2891312", "l0.7292512,0.2950331", "l0.7278526,0.2956763", "l0.7188941,0.2968239", "l0.7154544,0.2967608", "l0.7110508,0.2966852", "l0.7103137,0.2966725", "l0.7044926,0.2929775", "l0.7084804,0.3115662", "l0.7084993,0.3116671", "l0.7072897,0.3135335", "l0.7065715,0.3146559", "l0.7014308,0.3225630", "l0.7039445,0.3282505", "l0.7057211,0.3322482", "l0.7043036,0.3365234", "l0.7037555,0.3381376", "l0.6998243,0.3410381", "l0.6959688,0.3408616", "l0.6912628,0.3406472", "l0.6678461,0.3098889", "l0.6676193,0.3095862", "l0.6673169,0.3091953", "l0.6659372,0.3073919", "l0.6669767,0.3011116", "l0.6669956,0.3009981", "l0.6669200,0.3008972", "l0.6624408,0.2953988", "l0.6669578,0.2881349", "l0.6673358,0.2874917", "l0.6755760,0.2876935", "l0.6744232,0.2766210", "l0.6682808,0.2627867", "l0.6687910,0.2593061", "l0.6399879,0.2243357", "l0.6380790,0.2233268", "l0.6289505,0.2185346", "l0.6226002,0.2152053", "l0.6145867,0.2091773", "l0.6094082,0.2052805", "l0.6029445,0.2003748", "l0.5929844,0.1978652", "l0.5951578,0.2023547", "l0.5977471,0.2077018", "l0.6207102,0.2248402", "l0.6277598,0.2300485", "l0.6285347,0.2306664", "l0.6340912,0.2350803", "l0.6341857,0.2351938", "l0.6349228,0.2361018", "l0.6427662,0.2458880", "l0.6465083,0.2505414", "l0.6524428,0.2579063", "l0.6543328,0.2808205", "l0.6453554,0.2959915", "l0.6463193,0.3025997", "l0.6466217,0.3047184", "l0.6379278,0.3009225", "l0.6258509,0.2875296", "l0.6096350,0.2762301", "l0.5991835,0.2730269", "l0.5851410,0.2585116", "l0.5770897,0.2469094", "l0.5697755,0.2419911", "l0.5588893,0.2398851", "l0.5532761,0.2368458", "l0.5518775,0.2360766", "l0.5492127,0.2365684", "l0.5314470,0.2398094", "l0.5283096,0.2354712", "l0.5272134,0.2338318", "l0.5267409,0.2332139", "l0.5265897,0.2330121", "l0.5121504,0.2214982", "l0.5100525,0.2198336", "l0.5073877,0.2154197", "l0.5058757,0.2129101", "l0.4961423,0.2084080", "l0.4924380,0.2080675", "l0.4861822,0.2074874", "l0.4854073,0.2019764", "l0.4774694,0.1871584", "l0.4785467,0.1832490", "l0.4787357,0.1825428", "l0.4770347,0.1816726", "l0.4696072,0.1778389", "l0.4693804,0.1775614", "l0.4636160,0.1704866", "l0.4587965,0.1669934", "l0.4539582,0.1597673", "l0.4471543,0.1573586", "l0.4471921,0.1517593", "l0.4472299,0.1477111", "l0.4396889,0.1366639", "l0.4376100,0.1336372", "l0.4369674,0.1326788", "l0.4355310,0.1249608", "l0.4308061,0.1145189", "l0.4251173,0.1104960", "l0.4254953,0.1026898", "l0.4214885,0.0981624", "l0.4126813,0.0984146", "l0.4007934,0.0987677", "l0.4021353,0.0947070", "l0.4048001,0.0865855", "l0.4104133,0.0763201", "l0.4107913,0.0761183", "l0.4128703,0.0749960", "l0.4176330,0.0776821", "l0.4212995,0.0797503", "l0.4268939,0.0856397", "l0.4276876,0.0864846", "l0.4338678,0.0852740", "l0.4523328,0.0814528", "l0.4675660,0.0717802", "l0.4673770,0.0704812", "l0.4672447,0.0696237", "l0.4671502,0.0689679", "l0.4706655,0.0649576", "l0.4842355,0.0627002", "l0.4864090,0.0608842", "l0.4915875,0.0612247", "l0.4941201,0.0581981", "l0.5013020,0.0583872", "l0.5096367,0.0586016", "l0.5105250,0.0627254", "l0.5200693,0.0654368", "l0.5245297,0.0713892", "l0.5246053,0.0714901", "l0.5373626,0.0765093", "l0.5486835,0.0809610", "l0.5533139,0.0849839", "l0.5361908,0.0899148", "l0.5243785,0.0965734", "l0.5095800,0.1049093", "l0.5166296,0.1190589", "l0.5167430,0.1193111", "l0.5133789,0.1362982", "l0.5232823,0.1567532", "l0.5249833,0.1584305", "l0.5296326,0.1573460", "l0.5298783,0.1572829", "l0.5296893,0.1571568", "l0.5242273,0.1535374", "l0.5175557,0.1416705", "l0.5188409,0.1361720", "l0.5250211,0.1289459", "l0.5276670,0.1201434", "l0.5286687,0.1167889", "l0.5307099,0.1177978", "l0.5362853,0.1167258", "l0.5395171,0.1142415", "l0.5456406,0.1150864", "l0.5527847,0.1107861", "l0.5549204,0.1094997", "l0.5746328,0.1080495", "l0.5864829,0.1043544", "l0.5865585,0.1043292", "l0.5907353,0.1061074", "l0.6014514,0.1106726", "l0.6042675,0.1157926", "l0.5919638,0.1176338", "l0.5907164,0.1178230", "l0.5904896,0.1183527", "l0.5855190,0.1296900", "l0.5847252,0.1329815", "l0.5846685,0.1332085", "l0.5849142,0.1347470", "l0.5850276,0.1354280", "l0.6085955,0.1289585", "l0.6147190,0.1272813", "l0.6199164,0.1292360", "l0.6411219,0.1372314", "l0.6460547,0.1406111", "l0.6474344,0.1415570", "l0.6506473,0.1466896", "l0.6496835,0.1522007", "l0.6476990,0.1548490", "l0.6456200,0.1576360", "l0.6369451,0.1619490", "l0.6318610,0.1644712", "l0.6256052,0.1647738", "l0.6157018,0.1561353", "l0.6153616,0.1558452", "l0.6126212,0.1560470", "l0.6128858,0.1564506", "l0.6213339,0.1691877", "l0.6218064,0.1699065", "l0.6236397,0.1712181", "l0.6242445,0.1715207", "l0.6292718,0.1741186", "l0.6390429,0.1788982", "l0.6436545,0.1779650", "l0.6511954,0.1764264", "l0.6596814,0.1724161", "l0.6662018,0.1723152", "l0.6709834,0.1736268", "l0.6869348,0.1845101", "l0.7396271,0.1971968", "l0.7399862,0.1997820", "l0.7421030,0.2153441", "l0.7367355,0.2186860", "l0.7110886,0.2102996", "l0.7006181,0.2069199", "l0.6667688,0.2020268", "l0.6641795,0.1991893", "l0.6616470,0.2016737", "l0.6617793,0.2058227", "l0.6579993,0.2057218", "l0.6585663,0.2140451", "l0.6690745,0.2243357", "l0.6759540,0.2257481", "l0.6765399,0.2258743", "l0.6817373,0.2250672", "l0.6820019,0.2252059", "l0.6886546,0.2288757", "l0.7004858,0.2353830", "l0.7022246,0.2358370", "l0.7187240,0.2400995", "l0.7378505,0.2510585", "l0.7407611,0.2527231", "l0.7421219,0.2532023", "l0.7459585,0.2545265", "l0.7660300,0.2613365", "l0.7673152,0.2668727", "l0.7491337,0.2628372", "l0.7302907,0.2557624", "l0.6943623,0.2535933", "l0.6937953,0.2580324", "c"]}, {"n": "Norderøerne", "u": "FO-NO", "i": ["m0.7660300,0.0145513", "l0.7658788,0.0127227", "l0.7703202,0.0110455", "l0.7757822,0.0089899", "l0.7785227,0.0054588", "l0.7824727,0.0003765", "l0.7930754,0.0024826", "l0.8022040,0.0066316", "l0.8059083,0.0083089", "l0.8177962,0.0232277", "l0.8230126,0.0297728", "l0.8228992,0.0331400", "l0.8225212,0.0449943", "l0.8361289,0.0612500", "l0.8428761,0.0635325", "l0.8506817,0.0726629", "l0.8483571,0.0829914", "l0.8494154,0.0943539", "l0.8548207,0.0960690", "l0.8557846,0.0955645", "l0.8623428,0.0921470", "l0.8695814,0.0749329", "l0.8751001,0.0783253", "l0.8960599,0.0912011", "l0.9005391,0.0939503", "l0.8839074,0.1078351", "l0.8803731,0.1149855", "l0.8806755,0.1159818", "l0.8818095,0.1197777", "l0.8826411,0.1225269", "l0.8216707,0.1095880", "l0.8113892,0.0864089", "l0.8094993,0.0806709", "l0.8072313,0.0777452", "l0.8001817,0.0686905", "l0.7937180,0.0544778", "l0.7938692,0.0540364", "l0.7939637,0.0537590", "l0.7986320,0.0407570", "l0.7973090,0.0332913", "l0.7961561,0.0321185", "l0.7933778,0.0292684", "l0.7716243,0.0223071", "l0.7663513,0.0177671", "l0.7660300,0.0145513", "c", "m0.9810329,0.1043166", "l0.9749283,0.1020088", "l0.9695419,0.1027024", "l0.9669148,0.1030429", "l0.9662911,0.1031186", "l0.9551970,0.0973805", "l0.9547812,0.0936603", "l0.9431957,0.0963717", "l0.9345397,0.1041274", "l0.9344263,0.1042283", "l0.9248630,0.1172555", "l0.9243149,0.1180122", "l0.9134476,0.1172681", "l0.9095165,0.1170033", "l0.9023346,0.1186049", "l0.9022779,0.1186427", "l0.9019944,0.1188445", "l0.8978365,0.1218333", "l0.8953039,0.1258310", "l0.8943967,0.1272561", "l0.8953417,0.1311276", "l0.8957953,0.1329815", "l0.9025425,0.1361973", "l0.9097244,0.1428181", "l0.9131830,0.1486570", "l0.9127294,0.1559966", "l0.9134476,0.1572703", "l0.9177189,0.1649000", "l0.9186450,0.1665394", "l0.9205350,0.1659971", "l0.9396993,0.1604230", "l0.9470135,0.1595024", "l0.9539496,0.1586197", "l0.9569358,0.1560722", "l0.9593550,0.1540040", "l0.9578430,0.1509396", "l0.9602054,0.1461726", "l0.9593550,0.1424649", "l0.9653840,0.1345578", "l0.9450290,0.1245699", "l0.9448589,0.1188571", "l0.9483364,0.1174825", "l0.9613961,0.1178734", "l0.9663856,0.1180248", "l0.9821102,0.1206983", "l0.9820724,0.1199921", "l0.9810329,0.1043166", "c", "m0.7679010,0.1452394", "l0.7675987,0.1340282", "l0.7675798,0.1334985", "l0.7611161,0.1240024", "l0.7595663,0.1217324", "l0.7531782,0.0999027", "l0.7380584,0.0819194", "l0.7184405,0.0585890", "l0.7200848,0.0530402", "l0.7173066,0.0493199", "l0.7176846,0.0491308", "l0.7204250,0.0475544", "l0.7171554,0.0373395", "l0.7125627,0.0369107", "l0.7095766,0.0366332", "l0.7073275,0.0331526", "l0.6970272,0.0317780", "l0.6895807,0.0420308", "l0.6920188,0.0547679", "l0.6879742,0.0659917", "l0.6945324,0.0794603", "l0.6950238,0.0866990", "l0.6950805,0.0876196", "l0.6958365,0.0885024", "l0.7057211,0.1000036", "l0.7103893,0.1054390", "l0.7172688,0.1185166", "l0.7177035,0.1190715", "l0.7209353,0.1232457", "l0.7253767,0.1290468", "l0.7333902,0.1395140", "l0.7376426,0.1450502", "l0.7608515,0.1484930", "l0.7679010,0.1452394", "c", "m0.8695058,0.1408886", "l0.8606986,0.1321491", "l0.8467128,0.1295260", "l0.8336531,0.1229935", "l0.8207068,0.1139766", "l0.8157929,0.1089448", "l0.8175316,0.1038500", "l0.8096505,0.0887798", "l0.8008432,0.0800530", "l0.7877646,0.0674924", "l0.7826050,0.0605185", "l0.7790330,0.0441998", "l0.7768784,0.0413750", "l0.7741946,0.0378439", "l0.7697154,0.0380583", "l0.7638187,0.0383483", "l0.7562966,0.0434810", "l0.7544634,0.0476931", "l0.7511181,0.0553732", "l0.7589426,0.0674924", "l0.7591883,0.0678707", "l0.7585268,0.0731169", "l0.7584890,0.0735079", "l0.7712652,0.0913272", "l0.7697154,0.1199038", "l0.7750451,0.1308754", "l0.7754798,0.1317708", "l0.7766138,0.1387069", "l0.7744403,0.1478499", "l0.7730796,0.1493632", "l0.7677688,0.1552904", "l0.7682223,0.1563875", "l0.7729662,0.1678383", "l0.7728339,0.1688472", "l0.7725693,0.1708019", "l0.7724181,0.1719621", "l0.7646314,0.1692508", "l0.7615508,0.1584053", "l0.7611728,0.1584053", "l0.7585457,0.1584179", "l0.7441630,0.1584936", "l0.7439362,0.1584936", "l0.7430102,0.1623399", "l0.7456939,0.1690112", "l0.7469602,0.1721513", "l0.7469035,0.1731223", "l0.7465444,0.1798819", "l0.7490014,0.1848002", "l0.7551060,0.1867675", "l0.7624768,0.1954943", "l0.7641022,0.1974238", "l0.7786928,0.2146883", "l0.7841359,0.2176771", "l0.7887285,0.2201993", "l0.7987265,0.2313853", "l0.7988398,0.2314105", "l0.8012968,0.2318519", "l0.8045287,0.2324320", "l0.8053224,0.2307547", "l0.8060784,0.2291279", "l0.8050012,0.2195687", "l0.8049634,0.2192156", "l0.8042641,0.2183581", "l0.7965341,0.2089124", "l0.7930376,0.2046751", "l0.7943984,0.1987101", "l0.7910721,0.1959483", "l0.7852321,0.1840309", "l0.7799024,0.1804620", "l0.7822081,0.1761868", "l0.7850809,0.1757580", "l0.7877457,0.1753545", "l0.7959293,0.1816474", "l0.8009566,0.1855190", "l0.8036215,0.1916101", "l0.8073447,0.2001604", "l0.8158307,0.2081810", "l0.8245434,0.2127966", "l0.8305913,0.2211577", "l0.8340311,0.2212838", "l0.8631744,0.2223810", "l0.8689010,0.2184085", "l0.8698082,0.2153062", "l0.8702618,0.2139190", "l0.8706587,0.2127083", "l0.8680316,0.2106023", "l0.8644029,0.2076892", "l0.8671433,0.1951538", "l0.8668977,0.1936279", "l0.8651211,0.1829211", "l0.8381890,0.1781541", "l0.8252994,0.1686454", "l0.8119562,0.1552021", "l0.8078739,0.1471310", "l0.8066643,0.1447349", "l0.8080440,0.1450376", "l0.8127500,0.1460717", "l0.8182120,0.1472697", "l0.8301377,0.1561101", "l0.8456544,0.1645973", "l0.8512109,0.1676618", "l0.8778784,0.1641433", "l0.8788423,0.1633362", "l0.8822253,0.1605239", "l0.8840586,0.1482282", "l0.8845500,0.1449619", "l0.8772547,0.1399427", "l0.8695058,0.1408886", "c", "m0.7064203,0.1476481", "l0.7002590,0.1409390", "l0.7000889,0.1407498", "l0.6951939,0.1306610", "l0.6947214,0.1296774", "l0.6916597,0.1232836", "l0.6884656,0.1166123", "l0.6871994,0.1139766", "l0.6662963,0.0898644", "l0.6625541,0.0855514", "l0.6552589,0.0771398", "l0.6547675,0.0757022", "l0.6528775,0.0701786", "l0.6454310,0.0599132", "l0.6391941,0.0398995", "l0.6344125,0.0393572", "l0.6335431,0.0384744", "l0.6188770,0.0235178", "l0.6109391,0.0236187", "l0.6087656,0.0330265", "l0.6144733,0.0467094", "l0.6155317,0.0492695", "l0.6161365,0.0507450", "l0.6171571,0.0548814", "l0.6173272,0.0555876", "l0.6325036,0.0812889", "l0.6382680,0.0910372", "l0.6395721,0.0932567", "l0.6443537,0.0989821", "l0.6607020,0.1185166", "l0.6650489,0.1212280", "l0.6737617,0.1264363", "l0.6796017,0.1334733", "l0.6782409,0.1599060", "l0.6820964,0.1650639", "l0.6984825,0.1741817", "l0.7079701,0.1773723", "l0.7181382,0.1741817", "l0.7200092,0.1684058", "l0.7205951,0.1666024", "l0.7165695,0.1517593", "l0.7064203,0.1476481", "c", "m0.9947919,0.0535572", "l0.9874588,0.0557389", "l0.9792563,0.0565334", "l0.9742668,0.0570253", "l0.9712807,0.0555750", "l0.9738321,0.0527627", "l0.9749472,0.0515395", "l0.9742668,0.0506315", "l0.9711484,0.0464951", "l0.9594684,0.0457006", "l0.9549324,0.0453853", "l0.9519652,0.0491434", "l0.9508501,0.0505558", "l0.9496783,0.0520439", "l0.9494893,0.0544652", "l0.9483553,0.0688796", "l0.9590715,0.0813898", "l0.9596574,0.0820834", "l0.9617552,0.0818942", "l0.9729438,0.0809231", "l0.9804281,0.0802674", "l0.9843593,0.0787541", "l0.9859657,0.0769633", "l0.9904828,0.0719189", "l0.9907474,0.0716036", "l0.9964362,0.0728016", "l0.9974567,0.0710613", "l0.9980237,0.0700903", "l0.9995168,0.0625237", "l0.9947919,0.0535572", "c"]}, {"n": "Sandø", "u": "FO-SA", "i": ["m0.6630644,0.7090782", "l0.6638771,0.7102258", "l0.6614202,0.7113104", "l0.6538414,0.7098601", "l0.6460925,0.7083720", "l0.6459791,0.7083468", "l0.6452609,0.7004775", "l0.6449207,0.6967068", "l0.6452042,0.6955718", "l0.6459224,0.6927344", "l0.6466406,0.6897708", "l0.6529531,0.6917129", "l0.6588120,0.6966059", "l0.6581883,0.7022052", "l0.6630644,0.7090782", "c", "m0.6269471,0.6427190", "l0.6249060,0.6365649", "l0.6245280,0.6358713", "l0.6146434,0.6175727", "l0.6084065,0.6133227", "l0.5973124,0.6110528", "l0.5912078,0.6118473", "l0.5891855,0.6108005", "l0.5852544,0.6087828", "l0.5848575,0.6096782", "l0.5814556,0.6173835", "l0.5824761,0.6309403", "l0.5924741,0.6382295", "l0.5989378,0.6429334", "l0.6030201,0.6459096", "l0.6064599,0.6484192", "l0.6278732,0.6454556", "l0.6270416,0.6429208", "l0.6269471,0.6427190", "c", "m0.7367166,0.5658675", "l0.7340139,0.5666872", "l0.7225040,0.5668890", "l0.7152843,0.5561822", "l0.7103704,0.5530673", "l0.7051541,0.5497758", "l0.7017899,0.5428902", "l0.6929638,0.5356641", "l0.6801120,0.5342138", "l0.6666932,0.5299134", "l0.6645197,0.5270381", "l0.6635369,0.5257392", "l0.6625353,0.5257140", "l0.6509875,0.5254365", "l0.6499859,0.5250582", "l0.6301223,0.5174159", "l0.6300089,0.5171511", "l0.6295364,0.5160539", "l0.6253596,0.5064948", "l0.6221088,0.5068226", "l0.6195384,0.5070875", "l0.6166846,0.5036699", "l0.6140764,0.5005424", "l0.6125834,0.5001514", "l0.6083876,0.4990543", "l0.6004498,0.5005424", "l0.5910944,0.4984994", "l0.5886563,0.4979697", "l0.5876547,0.4982471", "l0.5793199,0.5005550", "l0.5779213,0.4990416", "l0.5685660,0.4888393", "l0.5667705,0.4885114", "l0.5613085,0.4875152", "l0.5471904,0.4891924", "l0.5468124,0.4892429", "l0.5421631,0.4882718", "l0.5215246,0.4839589", "l0.5192189,0.4843498", "l0.5166863,0.4847786", "l0.5202016,0.4905418", "l0.5242084,0.4913363", "l0.5286876,0.4982345", "l0.5349434,0.5026610", "l0.5353592,0.5082225", "l0.5413315,0.5116653", "l0.5374760,0.5170502", "l0.5369657,0.5177564", "l0.5421631,0.5226116", "l0.5427868,0.5312628", "l0.5469258,0.5363072", "l0.5483244,0.5436468", "l0.5539754,0.5460303", "l0.5567537,0.5521719", "l0.5494773,0.5507216", "l0.5477763,0.5503811", "l0.5485323,0.5515666", "l0.5574718,0.5656405", "l0.5628394,0.5670781", "l0.5662224,0.5753383", "l0.5676021,0.5755149", "l0.5725916,0.5761328", "l0.5740469,0.5741655", "l0.5724971,0.5715929", "l0.5781859,0.5657413", "l0.5829486,0.5661197", "l0.6004687,0.5619454", "l0.6009789,0.5620211", "l0.6045699,0.5622859", "l0.6069890,0.5679735", "l0.6098051,0.5697390", "l0.6152482,0.5731819", "l0.6149458,0.5696886", "l0.6143788,0.5632318", "l0.6142654,0.5618572", "l0.6141520,0.5606087", "l0.6147190,0.5605834", "l0.6203322,0.5603060", "l0.6397800,0.5668511", "l0.6427473,0.5678474", "l0.6427662,0.5682888", "l0.6428985,0.5717064", "l0.6524617,0.5902698", "l0.6534256,0.5984417", "l0.6621384,0.6071055", "l0.6622518,0.6072947", "l0.6626297,0.6079504", "l0.6671468,0.6159584", "l0.6750846,0.6204101", "l0.6802065,0.6262490", "l0.6862544,0.6270435", "l0.6908659,0.6355434", "l0.6982557,0.6372711", "l0.7004102,0.6413823", "l0.7043414,0.6435640", "l0.7101625,0.6434631", "l0.7145094,0.6376368", "l0.7196501,0.6373341", "l0.7183838,0.6349633", "l0.7236569,0.6316970", "l0.7201793,0.6272453", "l0.7115800,0.6162611", "l0.7065904,0.6137011", "l0.7138857,0.6105861", "l0.7218992,0.6071686", "l0.7217480,0.6029439", "l0.7213511,0.5920353", "l0.7213322,0.5917201", "l0.7212377,0.5916570", "l0.7150197,0.5877602", "l0.7128462,0.5863352", "l0.7124871,0.5860955", "l0.7171176,0.5828041", "l0.7200659,0.5817321", "l0.7330122,0.5770156", "l0.7337493,0.5721099", "l0.7338816,0.5719081", "l0.7347321,0.5705588", "l0.7377938,0.5656657", "l0.7367166,0.5658675", "c"]}, {"n": "Strømø", "u": "FO-ST", "i": ["m0.7528191,0.4417876", "l0.7501542,0.4472608", "l0.7448245,0.4505396", "l0.7414604,0.4484714", "l0.7362630,0.4452682", "l0.7357716,0.4448142", "l0.7330311,0.4422920", "l0.7315380,0.4343219", "l0.7311222,0.4321402", "l0.7297237,0.4324050", "l0.7273423,0.4328464", "l0.7202927,0.4251032", "l0.7180059,0.4225936", "l0.7123926,0.4213325", "l0.7122414,0.4212947", "l0.7094632,0.4146613", "l0.7089529,0.4134254", "l0.7091797,0.4125300", "l0.7128084,0.3984813", "l0.7119769,0.3942945", "l0.7000133,0.3787325", "l0.6994842,0.3780515", "l0.7019411,0.3774462", "l0.7136022,0.3834238", "l0.7141314,0.3860090", "l0.7145472,0.3880394", "l0.7152087,0.3912048", "l0.7212566,0.3972833", "l0.7321995,0.4047616", "l0.7326153,0.4050769", "l0.7341273,0.4111933", "l0.7343163,0.4119247", "l0.7364142,0.4124291", "l0.7394192,0.4131227", "l0.7407044,0.4134254", "l0.7403075,0.4182176", "l0.7398728,0.4234764", "l0.7439551,0.4275119", "l0.7442953,0.4278524", "l0.7521576,0.4356208", "l0.7528569,0.4416993", "l0.7528191,0.4417876", "c", "m0.6675248,0.4340192", "l0.6664286,0.4291892", "l0.6703408,0.4203867", "l0.6695848,0.4171204", "l0.6694903,0.4167043", "l0.6533311,0.4099195", "l0.6500426,0.4085449", "l0.6497213,0.4080279", "l0.6456200,0.4013693", "l0.6455633,0.4013314", "l0.6391752,0.3973842", "l0.6393831,0.3970689", "l0.6462626,0.3870053", "l0.6485117,0.3872071", "l0.6511576,0.3838904", "l0.6512332,0.3838021", "l0.6561850,0.3821753", "l0.6529909,0.3711533", "l0.6591144,0.3691229", "l0.6595869,0.3689589", "l0.6581127,0.3683158", "l0.6536146,0.3663611", "l0.6485117,0.3523376", "l0.6475856,0.3498028", "l0.6355843,0.3495001", "l0.6337510,0.3489200", "l0.6237909,0.3458051", "l0.5983141,0.3493992", "l0.5726861,0.3411138", "l0.5604769,0.3396131", "l0.5522555,0.3352244", "l0.5527280,0.3352244", "l0.5570183,0.3352497", "l0.5689062,0.3353253", "l0.5777512,0.3375701", "l0.5784505,0.3377466", "l0.5904140,0.3407859", "l0.5905274,0.3408111", "l0.5906597,0.3407733", "l0.6053070,0.3363468", "l0.6061386,0.3360946", "l0.6208425,0.3293225", "l0.5990701,0.3006072", "l0.5919260,0.2911615", "l0.5810587,0.2888789", "l0.5730641,0.2841624", "l0.5631985,0.2823590", "l0.5562245,0.2849695", "l0.5462832,0.2921074", "l0.5289711,0.2951844", "l0.5287821,0.2948944", "l0.5258149,0.2903796", "l0.5378729,0.2891942", "l0.5468124,0.2834814", "l0.5530682,0.2793828", "l0.5638032,0.2779830", "l0.5708150,0.2744771", "l0.5720435,0.2674906", "l0.5722325,0.2664691", "l0.5689251,0.2643253", "l0.5635953,0.2608572", "l0.5598532,0.2555228", "l0.5574907,0.2521430", "l0.5515940,0.2491038", "l0.5450547,0.2457366", "l0.5400274,0.2431387", "l0.5285364,0.2415245", "l0.5222050,0.2406292", "l0.5222428,0.2365558", "l0.5222617,0.2356100", "l0.5131899,0.2288000", "l0.5082570,0.2256094", "l0.5003570,0.2215613", "l0.5002247,0.2214856", "l0.4873918,0.2148901", "l0.4858042,0.2140703", "l0.4740108,0.2107663", "l0.4631246,0.2075631", "l0.4629545,0.2047634", "l0.4628411,0.2027456", "l0.4739352,0.2021403", "l0.4743132,0.2017620", "l0.4770914,0.1990128", "l0.4773749,0.1987353", "l0.4777907,0.1932748", "l0.4653736,0.1790621", "l0.4542795,0.1732485", "l0.4532211,0.1720252", "l0.4481749,0.1662115", "l0.4353231,0.1513683", "l0.4335276,0.1482534", "l0.4226792,0.1240276", "l0.4055372,0.1037743", "l0.4054805,0.1037113", "l0.4053482,0.1036734", "l0.4034393,0.1031564", "l0.3915892,0.0999406", "l0.3910978,0.1001928", "l0.3832167,0.1043292", "l0.3794178,0.1062335", "l0.3799092,0.0985912", "l0.3793233,0.0979102", "l0.3776601,0.0959807", "l0.3712532,0.0936603", "l0.3616710,0.0901923", "l0.3567382,0.0912011", "l0.3564358,0.0912642", "l0.3474773,0.0999154", "l0.3450015,0.1002937", "l0.3431115,0.0963464", "l0.3304298,0.0938368", "l0.3297683,0.0951232", "l0.3274437,0.0995622", "l0.3233046,0.0994740", "l0.3220761,0.1040518", "l0.3188821,0.1067379", "l0.3214714,0.1098528", "l0.3219627,0.1128921", "l0.3231723,0.1204209", "l0.3202996,0.1224260", "l0.3199405,0.1304719", "l0.3153101,0.1345957", "l0.3147809,0.1396401", "l0.3161794,0.1438395", "l0.3175024,0.1478372", "l0.3175402,0.1479634", "l0.3329057,0.1518854", "l0.3241929,0.1533861", "l0.3213769,0.1627561", "l0.3206398,0.1652405", "l0.3143084,0.1863261", "l0.3084873,0.1936531", "l0.3126452,0.1973733", "l0.3051987,0.2066929", "l0.3024394,0.2160250", "l0.3004171,0.2166178", "l0.3111521,0.2216748", "l0.3188065,0.2282451", "l0.3315638,0.2438197", "l0.3392938,0.2480823", "l0.3512384,0.2500370", "l0.3563791,0.2508819", "l0.3617844,0.2573514", "l0.3651486,0.2613869", "l0.3686639,0.2694075", "l0.3690419,0.2696219", "l0.3863540,0.2795972", "l0.3866942,0.2797990", "l0.3868832,0.2797990", "l0.4034960,0.2796603", "l0.4170849,0.2824599", "l0.4242290,0.2839102", "l0.4262324,0.2815771", "l0.4274986,0.2800890", "l0.4284058,0.2803791", "l0.4369485,0.2828130", "l0.4503862,0.2797612", "l0.4518793,0.2793702", "l0.4518415,0.2804295", "l0.4516336,0.2853226", "l0.4552245,0.2876304", "l0.4576815,0.2892068", "l0.4722531,0.2985390", "l0.4763922,0.3069379", "l0.4769402,0.3074928", "l0.4822133,0.3129282", "l0.4826669,0.3156269", "l0.4854451,0.3323996", "l0.4843111,0.3368134", "l0.4817219,0.3469779", "l0.4859365,0.3518710", "l0.4891305,0.3496641", "l0.4906047,0.3534348", "l0.4924947,0.3582017", "l0.4982780,0.3594502", "l0.4988639,0.3592989", "l0.5090319,0.3566632", "l0.5236981,0.3564614", "l0.5275725,0.3576090", "l0.5298027,0.3582648", "l0.5316738,0.3609762", "l0.5397061,0.3726287", "l0.5406133,0.3769039", "l0.5442043,0.3938657", "l0.5483244,0.3961861", "l0.5551661,0.4000451", "l0.5639355,0.4025295", "l0.5681691,0.4071703", "l0.5735933,0.4081918", "l0.5846118,0.4167673", "l0.6047211,0.4324050", "l0.6150403,0.4405643", "l0.6256241,0.4471221", "l0.6339967,0.4502496", "l0.6445427,0.4577784", "l0.6551077,0.4579928", "l0.6604941,0.4599727", "l0.6616659,0.4591656", "l0.6724954,0.4517125", "l0.6650489,0.4369828", "l0.6675248,0.4340192", "c", "m0.5042881,0.4087972", "l0.5042314,0.4087089", "l0.5029084,0.4065398", "l0.4923435,0.3990362", "l0.4905291,0.3977499", "l0.4901889,0.3975103", "l0.4860688,0.3945845", "l0.4753905,0.3935378", "l0.4748424,0.3934874", "l0.4798130,0.4025043", "l0.4814384,0.4054426", "l0.4961612,0.4123156", "l0.5100147,0.4230602", "l0.5130954,0.4231611", "l0.5122638,0.4218117", "l0.5042881,0.4087972", "c", "m0.5602879,0.4406904", "l0.5567537,0.4387988", "l0.5560922,0.4371720", "l0.5549015,0.4342210", "l0.5465478,0.4304125", "l0.5404432,0.4296053", "l0.5329211,0.4296936", "l0.5300862,0.4312448", "l0.5303130,0.4316609", "l0.5345087,0.4395050", "l0.5409913,0.4430613", "l0.5503089,0.4521286", "l0.5529170,0.4528601", "l0.5563379,0.4538185", "l0.5571884,0.4549661", "l0.5583790,0.4565677", "l0.5634064,0.4633398", "l0.5637087,0.4637560", "l0.5642757,0.4638064", "l0.5698133,0.4643487", "l0.5732342,0.4671988", "l0.5737634,0.4676276", "l0.5740091,0.4672493", "l0.5752376,0.4653450", "l0.5781292,0.4635668", "l0.5794522,0.4627597", "l0.5673753,0.4444611", "l0.5602879,0.4406904", "c"]}, {"n": "Suderø", "u": "FO-SU", "i": ["m0.7108429,0.9788407", "l0.7067605,0.9991696", "l0.7035665,0.9961934", "l0.6998810,0.9961178", "l0.6960255,0.9991570", "l0.6906202,0.9932172", "l0.6818318,0.9887655", "l0.6737050,0.9862812", "l0.6564117,0.9808332", "l0.6477368,0.9732792", "l0.6470942,0.9716902", "l0.6420669,0.9594827", "l0.6412164,0.9592053", "l0.6375121,0.9580199", "l0.6182344,0.9457998", "l0.6122810,0.9420291", "l0.6120920,0.9419156", "l0.6049479,0.9373882", "l0.6018861,0.9368081", "l0.5982763,0.9361145", "l0.5968777,0.9347021", "l0.5944396,0.9322555", "l0.5969533,0.9291658", "l0.5959138,0.9287875", "l0.5923418,0.9275012", "l0.5849520,0.9274129", "l0.5826273,0.9247268", "l0.5766550,0.9178159", "l0.5706827,0.9171223", "l0.5690007,0.9169331", "l0.5697566,0.9160251", "l0.5732531,0.9118635", "l0.5699456,0.9111321", "l0.5690763,0.9075253", "l0.5709473,0.9039438", "l0.5612707,0.8952800", "l0.5563190,0.8951161", "l0.5552228,0.8950782", "l0.5550716,0.8946116", "l0.5539565,0.8910805", "l0.5522933,0.8858344", "l0.5514428,0.8822402", "l0.5572073,0.8748880", "l0.5587381,0.8681915", "l0.5590405,0.8668800", "l0.5598154,0.8635128", "l0.5503278,0.8572199", "l0.5384777,0.8511414", "l0.5378540,0.8471185", "l0.5362475,0.8419228", "l0.5299917,0.8383917", "l0.5295759,0.8336752", "l0.5263440,0.8290217", "l0.5260984,0.8286560", "l0.5195213,0.8245069", "l0.5169320,0.8228423", "l0.5069908,0.8195256", "l0.5011886,0.8137497", "l0.4951974,0.8118329", "l0.4997333,0.8083144", "l0.5016421,0.8033961", "l0.5068585,0.8003442", "l0.4922490,0.7960313", "l0.4910016,0.7928407", "l0.4838197,0.7884646", "l0.4887337,0.7865478", "l0.4905291,0.7858542", "l0.4927215,0.7850092", "l0.4958777,0.7821465", "l0.4866358,0.7783506", "l0.4855018,0.7731549", "l0.4792838,0.7688041", "l0.4872217,0.7654621", "l0.4898865,0.7617167", "l0.4903779,0.7610231", "l0.4908693,0.7603294", "l0.4986560,0.7589548", "l0.4943847,0.7495975", "l0.4948950,0.7491687", "l0.4972007,0.7472392", "l0.5096934,0.7454610", "l0.5379863,0.7416273", "l0.5404999,0.7429136", "l0.5541455,0.7499001", "l0.5536352,0.7543644", "l0.5381375,0.7610231", "l0.5361719,0.7671268", "l0.5424277,0.7671268", "l0.5455839,0.7671268", "l0.5554874,0.7647685", "l0.5625748,0.7656513", "l0.5650884,0.7670007", "l0.5658822,0.7674168", "l0.5576041,0.7701787", "l0.5361341,0.7819826", "l0.5325620,0.7872918", "l0.5178203,0.7904446", "l0.5219593,0.7958799", "l0.5319951,0.7918192", "l0.5352647,0.7934838", "l0.5600611,0.7901167", "l0.5694165,0.7914282", "l0.5833833,0.7896627", "l0.5877492,0.7923614", "l0.5951767,0.7969392", "l0.5931923,0.8025007", "l0.5979928,0.8048842", "l0.5997505,0.8057670", "l0.5998072,0.8057922", "l0.6003553,0.8093863", "l0.6005443,0.8105718", "l0.6007899,0.8121860", "l0.6071780,0.8133462", "l0.6165145,0.8151370", "l0.6227703,0.8118959", "l0.6395532,0.8129805", "l0.6522349,0.8161206", "l0.6542383,0.8166124", "l0.6549376,0.8190212", "l0.6550888,0.8195508", "l0.6559393,0.8225018", "l0.6519325,0.8284920", "l0.6590577,0.8322879", "l0.6612879,0.8334734", "l0.6637259,0.8347723", "l0.6645197,0.8378872", "l0.6649355,0.8394888", "l0.6651434,0.8402833", "l0.6601917,0.8424146", "l0.6596814,0.8426416", "l0.6568275,0.8475725", "l0.6567330,0.8477491", "l0.6512143,0.8471311", "l0.6465839,0.8466141", "l0.6429363,0.8461979", "l0.6419913,0.8460844", "l0.6416322,0.8462988", "l0.6405927,0.8469167", "l0.6369640,0.8490732", "l0.6353764,0.8500190", "l0.6318043,0.8467402", "l0.6247926,0.8403086", "l0.6059496,0.8332212", "l0.6022074,0.8318087", "l0.5983141,0.8303459", "l0.5981062,0.8307620", "l0.5962351,0.8339274", "l0.6241122,0.8475725", "l0.6252840,0.8507000", "l0.6275330,0.8527683", "l0.6403848,0.8567533", "l0.6414621,0.8570938", "l0.6521971,0.8579766", "l0.6606831,0.8628823", "l0.6611178,0.8633867", "l0.6665042,0.8696796", "l0.6679784,0.8714073", "l0.6670145,0.8751276", "l0.6667121,0.8763130", "l0.6671468,0.8768931", "l0.6682052,0.8782930", "l0.6721741,0.8835139", "l0.6737995,0.8856452", "l0.6508363,0.8862379", "l0.6524428,0.8895798", "l0.6528019,0.8903113", "l0.6528775,0.8904500", "l0.6533311,0.8908409", "l0.6549565,0.8922408", "l0.6567519,0.8937919", "l0.6606075,0.8971212", "l0.6641984,0.8993786", "l0.6696793,0.9022539", "l0.6820208,0.8993408", "l0.6860276,0.9000974", "l0.6875206,0.9025061", "l0.6881443,0.9034898", "l0.6847046,0.9061381", "l0.6775416,0.9076010", "l0.6761619,0.9090386", "l0.6750846,0.9101484", "l0.6707377,0.9099466", "l0.6683942,0.9098331", "l0.6659372,0.9115735", "l0.6608910,0.9119266", "l0.6566385,0.9165044", "l0.6526129,0.9181438", "l0.6501182,0.9191527", "l0.6494756,0.9191527", "l0.6400257,0.9191527", "l0.6341290,0.9171980", "l0.6230349,0.9165170", "l0.6179131,0.9180807", "l0.6275330,0.9231756", "l0.6355276,0.9298721", "l0.6370585,0.9311584", "l0.6393264,0.9330626", "l0.6378900,0.9354587", "l0.6389295,0.9400618", "l0.6397800,0.9438072", "l0.6398367,0.9440090", "l0.6452042,0.9439081", "l0.6476423,0.9358875", "l0.6504205,0.9336806", "l0.6721930,0.9285353", "l0.6778629,0.9291028", "l0.6799041,0.9305278", "l0.6806979,0.9311079", "l0.6740830,0.9462790", "l0.6739696,0.9465564", "l0.6776172,0.9475401", "l0.6950049,0.9439460", "l0.6955908,0.9438198", "l0.6979722,0.9620176", "l0.6965358,0.9655865", "l0.6960822,0.9667089", "l0.7043603,0.9700886", "l0.7059100,0.9707192", "l0.7108429,0.9788407", "c", "m0.6927181,0.7613383", "l0.6931528,0.7581099", "l0.6845345,0.7559534", "l0.6821342,0.7553481", "l0.6777117,0.7573154", "l0.6766722,0.7605186", "l0.6758217,0.7631291", "l0.6926047,0.7623472", "l0.6927181,0.7613383", "c"]}, {"n": "Vågø", "u": "FO-VG", "i": ["m0.1761516,0.3163457", "l0.1876048,0.3217811", "l0.1690264,0.3242529", "l0.1691965,0.3192337", "l0.1761516,0.3163457", "c", "m0.4384605,0.3189562", "l0.4285003,0.3034699", "l0.4197309,0.3002919", "l0.3868643,0.2990686", "l0.3737479,0.2859532", "l0.3656588,0.2778695", "l0.3634098,0.2756878", "l0.3632397,0.2755239", "l0.3631263,0.2754104", "l0.3581179,0.2732413", "l0.3453039,0.2676798", "l0.3185608,0.2591674", "l0.3135713,0.2542617", "l0.3133256,0.2528366", "l0.3118892,0.2446395", "l0.3150455,0.2430379", "l0.3141950,0.2393302", "l0.3110765,0.2388762", "l0.3056334,0.2380817", "l0.2634682,0.2518025", "l0.2538104,0.2549427", "l0.2431510,0.2552453", "l0.2427919,0.2650567", "l0.2398436,0.2703659", "l0.2382560,0.2720684", "l0.2373299,0.2730647", "l0.2342304,0.2726990", "l0.2229472,0.2713874", "l0.2213219,0.2711983", "l0.2072983,0.2695588", "l0.2000030,0.2621562", "l0.1928400,0.2624588", "l0.1712188,0.2516512", "l0.1677034,0.2539590", "l0.1605405,0.2521556", "l0.1577433,0.2553588", "l0.1582725,0.2566452", "l0.1602570,0.2613743", "l0.1580835,0.2633794", "l0.1606917,0.2679825", "l0.1575354,0.2702903", "l0.1611074,0.2751960", "l0.1694422,0.2794585", "l0.1695178,0.2794963", "l0.1697446,0.2804169", "l0.1707085,0.2842002", "l0.1741482,0.2857010", "l0.1812923,0.2962942", "l0.1886632,0.3007459", "l0.2003243,0.3006955", "l0.1967901,0.3036338", "l0.2066557,0.3048949", "l0.2119854,0.3090944", "l0.2171072,0.3069631", "l0.2230984,0.3091448", "l0.2294109,0.3114401", "l0.2382749,0.3131678", "l0.2539049,0.3162070", "l0.2591213,0.3228783", "l0.2593859,0.3238115", "l0.2601796,0.3265607", "l0.2606521,0.3281875", "l0.2515425,0.3257788", "l0.2413177,0.3230800", "l0.2370653,0.3243159", "l0.2345328,0.3250473", "l0.2293353,0.3265607", "l0.2285227,0.3268003", "l0.2270485,0.3256653", "l0.2186192,0.3192211", "l0.2180522,0.3191328", "l0.2113806,0.3182752", "l0.1953726,0.3246942", "l0.1997384,0.3276957", "l0.1988879,0.3313907", "l0.2104734,0.3329040", "l0.2103034,0.3378980", "l0.2102656,0.3390834", "l0.2153496,0.3404832", "l0.2312442,0.3448719", "l0.2419225,0.3438756", "l0.2478570,0.3482769", "l0.2482539,0.3485669", "l0.2559083,0.3445692", "l0.2639218,0.3513539", "l0.2802889,0.3522493", "l0.2885670,0.3588323", "l0.2984704,0.3600934", "l0.2989996,0.3610644", "l0.3010030,0.3647342", "l0.3078258,0.3686941", "l0.3139115,0.3722252", "l0.3159904,0.3737385", "l0.3164062,0.3740286", "l0.3202429,0.3768156", "l0.3212635,0.3764373", "l0.3263475,0.3745204", "l0.3269901,0.3742808", "l0.3402388,0.3761220", "l0.3434706,0.3746213", "l0.3488759,0.3721243", "l0.3526937,0.3703588", "l0.3594219,0.3672438", "l0.3608205,0.3674078", "l0.3683048,0.3683158", "l0.3799281,0.3598664", "l0.3712910,0.3541788", "l0.3659234,0.3532204", "l0.3624081,0.3525898", "l0.3573619,0.3516944", "l0.3499532,0.3483904", "l0.3537709,0.3481760", "l0.3538465,0.3481760", "l0.3624837,0.3476715", "l0.3684749,0.3473310", "l0.3742582,0.3400923", "l0.3749197,0.3426397", "l0.3760537,0.3468014", "l0.3796824,0.3491344", "l0.3871478,0.3502063", "l0.3922318,0.3498658", "l0.3976749,0.3495001", "l0.4038740,0.3490587", "l0.4087690,0.3487056", "l0.4134751,0.3521989", "l0.4223957,0.3518962", "l0.4242479,0.3487813", "l0.4268372,0.3444179", "l0.4284436,0.3309367", "l0.4397267,0.3229539", "l0.4384605,0.3189562", "c", "m0.1003260,0.2988669", "l0.0856032,0.2881097", "l0.0781567,0.2859784", "l0.0724679,0.2812745", "l0.0601075,0.2808709", "l0.0490134,0.2848686", "l0.0449121,0.2848560", "l0.0423229,0.2870629", "l0.0396202,0.2893708", "l0.0307374,0.2896482", "l0.0300003,0.2896734", "l0.0216466,0.2939738", "l0.0040510,0.2988038", "l0.0008569,0.3023727", "l0.0104769,0.3020701", "l0.0143513,0.3005694", "l0.0208339,0.2980724", "l0.0283938,0.2972400", "l0.0429655,0.3014143", "l0.0431733,0.3014900", "l0.0433623,0.3015026", "l0.0610147,0.3023223", "l0.0635283,0.3024358", "l0.0642465,0.3024736", "l0.0756241,0.3007711", "l0.0823713,0.3040752", "l0.0891563,0.3050084", "l0.1116847,0.3081234", "l0.1092089,0.3003171", "l0.1003260,0.2988669", "c"]}]} """;
}