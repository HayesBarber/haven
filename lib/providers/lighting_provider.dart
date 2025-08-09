import 'package:flutter/material.dart';
import 'package:haven/services/lighting_service.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/result.dart';
import 'package:home_api_client/home_api_client.dart';

class LightingProvider extends ChangeNotifier {
  List<DeviceConfig> _deviceConfigs = [];
  Map<Room, List<DeviceConfig>> _roomsMap = {};
  bool _loading = false;
  bool _hasError = false;

  LightingProvider() {
    _initAsync();
  }

  List<DeviceConfig> get devices => _deviceConfigs;
  Map<Room, List<DeviceConfig>> get roomsMap => _roomsMap;
  bool get loading => _loading;
  bool get hasError => _hasError;

  Future<void> _initAsync() async {
    _loading = true;
    notifyListeners();
    final response = await LightingService.I.readDevices();

    switch (response) {
      case Success(value: final devices):
        _deviceConfigs = devices;
        final Map<Room, List<DeviceConfig>> groupedRooms = {};
        for (var device in devices) {
          final room = device.room ?? Room.livingRoom;
          groupedRooms[room] = groupedRooms.getOrDefault(room, [])..add(device);
        }
        _roomsMap = groupedRooms;
      case Failure():
        _hasError = true;
    }

    _loading = false;
    notifyListeners();
  }
}
