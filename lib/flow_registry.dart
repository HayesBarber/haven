import 'package:flowkit/flowkit.dart';
import 'package:haven/flows/create_user/create_user_entry.dart';
import 'package:haven/flows/create_user/provider/create_user_provider.dart';

enum Flows { createUser }

class FlowRegistry {
  static Future? startFlow(Flows flow) {
    switch (flow) {
      case Flows.createUser:
        return FlowStarter.I.start(
          providerBuilder: (key) => CreateUserProvider(navKey: key),
          childBuilder: (context) => const CreateUserEntry(),
        );
    }
  }
}
