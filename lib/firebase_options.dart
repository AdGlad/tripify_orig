// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAtSWPDdyed9WkOOsGu3dnZdrJAEZKouXU',
    appId: '1:434640252677:web:1b1d1383ad7a73fc75d16c',
    messagingSenderId: '434640252677',
    projectId: 'tripify-2001',
    authDomain: 'tripify-2001.firebaseapp.com',
    databaseURL: 'https://tripify-2001-default-rtdb.firebaseio.com',
    storageBucket: 'tripify-2001.appspot.com',
    measurementId: 'G-WEHDJD7000',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBwpd0oEJW0IqIJqlY1m4GAg39uaO0HFjo',
    appId: '1:434640252677:android:a12821be818ce7c575d16c',
    messagingSenderId: '434640252677',
    projectId: 'tripify-2001',
    databaseURL: 'https://tripify-2001-default-rtdb.firebaseio.com',
    storageBucket: 'tripify-2001.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYsiYf6d7e-NJjx0YJ-BqFw5RknysiPzM',
    appId: '1:434640252677:ios:a43b39f9d0159dd975d16c',
    messagingSenderId: '434640252677',
    projectId: 'tripify-2001',
    databaseURL: 'https://tripify-2001-default-rtdb.firebaseio.com',
    storageBucket: 'tripify-2001.appspot.com',
    iosClientId: '434640252677-8fv2qf6lr9siajltaqmg38vifn9g8ib5.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDYsiYf6d7e-NJjx0YJ-BqFw5RknysiPzM',
    appId: '1:434640252677:ios:a43b39f9d0159dd975d16c',
    messagingSenderId: '434640252677',
    projectId: 'tripify-2001',
    databaseURL: 'https://tripify-2001-default-rtdb.firebaseio.com',
    storageBucket: 'tripify-2001.appspot.com',
    iosClientId: '434640252677-8fv2qf6lr9siajltaqmg38vifn9g8ib5.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );
}