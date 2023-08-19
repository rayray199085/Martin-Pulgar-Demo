import 'package:flutter/material.dart';

class NewDiaryLocationInfoView extends StatelessWidget {
  final String locationInfo;
  const NewDiaryLocationInfoView({super.key, required this.locationInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.location_on_rounded),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            locationInfo,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}
