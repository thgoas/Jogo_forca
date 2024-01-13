import 'package:flutter/material.dart';
import 'package:forca/routes/splash_screen_route.dart';

void main() {
  runApp(const ForcaApp());

}

class ForcaApp extends StatelessWidget {
  const ForcaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forca da UTFPR',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(background: Colors.green)
      ),
      home: const ForcaHomePage(),
    );
  }
}

class ForcaHomePage extends StatelessWidget {
  const ForcaHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenRoute(),
    );
  }
}



