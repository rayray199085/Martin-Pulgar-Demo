import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../widgets/placeholder_view.dart';
import '../../../widgets/section_card.dart';

class NewDiaryDetailsSection extends StatelessWidget {
  const NewDiaryDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      headerLabel: AppLocalizations.of(context)!.details,
      body: Column(
        children: [
          const PlaceholderView(
            label: '2020-06-29',
            showArrowIcon: true,
          ),
          const SizedBox(height: 8.0),
          PlaceholderView(
            label: AppLocalizations.of(context)!.selectArea,
            showArrowIcon: true,
          ),
          const SizedBox(height: 8.0),
          PlaceholderView(
            label: AppLocalizations.of(context)!.taskCategory,
            showArrowIcon: true,
          ),
          const SizedBox(height: 8.0),
          PlaceholderView(label: AppLocalizations.of(context)!.tags),
        ],
      ),
    );
  }
}
