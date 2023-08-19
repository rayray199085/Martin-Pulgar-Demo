import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'circle_icon_button.dart';

class ImagePreviewView extends StatelessWidget {
  const ImagePreviewView({
    super.key,
    required this.photoFile,
    required this.deleteOnTap,
  });

  final XFile photoFile;
  final VoidCallback deleteOnTap;
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
            child: Image.file(
              File(photoFile.path),
              errorBuilder: (BuildContext context, Object error,
                      StackTrace? stackTrace) =>
                  const Icon(Icons.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        CircleIconButton(
          icon: Icons.close,
          backgroundColor: Theme.of(context).colorScheme.onSecondary,
          onTap: deleteOnTap,
        ),
      ],
    );
  }
}
