import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:martin_pulgar_demo/core/repositories/new_diary_repository.dart';

part 'new_diary_state.dart';

class NewDiaryCubit extends Cubit<NewDiaryState> {
  NewDiaryCubit({
    required ImagePicker imagePicker,
    required NewDiaryRepository repository,
  })  : _imagePicker = imagePicker,
        _repository = repository,
        super(const NewDiaryState(photoList: []));
  final ImagePicker _imagePicker;
  final NewDiaryRepository _repository;

  Future<void> selectPhoto() async {
    try {
      final imageFile =
          await _imagePicker.pickImage(source: ImageSource.gallery);
      if (imageFile != null) {
        emit(state.copyWith(photoList: [...state.photoList, imageFile]));
      }
    } on Exception catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  void deletePhoto(int index) {
    final newPhotoList = [...state.photoList];
    newPhotoList.removeAt(index);
    emit(state.copyWith(photoList: newPhotoList));
  }

  Future<void> createNewDiary() async {
    try {
      final List<String> base64Images = [];
      for (final photoFile in state.photoList) {
        base64Images.add(base64Encode(File(photoFile.path).readAsBytesSync()));
      }
      await _repository.createNewDiary(
        data: {
          'images': base64Images,
        },
      );
      emit(state.copyWith(createSuccess: true));
    } on Exception catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    } on Error catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }
}
