import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'new_diary_state.dart';

class NewDiaryCubit extends Cubit<NewDiaryState> {
  NewDiaryCubit() : super(const NewDiaryState());
}
