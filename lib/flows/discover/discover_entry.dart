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
        ],
      ),
    );
  }
}
