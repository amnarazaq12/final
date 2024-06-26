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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBsEnhcmanG0Th7g2RCuAVuW3QUtqX5mgs',
    appId: '1:688864330261:web:fa47bedcff55051369c41c',
    messagingSenderId: '688864330261',
    projectId: 'finalproject-ec0f3',
    authDomain: 'finalproject-ec0f3.firebaseapp.com',
    storageBucket: 'finalproject-ec0f3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCwVJaUEBVMv9d1Iiiyce_mtJydUHcd50k',
    appId: '1:688864330261:android:2f89ca691e5a2a0469c41c',
    messagingSenderId: '688864330261',
    projectId: 'finalproject-ec0f3',
    storageBucket: 'finalproject-ec0f3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxdlbdnpMcEvUT4dSH6pyaRZ9ekyrqz9Q',
    appId: '1:688864330261:ios:a804f0260d3fccdb69c41c',
    messagingSenderId: '688864330261',
    projectId: 'finalproject-ec0f3',
    storageBucket: 'finalproject-ec0f3.appspot.com',
    iosBundleId: 'com.example.finallProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAxdlbdnpMcEvUT4dSH6pyaRZ9ekyrqz9Q',
    appId: '1:688864330261:ios:a804f0260d3fccdb69c41c',
    messagingSenderId: '688864330261',
    projectId: 'finalproject-ec0f3',
    storageBucket: 'finalproject-ec0f3.appspot.com',
    iosBundleId: 'com.example.finallProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBsEnhcmanG0Th7g2RCuAVuW3QUtqX5mgs',
    appId: '1:688864330261:web:acbd11c24e20809469c41c',
    messagingSenderId: '688864330261',
    projectId: 'finalproject-ec0f3',
    authDomain: 'finalproject-ec0f3.firebaseapp.com',
    storageBucket: 'finalproject-ec0f3.appspot.com',
  );
}
