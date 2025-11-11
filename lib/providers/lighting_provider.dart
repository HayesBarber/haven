import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:haven/services/device_service.dart';
import 'package:haven/services/lighting_service.dart';
import 'package:haven/utils/extensions.dart';
import 'package:haven/utils/result.dart';
import 'package:home_api_client/home_api_client.dart';

class LightingProvider extends ChangeNotifier {
  List<ControllableDevice> _deviceConfigs = [];
  Map<String, List<ControllableDevice>> _roomsMap = {};
  final Set<String> _loadingDevices = {};
  final Map<String, bool> _roomsPowerMap = {};
  bool _loading = false;
  bool _hasError = false;
  bool _homeIsOn = false;
  bool _refreshing = false;

  LightingProvider() {
    _initAsync();
  }

  List<ControllableDevice> get devices => _deviceConfigs;
  Map<String, List<ControllableDevice>> get roomsMap => _roomsMap;
  Set<String> get loadingDevices => _loadingDevices;
  Map<String, bool> get roomsPowerMap => _roomsPowerMap;
  bool get loading => _loading;
  bool get refreshing => _refreshing;
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
    final response = await DeviceService.I.readControllableDevices();

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

  Future<void> refresh() async {
    _refreshing = true;
    notifyListeners();

    await _initAsync();

    _refreshing = false;
    notifyListeners();
  }

  void _buildRoomMap(List<ControllableDevice> devices) {
    final Map<String, List<ControllableDevice>> groupedRooms = {};
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
    final sortedRooms =
        LinkedHashMap<String, List<ControllableDevice>>.fromEntries(
          groupedRooms.entries.toList()..sort((a, b) => a.key.compareTo(b.key)),
        );
    _setHomeIsOn();
    _roomsMap = sortedRooms;
  }

  void _updateDevicesAndRooms(List<ControllableDevice> updatedDevices) {
    final updatedNames = updatedDevices.map((d) => d.name).toSet();
    _deviceConfigs = [
      ..._deviceConfigs.where((d) => !updatedNames.contains(d.name)),
      ...updatedDevices,
    ];
    _buildRoomMap(_deviceConfigs);
  }

  Future<void> _toggleEntity(String entityKey, PowerAction action) async {
    _loadingDevices.add(entityKey);
    notifyListeners();

    final result = await LightingService.I.controlDevice(entityKey, action);
    switch (result) {
      case Success(value: final updatedDevices):
        _updateDevicesAndRooms(updatedDevices);
      case Failure():
        break;
    }

    _loadingDevices.remove(entityKey);
    notifyListeners();
  }

  void toggleDevice(ControllableDevice device) {
    final action = device.powerState == PowerState.on_
        ? PowerAction.off
        : PowerAction.on_;
    _toggleEntity(device.name, action);
  }

  void toggleRoom(String room) {
    final action = _roomsPowerMap[room] == true
        ? PowerAction.off
        : PowerAction.on_;
    _toggleEntity(room, action);
  }

  void toggleHome() {
    final action = _homeIsOn ? PowerAction.off : PowerAction.on_;
    _toggleEntity('home', action);
  }

  void updateDevicesFromTheme(List<ControllableDevice> updatedDevices) {
    _updateDevicesAndRooms(updatedDevices);
    notifyListeners();
  }
}
