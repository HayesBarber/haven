import 'package:flutter/material.dart';
import 'package:haven/widgets/ignore_pop.dart';

class GenerateKeyPair extends StatelessWidget {
  const GenerateKeyPair({super.key});
  @override
  Widget build(BuildContext context) {
    return IgnorePop(
      child: Scaffold(
        body: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    'Generating Key-Pair...',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                LinearProgressIndicator(
                  minHeight: 7,
                  borderRadius: BorderRadius.circular(3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
