import 'package:flutter/material.dart';

class _CircleIconButtonConstants {
  static double circleSize = 24.0;
  static double questionMarkSize = 20.0;
}

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.onTap,
  });
  final IconData icon;
  final Color backgroundColor;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              Icons.circle,
              color: backgroundColor,
              size: _CircleIconButtonConstants.circleSize,
            ),
            Icon(
              icon,
              color: Theme.of(context).colorScheme.surface,
              size: _CircleIconButtonConstants.questionMarkSize,
            ),
          ],
        ));
  }
}
