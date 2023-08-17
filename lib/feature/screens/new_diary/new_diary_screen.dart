import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/cubit/new_diary_cubit.dart';

class NewDiaryScreen extends StatelessWidget {
  const NewDiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Diary'),
      ),
      body: BlocProvider(
        create: (_) => NewDiaryCubit()..loadData(),
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
        switch (state.runtimeType) {
          case NewDiaryLoading:
            return const Center(child: CircularProgressIndicator());
          case NewDiaryLoaded:
            return const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'New Diary Screen',
                  ),
                ],
              ),
            );
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
