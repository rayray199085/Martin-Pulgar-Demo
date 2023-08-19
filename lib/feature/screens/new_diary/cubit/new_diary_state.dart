part of 'new_diary_cubit.dart';

class NewDiaryState extends Equatable {
  const NewDiaryState({required this.photoList});

  final List<XFile> photoList;

  NewDiaryState copyWith({List<XFile>? photoList}) {
    return NewDiaryState(photoList: photoList ?? this.photoList);
  }

  @override
  List<Object> get props => [
        photoList,
      ];
}
