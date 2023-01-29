import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gtk_flutter/map/data/countrycodes.dart';
import 'package:gtk_flutter/screens/activecountries.dart';
import 'package:gtk_flutter/screens/regionlistpage.dart';
import 'package:provider/provider.dart';

import '../map/data/maps/world_map.dart';
import '../model/placehistory.dart';
import '../state/applicationstate.dart';

class ActiveCountryPage extends StatefulWidget {
  ActiveCountryPage(
      {required this.usercountrylist, required this.countryrecords, super.key});

  List<CurrentCountry> usercountrylist;
  Map<String, dynamic> countryrecords;

  @override
  State<ActiveCountryPage> createState() => _ActiveCountryPageState();
}

Color returnCountryColor(
    Map<String, dynamic> countryrecords, String countryCode) {
  if (countryrecords.containsKey(countryCode)) {
    return Colors.blue;
  } else {
    return Colors.orangeAccent;
  }
}

class _ActiveCountryPageState extends State<ActiveCountryPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ApplicationState>(
        builder: (context, appState, child) => Scaffold(
            appBar: AppBar(
              title: const Text('Countries Visted '),
            ),
            body: Center(
                child: SupportedCountriesMap(
              countryColors: SMapWorldColors(
                aD: returnCountryColor(widget.countryrecords, 'AD'),
                aE: returnCountryColor(widget.countryrecords, 'AE'),
                aF: returnCountryColor(widget.countryrecords, 'AF'),
                aG: returnCountryColor(widget.countryrecords, 'AG'),
                aI: returnCountryColor(widget.countryrecords, 'AI'),
                aL: returnCountryColor(widget.countryrecords, 'AL'),
                aM: returnCountryColor(widget.countryrecords, 'AM'),
                aN: returnCountryColor(widget.countryrecords, 'AN'),
                aO: returnCountryColor(widget.countryrecords, 'AO'),
                aQ: returnCountryColor(widget.countryrecords, 'AQ'),
                aR: returnCountryColor(widget.countryrecords, 'AR'),
                aS: returnCountryColor(widget.countryrecords, 'AS'),
                aT: returnCountryColor(widget.countryrecords, 'AT'),
                aU: returnCountryColor(widget.countryrecords, 'AU'),
                aW: returnCountryColor(widget.countryrecords, 'AW'),
                aX: returnCountryColor(widget.countryrecords, 'AX'),
                aZ: returnCountryColor(widget.countryrecords, 'AZ'),
                bA: returnCountryColor(widget.countryrecords, 'BA'),
                bB: returnCountryColor(widget.countryrecords, 'BB'),
                bD: returnCountryColor(widget.countryrecords, 'BD'),
                bE: returnCountryColor(widget.countryrecords, 'BE'),
                bF: returnCountryColor(widget.countryrecords, 'BF'),
                bG: returnCountryColor(widget.countryrecords, 'BG'),
                bH: returnCountryColor(widget.countryrecords, 'BH'),
                bI: returnCountryColor(widget.countryrecords, 'BI'),
                bJ: returnCountryColor(widget.countryrecords, 'BJ'),
                bL: returnCountryColor(widget.countryrecords, 'BL'),
                bM: returnCountryColor(widget.countryrecords, 'BM'),
                bN: returnCountryColor(widget.countryrecords, 'BN'),
                bO: returnCountryColor(widget.countryrecords, 'BO'),
                bQ: returnCountryColor(widget.countryrecords, 'BQ'),
                bR: returnCountryColor(widget.countryrecords, 'BR'),
                bS: returnCountryColor(widget.countryrecords, 'BS'),
                bT: returnCountryColor(widget.countryrecords, 'BT'),
                bV: returnCountryColor(widget.countryrecords, 'BV'),
                bW: returnCountryColor(widget.countryrecords, 'BW'),
                bY: returnCountryColor(widget.countryrecords, 'BY'),
                bZ: returnCountryColor(widget.countryrecords, 'BZ'),
                cA: returnCountryColor(widget.countryrecords, 'CA'),
                cC: returnCountryColor(widget.countryrecords, 'CC'),
                cD: returnCountryColor(widget.countryrecords, 'CD'),
                cF: returnCountryColor(widget.countryrecords, 'CF'),
                cG: returnCountryColor(widget.countryrecords, 'CG'),
                cH: returnCountryColor(widget.countryrecords, 'CH'),
                cI: returnCountryColor(widget.countryrecords, 'CI'),
                cK: returnCountryColor(widget.countryrecords, 'CK'),
                cL: returnCountryColor(widget.countryrecords, 'CL'),
                cM: returnCountryColor(widget.countryrecords, 'CM'),
                cN: returnCountryColor(widget.countryrecords, 'CN'),
                cO: returnCountryColor(widget.countryrecords, 'CO'),
                cR: returnCountryColor(widget.countryrecords, 'CR'),
                cU: returnCountryColor(widget.countryrecords, 'CU'),
                cV: returnCountryColor(widget.countryrecords, 'CV'),
                cW: returnCountryColor(widget.countryrecords, 'CW'),
                cX: returnCountryColor(widget.countryrecords, 'CX'),
                cY: returnCountryColor(widget.countryrecords, 'CY'),
                cZ: returnCountryColor(widget.countryrecords, 'CZ'),
                dE: returnCountryColor(widget.countryrecords, 'DE'),
                dJ: returnCountryColor(widget.countryrecords, 'DJ'),
                dK: returnCountryColor(widget.countryrecords, 'DK'),
                dM: returnCountryColor(widget.countryrecords, 'DM'),
                dO: returnCountryColor(widget.countryrecords, 'DO'),
                dZ: returnCountryColor(widget.countryrecords, 'DZ'),
                eC: returnCountryColor(widget.countryrecords, 'EC'),
                eE: returnCountryColor(widget.countryrecords, 'EE'),
                eG: returnCountryColor(widget.countryrecords, 'EG'),
                eH: returnCountryColor(widget.countryrecords, 'EH'),
                eR: returnCountryColor(widget.countryrecords, 'ER'),
                eS: returnCountryColor(widget.countryrecords, 'ES'),
                eT: returnCountryColor(widget.countryrecords, 'ET'),
                fI: returnCountryColor(widget.countryrecords, 'FI'),
                fJ: returnCountryColor(widget.countryrecords, 'FJ'),
                fK: returnCountryColor(widget.countryrecords, 'FK'),
                fM: returnCountryColor(widget.countryrecords, 'FM'),
                fO: returnCountryColor(widget.countryrecords, 'FO'),
                fR: returnCountryColor(widget.countryrecords, 'FR'),
                gA: returnCountryColor(widget.countryrecords, 'GA'),
                gB: returnCountryColor(widget.countryrecords, 'GB'),
                gD: returnCountryColor(widget.countryrecords, 'GD'),
                gE: returnCountryColor(widget.countryrecords, 'GE'),
                gF: returnCountryColor(widget.countryrecords, 'GF'),
                gG: returnCountryColor(widget.countryrecords, 'GG'),
                gH: returnCountryColor(widget.countryrecords, 'GH'),
                gI: returnCountryColor(widget.countryrecords, 'GI'),
                gL: returnCountryColor(widget.countryrecords, 'GL'),
                gM: returnCountryColor(widget.countryrecords, 'GM'),
                gN: returnCountryColor(widget.countryrecords, 'GN'),
                gP: returnCountryColor(widget.countryrecords, 'GP'),
                gQ: returnCountryColor(widget.countryrecords, 'GQ'),
                gR: returnCountryColor(widget.countryrecords, 'GR'),
                gS: returnCountryColor(widget.countryrecords, 'GS'),
                gT: returnCountryColor(widget.countryrecords, 'GT'),
                gU: returnCountryColor(widget.countryrecords, 'GU'),
                gW: returnCountryColor(widget.countryrecords, 'GW'),
                gY: returnCountryColor(widget.countryrecords, 'GY'),
                hK: returnCountryColor(widget.countryrecords, 'HK'),
                hM: returnCountryColor(widget.countryrecords, 'HM'),
                hN: returnCountryColor(widget.countryrecords, 'HN'),
                hR: returnCountryColor(widget.countryrecords, 'HR'),
                hT: returnCountryColor(widget.countryrecords, 'HT'),
                hU: returnCountryColor(widget.countryrecords, 'HU'),
                iD: returnCountryColor(widget.countryrecords, 'ID'),
                iE: returnCountryColor(widget.countryrecords, 'IE'),
                iL: returnCountryColor(widget.countryrecords, 'IL'),
                iM: returnCountryColor(widget.countryrecords, 'IM'),
                iN: returnCountryColor(widget.countryrecords, 'IN'),
                iO: returnCountryColor(widget.countryrecords, 'IO'),
                iQ: returnCountryColor(widget.countryrecords, 'IQ'),
                iR: returnCountryColor(widget.countryrecords, 'IR'),
                iS: returnCountryColor(widget.countryrecords, 'IS'),
                iT: returnCountryColor(widget.countryrecords, 'IT'),
                jE: returnCountryColor(widget.countryrecords, 'JE'),
                jM: returnCountryColor(widget.countryrecords, 'JM'),
                jO: returnCountryColor(widget.countryrecords, 'JO'),
                jP: returnCountryColor(widget.countryrecords, 'JP'),
                kE: returnCountryColor(widget.countryrecords, 'KE'),
                kG: returnCountryColor(widget.countryrecords, 'KG'),
                kH: returnCountryColor(widget.countryrecords, 'KH'),
                kI: returnCountryColor(widget.countryrecords, 'KI'),
                kM: returnCountryColor(widget.countryrecords, 'KM'),
                kN: returnCountryColor(widget.countryrecords, 'KN'),
                kP: returnCountryColor(widget.countryrecords, 'KP'),
                kR: returnCountryColor(widget.countryrecords, 'KR'),
                kW: returnCountryColor(widget.countryrecords, 'KW'),
                kY: returnCountryColor(widget.countryrecords, 'KY'),
                kZ: returnCountryColor(widget.countryrecords, 'KZ'),
                lA: returnCountryColor(widget.countryrecords, 'LA'),
                lB: returnCountryColor(widget.countryrecords, 'LB'),
                lC: returnCountryColor(widget.countryrecords, 'LC'),
                lI: returnCountryColor(widget.countryrecords, 'LI'),
                lK: returnCountryColor(widget.countryrecords, 'LK'),
                lR: returnCountryColor(widget.countryrecords, 'LR'),
                lS: returnCountryColor(widget.countryrecords, 'LS'),
                lT: returnCountryColor(widget.countryrecords, 'LT'),
                lU: returnCountryColor(widget.countryrecords, 'LU'),
                lV: returnCountryColor(widget.countryrecords, 'LV'),
                lY: returnCountryColor(widget.countryrecords, 'LY'),
                mA: returnCountryColor(widget.countryrecords, 'MA'),
                mC: returnCountryColor(widget.countryrecords, 'MC'),
                mD: returnCountryColor(widget.countryrecords, 'MD'),
                mE: returnCountryColor(widget.countryrecords, 'ME'),
                mF: returnCountryColor(widget.countryrecords, 'MF'),
                mG: returnCountryColor(widget.countryrecords, 'MG'),
                mH: returnCountryColor(widget.countryrecords, 'MH'),
                mK: returnCountryColor(widget.countryrecords, 'MK'),
                mL: returnCountryColor(widget.countryrecords, 'ML'),
                mM: returnCountryColor(widget.countryrecords, 'MM'),
                mN: returnCountryColor(widget.countryrecords, 'MN'),
                mO: returnCountryColor(widget.countryrecords, 'MO'),
                mP: returnCountryColor(widget.countryrecords, 'MP'),
                mQ: returnCountryColor(widget.countryrecords, 'MQ'),
                mR: returnCountryColor(widget.countryrecords, 'MR'),
                mS: returnCountryColor(widget.countryrecords, 'MS'),
                mT: returnCountryColor(widget.countryrecords, 'MT'),
                mU: returnCountryColor(widget.countryrecords, 'MU'),
                mV: returnCountryColor(widget.countryrecords, 'MV'),
                mW: returnCountryColor(widget.countryrecords, 'MW'),
                mX: returnCountryColor(widget.countryrecords, 'MX'),
                mY: returnCountryColor(widget.countryrecords, 'MY'),
                mZ: returnCountryColor(widget.countryrecords, 'MZ'),
                nA: returnCountryColor(widget.countryrecords, 'NA'),
                nC: returnCountryColor(widget.countryrecords, 'NC'),
                nE: returnCountryColor(widget.countryrecords, 'NE'),
                nF: returnCountryColor(widget.countryrecords, 'NF'),
                nG: returnCountryColor(widget.countryrecords, 'NG'),
                nI: returnCountryColor(widget.countryrecords, 'NI'),
                nL: returnCountryColor(widget.countryrecords, 'NL'),
                nO: returnCountryColor(widget.countryrecords, 'NO'),
                nP: returnCountryColor(widget.countryrecords, 'NP'),
                nR: returnCountryColor(widget.countryrecords, 'NR'),
                nU: returnCountryColor(widget.countryrecords, 'NU'),
                nZ: returnCountryColor(widget.countryrecords, 'NZ'),
                oM: returnCountryColor(widget.countryrecords, 'OM'),
                pA: returnCountryColor(widget.countryrecords, 'PA'),
                pE: returnCountryColor(widget.countryrecords, 'PE'),
                pF: returnCountryColor(widget.countryrecords, 'PF'),
                pG: returnCountryColor(widget.countryrecords, 'PG'),
                pH: returnCountryColor(widget.countryrecords, 'PH'),
                pK: returnCountryColor(widget.countryrecords, 'PK'),
                pL: returnCountryColor(widget.countryrecords, 'PL'),
                pM: returnCountryColor(widget.countryrecords, 'PM'),
                pN: returnCountryColor(widget.countryrecords, 'PN'),
                pR: returnCountryColor(widget.countryrecords, 'PR'),
                pS: returnCountryColor(widget.countryrecords, 'PS'),
                pT: returnCountryColor(widget.countryrecords, 'PT'),
                pW: returnCountryColor(widget.countryrecords, 'PW'),
                pY: returnCountryColor(widget.countryrecords, 'PY'),
                qA: returnCountryColor(widget.countryrecords, 'QA'),
                rE: returnCountryColor(widget.countryrecords, 'RE'),
                rO: returnCountryColor(widget.countryrecords, 'RO'),
                rS: returnCountryColor(widget.countryrecords, 'RS'),
                rU: returnCountryColor(widget.countryrecords, 'RU'),
                rW: returnCountryColor(widget.countryrecords, 'RW'),
                sA: returnCountryColor(widget.countryrecords, 'SA'),
                sB: returnCountryColor(widget.countryrecords, 'SB'),
                sC: returnCountryColor(widget.countryrecords, 'SC'),
                sD: returnCountryColor(widget.countryrecords, 'SD'),
                sE: returnCountryColor(widget.countryrecords, 'SE'),
                sG: returnCountryColor(widget.countryrecords, 'SG'),
                sH: returnCountryColor(widget.countryrecords, 'SH'),
                sI: returnCountryColor(widget.countryrecords, 'SI'),
                sJ: returnCountryColor(widget.countryrecords, 'SJ'),
                sK: returnCountryColor(widget.countryrecords, 'SK'),
                sL: returnCountryColor(widget.countryrecords, 'SL'),
                sM: returnCountryColor(widget.countryrecords, 'SM'),
                sN: returnCountryColor(widget.countryrecords, 'SN'),
                sO: returnCountryColor(widget.countryrecords, 'SO'),
                sR: returnCountryColor(widget.countryrecords, 'SR'),
                sS: returnCountryColor(widget.countryrecords, 'SS'),
                sT: returnCountryColor(widget.countryrecords, 'ST'),
                sV: returnCountryColor(widget.countryrecords, 'SV'),
                sX: returnCountryColor(widget.countryrecords, 'SX'),
                sY: returnCountryColor(widget.countryrecords, 'SY'),
                sZ: returnCountryColor(widget.countryrecords, 'SZ'),
                tC: returnCountryColor(widget.countryrecords, 'TC'),
                tD: returnCountryColor(widget.countryrecords, 'TD'),
                tF: returnCountryColor(widget.countryrecords, 'TF'),
                tG: returnCountryColor(widget.countryrecords, 'TG'),
                tH: returnCountryColor(widget.countryrecords, 'TH'),
                tJ: returnCountryColor(widget.countryrecords, 'TJ'),
                tK: returnCountryColor(widget.countryrecords, 'TK'),
                tL: returnCountryColor(widget.countryrecords, 'TL'),
                tM: returnCountryColor(widget.countryrecords, 'TM'),
                tN: returnCountryColor(widget.countryrecords, 'TN'),
                tO: returnCountryColor(widget.countryrecords, 'TO'),
                tR: returnCountryColor(widget.countryrecords, 'TR'),
                tT: returnCountryColor(widget.countryrecords, 'TT'),
                tV: returnCountryColor(widget.countryrecords, 'TV'),
                tW: returnCountryColor(widget.countryrecords, 'TW'),
                tZ: returnCountryColor(widget.countryrecords, 'TZ'),
                uA: returnCountryColor(widget.countryrecords, 'UA'),
                uG: returnCountryColor(widget.countryrecords, 'UG'),
                uM: returnCountryColor(widget.countryrecords, 'UM'),
                uS: returnCountryColor(widget.countryrecords, 'US'),
                uY: returnCountryColor(widget.countryrecords, 'UY'),
                uZ: returnCountryColor(widget.countryrecords, 'UZ'),
                vA: returnCountryColor(widget.countryrecords, 'VA'),
                vC: returnCountryColor(widget.countryrecords, 'VC'),
                vE: returnCountryColor(widget.countryrecords, 'VE'),
                vG: returnCountryColor(widget.countryrecords, 'VG'),
                vI: returnCountryColor(widget.countryrecords, 'VI'),
                vN: returnCountryColor(widget.countryrecords, 'VN'),
                vU: returnCountryColor(widget.countryrecords, 'VU'),
                wF: returnCountryColor(widget.countryrecords, 'WF'),
                wS: returnCountryColor(widget.countryrecords, 'WS'),
                xK: returnCountryColor(widget.countryrecords, 'XK'),
                yE: returnCountryColor(widget.countryrecords, 'YE'),
                yT: returnCountryColor(widget.countryrecords, 'YT'),
                zA: returnCountryColor(widget.countryrecords, 'ZA'),
                zM: returnCountryColor(widget.countryrecords, 'ZM'),
                zW: returnCountryColor(widget.countryrecords, 'ZW'),

                //_currentMapColors,
              ),
            ))));
  }
}

