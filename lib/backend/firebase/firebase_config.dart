import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAFoEmWgvNeDjamt97l4ZJHHHTnwWoJBac",
            authDomain: "conecta-pro2-46orju.firebaseapp.com",
            projectId: "conecta-pro2-46orju",
            storageBucket: "conecta-pro2-46orju.appspot.com",
            messagingSenderId: "760982280628",
            appId: "1:760982280628:web:f3e30da8d9ed831c367ae1"));
  } else {
    await Firebase.initializeApp();
  }
}
