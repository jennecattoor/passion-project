import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA3PzW9eaSBPk-voUZCNwLC8IQbZo6yoTI",
            authDomain: "lifeguard-kh.firebaseapp.com",
            projectId: "lifeguard-kh",
            storageBucket: "lifeguard-kh.appspot.com",
            messagingSenderId: "1059345607761",
            appId: "1:1059345607761:web:45a23309c44b5f79f5dc70"));
  } else {
    await Firebase.initializeApp();
  }
}
