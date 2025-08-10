import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:haven/services/lighting_service.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/result.dart';
import 'package:home_api_client/home_api_client.dart';

class LightingProvider extends ChangeNotifier {
  List<DeviceConfig> _deviceConfigs = [];
  Map<Room, List<DeviceConfig>> _roomsMap = {};
  final Set<String> _loadingDevices = {};
  bool _loading = false;
  bool _hasError = false;

  LightingProvider() {
    _initAsync();
  }

  List<DeviceConfig> get devices => _deviceConfigs;
  Map<Room, List<DeviceConfig>> get roomsMap => _roomsMap;
  Set<String> get loadingDevices => _loadingDevices;
  bool get loading => _loading;
  bool get hasError => _hasError;
  bool get homeIsOn {
    for (var device in _deviceConfigs) {
      if (device.powerState == PowerState.on_) {
        return true;
      }
    }
    return false;
  }

  Future<void> _initAsync() async {
    _loading = true;
    notifyListeners();
    final response = await LightingService.I.readDevices();

    switch (response) {
      case Success(value: final devices):
        _deviceConfigs = devices;
        _roomsMap = _buildRoomMap(devices);
      case Failure():
        _hasError = true;
    }

    _loading = false;
    notifyListeners();
  }

  Map<Room, List<DeviceConfig>> _buildRoomMap(List<DeviceConfig> devices) {
    final Map<Room, List<DeviceConfig>> groupedRooms = {};
    for (var device in devices) {
      final room = device.room ?? Room.livingRoom;
      groupedRooms[room] = groupedRooms.getOrDefault(room, [])..add(device);
    }
    for (var deviceList in groupedRooms.values) {
      deviceList.sort((a, b) => a.name.compareTo(b.name));
    }
    final sortedRooms = LinkedHashMap<Room, List<DeviceConfig>>.fromEntries(
      groupedRooms.entries.toList()
        ..sort((a, b) => a.key.name.compareTo(b.key.name)),
    );
    return sortedRooms;
  }

  void toggleDevice(DeviceConfig device) async {
    _loadingDevices.add(device.name);
    notifyListeners();
    final action = device.powerState == PowerState.on_
        ? PowerAction.off
        : PowerAction.on_;

    final result = await LightingService.I.controlDevice(device, action);
    switch (result) {
      case Success(value: final updatedDevices):
        final updatedNames = updatedDevices.map((d) => d.name).toSet();
        _deviceConfigs = [
          ..._deviceConfigs.where((d) => !updatedNames.contains(d.name)),
          ...updatedDevices,
        ];
        _roomsMap = _buildRoomMap(_deviceConfigs);
      case Failure():
        break;
    }

    _loadingDevices.remove(device.name);
    notifyListeners();
  }
}
