
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onViewAll;
  const SectionHeader({required this.title, this.onViewAll, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      if (onViewAll != null)
        TextButton(onPressed: onViewAll, child: const Text('View All'))
    ]);
  }
}
