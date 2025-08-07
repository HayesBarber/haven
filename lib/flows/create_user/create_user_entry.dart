import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:haven/flows/create_user/provider/create_user_provider.dart';
import 'package:provider/provider.dart';

class CreateUserEntry extends StatelessWidget {
  const CreateUserEntry({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CreateUserProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text(
              "Create Username",
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: FTextField(
              label: const Text('Username'),
              hint: "Jane Doe",
              description: const Text('Please enter your username.'),
              maxLines: 1,
              onSubmit: (value) {},
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
            child: FButton(onPress: () {}, child: const Text("Next")),
          ),
        ],
      ),
    );
  }
}
