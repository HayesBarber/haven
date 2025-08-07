import 'package:go_router/go_router.dart';
import 'package:haven/flows/create_user/create_user_entry.dart';
import 'package:haven/flows/create_user/provider/create_user_provider.dart';
import 'package:haven/screens/lights.dart';
import 'package:haven/screens/splash.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => Splash(),
      routes: [
        ShellRoute(
          builder: (context, state, child) {
            return ChangeNotifierProvider(
              create: (context) => CreateUserProvider(),
              child: child,
            );
          },
          routes: [
            GoRoute(
              path: '/create-user',
              builder: (context, state) => CreateUserEntry(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(path: '/lights', builder: (context, state) => Lights()),
  ],
);
