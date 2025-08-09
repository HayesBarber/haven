import 'package:flutter/material.dart';
import 'package:haven/providers/lighting_provider.dart';
import 'package:provider/provider.dart';

class Lights extends StatelessWidget {
  const Lights({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LightingProvider>(context);

    return Scaffold(
      body: SizedBox.expand(child: Center(child: Text('Lights Screen'))),
    );
  }
}
