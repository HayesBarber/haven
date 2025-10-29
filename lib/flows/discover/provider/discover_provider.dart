import 'package:flowkit/flowkit.dart';
import 'package:forui/forui.dart';
import 'package:haven/services/discovery_service.dart';
import 'package:haven/utils/result.dart';
import 'package:home_api_client/home_api_client.dart';

class DiscoverProvider extends NestedNavigatorProvider {
  final _controller = FSelectTileGroupController<DeviceType>.radio(
    value: DeviceType.lifx,
  );
  bool _loading = false;
  bool _hasError = false;
  bool _noDevicesFound = false;
  final _service = DiscoveryService();
  DeviceDiscoveryResponse? _deviceDiscoveryResponse;

  DiscoverProvider({required super.navKey});

  FSelectTileGroupController<DeviceType> get controller => _controller;
  bool get loading => _loading;
  bool get hasError => _hasError;
  bool get noDevicesFound => _noDevicesFound;
  DeviceDiscoveryResponse? get deviceDiscoveryResponse =>
      _deviceDiscoveryResponse;

  Future<void> discover() async {
    DeviceType? type = _controller.value.firstOrNull;

    if (type == null) {
      return;
    }

    _loading = true;
    notifyListeners();

    final result = await _service.discover(type);

    switch (result) {
      case Success(value: final value):
        _hasError = false;
        _deviceDiscoveryResponse = value;
        _noDevicesFound =
            (_deviceDiscoveryResponse?.controllableDevices?.isEmpty ?? true) &&
            (_deviceDiscoveryResponse?.interfaceDevices?.isEmpty ?? true);
      case Failure():
        _hasError = true;
        _noDevicesFound = false;
    }

    _loading = false;
    notifyListeners();
  }
}