class ActiveCountrylist extends StatelessWidget {
  ActiveCountrylist();
  final CurrentCountryCollectionReference countyRef =
      currentuserRef.doc(FirebaseAuth.instance.currentUser!.uid).country;

  @override
  Widget build(BuildContext context) {
    return FirestoreBuilder<CurrentCountryQuerySnapshot>(
        ref: countyRef,
        builder: (context, AsyncSnapshot<CurrentCountryQuerySnapshot> snapshot,
            Widget? child) {
          if (snapshot.hasError) return Text('Something went wrong!');
          if (!snapshot.hasData) return Text('Loading user...');

          // Access the UserDocumentSnapshot
          CurrentCountryQuerySnapshot querySnapshot = snapshot.requireData;
          return ListView.builder(
            itemCount: querySnapshot.docs.length,
            itemBuilder: (context, index) {
              // Access the User instance
              CurrentCountry currentcountry = querySnapshot.docs[index].data;

              return ListTile(
                leading: Text(CountryFlag(
                    currentcountry.countryCode)), // Image.network(src),
                title: Text('${currentcountry.countryName}'),
                subtitle: Text('${currentcountry.countryCode}'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegionListPage(
                          countrycode: currentcountry.countryCode!),
                    ),
                  );
                },
              );
            },
          );
        });
  }
}

String CountryFlag(String countryCode) {
  String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
  return flag;
}
