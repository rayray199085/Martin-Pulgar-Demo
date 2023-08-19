import 'package:flutter/material.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/widgets/new_diary_comment_section.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/widgets/new_diary_link_event_section.dart';

import 'new_diary_add_photos_section.dart';
import 'new_diary_details_section.dart';

class NewDiaryContentView extends StatelessWidget {
  const NewDiaryContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20.0),
        NewDiaryAddPhotosSection(),
        SizedBox(height: 20.0),
        NewDiaryCommentSection(),
        SizedBox(height: 20.0),
        NewDiaryDetailsSection(),
        SizedBox(height: 20.0),
        NewDiaryLinkEventSection(),
      ],
    );
  }
}
