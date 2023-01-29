import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gtk_flutter/screens/placelistpage.dart';

import '../model/placehistory.dart';

class RegionListPage extends StatefulWidget {
  final String countrycode;

  RegionListPage({required this.countrycode});

  @override
  State<RegionListPage> createState() => _RegionListPageState();
}

class _RegionListPageState extends State<RegionListPage> {
  /// : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Regions Visted'),
        ),
        body: Center(
          child: Regionlist(countrycode: widget.countrycode),
        )
        // ListView(
        //   children: <Widget>[
        //     ListTile(
        //       title: Text(widget.item),
        //       subtitle: Text('This is the detail page for country ${widget.item}'),
        //     ),
        //   ],
        // ),

        );
  }
}

class Regionlist extends StatefulWidget {
  final String countrycode;

  Regionlist({required this.countrycode});

  @override
  State<Regionlist> createState() => _RegionlistState();
}

class _RegionlistState extends State<Regionlist> {
  //Regionlist();
  final CurrentCountryCollectionReference countyRef =
      currentuserRef.doc(FirebaseAuth.instance.currentUser!.uid).country;

  //final RegionCollectionReference regionRef = currentuserRef.doc(FirebaseAuth.instance.currentUser!.uid).country.doc(widget.countrycode).region;

  @override
  Widget build(BuildContext context) {
    return FirestoreBuilder<RegionQuerySnapshot>(
        ref: countyRef.doc(widget.countrycode).region,
        builder: (context, AsyncSnapshot<RegionQuerySnapshot> snapshot,
            Widget? child) {
          if (snapshot.hasError) return Text('Something went wrong!');
          if (!snapshot.hasData) return Text('Loading user...');

          // Access the UserDocumentSnapshot
          RegionQuerySnapshot querySnapshot = snapshot.requireData;
          return ListView.builder(
            itemCount: querySnapshot.docs.length,
            itemBuilder: (context, index) {
              // Access the User instance
              Region currentregion = querySnapshot.docs[index].data;

              return ListTile(
                title: Text('${currentregion.region}'),
                subtitle: Text(' ${currentregion.countryCode}'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaceHistoryListPage(
                          countrycode: currentregion.countryCode!,
                          regioncode: currentregion.region!),
                    ),
                  );
                },
              );
            },
          );
        });
  }
}
