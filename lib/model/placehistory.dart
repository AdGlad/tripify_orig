import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';

// This doesn't exist yet...! See "Next Steps"
part 'placehistory.g.dart';

@firestoreSerializable
class CurrentUser {
  CurrentUser({required this.id, this.userId, this.email, this.displayname});
  //{
  //   _$assertPlaceHistory(this);
  // }

  factory CurrentUser.fromJson(Map<String, Object?> json) =>
      _$CurrentUserFromJson(json);

  //String get id => FirebaseAuth.instance.currentUser!.uid;

  @Id()
  final String id;
  String? userId;
  String? email;
  String? displayname;

  Map<String, Object?> toJson() => _$CurrentUserToJson(this);
}

@firestoreSerializable
class CurrentCountry {
  CurrentCountry({
    required this.countryCode,
    this.countryName,
    this.userId,
  });
  //{
  //   _$assertPlaceHistory(this);
  // }

  factory CurrentCountry.fromJson(Map<String, Object?> json) =>
      _$CurrentCountryFromJson(json);

  //String get id => FirebaseAuth.instance.currentUser!.uid;

  @Id()
  final String countryCode;
  String? countryName;
  String? userId;

  Map<String, Object?> toJson() => _$CurrentCountryToJson(this);
}

//@Collection<PlaceHistory>('placehistory')
@firestoreSerializable
class Region {
  Region({required this.region, this.countryCode, this.userId});
  //{
  //   _$assertPlaceHistory(this);
  // }

  factory Region.fromJson(Map<String, Object?> json) => _$RegionFromJson(json);

  //String get id => FirebaseAuth.instance.currentUser!.uid;

  @Id()
  final String region;
  String? countryCode;
  String? userId;

  Map<String, Object?> toJson() => _$RegionToJson(this);
}

/// A custom JsonSerializable annotation that supports decoding objects such
/// as Timestamps and DateTimes.
/// This variable can be reused between different models
const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  // The following values could alternatively be set inside your `build.yaml`
  explicitToJson: true,
  createFieldMap: true,
);

//@Collection<PlaceHistory>('placehistory')
@firestoreSerializable
class PlaceHistory {
  PlaceHistory(
      {
      //required this.id,
      this.name,
      this.location,
      this.latitude,
      this.longitude,
      this.streetAddress,
      this.city,
      this.countryName,
      this.countryCode,
      this.postal,
      this.region,
      this.timezone,
      this.elevation,
      this.timestamp,
      this.arrivaldate,
      this.userId});
  //{
  //   _$assertPlaceHistory(this);
  // }

  factory PlaceHistory.fromJson(Map<String, Object?> json) =>
      _$PlaceHistoryFromJson(json);

  //String get id => FirebaseAuth.instance.currentUser!.uid;

  // @Id()
  // final String id;
  String? name;
  String? location;
  double? latitude;
  double? longitude;
  String? streetAddress;
  String? city;
  String? countryName;
  String? countryCode;
  String? postal;
  String? region;
  String? timezone;
  int? elevation;
  int? timestamp;
  DateTime? arrivaldate;
  String? userId;

  Map<String, Object?> toJson() => _$PlaceHistoryToJson(this);
}

@Collection<CurrentUser>('currentuser')
@Collection<CurrentCountry>('currentuser/*/country')
@Collection<Region>('currentuser/*/country/*/region')
@Collection<PlaceHistory>('currentuser/*/country/*/region/*/placehistory')
final currentuserRef = CurrentUserCollectionReference();
CurrentCountryCollectionReference countyRef =
    currentuserRef.doc('wedww').country;
RegionCollectionReference regionRef = countyRef.doc('wefdw').region;
PlaceHistoryCollectionReference placehistoryRef =
    regionRef.doc('wedwef').placehistory;

// final countyRef = CountryCollectionReference();
// final regionRef = RegionCollectionReference();
// final placehistoryRef = PlaceHistoryCollectionReference();

class PlaceHistoryList extends StatefulWidget {
  @override
  State<PlaceHistoryList> createState() => _PlaceHistoryListState();
}

class _PlaceHistoryListState extends State<PlaceHistoryList> {
  @override
  Widget build(BuildContext context) {
    return FirestoreBuilder<PlaceHistoryQuerySnapshot>(
        ref: placehistoryRef.whereDocumentId(isEqualTo: 'BnFlsKQ0VROq3upyO4au'),
        builder: (context, AsyncSnapshot<PlaceHistoryQuerySnapshot> snapshot,
            Widget? child) {
          if (snapshot.hasError) return Text('Something went wrong!');
          if (!snapshot.hasData) return Text('Loading PlaceHistory...');

          // Access the QuerySnapshot
          PlaceHistoryQuerySnapshot querySnapshot = snapshot.requireData;

          return ListView.builder(
            itemCount: querySnapshot.docs.length,
            itemBuilder: (context, index) {
              // Access the User instance
              PlaceHistory placehistory = querySnapshot.docs[index].data;

              return Text(
                  'Text: ${placehistory.city}, age ${placehistory.countryCode}');
            },
          );
        });
  }
}

class FirestoreService {
  // CollectionReference region = FirebaseFirestore.instance.collection('region');

