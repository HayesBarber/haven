import 'package:flowkit/flowkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:forui/forui.dart';
import 'package:haven/screens/main_navigation.dart';
import 'package:haven/screens/splash.dart';
import 'package:haven/services/app_config.dart';
import 'package:haven/utils/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([dotenv.load(), AppConfig.I.initAsync()]);

  LOGGER.log('Loaded env: ${dotenv.env}');

  runApp(const Haven());
}

class Haven extends StatelessWidget {
  const Haven({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = FThemes.rose.dark;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: FLocalizations.supportedLocales,
      localizationsDelegates: const [...FLocalizations.localizationsDelegates],
      builder: (_, child) => FTheme(data: theme, child: child!),
      theme: theme.toApproximateMaterialTheme(),
      navigatorKey: Navigation.I.navigatorKey,
      home: const AppEntry(),
    );
  }
}

class AppEntry extends StatelessWidget {
  const AppEntry({super.key});
  @override
  Widget build(BuildContext context) {
    if (AppConfig.I.isNewUser) {
      return const Splash();
    }

    return const MainNavigation();
  }
}
