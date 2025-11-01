import 'package:flowkit/flowkit.dart';
import 'package:haven/services/user_service.dart';
import 'package:haven/utils/result.dart';

class UsersProvider extends NestedNavigatorProvider {
  List<String> _users = [];
  bool _loading = false;
  bool _hasError = false;
  bool _refreshing = false;
  bool _deleteError = false;

  UsersProvider({required super.navKey}) {
    _fetchUsers();
  }

  List<String> get users => _users;
  bool get loading => _loading;
  bool get hasError => _hasError;
  bool get refreshing => _refreshing;
  bool get deleteError => _deleteError;

  Future<void> _performUserAction(
    Future<Result<List<String>, Exception>> Function() action, {
    bool isDelete = false,
  }) async {
    _loading = true;
    notifyListeners();

    final result = await action();

    switch (result) {
      case Success(value: final value):
        _users = value;
        if (isDelete) {
          _deleteError = false;
        } else {
          _hasError = false;
        }
      case Failure():
        if (isDelete) {
          _deleteError = true;
        } else {
          _hasError = true;
        }
    }

    _loading = false;
    notifyListeners();
  }

  Future<void> _fetchUsers() async {
    await _performUserAction(() => UserService.I.getUsers());
  }

  Future<void> refresh() async {
    _refreshing = true;
    notifyListeners();

    await _fetchUsers();

    _refreshing = false;
    notifyListeners();
  }

  Future<void> deleteUser(String userName) async {
    await _performUserAction(
      () => UserService.I.deleteUser(userName),
      isDelete: true,
    );
  }
}
