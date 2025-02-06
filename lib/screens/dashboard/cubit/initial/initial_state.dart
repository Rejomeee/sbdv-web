part of 'initial_cubit.dart';

@freezed
class InitialState with _$InitialState {
  const factory InitialState({
    required bool sampleVar,
  }) = _InitialState;
  factory InitialState.initial() => const InitialState(
        sampleVar: false,
      );
}
