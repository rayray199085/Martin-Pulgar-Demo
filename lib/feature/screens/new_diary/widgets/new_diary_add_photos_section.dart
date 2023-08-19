import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../widgets/image_preview_view.dart';
import '../../../widgets/section_card.dart';

class NewDiaryAddPhotosSection extends StatelessWidget {
  const NewDiaryAddPhotosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      headerLabel: AppLocalizations.of(context)!.addPhotosToSiteDiary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GridView(
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              ImagePreviewView(),
              ImagePreviewView(),
              ImagePreviewView(),
              ImagePreviewView(),
              ImagePreviewView(),
              ImagePreviewView(),
            ],
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                AppLocalizations.of(context)!.addAPhoto,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.includeInPhotoGallery,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const Spacer(),
              Checkbox(value: true, onChanged: (val) {})
            ],
          )
        ],
      ),
    );
  }
}