  CollectionReference currentuserref =
      FirebaseFirestore.instance.collection('currentuser');
  CollectionReference placehistoryref =
      FirebaseFirestore.instance.collection('placehistory');
  // Future<String> setRegion(Region region) {
  //   //adicionar o objecto em forma de json para a coleção de placehistory
  //   return region
  //       .doc(region.region)
  //       .set(region.toJson())
  //       //.add(place.toJson())
  //       .then((value) => "Mais um placehistory adicionado à família")
  //       .catchError((error) =>
  //           "Parece que teve problemas com o último placehistory:\n $error");
  // }

  Future<String> setCurrentUser(CurrentUser currentuser) {
    return currentuserref
        .doc(currentuser.userId)
        .set(currentuser.toJson())
        //.add(place.toJson())
        .then((value) => "Mais um placehistory adicionado à família")
        .catchError((error) =>
            "Parece que teve problemas com o último placehistory:\n $error");
  }

  Future<String> setCountry(CurrentCountryCollectionReference countryref,
      CurrentCountry currentcountry) {
    //adicionar o objecto em forma de json para a coleção de placehistory
    return countryref
        .doc(currentcountry.countryCode)
        .set(currentcountry)
        //.set(currentcountry.toJson())
        //.add(place.toJson())
        .then((value) => "Mais um placehistory adicionado à família")
        .catchError((error) =>
            "Parece que teve problemas com o último placehistory:\n $error");
  }

  Future<String> setRegion(
      RegionCollectionReference regionref, Region currentregion) {
    //adicionar o objecto em forma de json para a coleção de placehistory
    return regionref
        .doc(currentregion.region)
        .set(currentregion)
        //.set(currentcountry.toJson())
        //.add(place.toJson())
        .then((value) => "Mais um placehistory adicionado à família")
        .catchError((error) =>
            "Parece que teve problemas com o último placehistory:\n $error");
  }

  // Future<String> setPlaceHistory(
  //     PlaceHistoryCollectionReference placehistoryref, PlaceHistory place) {
  //   //adicionar o objecto em forma de json para a coleção de placehistory
  //   return placehistoryref
  //       .doc(place.)
  //       .set(place)
  //       //.add(place.toJson())
  //       .then((value) => "Mais um placehistory adicionado à família")
  //       .catchError((error) =>
  //           "Parece que teve problemas com o último placehistory:\n $error");
  // }

  Future<String> addPlaceHistory(
      PlaceHistoryCollectionReference placehistoryref, PlaceHistory place) {
    //adicionar o objecto em forma de json para a coleção de placehistory
    return placehistoryref
        .add(place)
        .then((value) => "Mais um placehistory adicionado à família")
        .catchError((error) =>
            "Parece que teve problemas com o último placehistory:\n $error");
  }

  Future<PlaceHistoryQuerySnapshot> queryCollection(queryString) async {
    return await placehistoryRef.whereName(isEqualTo: queryString).get();
  }

  // Future updateUser(nome, novoNome) {
  //   //com base na coleção pegamos todos os dados que nela existem, que retorna
  //   //QuerySnapshot e usando o mesmo para iterar pelos documentos dentro dele
  //   return placehistory.get().then((QuerySnapshot querySnapshot) {
  //     querySnapshot.docs.forEach((doc) {
  //       //verificar se o dcumento tem como atributo nome igual ao pretendido alterar
  //       if (doc['nome'] == nome) {
  //         placehistory
  //             .doc(doc.id) //pegar o id do documento que se pretende actualizar
  //             .update({'nome': novoNome})
  //             .then((value) => "Minion com nome actualizado")
  //             .catchError((error) =>
  //                 "Oops, parece que não deu pra actualizar:\n $error");
  //       }
  //     });
  //   });
  // }
}

// @Collection<PlaceHistory>('placehistory')
//final placehistoryidRef = PlaceHistoryCollectionReference();
PlaceHistoryCollectionReference placehistoryidRef =
    regionRef.doc('wedwef').placehistory;
// ...

// class Countrylist extends StatelessWidget {
//   Countrylist(this.id);

//   final String id;

//   @override
//   Widget build(BuildContext context) {
//     return FirestoreBuilder<CurrentCountryQuerySnapshot>(
//         // Access a specific document
//         //ref: placehistoryidRef.doc(id),
//         ref: placehistoryidRef,
//         //usersRef.whereName(isEqualTo: 'John');
//         builder: (context, AsyncSnapshot<PlaceHistoryQuerySnapshot> snapshot,
//             Widget? child) {
//           if (snapshot.hasError) return Text('Something went wrong!');
//           if (!snapshot.hasData) return Text('Loading user...');

//           // Access the UserDocumentSnapshot
//           PlaceHistoryQuerySnapshot documentSnapshot = snapshot.requireData;

//         return ListView.builder(
//           itemCount: documentSnapshot.docs.length,
//           itemBuilder: (context, index) {
//             // Access the User instance
//             PlaceHistory currentCountry = documentSnapshot.docs[index].data;

//             return Text('Country name: ${currentCountry.}, age ${user.age}');
//           },
//         );

//         //   if (!documentSnapshot.exists) {
//         //     return Text('User does not exist.');
//         //   }

//         //   PlaceHistory placehistory = documentSnapshot.data!;

//         //   return Text(
//         //       'placehistory name: ${placehistory.countryName}, age ${placehistory.city}');
//          }

//         );
//   }
// }



