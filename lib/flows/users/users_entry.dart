import 'package:flutter/material.dart';
import 'package:haven/flows/users/provider/users_provider.dart';
import 'package:haven/widgets/refreshable_scaffold.dart';
import 'package:provider/provider.dart';

class UsersEntry extends StatelessWidget {
  const UsersEntry({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UsersProvider>(context);

    return RefreshableScaffold(
      title: 'Users',
      loading: provider.loading,
      refreshing: provider.refreshing,
      onRefresh: provider.refresh,
      children: [],
    );
  }
}
