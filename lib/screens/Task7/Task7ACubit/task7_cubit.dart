import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'task7_state.dart';

class Task7Cubit extends Cubit<Task7State> {
  Task7Cubit() : super(Filterbarupdated());

  int index = 0;

  Updatefilterbar(int myindex) {
    index = myindex;
    emit(Filterbarupdated());
  }
}
