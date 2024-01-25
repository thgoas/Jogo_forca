import 'package:flutter/material.dart';

class SuccessDialogWidget extends StatelessWidget {
  final VoidCallback onDismissed;

  const SuccessDialogWidget({
    super.key,
    required this.onDismissed
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.info),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Dados Informados com sucesso!',
                    softWrap: true,
                  ),
                ),
              )
            ],
          ),
          TextButton(

              onPressed: onDismissed,

              child: const Text('Ok'),
          ),
        ],
      ),
    );
  }
}
