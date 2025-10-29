import 'package:flowkit/flowkit.dart';
import 'package:forui/forui.dart';
import 'package:home_api_client/home_api_client.dart';

class DiscoverProvider extends NestedNavigatorProvider {
  final controller = FSelectTileGroupController<DeviceType>.radio(
    value: DeviceType.lifx,
  );
  DiscoverProvider({required super.navKey});
}
