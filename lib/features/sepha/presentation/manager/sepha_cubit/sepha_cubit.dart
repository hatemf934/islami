import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'sepha_state.dart';

class SephaCubit extends Cubit<SephaState> {
  SephaCubit() : super(SephaInitial());
  void numberOfSepha() {
    int number = 0;
    if (state is SephaOnTap) {
      number = (state as SephaOnTap).numberOfSepha;
    }
    emit(SephaOnTap(numberOfSepha: number + 1));
  }

  void resetSepha() {
    emit(SephaOnTap(numberOfSepha: 0));
    emit(SephaInitial());
  }
}
