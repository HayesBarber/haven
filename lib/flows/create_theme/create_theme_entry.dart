import 'package:flutter/material.dart';
import 'package:forui/widgets/button.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/styles.dart';
import 'package:haven/widgets/exit_button.dart';
import 'package:haven/widgets/pick_color.dart';
import 'package:haven/widgets/theme_color.dart';

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
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ThemeColor(color: Colors.red, onRemove: () {})],
                ),
                SizedBox(height: 24),
                SizedBox(
                  width: context.sw * .5,
                  child: FButton(
                    onPress: () {
                      PickColor.pick(context);
                    },
                    style: FButtonStyle.outline(),
                    child: Text('Add Color'),
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: Styles.buttonPadding,
              child: Column(
                children: [
                  FButton(
                    style: FButtonStyle.secondary(),
                    onPress: () {},
                    child: Text('Test'),
                  ),
                  SizedBox(height: 16),
                  FButton(onPress: () {}, child: Text('Next')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
