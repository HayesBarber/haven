import 'package:flowkit/flowkit.dart';
import 'package:forui/forui.dart';
import 'package:haven/services/discovery_service.dart';
import 'package:home_api_client/home_api_client.dart';

class DiscoverProvider extends NestedNavigatorProvider {
  final _controller = FSelectTileGroupController<DeviceType>.radio(
    value: DeviceType.lifx,
  );
  bool _loading = false;
  bool _hasError = false;
  final _service = DiscoveryService();

  DiscoverProvider({required super.navKey});

  FSelectTileGroupController<DeviceType> get controller => _controller;
  bool get loading => _loading;
  bool get hasError => _hasError;

  Future<void> discover() async {}
}
