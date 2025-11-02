import 'package:flowkit/flowkit.dart';
import 'package:flutter/material.dart';
import 'package:haven/flows/local_storage/provider/local_storage_provider.dart';
import 'package:haven/widgets/scaffold_title.dart';
import 'package:provider/provider.dart';

class LocalStorageEntry extends StatelessWidget {
  const LocalStorageEntry({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocalStorageProvider>(context);

    return Scaffold(
      appBar: AppBar(leading: BackButton(onPressed: () => Navigation.I.pop())),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [ScaffoldTitle(title: 'Local Storage')],
      ),
    );
  }
}
