import 'package:flutter/material.dart';
import 'package:haven/providers/lighting_provider.dart';
import 'package:haven/utils/extensions.dart';
import 'package:provider/provider.dart';

class Lights extends StatelessWidget {
  const Lights({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LightingProvider>(context);

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 16.0,
            ),
            child: Text('Lights', style: context.textTheme.displayMedium),
          ),
        ],
      ),
    );
  }
}
