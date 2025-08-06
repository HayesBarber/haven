import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:haven/screens/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

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
      home: Splash(),
    );
  }
}
