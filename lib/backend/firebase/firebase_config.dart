import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAVazmgIx2c08FgusUX6JC3zKcTrMLnQGU",
            authDomain: "sehchar-68ce93.firebaseapp.com",
            projectId: "sehchar-68ce93",
            storageBucket: "sehchar-68ce93.appspot.com",
            messagingSenderId: "819218609380",
            appId: "1:819218609380:web:96cbd6e47c09a470a6e8f1"));
  } else {
    await Firebase.initializeApp();
  }
}
