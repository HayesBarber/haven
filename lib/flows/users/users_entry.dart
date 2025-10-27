import 'package:flowkit/flowkit.dart';
import 'package:flutter/material.dart';
import 'package:forui/widgets/tile.dart';
import 'package:haven/flows/users/provider/users_provider.dart';
import 'package:haven/utils/styles.dart';
import 'package:haven/widgets/refreshable_scaffold.dart';
import 'package:provider/provider.dart';

class UsersEntry extends StatelessWidget {
  const UsersEntry({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UsersProvider>(context);

    final usersGroup = Padding(
      padding: Styles.tileGroupPadding,
      child: FTileGroup(
        children: [...provider.users.map((name) => FTile(title: Text(name)))],
      ),
    );

    return RefreshableScaffold(
      appBar: AppBar(leading: BackButton(onPressed: () => Navigation.I.pop())),
      title: 'Users',
      loading: provider.loading,
      refreshing: provider.refreshing,
      onRefresh: provider.refresh,
      children: [
        if (provider.hasError)
          Center(child: Text('Error Fetching Users'))
        else
          usersGroup,
      ],
    );
  }
}
