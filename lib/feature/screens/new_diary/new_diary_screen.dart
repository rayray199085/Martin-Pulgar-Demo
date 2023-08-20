import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:martin_pulgar_demo/core/repositories/new_diary_repository.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/cubit/new_diary_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/widgets/new_diary_content_view.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/widgets/new_diary_location_info_view.dart';

import '../../widgets/circle_icon_button.dart';

class NewDiaryScreen extends StatelessWidget {
  const NewDiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
        centerTitle: false,
        title: Text(AppLocalizations.of(context)!.newDiary),
      ),
      body: BlocProvider(
        create: (_) => NewDiaryCubit(
            imagePicker: ImagePicker(), repository: NewDiaryRepository()),
        child: const NewDiaryBody(),
      ),
    );
  }
}

@visibleForTesting
class NewDiaryBody extends StatelessWidget {
  const NewDiaryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewDiaryCubit, NewDiaryState>(
      listener: (context, state) {
        if (state.createSuccess) {
          _showToast(AppLocalizations.of(context)!.newDiaryCreateSuccessfully);
        } else if (state.errorMessage != null) {
          _showToast(state.errorMessage!);
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const NewDiaryLocationInfoView(
                locationInfo: '20041075 | TAP-NS-TAP-North Strathfield',
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    NewDiaryContentHeader(
                      onTap: () {},
                    ),
                    const NewDiaryContentView(),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                        onPressed: state.createSuccess
                            ? null
                            : () => BlocProvider.of<NewDiaryCubit>(context)
                                .createNewDiary(),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              AppLocalizations.of(context)!.next,
                            ))),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showToast(String message) {
    Fluttertoast.showToast(msg: message, gravity: ToastGravity.CENTER);
  }
}

@visibleForTesting
class NewDiaryContentHeader extends StatelessWidget {
  const NewDiaryContentHeader({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppLocalizations.of(context)!.addToSiteDiary,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Spacer(),
        CircleIconButton(
          icon: Icons.question_mark_rounded,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          onTap: onTap,
        ),
      ],
    );
  }
}
