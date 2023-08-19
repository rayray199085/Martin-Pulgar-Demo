import 'package:flutter/material.dart';

import 'circle_icon_button.dart';

class ImagePreviewView extends StatelessWidget {
  const ImagePreviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12.0, right: 12.0),
          child: SizedBox(
            height: 75.0,
            width: 75.0,
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
        CircleIconButton(
          icon: Icons.close,
          backgroundColor: Theme.of(context).colorScheme.onSecondary,
          onTap: () {},
        ),
      ],
    );
  }
}
