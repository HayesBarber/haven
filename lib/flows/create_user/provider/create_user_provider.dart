import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateUserProvider extends ChangeNotifier {
  final TextEditingController controller = TextEditingController();
  String _username = '';

  String get username => _username;

  void updateUsername(String value) {
    _username = value;
    notifyListeners();
  }

  bool get isValid => _username.trim().isNotEmpty;

  void onUsernameCreated(BuildContext context) {
    context.push('/new-user/generate-key-pair');
  }
}
