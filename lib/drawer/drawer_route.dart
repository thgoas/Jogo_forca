import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forca/drawer/drawer_bloc.dart';
import 'package:forca/drawer/widgets/drawer_controller_widget.dart';
import 'package:forca/drawer/widgets/drawerbody_app.dart';
import 'package:forca/drawer/widgets/drawerbodycontent_app.dart';
import 'package:forca/drawer/widgets/drawerheader_app.dart';
import 'package:forca/widgets/circular_image_widget.dart';

class DrawerRoute extends StatefulWidget {
   DrawerRoute({Key? key}) : super(key: key);

  @override
  State<DrawerRoute> createState() => _DrawerRouteState();
}

class _DrawerRouteState extends State<DrawerRoute> {


  double _leftBodyOpen() {
    return 5;
  }

  double _leftBodyClose() {
    return MediaQuery.of(context).size.width -105;
  }

  double _topBody () {
    return MediaQuery.of(context).size.height - 105;
  }

  void _drawerCallback(bool status) {
    context.read<DrawerBloc>().add(ToogleDrawer(isOpen: !status));
  }

  @override
  Widget build(BuildContext context) {
    return  DrawerControllerWidget(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Jogo da Forca'),
        centerTitle: true,
        actions: const [
          Icon(
              Icons.menu,
              size: 40
          )

        ],
      ),
      topBody: _topBody(),
      leftBodyclose: _leftBodyClose(),
      leftBodyOpen: _leftBodyOpen(),
      body: const CircularImageWidget(
          imageProvider: AssetImage('assets/images/splashscreen.png'),
        width: 100,
        height: 100,
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            DrawerHeaderApp(),
            DrawerBodyApp(child: DrawerBodyContentApp(),)
          ],
        ),
      ),
      callbackFunction: _drawerCallback,
    );
  }
}


