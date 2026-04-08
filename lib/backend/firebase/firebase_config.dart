import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCi4YnDem-fxVqDTEhTTfk9mdTmVi4oseE",
            authDomain: "pawswipe-c2040.firebaseapp.com",
            projectId: "pawswipe-c2040",
            storageBucket: "pawswipe-c2040.firebasestorage.app",
            messagingSenderId: "372825976650",
            appId: "1:372825976650:web:59acc0edc56b1520a5dbb3",
            measurementId: "G-QK6PP9SC2N"));
  } else {
    await Firebase.initializeApp();
  }
}
