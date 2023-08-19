import 'package:flutter/material.dart';
import 'package:martin_pulgar_demo/feature/widgets/section_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../widgets/placeholder_view.dart';

class NewDiaryLinkEventSection extends StatelessWidget {
  const NewDiaryLinkEventSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      headerLabel: AppLocalizations.of(context)!.linkToExistingEvent,
      showHeaderCheckBox: true,
      body: Column(
        children: [
          PlaceholderView(
            label: AppLocalizations.of(context)!.selectAnEvent,
            showArrowIcon: true,
          ),
        ],
      ),
    );
  }
}
