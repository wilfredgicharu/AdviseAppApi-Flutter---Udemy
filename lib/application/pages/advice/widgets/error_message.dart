import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String message;
  const ErrorMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.error, size: 40, color: Colors.redAccent ),
        SizedBox(height: 20,),
        Text(message, style: themeData.textTheme.headline1, textAlign: TextAlign.center,)
      ],
    );
  }
}
