import 'package:flutter/material.dart';

class TextButtonWithSnackBarWidget extends StatelessWidget {
  final bool onPressedVisible;
  final String buttonText;
  final String textToSnackBar;
  final Function onButtonPressed;
  final Function onSnackBarClosed;
  const TextButtonWithSnackBarWidget({
    super.key,
    required this.onPressedVisible,
    required this.onButtonPressed,
    required this.buttonText,
    required this.textToSnackBar,
    required this.onSnackBarClosed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressedVisible
        ? () async {
          FocusScope.of(context).unfocus();
          onButtonPressed();
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.indigo,
                content: Text(
                  textToSnackBar,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                duration: const Duration(seconds: 3),
              )
          ).closed
          .then((_) => onSnackBarClosed());
        }
        : null ,
        child: Text(buttonText)
    );
  }
}
