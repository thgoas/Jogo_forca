import 'dart:io';

import 'package:flutter/material.dart';
import 'package:forca/widgets/dialogs/information_cupertino_alert_dialog_widget.dart';
import 'package:forca/widgets/dialogs/information_material_alert_dialog_widget.dart';

class InformationAlertDialogWidget extends StatelessWidget {
  final String title;
  final String message;
  final List<Widget> actions;
  const InformationAlertDialogWidget({super.key, required this.title, required this.message, required this.actions});

  @override
  Widget build(BuildContext context) {
    return (Platform.isAndroid)
        ? InformationMaterialAlertDialogWidget(
        title: title,
        message: message,
        actions: actions)
        : InformationCupertinoAlertDialogWidget(
        title: title,
        message: message,
        actions: actions);
  }
}
