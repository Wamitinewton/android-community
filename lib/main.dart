import 'package:android_app1/login.dart';
import 'package:android_app1/on_boarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAUaBNHJYhaTDScKtVlwIymvkWUgRrG-zg",
          appId: "1:742490738077:android:d2bfac78cd791cbf26b374",
          messagingSenderId: "742490738077",
          projectId: "androidapp1-153e5"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
