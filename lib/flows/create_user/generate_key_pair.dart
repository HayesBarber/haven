import 'package:flutter/material.dart';

class GenerateKeyPair extends StatelessWidget {
  const GenerateKeyPair({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(child: Center(child: Text("Generate Key Pair"))),
    );
  }
}
