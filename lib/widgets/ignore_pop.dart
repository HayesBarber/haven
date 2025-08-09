import 'package:flutter/material.dart';

class IgnorePop extends StatelessWidget {
  final Widget child;
  final bool canPopScope;

  const IgnorePop({super.key, required this.child, this.canPopScope = false});

  @override
  Widget build(BuildContext context) {
    return PopScope(canPop: canPopScope, child: child);
  }
}
