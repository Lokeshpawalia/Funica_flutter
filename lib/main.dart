import 'package:flutter/material.dart';
import 'package:funica/modules/views/account_creation/create_account.dart';
import 'package:funica/modules/views/account_creation/let_you_in.dart';
import 'package:funica/modules/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: SplashScreen(),
    );
  }
}
