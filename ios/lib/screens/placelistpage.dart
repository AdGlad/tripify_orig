import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../model/placehistory.dart';

class PlaceHistoryListPage extends StatefulWidget {
  final String countrycode;
  final String regioncode;

  PlaceHistoryListPage({required this.countrycode, required this.regioncode});

  @override
  State<PlaceHistoryListPage> createState() => _PlaceHistoryListPageState();
}

class _PlaceHistoryListPageState extends State<PlaceHistoryListPage> {
  /// : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Visted Location'),
        ),
        body: Center(
          child: PlaceHistorylist(
              countrycode: widget.countrycode, regioncode: widget.regioncode),
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

class PlaceHistorylist extends StatefulWidget {
  final String countrycode;
  final String regioncode;

  PlaceHistorylist({required this.countrycode, required this.regioncode});

  @override
  State<PlaceHistorylist> createState() => _PlaceHistorylistState();
}

class _PlaceHistorylistState extends State<PlaceHistorylist> {
  //PlaceHistorylist();
  final CurrentCountryCollectionReference countyRef =
      currentuserRef.doc(FirebaseAuth.instance.currentUser!.uid).country;

  //final PlaceHistoryCollectionReference PlaceHistoryRef = currentuserRef.doc(FirebaseAuth.instance.currentUser!.uid).country.doc(widget.countrycode).PlaceHistory;

  @override
  Widget build(BuildContext context) {
    return FirestoreBuilder<PlaceHistoryQuerySnapshot>(
        ref: countyRef
            .doc(widget.countrycode)
//            .doc('AU')
            .region
            .doc(widget.regioncode)
            //.doc('New South Wales Australia')
            .placehistory,
        builder: (context, AsyncSnapshot<PlaceHistoryQuerySnapshot> snapshot,
            Widget? child) {
          if (snapshot.hasError) return Text('Something went wrong!');
          if (!snapshot.hasData) return Text('Loading user...');

          // Access the UserDocumentSnapshot
          PlaceHistoryQuerySnapshot querySnapshot = snapshot.requireData;
          return ListView.builder(
            itemCount: querySnapshot.docs.length,
            itemBuilder: (context, index) {
              // Access the User instance
              PlaceHistory currentPlaceHistory = querySnapshot.docs[index].data;

              return ListTile(
                title: Text('${currentPlaceHistory.streetAddress}'),
                subtitle: Text('${currentPlaceHistory.city}'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaceHistoryListPage(
                          countrycode: currentPlaceHistory.countryCode!,
                          regioncode: currentPlaceHistory.region!),
                    ),
                  );
                },
              );
            },
          );
        });
  }
}
