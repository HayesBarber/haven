import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui/widgets/button.dart';
import 'package:haven/flow_registry.dart';
import 'package:haven/utils/extensions.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image(
              fit: BoxFit.fitHeight,
              image: AssetImage('images/splash_image.png'),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
            child: Container(color: Colors.black.withValues(alpha: 0)),
          ),
          Container(
            height: context.sh,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
              child: FButton(
                onPress: () {
                  FlowRegistry.startFlow(Flows.createUser);
                },
                child: Text("Get Started"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
