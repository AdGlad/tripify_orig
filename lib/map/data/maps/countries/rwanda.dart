import 'package:flutter/material.dart';

class SMapRwandaColors {
  /// Kigali City
  final Color? rw01;

  /// Northern
  final Color? rw03;

  /// Eastern
  final Color? rw02;

  /// Western
  final Color? rw04;

  /// Southern
  final Color? rw05;
  SMapRwandaColors({
    this.rw01,
    this.rw03,
    this.rw02,
    this.rw04,
    this.rw05,
  });
  Map<String, Color?> toMap() {
    return {
      "RW-01": rw01,
      "RW-03": rw03,
      "RW-02": rw02,
      "RW-04": rw04,
      "RW-05": rw05,
    };
  }

  static SMapRwandaColors fromMap(Map<String, Color?> map) {
    return SMapRwandaColors(
      rw01: map["RW-01"],
      rw03: map["RW-03"],
      rw02: map["RW-02"],
      rw04: map["RW-04"],
      rw05: map["RW-05"],
    );
  }
}

class SMapRwanda {
  static const String instructions =
      """{"n": "Rwanda", "w": 682.26074, "h": 594.52777, "g": {"a": "28.861754,-1.047375","b": "30.899118,-2.839938"}, "i":[{"n": "Kigali City", "u": "RW-01", "i": ["m0.6726458,0.4399210", "l0.6726458,0.4399210", "l0.6807073,0.4429991", "l0.6843276,0.4436046", "l0.6849578,0.4466154", "l0.6883143,0.4520988", "l0.6901904,0.4602397", "l0.6898680,0.4680442", "l0.6929167,0.4723333", "l0.6958188,0.4756973", "l0.6968301,0.4849484", "l0.6966542,0.4960496", "l0.6943384,0.5008097", "l0.6876254,0.5044765", "l0.6805314,0.5079246", "l0.6778638,0.5114400", "l0.6775560,0.5179662", "l0.6760756,0.5383521", "l0.6728217,0.5587380", "l0.6689376,0.5689646", "l0.6656104,0.5743807", "l0.6624005,0.5692842", "l0.6586629,0.5639018", "l0.6553357,0.5580316", "l0.6501471,0.5502103", "l0.6441230,0.5482591", "l0.6381429,0.5506812", "l0.6328810,0.5533052", "l0.6300521,0.5550040", "l0.6266224,0.5578970", "l0.6236763,0.5607733", "l0.6224744,0.5628758", "l0.6208035,0.5632290", "l0.6193671,0.5632963", "l0.6154096,0.5637000", "l0.6109832,0.5647764", "l0.6081397,0.5658025", "l0.6049005,0.5666267", "l0.6019837,0.5672658", "l0.6003274,0.5677368", "l0.5989497,0.5682246", "l0.5959303,0.5686619", "l0.5917090,0.5681405", "l0.5894225,0.5646587", "l0.5876343,0.5622366", "l0.5841020,0.5633467", "l0.5815370,0.5664416", "l0.5784883,0.5683759", "l0.5737540,0.5707644", "l0.5715115,0.5729510", "l0.5703389,0.5719418", "l0.5672462,0.5708317", "l0.5644467,0.5697720", "l0.5623068,0.5694188", "l0.5580855,0.5664248", "l0.5550808,0.5595622", "l0.5560335,0.5540957", "l0.5596392,0.5498907", "l0.5636259,0.5480573", "l0.5653555,0.5458875", "l0.5675980,0.5415647", "l0.5643881,0.5328688", "l0.5597418,0.5244587", "l0.5614127,0.5215320", "l0.5623654,0.5179662", "l0.5627172,0.5143835", "l0.5627905,0.5122137", "l0.5629517,0.5111709", "l0.5637872,0.5086815", "l0.5623654,0.5045942", "l0.5608850,0.5003387", "l0.5594047,0.4968402", "l0.5579829,0.4946199", "l0.5569716,0.4927529", "l0.5556524,0.4884470", "l0.5541721,0.4836364", "l0.5531754,0.4817357", "l0.5534392,0.4810125", "l0.5547290,0.4804238", "l0.5565612,0.4787922", "l0.5546264,0.4720137", "l0.5519295,0.4634355", "l0.5541134,0.4576999", "l0.5581588,0.4499963", "l0.5618964,0.4431673", "l0.5666306,0.4413003", "l0.5731970,0.4461949", "l0.5792504,0.4508709", "l0.5856996,0.4464977", "l0.5910495,0.4394333", "l0.5937903,0.4352787", "l0.6037572,0.4301486", "l0.6158200,0.4276929", "l0.6204957,0.4285170", "l0.6231926,0.4245307", "l0.6265931,0.4149264", "l0.6290848,0.4075424", "l0.6329249,0.4095272", "l0.6410597,0.4150273", "l0.6572851,0.4274069", "l0.6726458,0.4399210", "c"]}, {"n": "Northern", "u": "RW-03", "i": ["m0.4766211,0.1502289", "l0.4766211,0.1502289", "l0.4766797,0.1502289", "l0.4820735,0.1533743", "l0.4959099,0.1764514", "l0.4980938,0.1882928", "l0.4992664,0.2115381", "l0.5040446,0.2234972", "l0.5124871,0.2325464", "l0.5221022,0.2357086", "l0.5324502,0.2344134", "l0.5432525,0.2298047", "l0.5766708,0.2085610", "l0.5817568,0.2073331", "l0.5862273,0.1950040", "l0.5926471,0.1874181", "l0.5951974,0.1858370", "l0.5952121,0.1858539", "l0.5972787,0.1870817", "l0.5987005,0.1875190", "l0.6014707,0.1900252", "l0.6030244,0.1957777", "l0.6057359,0.2000332", "l0.6089458,0.2029935", "l0.6151458,0.2149021", "l0.6206422,0.2244055", "l0.6249368,0.2336060", "l0.6291874,0.2442363", "l0.6312687,0.2495515", "l0.6325145,0.2582474", "l0.6328810,0.2634449", "l0.6373221,0.2618974", "l0.6431996,0.2595258", "l0.6480072,0.2595258", "l0.6507041,0.2611910", "l0.6504989,0.2637981", "l0.6465854,0.2678181", "l0.6439911,0.2773046", "l0.6460431,0.2899533", "l0.6498393,0.3014582", "l0.6546908,0.3114998", "l0.6610960,0.3192539", "l0.6700222,0.3325753", "l0.6795933,0.3461996", "l0.6866141,0.3549292", "l0.6895016,0.3625319", "l0.6878600,0.3690076", "l0.6859692,0.3752815", "l0.6877280,0.3871397", "l0.6928141,0.4065164", "l0.6966249,0.4238747", "l0.6967862,0.4324866", "l0.6939866,0.4344041", "l0.6897654,0.4377344", "l0.6862770,0.4419731", "l0.6843276,0.4436046", "l0.6807073,0.4429991", "l0.6726458,0.4399210", "l0.6572851,0.4274069", "l0.6410597,0.4150273", "l0.6329249,0.4095272", "l0.6290848,0.4075424", "l0.6265931,0.4149264", "l0.6231926,0.4245307", "l0.6204957,0.4285170", "l0.6158200,0.4276929", "l0.6037572,0.4301486", "l0.5937903,0.4352787", "l0.5910495,0.4394333", "l0.5856996,0.4464977", "l0.5792504,0.4508709", "l0.5731970,0.4461949", "l0.5666306,0.4413003", "l0.5618964,0.4431673", "l0.5581588,0.4499963", "l0.5541134,0.4576999", "l0.5519295,0.4634355", "l0.5546264,0.4720137", "l0.5565612,0.4787922", "l0.5547290,0.4804238", "l0.5534392,0.4810125", "l0.5521347,0.4800201", "l0.5482213,0.4791455", "l0.5434430,0.4753946", "l0.5387088,0.4695580", "l0.5346927,0.4649493", "l0.5315854,0.4615853", "l0.5279504,0.4587595", "l0.5240370,0.4564215", "l0.5206512,0.4536126", "l0.5147003,0.4515774", "l0.5061113,0.4513419", "l0.4963496,0.4533939", "l0.4868518,0.4534948", "l0.4734111,0.4482470", "l0.4640745,0.4414180", "l0.4616121,0.4332939", "l0.4547379,0.4258258", "l0.4489484,0.4155488", "l0.4423820,0.4043298", "l0.4373252,0.3952806", "l0.4355664,0.3900664", "l0.4317848,0.3893599", "l0.4256288,0.3906719", "l0.4163948,0.3867864", "l0.4083041,0.3806303", "l0.4028076,0.3794529", "l0.3971940,0.3803612", "l0.3942625,0.3813872", "l0.3889859,0.3767785", "l0.3828446,0.3683012", "l0.3834602,0.3559889", "l0.3836654,0.3396061", "l0.3829765,0.3164617", "l0.3809392,0.2993557", "l0.3712801,0.2985652", "l0.3613426,0.2992043", "l0.3522112,0.2940069", "l0.3442230,0.2897178", "l0.3415994,0.2887759", "l0.3396500,0.2874135", "l0.3363961,0.2888936", "l0.3323800,0.2890114", "l0.3230727,0.2856305", "l0.3124610,0.2814255", "l0.3005887,0.2654296", "l0.2917944,0.2516708", "l0.2896544,0.2481722", "l0.2896544,0.2481722", "l0.2991376,0.2310326", "l0.3160666,0.2107644", "l0.3356925,0.1945330", "l0.3550253,0.1866612", "l0.3748125,0.1878891", "l0.3851311,0.1870144", "l0.3942918,0.1841550", "l0.4044346,0.1776120", "l0.4120416,0.1713045", "l0.4202790,0.1664099", "l0.4322245,0.1639541", "l0.4380728,0.1654679", "l0.4485526,0.1727678", "l0.4519677,0.1741639", "l0.4560278,0.1714222", "l0.4589885,0.1602705", "l0.4634296,0.1541985", "l0.4679880,0.1509354", "l0.4722532,0.1494720", "l0.4766211,0.1502289", "c"]}, {"n": "Eastern", "u": "RW-02", "i": ["m0.7895073,0.0031038", "l0.7895073,0.0031038", "l0.7949011,0.0050381", "l0.7909877,0.0097141", "l0.7872061,0.0159038", "l0.7856525,0.0222618", "l0.7872794,0.0283339", "l0.7944468,0.0340022", "l0.7960737,0.0417058", "l0.7950331,0.0450362", "l0.7931863,0.0482488", "l0.7918525,0.0516297", "l0.7926733,0.0550105", "l0.7969971,0.0583409", "l0.8009106,0.0576344", "l0.8041205,0.0556497", "l0.8061432,0.0550105", "l0.8121966,0.0600397", "l0.8142926,0.0635383", "l0.8162126,0.0781381", "l0.8192174,0.0863631", "l0.8281729,0.1034019", "l0.8310750,0.1149068", "l0.8356480,0.1217357", "l0.8366447,0.1263444", "l0.8361610,0.1281106", "l0.8350324,0.1305495", "l0.8338745,0.1338798", "l0.8333615,0.1380849", "l0.8359998,0.1471341", "l0.8423610,0.1526174", "l0.8568569,0.1595136", "l0.8620456,0.1637186", "l0.8694181,0.1717755", "l0.8739472,0.1749208", "l0.9064421,0.1887637", "l0.9161011,0.1903448", "l0.9256723,0.1969887", "l0.9284718,0.2117568", "l0.9275484,0.2264743", "l0.9260240,0.2331351", "l0.9234004,0.2363982", "l0.9263318,0.2437654", "l0.9344666,0.2562459", "l0.9405639,0.2637308", "l0.9427625,0.2680536", "l0.9475407,0.2883722", "l0.9522750,0.3010882", "l0.9599700,0.3080349", "l0.9716664,0.3029047", "l0.9752574,0.3148806", "l0.9748470,0.3294132", "l0.9684858,0.3739695", "l0.9683392,0.3800416", "l0.9694532,0.3829515", "l0.9738357,0.3906551", "l0.9750522,0.3958525", "l0.9694092,0.4113942", "l0.9711387,0.4173485", "l0.9750522,0.4400051", "l0.9723553,0.4495758", "l0.9673425,0.4580531", "l0.9645723,0.4667491", "l0.9683392,0.4768579", "l0.9603511,0.4840401", "l0.9573610,0.4877069", "l0.9549133,0.4922651", "l0.9696584,0.4949563", "l0.9711387,0.5099094", "l0.9646456,0.5427926", "l0.9738650,0.5405051", "l0.9827326,0.5455847", "l0.9902370,0.5542303", "l0.9954989,0.5624048", "l0.9996176,0.5788212", "l0.9826886,0.6417283", "l0.9784087,0.6666052", "l0.9804900,0.7052745", "l0.9784087,0.7167794", "l0.9733227,0.7273424", "l0.9669175,0.7326744", "l0.9586509,0.7368794", "l0.9510438,0.7418918", "l0.9441842,0.7438261", "l0.9406226,0.7461641", "l0.9361521,0.7475602", "l0.9321214,0.7464500", "l0.9064421,0.7319007", "l0.9011508,0.7299832", "l0.8947896,0.7309756", "l0.8891466,0.7360552", "l0.8821259,0.7512438", "l0.8766148,0.7565589", "l0.8663108,0.7571981", "l0.8556404,0.7536995", "l0.8451605,0.7521689", "l0.8356480,0.7586110", "l0.8194812,0.7579045", "l0.8030945,0.7490740", "l0.7763745,0.7239111", "l0.7735457,0.7194706", "l0.7710100,0.7115148", "l0.7686648,0.7084199", "l0.7669939,0.7091263", "l0.7514280,0.7048540", "l0.7490389,0.7034579", "l0.7411240,0.7061492", "l0.7363165,0.7112793", "l0.7342792,0.7143573", "l0.7320220,0.7177718", "l0.7256901,0.7244830", "l0.7186253,0.7286376", "l0.7093620,0.7320857", "l0.6999521,0.7343060", "l0.6920226,0.7347096", "l0.6859106,0.7331285", "l0.6705645,0.7245503", "l0.6648336,0.7239111", "l0.6630747,0.7276957", "l0.6628255,0.7330108", "l0.6618142,0.7369972", "l0.6395793,0.7690058", "l0.6311954,0.7756665", "l0.6202025,0.7760702", "l0.6089165,0.7710410", "l0.5986419,0.7632197", "l0.5905511,0.7550956", "l0.5752930,0.7343564", "l0.5692982,0.7290413", "l0.5636699,0.7267706", "l0.5589503,0.7265855", "l0.5548023,0.7270565", "l0.5509915,0.7264173", "l0.5423144,0.7178559", "l0.5414643,0.7170149", "l0.5426222,0.7154675", "l0.5432818,0.7138527", "l0.5438534,0.7124567", "l0.5450113,0.7016246", "l0.5467702,0.6910279", "l0.5469461,0.6899682", "l0.5472099,0.6890936", "l0.5530728,0.6694814", "l0.5557990,0.6417283", "l0.5549782,0.6229739", "l0.5602694,0.6112335", "l0.5675980,0.6020497", "l0.5708519,0.5951871", "l0.5709105,0.5886609", "l0.5709252,0.5784175", "l0.5715115,0.5729510", "l0.5737540,0.5707644", "l0.5784883,0.5683759", "l0.5815370,0.5664416", "l0.5841020,0.5633467", "l0.5876343,0.5622366", "l0.5894225,0.5646587", "l0.5917090,0.5681405", "l0.5959303,0.5686619", "l0.5989497,0.5682246", "l0.6003274,0.5677368", "l0.6019837,0.5672658", "l0.6049005,0.5666267", "l0.6081397,0.5658025", "l0.6109832,0.5647764", "l0.6154096,0.5637000", "l0.6193671,0.5632963", "l0.6208035,0.5632290", "l0.6224744,0.5628758", "l0.6236763,0.5607733", "l0.6266224,0.5578970", "l0.6300521,0.5550040", "l0.6328810,0.5533052", "l0.6381429,0.5506812", "l0.6441230,0.5482591", "l0.6501471,0.5502103", "l0.6553357,0.5580316", "l0.6586629,0.5639018", "l0.6624005,0.5692842", "l0.6656104,0.5743807", "l0.6689376,0.5689646", "l0.6728217,0.5587380", "l0.6760756,0.5383521", "l0.6775560,0.5179662", "l0.6778638,0.5114400", "l0.6805314,0.5079246", "l0.6876254,0.5044765", "l0.6943384,0.5008097", "l0.6966542,0.4960496", "l0.6968301,0.4849484", "l0.6958188,0.4756973", "l0.6929167,0.4723333", "l0.6898680,0.4680442", "l0.6901904,0.4602397", "l0.6883143,0.4520988", "l0.6849578,0.4466154", "l0.6843276,0.4436046", "l0.6862770,0.4419731", "l0.6897654,0.4377344", "l0.6939866,0.4344041", "l0.6967862,0.4324866", "l0.6966249,0.4238747", "l0.6928141,0.4065164", "l0.6877280,0.3871397", "l0.6859692,0.3752815", "l0.6878600,0.3690076", "l0.6895016,0.3625319", "l0.6866141,0.3549292", "l0.6795933,0.3461996", "l0.6700222,0.3325753", "l0.6610960,0.3192539", "l0.6546908,0.3114998", "l0.6498393,0.3014582", "l0.6460431,0.2899533", "l0.6439911,0.2773046", "l0.6465854,0.2678181", "l0.6504989,0.2637981", "l0.6507041,0.2611910", "l0.6480072,0.2595258", "l0.6431996,0.2595258", "l0.6373221,0.2618974", "l0.6328810,0.2634449", "l0.6325145,0.2582474", "l0.6312687,0.2495515", "l0.6291874,0.2442363", "l0.6249368,0.2336060", "l0.6206422,0.2244055", "l0.6151458,0.2149021", "l0.6089458,0.2029935", "l0.6057359,0.2000332", "l0.6030244,0.1957777", "l0.6014707,0.1900252", "l0.5987005,0.1875190", "l0.5972787,0.1870817", "l0.5952121,0.1858539", "l0.5951974,0.1858370", "l0.6097227,0.1769056", "l0.6298176,0.1679237", "l0.6351528,0.1622048", "l0.6377032,0.1536098", "l0.6407079,0.1317269", "l0.6442110,0.1240233", "l0.6480804,0.1213825", "l0.6519939,0.1206256", "l0.6559074,0.1202892", "l0.6595423,0.1190614", "l0.6671494,0.1138639", "l0.6890472,0.0899794", "l0.6954817,0.0805266", "l0.7007729,0.0703168", "l0.7017110,0.0665659", "l0.7027956,0.0584586", "l0.7042320,0.0550778", "l0.7059029,0.0534799", "l0.7076911,0.0517979", "l0.7159284,0.0475424", "l0.7189185,0.0446830", "l0.7214688,0.0361048", "l0.7246494,0.0127585", "l0.7287974,0.0047017", "l0.7363165,0.0016068", "l0.7444512,0.0030029", "l0.7528498,0.0058118", "l0.7611311,0.0070229", "l0.7688700,0.0048194", "l0.7753338,0.0014890", "l0.7820175,0.0004294", "l0.7895073,0.0031038", "c"]}, {"n": "Western", "u": "RW-04", "i": ["m0.3005887,0.2654296", "l0.3005887,0.2654296", "l0.3124610,0.2814255", "l0.3230727,0.2856305", "l0.3323800,0.2890114", "l0.3363961,0.2888936", "l0.3396500,0.2874135", "l0.3415994,0.2887759", "l0.3442230,0.2897178", "l0.3522112,0.2940069", "l0.3613426,0.2992043", "l0.3712801,0.2985652", "l0.3809392,0.2993557", "l0.3829765,0.3164617", "l0.3836654,0.3396061", "l0.3834602,0.3559889", "l0.3828446,0.3683012", "l0.3889859,0.3767785", "l0.3942625,0.3813872", "l0.3955377,0.3834224", "l0.3969594,0.3891581", "l0.3988502,0.3994015", "l0.4005065,0.4183745", "l0.3991580,0.4341181", "l0.3975311,0.4406611", "l0.3973698,0.4474901", "l0.3997150,0.4613835", "l0.4010781,0.4763870", "l0.3985424,0.4836364", "l0.3966370,0.4880096", "l0.3967542,0.4943003", "l0.3986450,0.5006079", "l0.4008289,0.5052166", "l0.3996857,0.5111372", "l0.3951859,0.5157796", "l0.3894843,0.5178484", "l0.3820824,0.5174784", "l0.3770843,0.5174784", "l0.3792976,0.5231636", "l0.3810418,0.5356104", "l0.3805581,0.5475527", "l0.3822876,0.5538939", "l0.3837387,0.5576784", "l0.3831817,0.5624216", "l0.3827713,0.5673163", "l0.3819798,0.5725810", "l0.3785794,0.5785857", "l0.3761609,0.5825721", "l0.3749444,0.5853138", "l0.3731416,0.5888796", "l0.3731123,0.5930846", "l0.3703127,0.6009060", "l0.3658130,0.6103925", "l0.3652853,0.6161449", "l0.3667217,0.6196603", "l0.3685539,0.6274480", "l0.3687444,0.6351853", "l0.3647137,0.6376410", "l0.3594518,0.6412910", "l0.3560806,0.6434776", "l0.3520499,0.6448232", "l0.3484443,0.6464547", "l0.3453369,0.6450923", "l0.3426987,0.6440158", "l0.3406613,0.6473294", "l0.3378178,0.6507775", "l0.3315299,0.6552853", "l0.3261654,0.6607181", "l0.3196136,0.6649232", "l0.3073749,0.6759067", "l0.3002076,0.6844513", "l0.2972029,0.6839635", "l0.2913840,0.6842494", "l0.2828682,0.6844849", "l0.2729160,0.6863519", "l0.2637699,0.6942742", "l0.2575113,0.6975036", "l0.2519709,0.6955861", "l0.2446716,0.6968645", "l0.2372111,0.7012545", "l0.2322277,0.7080835", "l0.2309086,0.7157366", "l0.2341624,0.7250213", "l0.2375189,0.7329099", "l0.2371085,0.7381073", "l0.2321837,0.7470724", "l0.2280358,0.7546919", "l0.2294868,0.7600070", "l0.2309525,0.7663818", "l0.2289445,0.7715288", "l0.2188604,0.7778868", "l0.2084831,0.7842616", "l0.2042032,0.7914437", "l0.2019753,0.7988614", "l0.2024297,0.8026627", "l0.2083805,0.8063631", "l0.2175266,0.8096767", "l0.2241516,0.8131416", "l0.2282116,0.8194323", "l0.2292816,0.8280106", "l0.2322277,0.8350582", "l0.2359506,0.8406929", "l0.2383837,0.8462435", "l0.2404210,0.8497757", "l0.2394830,0.8552927", "l0.2388967,0.8605238", "l0.2395563,0.8644933", "l0.2420187,0.8687320", "l0.2477643,0.8784372", "l0.2461373,0.8988231", "l0.2392045,0.9130529", "l0.2347048,0.9157609", "l0.2322277,0.9166187", "l0.2229351,0.9222534", "l0.2212348,0.9145835", "l0.2218797,0.9079227", "l0.2215133,0.9052988", "l0.2155185,0.9001519", "l0.2065191,0.8942648", "l0.1961125,0.8913886", "l0.1753433,0.8884115", "l0.1643504,0.8845597", "l0.1344791,0.8696066", "l0.1264617,0.8682610", "l0.0978363,0.8704140", "l0.0866675,0.8829786", "l0.0781957,0.9395445", "l0.0706912,0.9298898", "l0.0606071,0.9241709", "l0.0459060,0.9223544", "l0.0393396,0.9193772", "l0.0209888,0.9055847", "l0.0171633,0.9010938", "l0.0204758,0.8579167", "l0.0171633,0.8447634", "l0.0121066,0.8388763", "l0.0065955,0.8358319", "l0.0022130,0.8323838", "l0.0003809,0.8251343", "l0.0021690,0.8177167", "l0.0107141,0.8089534", "l0.0089846,0.8020572", "l0.0040012,0.7918474", "l0.0021690,0.7806284", "l0.0011723,0.7685348", "l0.0048659,0.7536995", "l0.0117695,0.7468537", "l0.0250049,0.7416059", "l0.0352795,0.7381577", "l0.0437953,0.7323716", "l0.0507868,0.7241971", "l0.0564884,0.7139705", "l0.0601967,0.7055604", "l0.0618676,0.6994884", "l0.0624539,0.6945769", "l0.0675253,0.6891441", "l0.0716879,0.6874621", "l0.0858467,0.6879835", "l0.1077445,0.6813227", "l0.1246882,0.6659660", "l0.1369855,0.6439485", "l0.1447245,0.6171878", "l0.1475680,0.5935892", "l0.1465566,0.5732706", "l0.1334825,0.4845615", "l0.1324125,0.4638897", "l0.1348602,0.4436887", "l0.1441089,0.4188119", "l0.1624890,0.3850708", "l0.1750795,0.3619264", "l0.1854567,0.3393370", "l0.1914075,0.3293459", "l0.2151668,0.3067565", "l0.2201502,0.2993389", "l0.2336201,0.2674648", "l0.2393218,0.2590548", "l0.2470461,0.2553208", "l0.2846563,0.2535715", "l0.2858875,0.2532182", "l0.2869722,0.2523941", "l0.2879982,0.2511662", "l0.2896544,0.2481722", "l0.2896544,0.2481722", "l0.2917944,0.2516708", "l0.3005887,0.2654296", "c"]}, {"n": "Southern", "u": "RW-05", "i": ["m0.4256288,0.3906719", "l0.4256288,0.3906719", "l0.4317848,0.3893599", "l0.4355664,0.3900664", "l0.4373252,0.3952806", "l0.4423820,0.4043298", "l0.4489484,0.4155488", "l0.4547379,0.4258258", "l0.4616121,0.4332939", "l0.4640745,0.4414180", "l0.4734111,0.4482470", "l0.4868518,0.4534948", "l0.4963496,0.4533939", "l0.5061113,0.4513419", "l0.5147003,0.4515774", "l0.5206512,0.4536126", "l0.5240370,0.4564215", "l0.5279504,0.4587595", "l0.5315854,0.4615853", "l0.5346927,0.4649493", "l0.5387088,0.4695580", "l0.5434430,0.4753946", "l0.5482213,0.4791455", "l0.5521347,0.4800201", "l0.5534392,0.4810125", "l0.5531754,0.4817357", "l0.5541721,0.4836364", "l0.5556524,0.4884470", "l0.5569716,0.4927529", "l0.5579829,0.4946199", "l0.5594047,0.4968402", "l0.5608850,0.5003387", "l0.5623654,0.5045942", "l0.5637872,0.5086815", "l0.5629517,0.5111709", "l0.5627905,0.5122137", "l0.5627172,0.5143835", "l0.5623654,0.5179662", "l0.5614127,0.5215320", "l0.5597418,0.5244587", "l0.5643881,0.5328688", "l0.5675980,0.5415647", "l0.5653555,0.5458875", "l0.5636259,0.5480573", "l0.5596392,0.5498907", "l0.5560335,0.5540957", "l0.5550808,0.5595622", "l0.5580855,0.5664248", "l0.5623068,0.5694188", "l0.5644467,0.5697720", "l0.5672462,0.5708317", "l0.5703389,0.5719418", "l0.5715115,0.5729510", "l0.5709252,0.5784175", "l0.5709105,0.5886609", "l0.5708519,0.5951871", "l0.5675980,0.6020497", "l0.5602694,0.6112335", "l0.5549782,0.6229739", "l0.5557990,0.6417283", "l0.5530728,0.6694814", "l0.5472099,0.6890936", "l0.5469461,0.6899682", "l0.5467702,0.6910279", "l0.5450113,0.7016246", "l0.5438534,0.7124567", "l0.5432818,0.7138527", "l0.5426222,0.7154675", "l0.5414643,0.7170149", "l0.5380932,0.7136845", "l0.5341504,0.7111111", "l0.5291230,0.7112793", "l0.5276866,0.7144414", "l0.5277452,0.7197061", "l0.5245353,0.7486198", "l0.5280823,0.7920829", "l0.5174266,0.8347891", "l0.5153599,0.8927510", "l0.5151254,0.8990417", "l0.5124871,0.9114886", "l0.5078115,0.9238177", "l0.5018021,0.9355077", "l0.4952503,0.9457343", "l0.4851808,0.9574747", "l0.4759175,0.9637317", "l0.4659800,0.9658847", "l0.4537412,0.9654810", "l0.4427630,0.9616797", "l0.4371200,0.9617470", "l0.4334557,0.9669948", "l0.4318288,0.9788698", "l0.4296889,0.9841177", "l0.4249106,0.9874480", "l0.4139031,0.9890291", "l0.4046105,0.9873976", "l0.3841491,0.9796267", "l0.3788725,0.9776419", "l0.3753695,0.9774065", "l0.3607270,0.9834785", "l0.3570627,0.9860520", "l0.3531492,0.9878013", "l0.3480632,0.9875658", "l0.3372755,0.9892141", "l0.3280708,0.9959254", "l0.3187196,0.9995417", "l0.3072723,0.9921240", "l0.2894639,0.9883227", "l0.2799514,0.9862875", "l0.2711278,0.9874480", "l0.2499042,0.9980279", "l0.2377974,0.9993230", "l0.2334442,0.9885582", "l0.2328580,0.9814937", "l0.2282849,0.9697533", "l0.2271710,0.9632103", "l0.2288419,0.9573065", "l0.2356575,0.9477190", "l0.2367274,0.9412938", "l0.2337227,0.9342798", "l0.2230523,0.9227749", "l0.2229351,0.9222534", "l0.2322277,0.9166187", "l0.2347048,0.9157609", "l0.2392045,0.9130529", "l0.2461373,0.8988231", "l0.2477643,0.8784372", "l0.2420187,0.8687320", "l0.2395563,0.8644933", "l0.2388967,0.8605238", "l0.2394830,0.8552927", "l0.2404210,0.8497757", "l0.2383837,0.8462435", "l0.2359506,0.8406929", "l0.2322277,0.8350582", "l0.2292816,0.8280106", "l0.2282116,0.8194323", "l0.2241516,0.8131416", "l0.2175266,0.8096767", "l0.2083805,0.8063631", "l0.2024297,0.8026627", "l0.2019753,0.7988614", "l0.2042032,0.7914437", "l0.2084831,0.7842616", "l0.2188604,0.7778868", "l0.2289445,0.7715288", "l0.2309525,0.7663818", "l0.2294868,0.7600070", "l0.2280358,0.7546919", "l0.2321837,0.7470724", "l0.2371085,0.7381073", "l0.2375189,0.7329099", "l0.2341624,0.7250213", "l0.2309086,0.7157366", "l0.2322277,0.7080835", "l0.2372111,0.7012545", "l0.2446716,0.6968645", "l0.2519709,0.6955861", "l0.2575113,0.6975036", "l0.2637699,0.6942742", "l0.2729160,0.6863519", "l0.2828682,0.6844849", "l0.2913840,0.6842494", "l0.2972029,0.6839635", "l0.3002076,0.6844513", "l0.3073749,0.6759067", "l0.3196136,0.6649232", "l0.3261654,0.6607181", "l0.3315299,0.6552853", "l0.3378178,0.6507775", "l0.3406613,0.6473294", "l0.3426987,0.6440158", "l0.3453369,0.6450923", "l0.3484443,0.6464547", "l0.3520499,0.6448232", "l0.3560806,0.6434776", "l0.3594518,0.6412910", "l0.3647137,0.6376410", "l0.3687444,0.6351853", "l0.3685539,0.6274480", "l0.3667217,0.6196603", "l0.3652853,0.6161449", "l0.3658130,0.6103925", "l0.3703127,0.6009060", "l0.3731123,0.5930846", "l0.3731416,0.5888796", "l0.3749444,0.5853138", "l0.3761609,0.5825721", "l0.3785794,0.5785857", "l0.3819798,0.5725810", "l0.3827713,0.5673163", "l0.3831817,0.5624216", "l0.3837387,0.5576784", "l0.3822876,0.5538939", "l0.3805581,0.5475527", "l0.3810418,0.5356104", "l0.3792976,0.5231636", "l0.3770843,0.5174784", "l0.3820824,0.5174784", "l0.3894843,0.5178484", "l0.3951859,0.5157796", "l0.3996857,0.5111372", "l0.4008289,0.5052166", "l0.3986450,0.5006079", "l0.3967542,0.4943003", "l0.3966370,0.4880096", "l0.3985424,0.4836364", "l0.4010781,0.4763870", "l0.3997150,0.4613835", "l0.3973698,0.4474901", "l0.3975311,0.4406611", "l0.3991580,0.4341181", "l0.4005065,0.4183745", "l0.3988502,0.3994015", "l0.3969594,0.3891581", "l0.3955377,0.3834224", "l0.3942625,0.3813872", "l0.3971940,0.3803612", "l0.4028076,0.3794529", "l0.4083041,0.3806303", "l0.4163948,0.3867864", "l0.4256288,0.3906719", "c"]}]} """;
}