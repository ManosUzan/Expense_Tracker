// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfat4f1TcZP_T-IGWXua8iNkT4fUBN6bQ',
    appId: '1:416065660673:android:af3fbcad12056d987b1d00',
    messagingSenderId: '416065660673',
    projectId: 'expensetracker-fdd8e',
    storageBucket: 'expensetracker-fdd8e.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDiqMNvuQMYrwM2zElaDOZuEWdt4pvswSE',
    appId: '1:416065660673:web:2c02047a1ec30b7a7b1d00',
    messagingSenderId: '416065660673',
    projectId: 'expensetracker-fdd8e',
    authDomain: 'expensetracker-fdd8e.firebaseapp.com',
    storageBucket: 'expensetracker-fdd8e.appspot.com',
    measurementId: 'G-RZBGTR98TM',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDiqMNvuQMYrwM2zElaDOZuEWdt4pvswSE',
    appId: '1:416065660673:web:2c02047a1ec30b7a7b1d00',
    messagingSenderId: '416065660673',
    projectId: 'expensetracker-fdd8e',
    authDomain: 'expensetracker-fdd8e.firebaseapp.com',
    storageBucket: 'expensetracker-fdd8e.appspot.com',
    measurementId: 'G-RZBGTR98TM',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyApAjoiJxDfrgrSQJs4V1W9CtWU4534b1k',
    appId: '1:416065660673:ios:3c00d8ad9a9c31487b1d00',
    messagingSenderId: '416065660673',
    projectId: 'expensetracker-fdd8e',
    storageBucket: 'expensetracker-fdd8e.appspot.com',
    iosBundleId: 'com.example.expenseTracker',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyApAjoiJxDfrgrSQJs4V1W9CtWU4534b1k',
    appId: '1:416065660673:ios:3c00d8ad9a9c31487b1d00',
    messagingSenderId: '416065660673',
    projectId: 'expensetracker-fdd8e',
    storageBucket: 'expensetracker-fdd8e.appspot.com',
    iosBundleId: 'com.example.expenseTracker',
  );

}