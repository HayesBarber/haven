import 'package:flowkit/flowkit.dart';
import 'package:flutter/material.dart';
import 'package:haven/flows/devices/provider/devices_provider.dart';
import 'package:haven/widgets/refreshable_scaffold.dart';
import 'package:provider/provider.dart';

class DevicesEntry extends StatelessWidget {
  const DevicesEntry({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DevicesProvider>(context);

    return RefreshableScaffold(
      appBar: AppBar(leading: BackButton(onPressed: () => Navigation.I.pop())),
      title: 'Devices',
      loading: provider.loading,
      refreshing: provider.refreshing,
      onRefresh: provider.refresh,
      children: [],
    );
  }
}
