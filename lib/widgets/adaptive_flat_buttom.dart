import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/cupertino.dart';

class AdaptiveFlatButtom extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveFlatButtom(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              'choose date',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: handler,
          )
        : TextButton(
            style:
                TextButton.styleFrom(primary: Theme.of(context).primaryColor),
            onPressed: handler,
            child: Text('choose date'),
          );
  }
}
