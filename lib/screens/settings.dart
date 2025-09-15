import 'package:flutter/material.dart';
import 'package:haven/services/app_config.dart';
import 'package:haven/widgets/avatar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 64),
          Avatar(username: AppConfig.I.username),
        ],
      ),
    );
  }
}
