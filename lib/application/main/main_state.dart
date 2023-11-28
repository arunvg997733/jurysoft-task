part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({required int index}) = _MainState;
  factory MainState.initial() => const MainState(index: 0);
}
