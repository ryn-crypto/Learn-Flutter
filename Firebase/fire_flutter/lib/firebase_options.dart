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
    apiKey: 'AIzaSyB-G6z7Aetn1m2AF_1GKaNQ4s5zibtBUKM',
    appId: '1:497676943714:web:3d54f87ec74c3798e8ec3b',
    messagingSenderId: '497676943714',
    projectId: 'flutter-fire-83bbd',
    authDomain: 'flutter-fire-83bbd.firebaseapp.com',
    storageBucket: 'flutter-fire-83bbd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCaIKnDhLzVDnmOKyBwUaYdbL7_mSRerRU',
    appId: '1:497676943714:android:c0103e7b3608515be8ec3b',
    messagingSenderId: '497676943714',
    projectId: 'flutter-fire-83bbd',
    storageBucket: 'flutter-fire-83bbd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDwrPKj0ntgigsqk_Mv0opzrtTsOMUlA5o',
    appId: '1:497676943714:ios:cd7e78845e21570ce8ec3b',
    messagingSenderId: '497676943714',
    projectId: 'flutter-fire-83bbd',
    storageBucket: 'flutter-fire-83bbd.appspot.com',
    iosClientId: '497676943714-qmaj83uuqnu99im2il41oi7v2u5bngu7.apps.googleusercontent.com',
    iosBundleId: 'com.example.fireFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDwrPKj0ntgigsqk_Mv0opzrtTsOMUlA5o',
    appId: '1:497676943714:ios:cd7e78845e21570ce8ec3b',
    messagingSenderId: '497676943714',
    projectId: 'flutter-fire-83bbd',
    storageBucket: 'flutter-fire-83bbd.appspot.com',
    iosClientId: '497676943714-qmaj83uuqnu99im2il41oi7v2u5bngu7.apps.googleusercontent.com',
    iosBundleId: 'com.example.fireFlutter',
  );
}