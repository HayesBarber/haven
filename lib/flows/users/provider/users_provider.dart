import 'package:flowkit/flowkit.dart';
import 'package:haven/services/user_service.dart';
import 'package:haven/utils/result.dart';

class UsersProvider extends NestedNavigatorProvider {
  List<String> _users = [];
  bool _loading = false;
  bool _hasError = false;
  bool _refreshing = false;

  UsersProvider({required super.navKey}) {
    _fetchUsers();
  }

  List<String> get users => _users;
  bool get loading => _loading;
  bool get hasError => _hasError;
  bool get refreshing => _refreshing;

  Future<void> _fetchUsers() async {
    _loading = true;
    notifyListeners();

    final result = await UserService.I.getUsers();

    switch (result) {
      case Success(value: final value):
        _users = value;
        _hasError = false;
      case Failure():
        _hasError = true;
    }

    _loading = false;
    notifyListeners();
  }

  Future<void> refresh() async {
    _refreshing = true;
    notifyListeners();

    await _fetchUsers();

    _refreshing = false;
    notifyListeners();
  }

  Future<void> deleteUser(String userName) async {
    _loading = true;
    notifyListeners();

    final result = await UserService.I.deleteUser(userName);

    switch (result) {
      case Success(value: final value):
        _users = value;
        _hasError = false;
      case Failure():
        _hasError = true;
    }

    _loading = false;
    notifyListeners();
  }
}
