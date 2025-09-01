import 'package:flutter/material.dart';
import 'package:haven/widgets/exit_button.dart';

class CreateThemeEntry extends StatelessWidget {
  const CreateThemeEntry({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const ExitButton()),
      body: SizedBox.expand(),
    );
  }
}
