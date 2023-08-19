import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

part 'new_diary_state.dart';

class NewDiaryCubit extends Cubit<NewDiaryState> {
  NewDiaryCubit({ImagePicker? imagePicker})
      : _imagePicker = imagePicker,
        super(const NewDiaryState(photoList: []));
  final ImagePicker? _imagePicker;

  Future<void> selectPhoto() async {
    try {
      final imageFile =
          await _imagePicker?.pickImage(source: ImageSource.gallery);
      if (imageFile != null) {
        emit(state.copyWith(photoList: [...state.photoList, imageFile]));
      }
    } on Exception catch (e) {
      log(e.toString());
    }
  }

  void deletePhoto(int index) {
    final newPhotoList = [...state.photoList];
    newPhotoList.removeAt(index);
    emit(state.copyWith(photoList: newPhotoList));
  }
}
