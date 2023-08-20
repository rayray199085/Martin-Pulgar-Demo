import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:martin_pulgar_demo/core/repositories/new_diary_repository.dart';
import 'package:martin_pulgar_demo/feature/models/new_diary_response.dart';
import 'package:martin_pulgar_demo/feature/screens/new_diary/cubit/new_diary_cubit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'new_diary_cubit_test.mocks.dart';

@GenerateMocks([
  NewDiaryRepository,
  ImagePicker,
])
void main() {
  final photoFile =
      XFile('/Users/user/Library/Developer/CoreSimulator/Devices/5D18F36.jpg');
  late MockNewDiaryRepository repository;
  late MockImagePicker imagePicker;

  setUp(() {
    repository = MockNewDiaryRepository();
    imagePicker = MockImagePicker();
  });

  blocTest<NewDiaryCubit, NewDiaryState>(
    'select photo successfully',
    build: () {
      when(imagePicker.pickImage(source: ImageSource.gallery))
          .thenAnswer((realInvocation) => Future.value(photoFile));
      final cubit =
          NewDiaryCubit(repository: repository, imagePicker: imagePicker);
      return cubit;
    },
    seed: () => const NewDiaryState(photoList: []),
    act: (NewDiaryCubit cubit) => cubit.selectPhoto(),
    expect: () => [
      NewDiaryState(photoList: [photoFile])
    ],
  );

  blocTest<NewDiaryCubit, NewDiaryState>(
    'select photo with Exception',
    build: () {
      when(imagePicker.pickImage(source: ImageSource.gallery))
          .thenThrow(Exception('unknown error'));
      final cubit =
          NewDiaryCubit(repository: repository, imagePicker: imagePicker);
      return cubit;
    },
    seed: () => const NewDiaryState(photoList: []),
    act: (NewDiaryCubit cubit) => cubit.selectPhoto(),
    expect: () => [
      const NewDiaryState(
          photoList: [], errorMessage: 'Exception: unknown error')
    ],
  );

  blocTest<NewDiaryCubit, NewDiaryState>(
    'delete a photo',
    build: () {
      final cubit =
          NewDiaryCubit(repository: repository, imagePicker: imagePicker);
      return cubit;
    },
    seed: () => NewDiaryState(photoList: [photoFile]),
    act: (NewDiaryCubit cubit) => cubit.deletePhoto(0),
    expect: () => [const NewDiaryState(photoList: [])],
  );

  blocTest<NewDiaryCubit, NewDiaryState>(
    'create new diary successfully',
    build: () {
      when(repository.createNewDiary(data: {'images': []})).thenAnswer(
          (realInvocation) => Future.value(
              NewDiaryResponse(id: '1', createdAt: DateTime.now())));
      final cubit =
          NewDiaryCubit(repository: repository, imagePicker: imagePicker);
      return cubit;
    },
    seed: () => const NewDiaryState(photoList: []),
    act: (NewDiaryCubit cubit) => cubit.createNewDiary(),
    expect: () => const [NewDiaryState(photoList: [], createSuccess: true)],
  );

  blocTest<NewDiaryCubit, NewDiaryState>(
    'create new diary with exception',
    build: () {
      when(repository.createNewDiary(data: {'images': []}))
          .thenThrow(Exception('unknown error'));
      final cubit =
          NewDiaryCubit(repository: repository, imagePicker: imagePicker);
      return cubit;
    },
    seed: () => const NewDiaryState(photoList: []),
    act: (NewDiaryCubit cubit) => cubit.createNewDiary(),
    expect: () => const [
      NewDiaryState(photoList: [], errorMessage: 'Exception: unknown error')
    ],
  );
}
