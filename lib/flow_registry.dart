import 'package:flowkit/flowkit.dart';
import 'package:haven/flows/create_theme/create_theme_entry.dart';
import 'package:haven/flows/create_theme/provider/create_theme_provider.dart';
import 'package:haven/flows/create_user/create_user_entry.dart';
import 'package:haven/flows/create_user/provider/create_user_provider.dart';

enum Flows { createUser, createTheme }

class FlowRegistry {
  static Future? startFlow(Flows flow) {
    switch (flow) {
      case Flows.createUser:
        return FlowStarter.start(
          providerBuilder: (key) => CreateUserProvider(navKey: key),
          childBuilder: (context) => const CreateUserEntry(),
        );
      case Flows.createTheme:
        return FlowStarter.start(
          providerBuilder: (key) => CreateThemeProvider(navKey: key),
          childBuilder: (context) => CreateThemeEntry(),
          slideBottom: true,
        );
    }
  }
}
