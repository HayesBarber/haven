import 'package:flutter/material.dart';
import 'package:haven/widgets/scaffold_title.dart';

class RefreshableScaffold extends StatelessWidget {
  final String title;
  final bool loading;
  final bool refreshing;
  final Future<void> Function() onRefresh;
  final List<Widget> children;

  const RefreshableScaffold({
    super.key,
    required this.title,
    required this.loading,
    required this.refreshing,
    required this.onRefresh,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator.adaptive(
        displacement: 70,
        onRefresh: onRefresh,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            ScaffoldTitle(title: title, loading: loading && !refreshing),
            ...children,
          ],
        ),
      ),
    );
  }
}
