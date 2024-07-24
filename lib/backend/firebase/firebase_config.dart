import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBRZxgTjlp4nc3d_7tNOi2OYKZ9fWAWI8U",
            authDomain: "atten1-34ecf.firebaseapp.com",
            projectId: "atten1-34ecf",
            storageBucket: "atten1-34ecf.appspot.com",
            messagingSenderId: "953751297616",
            appId: "1:953751297616:web:f45b0184ceb9db8b9bfb55",
            measurementId: "G-8YWB3B707M"));
  } else {
    await Firebase.initializeApp();
  }
}
