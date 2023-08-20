import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/cubit/new_diary_cubit.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/new_diary_screen.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/widgets/new_diary_content_view.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/widgets/new_diary_location_info_view.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'new_diary_screen_test.mocks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@GenerateMocks([
  NewDiaryCubit,
])
void main() {
  late MockNewDiaryCubit mockNewDiaryCubit;

  late Widget newDiaryBody;
  setUp(() {
    mockNewDiaryCubit = MockNewDiaryCubit();
    when(mockNewDiaryCubit.state)
        .thenReturn(const NewDiaryState(photoList: []));
    when(mockNewDiaryCubit.stream).thenAnswer((_) => const Stream.empty());

    newDiaryBody = MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: Scaffold(
        body: BlocProvider<NewDiaryCubit>(
          create: (_) => mockNewDiaryCubit,
          child: const NewDiaryBody(),
        ),
      ),
    );
  });

  testWidgets('render NewDiaryBody widgets', (tester) async {
    await tester.pumpWidget(newDiaryBody);

    expect(find.byType(SingleChildScrollView), findsOneWidget);
    expect(find.byType(NewDiaryLocationInfoView), findsOneWidget);
    expect(find.byType(NewDiaryContentHeader), findsOneWidget);
    expect(find.byType(NewDiaryContentView), findsOneWidget);
    expect(find.byType(ElevatedButton), findsNWidgets(2));
  });
}
