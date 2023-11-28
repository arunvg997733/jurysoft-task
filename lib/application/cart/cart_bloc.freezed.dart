// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeModel product) addToCart,
    required TResult Function(int index) removeFromCart,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeModel product)? addToCart,
    TResult? Function(int index)? removeFromCart,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeModel product)? addToCart,
    TResult Function(int index)? removeFromCart,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeModel product});
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddToCartImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as HomeModel,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl({required this.product});

  @override
  final HomeModel product;

  @override
  String toString() {
    return 'CartEvent.addToCart(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeModel product) addToCart,
    required TResult Function(int index) removeFromCart,
    required TResult Function() reset,
  }) {
    return addToCart(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeModel product)? addToCart,
    TResult? Function(int index)? removeFromCart,
    TResult? Function()? reset,
  }) {
    return addToCart?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeModel product)? addToCart,
    TResult Function(int index)? removeFromCart,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_Reset value) reset,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_Reset value)? reset,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart({required final HomeModel product}) =
      _$AddToCartImpl;

  HomeModel get product;
  @JsonKey(ignore: true)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromCartImplCopyWith<$Res> {
  factory _$$RemoveFromCartImplCopyWith(_$RemoveFromCartImpl value,
          $Res Function(_$RemoveFromCartImpl) then) =
      __$$RemoveFromCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveFromCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveFromCartImpl>
    implements _$$RemoveFromCartImplCopyWith<$Res> {
  __$$RemoveFromCartImplCopyWithImpl(
      _$RemoveFromCartImpl _value, $Res Function(_$RemoveFromCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveFromCartImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveFromCartImpl implements _RemoveFromCart {
  const _$RemoveFromCartImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CartEvent.removeFromCart(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromCartImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromCartImplCopyWith<_$RemoveFromCartImpl> get copyWith =>
      __$$RemoveFromCartImplCopyWithImpl<_$RemoveFromCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeModel product) addToCart,
    required TResult Function(int index) removeFromCart,
    required TResult Function() reset,
  }) {
    return removeFromCart(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeModel product)? addToCart,
    TResult? Function(int index)? removeFromCart,
    TResult? Function()? reset,
  }) {
    return removeFromCart?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeModel product)? addToCart,
    TResult Function(int index)? removeFromCart,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_Reset value) reset,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_Reset value)? reset,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromCart implements CartEvent {
  const factory _RemoveFromCart({required final int index}) =
      _$RemoveFromCartImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$RemoveFromCartImplCopyWith<_$RemoveFromCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'CartEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeModel product) addToCart,
    required TResult Function(int index) removeFromCart,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeModel product)? addToCart,
    TResult? Function(int index)? removeFromCart,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeModel product)? addToCart,
    TResult Function(int index)? removeFromCart,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements CartEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$CartState {
  List<HomeModel> get newList => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  bool get isAdded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({List<HomeModel> newList, int total, bool isAdded});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newList = null,
    Object? total = null,
    Object? isAdded = null,
  }) {
    return _then(_value.copyWith(
      newList: null == newList
          ? _value.newList
          : newList // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HomeModel> newList, int total, bool isAdded});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newList = null,
    Object? total = null,
    Object? isAdded = null,
  }) {
    return _then(_$CartStateImpl(
      newList: null == newList
          ? _value._newList
          : newList // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl(
      {required final List<HomeModel> newList,
      required this.total,
      required this.isAdded})
      : _newList = newList;

  final List<HomeModel> _newList;
  @override
  List<HomeModel> get newList {
    if (_newList is EqualUnmodifiableListView) return _newList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newList);
  }

  @override
  final int total;
  @override
  final bool isAdded;

  @override
  String toString() {
    return 'CartState(newList: $newList, total: $total, isAdded: $isAdded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            const DeepCollectionEquality().equals(other._newList, _newList) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.isAdded, isAdded) || other.isAdded == isAdded));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_newList), total, isAdded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {required final List<HomeModel> newList,
      required final int total,
      required final bool isAdded}) = _$CartStateImpl;

  @override
  List<HomeModel> get newList;
  @override
  int get total;
  @override
  bool get isAdded;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
