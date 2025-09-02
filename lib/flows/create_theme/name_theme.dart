import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:haven/flows/create_theme/provider/create_theme_provider.dart';
import 'package:haven/utils/styles.dart';
import 'package:provider/provider.dart';

class NameTheme extends StatelessWidget {
  const NameTheme({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CreateThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(leading: BackButton(onPressed: () => provider.pop())),
      body: Column(
        children: [
          Center(
            child: Text(
              "Name Theme",
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: FTextField(
              autofocus: true,
              textCapitalization: TextCapitalization.sentences,
              label: const Text('Theme Name'),
              hint: "Scary Movie",
              maxLines: 1,
              onChange: provider.updateName,
              clearable: (value) => value.text.isNotEmpty,
            ),
          ),
          const Spacer(),
          Padding(
            padding: Styles.buttonPadding,
            child: FButton(
              onPress: provider.canFinish
                  ? () {
                      provider.finish();
                    }
                  : null,
              child: const Text("Finish"),
            ),
          ),
        ],
      ),
    );
  }
}
