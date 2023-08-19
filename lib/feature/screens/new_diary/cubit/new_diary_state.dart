part of 'new_diary_cubit.dart';

class NewDiaryState extends Equatable {
  const NewDiaryState({
    required this.photoList,
    this.createSuccess = false,
    this.errorMessage,
  });

  final List<XFile> photoList;
  final bool createSuccess;
  final String? errorMessage;

  NewDiaryState copyWith({
    List<XFile>? photoList,
    bool createSuccess = false,
    String? errorMessage,
  }) {
    return NewDiaryState(
      photoList: photoList ?? this.photoList,
      createSuccess: createSuccess,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        photoList,
        createSuccess,
        errorMessage,
      ];
}
