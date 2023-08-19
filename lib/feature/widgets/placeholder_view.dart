import 'package:flutter/material.dart';

class PlaceholderView extends StatelessWidget {
  const PlaceholderView({
    super.key,
    required this.label,
    this.showArrowIcon = false,
  });

  final String label;
  final bool showArrowIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const Spacer(),
            if (showArrowIcon)
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Theme.of(context).colorScheme.onSecondary,
              )
          ],
        ),
        Divider(
          color: Theme.of(context).colorScheme.onSecondary,
          thickness: 1.0,
        ),
      ],
    );
  }
}
