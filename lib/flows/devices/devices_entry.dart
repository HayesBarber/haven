import 'package:flowkit/flowkit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:haven/flows/devices/provider/devices_provider.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/styles.dart';
import 'package:haven/widgets/refreshable_scaffold.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class DevicesEntry extends StatelessWidget {
  const DevicesEntry({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DevicesProvider>(context);

    Widget buildSegmentControl() {
      return Padding(
        padding: Styles.tileGroupPadding,
        child: CupertinoSlidingSegmentedControl<DeviceTab>(
          thumbColor: context.colorScheme.primary,
          groupValue: provider.selectedTab,
          onValueChanged: provider.onTabChanged,
          children: const <DeviceTab, Widget>{
            DeviceTab.controllable: Text('Controllable'),
            DeviceTab.interface: Text('Interface'),
          },
        ),
      );
    }

    List<Widget> buildDeviceGroups() {
      final List<Widget> groups = [];
      final dateFormat = DateFormat.yMd().add_jms();

      if (provider.selectedTab == DeviceTab.controllable) {
        for (var device in provider.controllableDevices) {
          final tiles = <FTile>[
            FTile(title: Text('IP: ${device.ip}')),
            FTile(title: Text('MAC: ${device.mac}')),
            FTile(title: Text('Type: ${device.type}')),
            FTile(title: Text('PowerState: ${device.powerState}')),
            FTile(title: Text('Room: ${device.room ?? 'N/A'}')),
            FTile(
              title: Text(
                'LastUpdated: ${device.lastUpdated != null ? dateFormat.format(device.lastUpdated!) : 'N/A'}',
              ),
            ),
            FTile(title: Text('ESP Flag: ${device.espFlag}')),
          ];
          groups.add(
            Padding(
              padding: Styles.tileGroupPadding,
              child: FTileGroup(label: Text(device.name), children: tiles),
            ),
          );
        }
      } else {
        for (var device in provider.interfaceDevices) {
          final tiles = <FTile>[
            FTile(title: Text('IP: ${device.ip}')),
            FTile(title: Text('MAC: ${device.mac}')),
            FTile(
              title: Text(
                'LastUpdated: ${device.lastUpdated != null ? dateFormat.format(device.lastUpdated!) : 'N/A'}',
              ),
            ),
            FTile(title: Text('ESP Flag: ${device.espFlag}')),
          ];
          groups.add(
            Padding(
              padding: Styles.tileGroupPadding,
              child: FTileGroup(label: Text(device.name), children: tiles),
            ),
          );
        }
      }

      return groups;
    }

    return RefreshableScaffold(
      appBar: AppBar(leading: BackButton(onPressed: () => Navigation.I.pop())),
      title: 'Devices',
      loading: provider.loading,
      refreshing: provider.refreshing,
      onRefresh: provider.refresh,
      children: [buildSegmentControl(), ...buildDeviceGroups()],
    );
  }
}
