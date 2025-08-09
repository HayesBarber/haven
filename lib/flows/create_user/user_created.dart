import 'package:flutter/material.dart';
import 'package:haven/flows/create_user/provider/create_user_provider.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/widgets/ignore_pop.dart';
import 'package:provider/provider.dart';

class UserCreated extends StatelessWidget {
  const UserCreated({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CreateUserProvider>(context);

    return IgnorePop(
      child: Scaffold(
        body: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Icon(Icons.check_circle_rounded, size: context.sw / 3),
              ),
              Text(
                'Welcome ${provider.username}!',
                style: context.textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
