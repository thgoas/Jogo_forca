import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionsTextButtonToAlertDialogWidget extends StatelessWidget {
  final String messageButton;
  final bool isDefaultAction;
  final bool isDestructiveAction;
  const ActionsTextButtonToAlertDialogWidget({
    super.key,
    required this.messageButton,
    this.isDefaultAction = false,
    this.isDestructiveAction = false,
  });

  @override
  Widget build(BuildContext context) {
    return (Platform.isAndroid)
        ? TextButton(
        onPressed: () => Navigator.of(context).pop(messageButton),
        child: Text(messageButton),
    )
        :
        CupertinoDialogAction(
            isDefaultAction: isDefaultAction,
            isDestructiveAction: isDestructiveAction,
            child: Text(messageButton),
          onPressed: () => Navigator.of(context).pop(messageButton),
        );
  }
}
