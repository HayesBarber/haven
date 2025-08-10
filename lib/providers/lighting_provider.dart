import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:haven/services/lighting_service.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/result.dart';
import 'package:home_api_client/home_api_client.dart';

class LightingProvider extends ChangeNotifier {
  List<DeviceConfig> _deviceConfigs = [];
  Map<String, List<DeviceConfig>> _roomsMap = {};
  final Set<String> _loadingDevices = {};
  final Map<String, bool> _roomsPowerMap = {};
  bool _loading = false;
  bool _hasError = false;
  bool _homeIsOn = false;

  LightingProvider() {
    _initAsync();
  }

  List<DeviceConfig> get devices => _deviceConfigs;
  Map<String, List<DeviceConfig>> get roomsMap => _roomsMap;
  Set<String> get loadingDevices => _loadingDevices;
  Map<String, bool> get roomsPowerMap => _roomsPowerMap;
  bool get loading => _loading;
  bool get hasError => _hasError;
  bool get homeIsOn => _homeIsOn;
  void _setHomeIsOn() {
    _homeIsOn = _deviceConfigs.any(
      (device) => device.powerState == PowerState.on_,
    );
  }

  Future<void> _initAsync() async {
    _loading = true;
    notifyListeners();
    final response = await LightingService.I.readDevices();

    switch (response) {
      case Success(value: final devices):
        _deviceConfigs = devices;
        _buildRoomMap(devices);
      case Failure():
        _hasError = true;
    }

    _loading = false;
    notifyListeners();
  }

  void _buildRoomMap(List<DeviceConfig> devices) {
    final Map<String, List<DeviceConfig>> groupedRooms = {};
    for (var device in devices) {
      final room = device.room ?? 'Unknown';
      groupedRooms[room] = groupedRooms.getOrDefault(room, [])..add(device);
    }
    for (var entry in groupedRooms.entries) {
      final deviceList = entry.value;
      deviceList.sort((a, b) => a.name.compareTo(b.name));
      bool roomIsOn = deviceList.any(
        (device) => device.powerState == PowerState.on_,
      );
      _roomsPowerMap[entry.key] = roomIsOn;
    }
    final sortedRooms = LinkedHashMap<String, List<DeviceConfig>>.fromEntries(
      groupedRooms.entries.toList()..sort((a, b) => a.key.compareTo(b.key)),
    );
    _setHomeIsOn();
    _roomsMap = sortedRooms;
  }

  void _updateDevicesAndRooms(List<DeviceConfig> updatedDevices) {
    final updatedNames = updatedDevices.map((d) => d.name).toSet();
    _deviceConfigs = [
      ..._deviceConfigs.where((d) => !updatedNames.contains(d.name)),
      ...updatedDevices,
    ];
    _buildRoomMap(_deviceConfigs);
  }

  void toggleDevice(DeviceConfig device) async {
    _loadingDevices.add(device.name);
    notifyListeners();
    final action = device.powerState == PowerState.on_
        ? PowerAction.off
        : PowerAction.on_;

    final result = await LightingService.I.controlDevice(device.name, action);
    switch (result) {
      case Success(value: final updatedDevices):
        _updateDevicesAndRooms(updatedDevices);
      case Failure():
        break;
    }

    _loadingDevices.remove(device.name);
    notifyListeners();
  }

  void toggleRoom(String room) async {
    _loadingDevices.add(room);
    notifyListeners();

    final action = _roomsPowerMap[room] == true
        ? PowerAction.off
        : PowerAction.on_;

    final result = await LightingService.I.controlDevice(room, action);
    switch (result) {
      case Success(value: final updatedDevices):
        _updateDevicesAndRooms(updatedDevices);
      case Failure():
        break;
    }

    _loadingDevices.remove(room);
    notifyListeners();
  }

  void toggleHome() async {
    _loadingDevices.add('Home');
    notifyListeners();

    final action = _homeIsOn ? PowerAction.off : PowerAction.on_;

    final result = await LightingService.I.controlDevice('home', action);
    switch (result) {
      case Success(value: final updatedDevices):
        _updateDevicesAndRooms(updatedDevices);
      case Failure():
        break;
    }

    _loadingDevices.remove('Home');
    notifyListeners();
  }
}
