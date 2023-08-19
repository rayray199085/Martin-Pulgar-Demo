import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../widgets/placeholder_view.dart';
import '../../../widgets/section_card.dart';

class NewDiaryCommentSection extends StatelessWidget {
  const NewDiaryCommentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      headerLabel: AppLocalizations.of(context)!.comments,
      body: Column(
        children: [
          PlaceholderView(label: AppLocalizations.of(context)!.comments),
        ],
      ),
    );
  }
}
