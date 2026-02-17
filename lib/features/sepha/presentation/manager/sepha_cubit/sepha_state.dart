part of 'sepha_cubit.dart';

@immutable
sealed class SephaState {}

final class SephaInitial extends SephaState {}

final class SephaOnTap extends SephaState {
  final int numberOfSepha;

  SephaOnTap({required this.numberOfSepha});
}
