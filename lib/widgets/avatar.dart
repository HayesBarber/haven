import 'package:flutter/material.dart';
import 'package:haven/utils/extensions.dart';

class Avatar extends StatelessWidget {
  final String username;

  const Avatar({super.key, required this.username});

  String getInitials(String name) {
    final parts = name.trim().split(' ');
    if (parts.isEmpty) return '';
    final initials = parts
        .map((part) {
          if (part.isNotEmpty) {
            return part[0];
          }
          return '';
        })
        .take(2)
        .join();
    return initials.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: context.colorScheme.primary,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 11),
            child: Text(
              getInitials(username),
              style: context.textTheme.displayLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(username, style: context.textTheme.bodyLarge),
      ],
    );
  }
}
