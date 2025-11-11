import 'package:flowkit/flowkit.dart';
import 'package:haven/services/device_service.dart';
import 'package:haven/utils/result.dart';
import 'package:home_api_client/home_api_client.dart';

enum DeviceTab { controllable, interface }

class DevicesProvider extends NestedNavigatorProvider {
  DevicesProvider({required super.navKey}) {
    _fetchAll();
  }

  List<ControllableDevice> _controllableDevices = [];
  List<ControllableDevice> get controllableDevices => _controllableDevices;
  List<InterfaceDevice> _interfaceDevices = [];
  List<InterfaceDevice> get interfaceDevices => _interfaceDevices;
  DeviceTab _selectedTab = DeviceTab.controllable;
  DeviceTab get selectedTab => _selectedTab;
  bool _loading = false;
  bool get loading => _loading;
  bool _refreshing = false;
  bool get refreshing => _refreshing;
  bool _hasError = false;
  bool get hasError => _hasError;

  void onTabChanged(DeviceTab? value) {
    if (value == null) {
      return;
    }

    _selectedTab = value;
    notifyListeners();
  }

  Future<void> _performDeviceAction(
    Future<Result<dynamic, Exception>> Function() action,
  ) async {
    _loading = true;
    notifyListeners();

    final result = await action();

    switch (result) {
      case Success(value: final value):
        if (value is List<ControllableDevice>) {
          _controllableDevices = value;
        } else if (value is List<InterfaceDevice>) {
          _interfaceDevices = value;
        }
        _hasError = false;
      case Failure():
        _hasError = true;
    }

    _loading = false;
    notifyListeners();
  }

  Future<void> _fetchControllableDevices() async {
    await _performDeviceAction(() => DeviceService.I.readControllableDevices());
  }

  Future<void> _fetchInterfaceDevices() async {
    await _performDeviceAction(() => DeviceService.I.readInterfaceDevices());
  }

  Future<void> _fetchAll() async {
    await Future.wait([_fetchControllableDevices(), _fetchInterfaceDevices()]);
  }

  Future<void> refresh() async {
    _refreshing = true;
    notifyListeners();

    await _fetchAll();

    _refreshing = false;
    notifyListeners();
  }
}
