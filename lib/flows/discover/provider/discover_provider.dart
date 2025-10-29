import 'package:flowkit/flowkit.dart';
import 'package:forui/forui.dart';
import 'package:home_api_client/home_api_client.dart';

class DiscoverProvider extends NestedNavigatorProvider {
  final _controller = FSelectTileGroupController<DeviceType>.radio(
    value: DeviceType.lifx,
  );
  DiscoverProvider({required super.navKey});

  FSelectTileGroupController<DeviceType> get controller => _controller;

  Future<void> discover() async {}
}
