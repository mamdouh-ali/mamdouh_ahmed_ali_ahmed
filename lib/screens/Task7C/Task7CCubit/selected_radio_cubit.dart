import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'selected_radio_state.dart';

class SelectedRadioCubit extends Cubit<SelectedRadioState> {
  SelectedRadioCubit() : super(SelectedRadiochanged());

  int selectedvalue = 0;

  changedselected(int theselected) {
    selectedvalue = theselected;

    emit(SelectedRadiochanged());
  }
}
