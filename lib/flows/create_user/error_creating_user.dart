import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:haven/flows/create_user/provider/create_user_provider.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/widgets/ignore_pop.dart';
import 'package:provider/provider.dart';

class ErrorCreatingUser extends StatelessWidget {
  const ErrorCreatingUser({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CreateUserProvider>(context);

    return IgnorePop(
      child: Scaffold(
        body: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Error Creating User", style: context.textTheme.titleLarge),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 32.0,
                ),
                child: FButton(
                  onPress: () {
                    provider.onUsernameCreated(context);
                  },
                  style: FButtonStyle.secondary(),
                  child: Text("Retry"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
