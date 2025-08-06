import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:forui/forui.dart';
import 'package:haven/router.dart';
import 'package:haven/utils/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load();

  LOGGER.log('Loaded env: ${dotenv.env}');

  runApp(const Haven());
}

class Haven extends StatelessWidget {
  const Haven({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = FThemes.rose.dark;

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      supportedLocales: FLocalizations.supportedLocales,
      localizationsDelegates: const [...FLocalizations.localizationsDelegates],
      builder: (_, child) => FTheme(data: theme, child: child!),
      theme: theme.toApproximateMaterialTheme(),
      routerConfig: router,
    );
  }
}
