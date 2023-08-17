import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'new_diary_state.dart';

class NewDiaryCubit extends Cubit<NewDiaryState> {
  NewDiaryCubit() : super(NewDiaryLoading());

  Future<void> loadData() async {
    await Future.delayed(Duration(seconds: 3));
    emit(NewDiaryLoaded());
  }
}
