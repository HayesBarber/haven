import 'package:flutter/material.dart';
import 'package:haven/flows/create_user/provider/create_user_provider.dart';
import 'package:provider/provider.dart';

class CreateUserEntry extends StatelessWidget {
  const CreateUserEntry({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CreateUserProvider>(context);

    return Scaffold(
      body: SizedBox.expand(child: Center(child: Text(provider.title))),
    );
  }
}
