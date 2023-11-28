part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getHomedata() = _GetHomedata;
  const factory HomeEvent.onChange({required int index}) = _OnChange;
}
