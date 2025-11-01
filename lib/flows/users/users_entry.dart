import 'package:flowkit/flowkit.dart';
import 'package:flutter/material.dart';
import 'package:forui/widgets/button.dart';
import 'package:forui/widgets/dialog.dart';
import 'package:forui/widgets/tile.dart';
import 'package:haven/flows/users/provider/users_provider.dart';
import 'package:haven/utils/extensions.dart';
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
        description: provider.deleteError
            ? Text(
                'Error deleting user',
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.colorScheme.error,
                ),
              )
            : null,
        children: provider.users
            .map((name) => _buildUserTile(context, name, provider))
            .toList(),
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

  FTile _buildUserTile(
    BuildContext context,
    String userName,
    UsersProvider provider,
  ) {
    return FTile(
      title: Text(userName),
      onLongPress: () async {
        final confirmed = await showFDialog<bool>(
          context: context,
          builder: (context, style, animation) => FDialog(
            title: const Text('Delete User'),
            body: Text('Are you sure you want to delete "$userName"?'),
            actions: [
              FButton(
                style: FButtonStyle.outline(),
                onPress: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('Cancel'),
              ),
              FButton(
                style: FButtonStyle.destructive(),
                onPress: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text('Delete'),
              ),
            ],
          ),
        );
        if (confirmed == true) {
          provider.deleteUser(userName);
        }
      },
    );
  }
}
