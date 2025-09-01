import 'package:flutter/material.dart';
import 'package:forui/widgets/button.dart';
import 'package:haven/utils/styles.dart';
import 'package:haven/widgets/exit_button.dart';

class CreateThemeEntry extends StatelessWidget {
  const CreateThemeEntry({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const ExitButton()),
      body: SizedBox.expand(
        child: Column(
          children: [
            Spacer(),
            Padding(
              padding: Styles.buttonPadding,
              child: FButton(onPress: () {}, child: Text('Next')),
            ),
          ],
        ),
      ),
    );
  }
}
