import 'package:flutter/material.dart';
import 'package:haven/utils/extensions.dart';

class ScaffoldTitle extends StatelessWidget {
  final String title;
  final bool loading;

  const ScaffoldTitle({super.key, required this.title, this.loading = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(title, style: context.textTheme.displayMedium),
          ),
          if (loading)
            SizedBox(
              width: 25,
              height: 25,
              child: CircularProgressIndicator.adaptive(),
            ),
        ],
      ),
    );
  }
}
