import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui/widgets/button.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "Haven",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
              child: FButton(onPress: () {}, child: Text("Get Started")),
            ),
          ],
        ),
      ),
    );
  }
}
