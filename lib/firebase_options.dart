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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBB7E7P5M8Qzh2we1Go3W7Mvufsstwp0o8',
    appId: '1:349709736353:web:c6205c95089ddbf4fb13e0',
    messagingSenderId: '349709736353',
    projectId: 'aftermath-30412',
    authDomain: 'aftermath-30412.firebaseapp.com',
    databaseURL: 'https://aftermath-30412-default-rtdb.firebaseio.com',
    storageBucket: 'aftermath-30412.appspot.com',
    measurementId: 'G-Y1256CCLWW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJ-vK9yvO49zzedrRtI2c7NpgehzEjGjQ',
    appId: '1:349709736353:android:8d7856ec6488c6e5fb13e0',
    messagingSenderId: '349709736353',
    projectId: 'aftermath-30412',
    databaseURL: 'https://aftermath-30412-default-rtdb.firebaseio.com',
    storageBucket: 'aftermath-30412.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBymHDc17DRLpZLr-KhGb-77HNT8rAmykc',
    appId: '1:349709736353:ios:611e05f8a12d6342fb13e0',
    messagingSenderId: '349709736353',
    projectId: 'aftermath-30412',
    databaseURL: 'https://aftermath-30412-default-rtdb.firebaseio.com',
    storageBucket: 'aftermath-30412.appspot.com',
    iosClientId: '349709736353-9e0b52ajpisbc2n5kocn8pg60el53t1v.apps.googleusercontent.com',
    iosBundleId: 'com.example.aftermath',
  );
}
