import 'package:flutter/cupertino.dart';

class InformationCupertinoAlertDialogWidget extends StatelessWidget {
  final String title;
  final String message;
  final List<Widget> actions;
  const InformationCupertinoAlertDialogWidget({
    super.key,
    required this.title,
    required this.message,
    required this.actions});

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Column(
        children: [
          Text(title),
          const SizedBox(height: 20,),
        ],
      ),
      content: Text(message),
      actions: actions,
    );
  }
}
