import 'package:flowkit/flowkit.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:haven/flows/discover/provider/discover_provider.dart';
import 'package:haven/utils/styles.dart';
import 'package:haven/widgets/scaffold_title.dart';
import 'package:home_api_client/home_api_client.dart';
import 'package:provider/provider.dart';

class DiscoverEntry extends StatelessWidget {
  const DiscoverEntry({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DiscoverProvider>(context);

    return Scaffold(
      appBar: AppBar(leading: BackButton(onPressed: () => Navigation.I.pop())),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          ScaffoldTitle(title: "Discover Devices"),
          Padding(
            padding: Styles.tileGroupPadding,
            child: FSelectTileGroup(
              selectController: provider.controller,
              label: const Text('Device Type'),
              description: const Text('Select the type of device to discover.'),
              children: [
                FSelectTile(title: const Text('Lifx'), value: DeviceType.lifx),
                FSelectTile(title: const Text('Kasa'), value: DeviceType.kasa),
                FSelectTile(
                  title: const Text('ESP'),
                  value: DeviceType.ledStrip,
                ),
              ],
            ),
          ),
          ..._displayDiscoveryResponse(provider),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: Styles.buttonPadding,
        child: FButton(
          onPress: provider.discover,
          prefix: provider.loading ? const FProgress.circularIcon() : null,
          child: const Text("Discover"),
        ),
      ),
    );
  }

  List<Widget> _displayDiscoveryResponse(DiscoverProvider provider) {
    if (provider.deviceDiscoveryResponse == null || provider.loading) {
      return [];
    }
    List<ControllableDevice> controllableDevices =
        provider.deviceDiscoveryResponse?.controllableDevices?.toList() ?? [];
    List<InterfaceDevice> interfaceDevices =
        provider.deviceDiscoveryResponse?.interfaceDevices?.toList() ?? [];

    List<Widget> response = [];

    if (controllableDevices.isNotEmpty) {
      response.add(
        _DeviceGroup(
          label: 'Controllable Devices',
          devices: controllableDevices,
        ),
      );
    }

    if (interfaceDevices.isNotEmpty) {
      response.add(
        _DeviceGroup(label: 'Interface Devices', devices: interfaceDevices),
      );
    }
    return response;
  }
}

class _DeviceGroup extends StatelessWidget {
  const _DeviceGroup({required this.label, required this.devices});

  final String label;
  final List devices;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.tileGroupPadding,
      child: FTileGroup(
        label: Text(label),
        children: devices
            .map((device) => FTile(title: Text(device.name)))
            .toList(),
      ),
    );
  }
}
