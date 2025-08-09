import 'package:flowkit/flowkit.dart';
import 'package:flutter/material.dart';
import 'package:haven/flows/create_user/create_user_entry.dart';
import 'package:haven/flows/create_user/provider/create_user_provider.dart';

enum Flows { createUser }

void registerFlows() {
  FlowRegistry.register(Flows.createUser.name, CreateUserFlow());
}

class CreateUserFlow extends FlowDefinition {
  @override
  Widget buildEntry(BuildContext context) {
    return const CreateUserEntry();
  }

  @override
  NestedNavigatorProvider createProvider(
    GlobalKey<NavigatorState> navKey, [
    List? args,
  ]) {
    return CreateUserProvider(navKey: navKey);
  }
}
