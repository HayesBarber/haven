import 'package:flowkit/flowkit.dart';
import 'package:haven/flows/create_theme/create_theme_entry.dart';
import 'package:haven/flows/create_theme/provider/create_theme_provider.dart';
import 'package:haven/flows/create_user/create_user_entry.dart';
import 'package:haven/flows/create_user/provider/create_user_provider.dart';
import 'package:haven/flows/discover/discover_entry.dart';
import 'package:haven/flows/discover/provider/discover_provider.dart';
import 'package:haven/flows/local_storage/local_storage_entry.dart';
import 'package:haven/flows/local_storage/provider/local_storage_provider.dart';
import 'package:haven/flows/users/provider/users_provider.dart';
import 'package:haven/flows/users/users_entry.dart';

enum Flows { createUser, createTheme, users, discover, localStorage }

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
      case Flows.users:
        return FlowStarter.start(
          providerBuilder: (key) => UsersProvider(navKey: key),
          childBuilder: (context) => UsersEntry(),
        );
      case Flows.discover:
        return FlowStarter.start(
          providerBuilder: (key) => DiscoverProvider(navKey: key),
          childBuilder: (context) => DiscoverEntry(),
        );
      case Flows.localStorage:
        return FlowStarter.start(
          providerBuilder: (key) => LocalStorageProvider(navKey: key),
          childBuilder: (context) => LocalStorageEntry(),
        );
    }
  }
}
