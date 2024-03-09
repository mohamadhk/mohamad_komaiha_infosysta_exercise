// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_pagination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasePaginationState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paginationLoading,
    required TResult Function(ErrorModel errorModel) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paginationLoading,
    TResult? Function(ErrorModel errorModel)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paginationLoading,
    TResult Function(ErrorModel errorModel)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_PaginationLoading<T> value) paginationLoading,
    required TResult Function(_Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_PaginationLoading<T> value)? paginationLoading,
    TResult? Function(_Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_PaginationLoading<T> value)? paginationLoading,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasePaginationStateCopyWith<T, $Res> {
  factory $BasePaginationStateCopyWith(BasePaginationState<T> value,
          $Res Function(BasePaginationState<T>) then) =
      _$BasePaginationStateCopyWithImpl<T, $Res, BasePaginationState<T>>;
}

/// @nodoc
class _$BasePaginationStateCopyWithImpl<T, $Res,
        $Val extends BasePaginationState<T>>
    implements $BasePaginationStateCopyWith<T, $Res> {
  _$BasePaginationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataImplCopyWith<T, $Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl<T> value, $Res Function(_$DataImpl<T>) then) =
      __$$DataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$DataImplCopyWithImpl<T, $Res>
    extends _$BasePaginationStateCopyWithImpl<T, $Res, _$DataImpl<T>>
    implements _$$DataImplCopyWith<T, $Res> {
  __$$DataImplCopyWithImpl(
      _$DataImpl<T> _value, $Res Function(_$DataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DataImpl<T> implements _Data<T> {
  const _$DataImpl({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'BasePaginationState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<T, _$DataImpl<T>> get copyWith =>
      __$$DataImplCopyWithImpl<T, _$DataImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paginationLoading,
    required TResult Function(ErrorModel errorModel) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paginationLoading,
    TResult? Function(ErrorModel errorModel)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paginationLoading,
    TResult Function(ErrorModel errorModel)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_PaginationLoading<T> value) paginationLoading,
    required TResult Function(_Error<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_PaginationLoading<T> value)? paginationLoading,
    TResult? Function(_Error<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_PaginationLoading<T> value)? paginationLoading,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data<T> implements BasePaginationState<T> {
  const factory _Data({required final T data}) = _$DataImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<T, _$DataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$BasePaginationStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BasePaginationState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paginationLoading,
    required TResult Function(ErrorModel errorModel) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paginationLoading,
    TResult? Function(ErrorModel errorModel)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paginationLoading,
    TResult Function(ErrorModel errorModel)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_PaginationLoading<T> value) paginationLoading,
    required TResult Function(_Error<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_PaginationLoading<T> value)? paginationLoading,
    TResult? Function(_Error<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_PaginationLoading<T> value)? paginationLoading,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements BasePaginationState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$BasePaginationStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T> implements _Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BasePaginationState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paginationLoading,
    required TResult Function(ErrorModel errorModel) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paginationLoading,
    TResult? Function(ErrorModel errorModel)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paginationLoading,
    TResult Function(ErrorModel errorModel)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_PaginationLoading<T> value) paginationLoading,
    required TResult Function(_Error<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_PaginationLoading<T> value)? paginationLoading,
    TResult? Function(_Error<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_PaginationLoading<T> value)? paginationLoading,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements BasePaginationState<T> {
  const factory _Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$PaginationLoadingImplCopyWith<T, $Res> {
  factory _$$PaginationLoadingImplCopyWith(_$PaginationLoadingImpl<T> value,
          $Res Function(_$PaginationLoadingImpl<T>) then) =
      __$$PaginationLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PaginationLoadingImplCopyWithImpl<T, $Res>
    extends _$BasePaginationStateCopyWithImpl<T, $Res,
        _$PaginationLoadingImpl<T>>
    implements _$$PaginationLoadingImplCopyWith<T, $Res> {
  __$$PaginationLoadingImplCopyWithImpl(_$PaginationLoadingImpl<T> _value,
      $Res Function(_$PaginationLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaginationLoadingImpl<T> implements _PaginationLoading<T> {
  const _$PaginationLoadingImpl();

  @override
  String toString() {
    return 'BasePaginationState<$T>.paginationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paginationLoading,
    required TResult Function(ErrorModel errorModel) error,
  }) {
    return paginationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paginationLoading,
    TResult? Function(ErrorModel errorModel)? error,
  }) {
    return paginationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paginationLoading,
    TResult Function(ErrorModel errorModel)? error,
    required TResult orElse(),
  }) {
    if (paginationLoading != null) {
      return paginationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_PaginationLoading<T> value) paginationLoading,
    required TResult Function(_Error<T> value) error,
  }) {
    return paginationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_PaginationLoading<T> value)? paginationLoading,
    TResult? Function(_Error<T> value)? error,
  }) {
    return paginationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_PaginationLoading<T> value)? paginationLoading,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (paginationLoading != null) {
      return paginationLoading(this);
    }
    return orElse();
  }
}

abstract class _PaginationLoading<T> implements BasePaginationState<T> {
  const factory _PaginationLoading() = _$PaginationLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorModel});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$BasePaginationStateCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorModel = null,
  }) {
    return _then(_$ErrorImpl<T>(
      errorModel: null == errorModel
          ? _value.errorModel
          : errorModel // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> implements _Error<T> {
  const _$ErrorImpl({required this.errorModel});

  @override
  final ErrorModel errorModel;

  @override
  String toString() {
    return 'BasePaginationState<$T>.error(errorModel: $errorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.errorModel, errorModel) ||
                other.errorModel == errorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paginationLoading,
    required TResult Function(ErrorModel errorModel) error,
  }) {
    return error(errorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paginationLoading,
    TResult? Function(ErrorModel errorModel)? error,
  }) {
    return error?.call(errorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paginationLoading,
    TResult Function(ErrorModel errorModel)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_PaginationLoading<T> value) paginationLoading,
    required TResult Function(_Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data<T> value)? data,
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_PaginationLoading<T> value)? paginationLoading,
    TResult? Function(_Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_PaginationLoading<T> value)? paginationLoading,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements BasePaginationState<T> {
  const factory _Error({required final ErrorModel errorModel}) = _$ErrorImpl<T>;

  ErrorModel get errorModel;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
