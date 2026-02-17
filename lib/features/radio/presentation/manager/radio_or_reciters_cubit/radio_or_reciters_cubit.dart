import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'radio_or_reciters_state.dart';

class RadioOrRecitersCubit extends Cubit<RadioOrRecitersState> {
  RadioOrRecitersCubit() : super(RadioOrRecitersInitial());

  void swapToRadio() {
    emit(RadioOrRecitersInitial());
    emit(RadioState());
  }

  void swapToReciters() {
    emit(RadioOrRecitersInitial());
    emit(RecitersState());
  }
}
