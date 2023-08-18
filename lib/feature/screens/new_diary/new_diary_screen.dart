import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/cubit/new_diary_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/widget/help_button.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/widget/section_card.dart';

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
                    HelpButton(onPressed: () {}),
                  ],
                ),
                const SizedBox(height: 10),
                SectionCard(
                  headerLabel:
                      AppLocalizations.of(context)!.addPhotosToSiteDiary,
                  body: Column(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 120,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SectionCard(
                  headerLabel: AppLocalizations.of(context)!.comments,
                  body: Column(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 120,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SectionCard(
                  headerLabel: AppLocalizations.of(context)!.details,
                  body: Column(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 120,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SectionCard(
                  headerLabel:
                      AppLocalizations.of(context)!.linkToExistingEvent,
                  body: Column(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 120,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
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
