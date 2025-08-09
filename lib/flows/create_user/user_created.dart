import 'package:flutter/material.dart';

class UserCreated extends StatelessWidget {
  const UserCreated({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(child: Center(child: Text("User Created"))),
    );
  }
}
