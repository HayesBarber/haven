import 'package:flowkit/flowkit.dart';
import 'package:flutter/material.dart';
import 'package:haven/flows/create_user/generate_key_pair.dart';
import 'package:haven/services/create_user_service.dart';
import 'package:haven/utils/extensions.dart';

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

    // _createUser();
  }

  void _createUser() async {
    final createUserService = CreateUserService();

    final result = await createUserService.createUser(_username).pace(2500);
  }
}
