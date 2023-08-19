import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/cubit/new_diary_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/widgets/new_diary_content_view.dart';

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
        create: (_) => NewDiaryCubit(),
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
    return BlocBuilder<NewDiaryCubit, NewDiaryState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.addToSiteDiary,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Spacer(),
                    CircleIconButton(
                      icon: Icons.question_mark_rounded,
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      onTap: () {},
                    ),
                  ],
                ),
                const NewDiaryContentView(),
                const SizedBox(height: 20.0),
                ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          AppLocalizations.of(context)!.next,
                        ))),
              ],
            ),
          ),
        );
      },
    );
  }
}
