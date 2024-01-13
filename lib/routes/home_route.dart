import 'package:flutter/material.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                'Vamos Jogar?',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
