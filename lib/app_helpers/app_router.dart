import 'package:flutter/material.dart';
import 'package:forca/app_constants/router_constatnts.dart';
import 'package:forca/routes/palavras/crud/palavras_crud_routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name){
      case kPalavrasCRUDRoute:
        return MaterialPageRoute(builder: (_) => const PalavrasCrudRoute());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}