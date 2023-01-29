import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gtk_flutter/screens/regionlistpage.dart';

import '../model/placehistory.dart';

class UserCountryPage extends StatefulWidget {
  UserCountryPage(
      {
      //required this.usercountrylist,
      super.key});

  //List<CurrentCountry> usercountrylist;

  @override
  State<UserCountryPage> createState() => _UserCountryPageState();
}

class _UserCountryPageState extends State<UserCountryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Countries Visted '),
        ),
        body: Center(
          child: UserCountrylist(),
        ));
  }
}

class UserCountrylist extends StatelessWidget {
  UserCountrylist();
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
