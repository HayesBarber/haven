import 'package:flowkit/flowkit.dart';
import 'package:flutter/material.dart';
import 'package:haven/flows/create_user/generate_key_pair.dart';

class CreateUserProvider extends NestedNavigatorProvider {
  final TextEditingController controller = TextEditingController();
  String _username = '';

  CreateUserProvider({required super.navKey});

  String get username => _username;

  void updateUsername(String value) {
    _username = value;
    notifyListeners();
  }

  bool get isValid => _username.trim().isNotEmpty;

  void onUsernameCreated(BuildContext context) {
    push(const GenerateKeyPair());
  }
}
