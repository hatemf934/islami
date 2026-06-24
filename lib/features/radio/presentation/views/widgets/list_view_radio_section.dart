import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/widgets/error_view.dart';
import 'package:islami/features/radio/presentation/manager/radio_cubit/radio_cubit.dart';
import 'package:islami/features/radio/presentation/manager/reciters_cubit/reciters_cubit.dart';
import 'package:islami/features/radio/presentation/views/widgets/radio_or_reciters.dart';

class ListViewRadioSection extends StatelessWidget {
  const ListViewRadioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: HieghtManager.h20),
        Expanded(
          child: BlocBuilder<RadioCubit, RadioStateRadio>(
            builder: (context, radioState) {
              return BlocBuilder<RecitersCubit, RecitersStateReciters>(
                builder: (context, reciterState) {
                  if (radioState is RadioLoading ||
                      reciterState is RecitersLoading) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: ColorManager.primayColor,
                      ),
                    );
                  }
                  if (reciterState is RecitersSucsses) {
                    return RadioOrRecitersListView(
                      items: reciterState.recitersList,
                    );
                  } else if (radioState is RadioSucsses) {
                    return RadioOrRecitersListView(items: radioState.radioList);
                  }
                  if (reciterState is RecitersFaliure) {
                    return ErrorView(
                      failure: reciterState.failure,
                      onRetry: () {
                        BlocProvider.of<RecitersCubit>(context).getReciters();
                      },
                    );
                  } else if (radioState is RadioFaliure) {
                    return ErrorView(
                      failure: radioState.failure,
                      onRetry: () {
                        BlocProvider.of<RadioCubit>(context).getRadio();
                      },
                    );
                  }
                  return SizedBox.shrink();
                },
              );
            },
          ),
        ),
        SizedBox(height: HieghtManager.h20),
      ],
    );
  }
}
