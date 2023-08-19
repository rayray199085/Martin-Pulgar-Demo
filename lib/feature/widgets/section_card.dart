import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({
    super.key,
    required this.headerLabel,
    this.showHeaderCheckBox = false,
    required this.body,
  });

  final String headerLabel;
  final bool showHeaderCheckBox;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 6.0,
            ),
            Row(
              children: [
                Text(
                  headerLabel,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                ),
                const Spacer(),
                if (showHeaderCheckBox)
                  Checkbox(value: true, onChanged: (val) {})
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(
                thickness: 1.0,
              ),
            ),
            body,
          ],
        ),
      ),
    );
  }
}
