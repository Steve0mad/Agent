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
    apiKey: 'AIzaSyDLMHmMmi9bdLKwoAp_n-JEp1Y4cJOyku4',
    appId: '1:716749796712:web:d072af129a8a8b934312dd',
    messagingSenderId: '716749796712',
    projectId: 'agent-74ec2',
    authDomain: 'agent-74ec2.firebaseapp.com',
    storageBucket: 'agent-74ec2.appspot.com',
    measurementId: 'G-TDKJV94LVY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDsbskWy2A2fnSTZc77IwG2i306PV3g7EY',
    appId: '1:716749796712:android:667ec00f415d97de4312dd',
    messagingSenderId: '716749796712',
    projectId: 'agent-74ec2',
    storageBucket: 'agent-74ec2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7aj6mJG_ZpjKMhHTT1tuB0u-HDET1dgw',
    appId: '1:716749796712:ios:8c86937852627e2d4312dd',
    messagingSenderId: '716749796712',
    projectId: 'agent-74ec2',
    storageBucket: 'agent-74ec2.appspot.com',
    iosBundleId: 'com.example.agent',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7aj6mJG_ZpjKMhHTT1tuB0u-HDET1dgw',
    appId: '1:716749796712:ios:8c86937852627e2d4312dd',
    messagingSenderId: '716749796712',
    projectId: 'agent-74ec2',
    storageBucket: 'agent-74ec2.appspot.com',
    iosBundleId: 'com.example.agent',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDLMHmMmi9bdLKwoAp_n-JEp1Y4cJOyku4',
    appId: '1:716749796712:web:d973915a19c37cb34312dd',
    messagingSenderId: '716749796712',
    projectId: 'agent-74ec2',
    authDomain: 'agent-74ec2.firebaseapp.com',
    storageBucket: 'agent-74ec2.appspot.com',
    measurementId: 'G-MBDE45RQG8',
  );
}
