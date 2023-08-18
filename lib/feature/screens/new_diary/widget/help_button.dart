import 'package:flutter/material.dart';

class _HelpButtonConstants {
  static double circleSize = 24.0;
  static double questionMarkSize = 20.0;
}

class HelpButton extends StatelessWidget {
  const HelpButton({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        icon: Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              Icons.circle,
              color: Theme.of(context).colorScheme.secondary,
              size: _HelpButtonConstants.circleSize,
            ),
            Icon(
              Icons.question_mark_rounded,
              color: Theme.of(context).colorScheme.surface,
              size: _HelpButtonConstants.questionMarkSize,
            ),
          ],
        ));
  }
}
