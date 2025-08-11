import 'package:flutter/material.dart';
import 'package:haven/widgets/scaffold_title.dart';

class Themes extends StatelessWidget {
  const Themes({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [ScaffoldTitle(title: 'Themes')]),
    );
  }
}
