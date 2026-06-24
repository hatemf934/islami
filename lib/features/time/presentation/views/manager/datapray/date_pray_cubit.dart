import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/features/time/data/model/time_model.dart';
import 'package:islami/features/time/data/repo/time_repo_implement.dart';

part 'date_pray_state.dart';

class DatePrayCubit extends Cubit<DatePrayState> {
  DatePrayCubit() : super(DatePrayInitial());
  void getTimePray() async {
    emit(DatePrayLoading());
    final results = await Future.wait([
      TimeRepoImplement().getTime(),
      TimeRepoImplement().getTimings(),
    ]);

    var resultTime = results[0];
    var resultTiming = results[1];
    resultTime.fold(
      (failure) {
        emit(DatePrayFaliure(failure: failure));
      },
      (timeModel) {
        resultTiming.fold(
          (failure) {
            emit(DatePrayFaliure(failure: failure));
          },
          (timingModel) {
            emit(
              DatePraySucsses(
                timeModel: timeModel as TimeModel,
                timingModel: timingModel as List<TimingModel>,
              ),
            );
          },
        );
      },
    );
  }
}
