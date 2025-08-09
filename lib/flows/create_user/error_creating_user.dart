import 'package:flutter/material.dart';

class ErrorCreatingUser extends StatelessWidget {
  const ErrorCreatingUser({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(child: Center(child: Text("Error Creating User"))),
    );
  }
}
