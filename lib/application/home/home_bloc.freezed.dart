// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomedata,
    required TResult Function(int index) onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomedata,
    TResult? Function(int index)? onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomedata,
    TResult Function(int index)? onChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomedata value) getHomedata,
    required TResult Function(_OnChange value) onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomedata value)? getHomedata,
    TResult? Function(_OnChange value)? onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomedata value)? getHomedata,
    TResult Function(_OnChange value)? onChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHomedataImplCopyWith<$Res> {
  factory _$$GetHomedataImplCopyWith(
          _$GetHomedataImpl value, $Res Function(_$GetHomedataImpl) then) =
      __$$GetHomedataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomedataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomedataImpl>
    implements _$$GetHomedataImplCopyWith<$Res> {
  __$$GetHomedataImplCopyWithImpl(
      _$GetHomedataImpl _value, $Res Function(_$GetHomedataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomedataImpl implements _GetHomedata {
  const _$GetHomedataImpl();

  @override
  String toString() {
    return 'HomeEvent.getHomedata()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomedataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomedata,
    required TResult Function(int index) onChange,
  }) {
    return getHomedata();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomedata,
    TResult? Function(int index)? onChange,
  }) {
    return getHomedata?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomedata,
    TResult Function(int index)? onChange,
    required TResult orElse(),
  }) {
    if (getHomedata != null) {
      return getHomedata();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomedata value) getHomedata,
    required TResult Function(_OnChange value) onChange,
  }) {
    return getHomedata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomedata value)? getHomedata,
    TResult? Function(_OnChange value)? onChange,
  }) {
    return getHomedata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomedata value)? getHomedata,
    TResult Function(_OnChange value)? onChange,
    required TResult orElse(),
  }) {
    if (getHomedata != null) {
      return getHomedata(this);
    }
    return orElse();
  }
}

abstract class _GetHomedata implements HomeEvent {
  const factory _GetHomedata() = _$GetHomedataImpl;
}

/// @nodoc
abstract class _$$OnChangeImplCopyWith<$Res> {
  factory _$$OnChangeImplCopyWith(
          _$OnChangeImpl value, $Res Function(_$OnChangeImpl) then) =
      __$$OnChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$OnChangeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnChangeImpl>
    implements _$$OnChangeImplCopyWith<$Res> {
  __$$OnChangeImplCopyWithImpl(
      _$OnChangeImpl _value, $Res Function(_$OnChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$OnChangeImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnChangeImpl implements _OnChange {
  const _$OnChangeImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.onChange(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangeImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangeImplCopyWith<_$OnChangeImpl> get copyWith =>
      __$$OnChangeImplCopyWithImpl<_$OnChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomedata,
    required TResult Function(int index) onChange,
  }) {
    return onChange(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomedata,
    TResult? Function(int index)? onChange,
  }) {
    return onChange?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomedata,
    TResult Function(int index)? onChange,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomedata value) getHomedata,
    required TResult Function(_OnChange value) onChange,
  }) {
    return onChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomedata value)? getHomedata,
    TResult? Function(_OnChange value)? onChange,
  }) {
    return onChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomedata value)? getHomedata,
    TResult Function(_OnChange value)? onChange,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(this);
    }
    return orElse();
  }
}

abstract class _OnChange implements HomeEvent {
  const factory _OnChange({required final int index}) = _$OnChangeImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$OnChangeImplCopyWith<_$OnChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<HomeModel> get newList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<String> get pageImage => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<HomeModel> newList,
      bool isLoading,
      bool isError,
      List<String> pageImage,
      int currentIndex});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newList = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? pageImage = null,
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      newList: null == newList
          ? _value.newList
          : newList // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      pageImage: null == pageImage
          ? _value.pageImage
          : pageImage // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HomeModel> newList,
      bool isLoading,
      bool isError,
      List<String> pageImage,
      int currentIndex});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newList = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? pageImage = null,
    Object? currentIndex = null,
  }) {
    return _then(_$HomeStateImpl(
      newList: null == newList
          ? _value._newList
          : newList // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      pageImage: null == pageImage
          ? _value._pageImage
          : pageImage // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required final List<HomeModel> newList,
      required this.isLoading,
      required this.isError,
      required final List<String> pageImage,
      required this.currentIndex})
      : _newList = newList,
        _pageImage = pageImage;

  final List<HomeModel> _newList;
  @override
  List<HomeModel> get newList {
    if (_newList is EqualUnmodifiableListView) return _newList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<String> _pageImage;
  @override
  List<String> get pageImage {
    if (_pageImage is EqualUnmodifiableListView) return _pageImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pageImage);
  }

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'HomeState(newList: $newList, isLoading: $isLoading, isError: $isError, pageImage: $pageImage, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(other._newList, _newList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._pageImage, _pageImage) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newList),
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_pageImage),
      currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final List<HomeModel> newList,
      required final bool isLoading,
      required final bool isError,
      required final List<String> pageImage,
      required final int currentIndex}) = _$HomeStateImpl;

  @override
  List<HomeModel> get newList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<String> get pageImage;
  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
