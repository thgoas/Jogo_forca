import 'package:flutter/material.dart';
import 'package:forca/drawer/widgets/drawerheader_app.dart';

class DrawerRoute extends StatelessWidget {
  const DrawerRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jogo da Forca'),
        centerTitle: true,

      ),
      body: Container(),
      drawer: const Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeaderApp()
          ],
        ),
      ),
    );
  }
}


