import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {

  final Function onPressed;
  final Widget child;
  MainButton({ this.onPressed, this.child });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}