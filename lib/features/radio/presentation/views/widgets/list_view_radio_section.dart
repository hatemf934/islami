import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/features/radio/presentation/manager/radio_or_reciters_cubit/radio_or_reciters_cubit.dart';
import 'package:islami/features/radio/presentation/views/widgets/radio_or_reciters.dart';

class ListViewRadioSection extends StatelessWidget {
  const ListViewRadioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: HieghtManager.h20),
        Expanded(
          child: BlocBuilder<RadioOrRecitersCubit, RadioOrRecitersState>(
            builder: (context, state) {
              return state is RadioState
                  ? RadioOrRecitersListView()
                  : state is RecitersState
                  ? RadioOrRecitersListView()
                  : Container();
            },
          ),
        ),
        SizedBox(height: HieghtManager.h20),
      ],
    );
  }
}
