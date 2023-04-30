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
    apiKey: 'AIzaSyDgUbE6KoWH9IXexwo60L6guS8UAULXHKU',
    appId: '1:456609831309:web:907fb71041fb7711c805c4',
    messagingSenderId: '456609831309',
    projectId: 'fir-project-876ca',
    authDomain: 'fir-project-876ca.firebaseapp.com',
    storageBucket: 'fir-project-876ca.appspot.com',
    measurementId: 'G-PHZV4F3F1M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrrDgyJApBRNphoG-RSmbqJEGN8hcei9s',
    appId: '1:456609831309:android:ce0b2f5e9cc1e20fc805c4',
    messagingSenderId: '456609831309',
    projectId: 'fir-project-876ca',
    storageBucket: 'fir-project-876ca.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCyyCq-U6Mhq3gYKqCsH7qxstk-MtPvw-c',
    appId: '1:456609831309:ios:55fb7756b15b7eadc805c4',
    messagingSenderId: '456609831309',
    projectId: 'fir-project-876ca',
    storageBucket: 'fir-project-876ca.appspot.com',
    iosClientId: '456609831309-k7vsn8k9ae1joutkleria73v8kleij08.apps.googleusercontent.com',
    iosBundleId: 'com.example.newpj',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCyyCq-U6Mhq3gYKqCsH7qxstk-MtPvw-c',
    appId: '1:456609831309:ios:55fb7756b15b7eadc805c4',
    messagingSenderId: '456609831309',
    projectId: 'fir-project-876ca',
    storageBucket: 'fir-project-876ca.appspot.com',
    iosClientId: '456609831309-k7vsn8k9ae1joutkleria73v8kleij08.apps.googleusercontent.com',
    iosBundleId: 'com.example.newpj',
  );
}