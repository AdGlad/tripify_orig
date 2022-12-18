import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gtk_flutter/model/yesNoSelect.dart';
import 'package:gtk_flutter/screens/guestBook.dart';
import 'package:gtk_flutter/screens/locationList.dart';
import 'package:gtk_flutter/screens/locationPage.dart';
import 'package:gtk_flutter/src/authentication.dart';
import 'package:gtk_flutter/src/widgets.dart';
import 'package:provider/provider.dart';

import '../model/applicationState.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tripify'),
      ),
      body: ListView(
        children: <Widget>[
          ElevatedButton(
            child: const Text('Fetch Location 1'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Consumer<ApplicationState>(
                        builder: (context, appState, _) => GetUserLocation(
                              currentaddress: appState.currentaddress,
                              addMessage: (message) =>
                                  appState.addMessageToLocationList(message),
                              messages: appState.locationListMessages,
                            ))),
              );
            },
          ),
          Image.asset('assets/codelab.png'),
          const SizedBox(height: 8),
          Consumer<ApplicationState>(
            builder: (context, appState, _) =>
                IconAndDetail(Icons.calendar_today, appState.eventDate),
          ),
          const IconAndDetail(Icons.location_city, 'San Francisco'),
          Consumer<ApplicationState>(
            builder: (context, appState, _) => AuthFunc(
              loggedIn: appState.loggedIn,
              signOut: () {
                FirebaseAuth.instance.signOut();
              },
              enableFreeSwag: appState.enableFreeSwag,
            ),
          ),
          const Divider(
            height: 8,
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),
          const Header("What we'll be doing"),
          Consumer<ApplicationState>(
            builder: (context, appState, _) => Paragraph(
              appState.callToAction,
            ),
          ),
          Consumer<ApplicationState>(
            builder: (context, appState, _) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (appState.attendees >= 2)
                  Paragraph('${appState.attendees} people going')
                else if (appState.attendees == 1)
                  const Paragraph('1 person going')
                else
                  const Paragraph('No one going'),
                if (appState.loggedIn) ...[
                  YesNoSelection(
                    state: appState.attending,
                    onSelection: (attending) => appState.attending = attending,
                  ),
                  const Header('Discussion'),
                  GuestBook(
                    addMessage: (message) =>
                        appState.addMessageToGuestBook(message),
                    messages: appState.guestBookMessages,
                  ),
                  const Header('Location'),
                  LocationList(
                    addMessage: (message) =>
                        appState.addMessageToLocationList(message),
                    messages: appState.locationListMessages,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
