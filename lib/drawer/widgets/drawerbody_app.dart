import 'package:flutter/material.dart';

class DrawerBodyApp extends StatelessWidget {
  const DrawerBodyApp({super.key, required  this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green[100]!, Colors.green[400]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.0,1.0],
        )
      ),
      child: child,
    ));
  }
}
