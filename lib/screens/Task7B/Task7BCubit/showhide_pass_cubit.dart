import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'showhide_pass_state.dart';

class ShowhidePassCubit extends Cubit<ShowhidePassState> {
  ShowhidePassCubit() : super(ShowhidePass());

  bool passObscure = true;

  showHidePassword() {
    //if (passObscure == true) {
    //passObscure = false;
    //} else {
    //passObscure = true;
    //}
    passObscure = !passObscure;

    emit(ShowhidePass());
  }
}
