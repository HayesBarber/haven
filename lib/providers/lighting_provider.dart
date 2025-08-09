import 'package:flutter/material.dart';
import 'package:haven/services/lighting_service.dart';
import 'package:haven/utils/result.dart';
import 'package:home_api_client/home_api_client.dart';

class LightingProvider extends ChangeNotifier {
  List<DeviceConfig> _deviceConfigs = [];
  bool _isLoading = false;
  bool _hasError = false;

  LightingProvider() {
    _initAsync();
  }

  List<DeviceConfig> get devices => _deviceConfigs;
  set _devices(List<DeviceConfig> devices) {
    _deviceConfigs = devices;
  }

  bool get loading => _isLoading;
  set _loading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  bool get error => _hasError;
  set _error(bool error) {
    _hasError = error;
    notifyListeners();
  }

  Future<void> _initAsync() async {
    _loading = true;
    final response = await LightingService.I.readDevices();

    switch (response) {
      case Success(value: final devices):
        _devices = devices;
      case Failure():
        _error = true;
    }
  }
}
