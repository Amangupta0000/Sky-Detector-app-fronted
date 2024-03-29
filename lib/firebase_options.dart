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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDf9AYCBh8zgCMCFZrH5lKADx8nQQIyFcg',
    appId: '1:31120292237:web:2a8a74ec8757c8a347a5c4',
    messagingSenderId: '31120292237',
    projectId: 'sky-detector',
    authDomain: 'sky-detector.firebaseapp.com',
    storageBucket: 'sky-detector.appspot.com',
    measurementId: 'G-8KXE01F708',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtDh6jTfx9arIZRWFNoV9zmW_6C4JUtE8',
    appId: '1:31120292237:android:7014ba2d35e1e64c47a5c4',
    messagingSenderId: '31120292237',
    projectId: 'sky-detector',
    storageBucket: 'sky-detector.appspot.com',
  );
}
