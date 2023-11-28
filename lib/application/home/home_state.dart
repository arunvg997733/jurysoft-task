part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required List<HomeModel> newList,
      required bool isLoading,
      required bool isError,
      required List<String> pageImage,
      required int currentIndex}) = _HomeState;
  factory HomeState.initial() => const HomeState(
      newList: [],
      isLoading: false,
      isError: false,
      currentIndex: 0,
      pageImage: []);
}
