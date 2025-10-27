import 'package:flutter/material.dart';
import 'package:forui/widgets/tile.dart';
import 'package:haven/flow_registry.dart';
import 'package:haven/services/app_config.dart';
import 'package:haven/utils/styles.dart';
import 'package:haven/widgets/avatar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  @override
  Widget build(BuildContext context) {
    final settingsGroup = Padding(
      padding: Styles.tileGroupPadding,
      child: FTileGroup(
        children: [
          FTile(
            title: Text('Users'),
            prefix: Icon(Icons.person),
            suffix: Icon(Icons.chevron_right),
            onPress: () {
              FlowRegistry.startFlow(Flows.users);
            },
          ),
          FTile(
            title: Text('Health'),
            prefix: Icon(Icons.monitor_heart),
            suffix: Icon(Icons.chevron_right),
            onPress: () {},
          ),
          FTile(
            title: Text('Devices'),
            prefix: Icon(Icons.group_work),
            suffix: Icon(Icons.chevron_right),
            onPress: () {},
          ),
          FTile(
            title: Text('Local Storage'),
            prefix: Icon(Icons.phone_iphone),
            suffix: Icon(Icons.chevron_right),
            onPress: () {},
          ),
        ],
      ),
    );

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 64),
          Avatar(username: AppConfig.I.username),
          SizedBox(height: 56),
          settingsGroup,
        ],
      ),
    );
  }
}
