// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DataStateTearOff {
  const _$DataStateTearOff();

// ignore: unused_element
  DataInitial<T> initial<T>() {
    return DataInitial<T>();
  }

// ignore: unused_element
  DataLoading<T> loading<T>() {
    return DataLoading<T>();
  }

// ignore: unused_element
  DataReady<T> ready<T>(T data) {
    return DataReady<T>(
      data,
    );
  }

// ignore: unused_element
  DataError<T> error<T>(String message, StackTrace stackTrace) {
    return DataError<T>(
      message,
      stackTrace,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DataState = _$DataStateTearOff();

/// @nodoc
mixin _$DataState<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result ready(T data),
    @required Result error(String message, StackTrace stackTrace),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result ready(T data),
    Result error(String message, StackTrace stackTrace),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(DataInitial<T> value),
    @required Result loading(DataLoading<T> value),
    @required Result ready(DataReady<T> value),
    @required Result error(DataError<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(DataInitial<T> value),
    Result loading(DataLoading<T> value),
    Result ready(DataReady<T> value),
    Result error(DataError<T> value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $DataStateCopyWith<T, $Res> {
  factory $DataStateCopyWith(
          DataState<T> value, $Res Function(DataState<T>) then) =
      _$DataStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DataStateCopyWithImpl<T, $Res> implements $DataStateCopyWith<T, $Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  final DataState<T> _value;
  // ignore: unused_field
  final $Res Function(DataState<T>) _then;
}

/// @nodoc
abstract class $DataInitialCopyWith<T, $Res> {
  factory $DataInitialCopyWith(
          DataInitial<T> value, $Res Function(DataInitial<T>) then) =
      _$DataInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DataInitialCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res>
    implements $DataInitialCopyWith<T, $Res> {
  _$DataInitialCopyWithImpl(
      DataInitial<T> _value, $Res Function(DataInitial<T>) _then)
      : super(_value, (v) => _then(v as DataInitial<T>));

  @override
  DataInitial<T> get _value => super._value as DataInitial<T>;
}

/// @nodoc
class _$DataInitial<T> implements DataInitial<T> {
  const _$DataInitial();

  @override
  String toString() {
    return 'DataState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result ready(T data),
    @required Result error(String message, StackTrace stackTrace),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result ready(T data),
    Result error(String message, StackTrace stackTrace),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(DataInitial<T> value),
    @required Result loading(DataLoading<T> value),
    @required Result ready(DataReady<T> value),
    @required Result error(DataError<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(DataInitial<T> value),
    Result loading(DataLoading<T> value),
    Result ready(DataReady<T> value),
    Result error(DataError<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DataInitial<T> implements DataState<T> {
  const factory DataInitial() = _$DataInitial<T>;
}

/// @nodoc
abstract class $DataLoadingCopyWith<T, $Res> {
  factory $DataLoadingCopyWith(
          DataLoading<T> value, $Res Function(DataLoading<T>) then) =
      _$DataLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DataLoadingCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res>
    implements $DataLoadingCopyWith<T, $Res> {
  _$DataLoadingCopyWithImpl(
      DataLoading<T> _value, $Res Function(DataLoading<T>) _then)
      : super(_value, (v) => _then(v as DataLoading<T>));

  @override
  DataLoading<T> get _value => super._value as DataLoading<T>;
}

/// @nodoc
class _$DataLoading<T> implements DataLoading<T> {
  const _$DataLoading();

  @override
  String toString() {
    return 'DataState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result ready(T data),
    @required Result error(String message, StackTrace stackTrace),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result ready(T data),
    Result error(String message, StackTrace stackTrace),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(DataInitial<T> value),
    @required Result loading(DataLoading<T> value),
    @required Result ready(DataReady<T> value),
    @required Result error(DataError<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(DataInitial<T> value),
    Result loading(DataLoading<T> value),
    Result ready(DataReady<T> value),
    Result error(DataError<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DataLoading<T> implements DataState<T> {
  const factory DataLoading() = _$DataLoading<T>;
}

/// @nodoc
abstract class $DataReadyCopyWith<T, $Res> {
  factory $DataReadyCopyWith(
          DataReady<T> value, $Res Function(DataReady<T>) then) =
      _$DataReadyCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$DataReadyCopyWithImpl<T, $Res> extends _$DataStateCopyWithImpl<T, $Res>
    implements $DataReadyCopyWith<T, $Res> {
  _$DataReadyCopyWithImpl(
      DataReady<T> _value, $Res Function(DataReady<T>) _then)
      : super(_value, (v) => _then(v as DataReady<T>));

  @override
  DataReady<T> get _value => super._value as DataReady<T>;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(DataReady<T>(
      data == freezed ? _value.data : data as T,
    ));
  }
}

/// @nodoc
class _$DataReady<T> implements DataReady<T> {
  const _$DataReady(this.data) : assert(data != null);

  @override
  final T data;

  @override
  String toString() {
    return 'DataState<$T>.ready(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataReady<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $DataReadyCopyWith<T, DataReady<T>> get copyWith =>
      _$DataReadyCopyWithImpl<T, DataReady<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result ready(T data),
    @required Result error(String message, StackTrace stackTrace),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(error != null);
    return ready(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result ready(T data),
    Result error(String message, StackTrace stackTrace),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(DataInitial<T> value),
    @required Result loading(DataLoading<T> value),
    @required Result ready(DataReady<T> value),
    @required Result error(DataError<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(error != null);
    return ready(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(DataInitial<T> value),
    Result loading(DataLoading<T> value),
    Result ready(DataReady<T> value),
    Result error(DataError<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class DataReady<T> implements DataState<T> {
  const factory DataReady(T data) = _$DataReady<T>;

  T get data;
  $DataReadyCopyWith<T, DataReady<T>> get copyWith;
}

/// @nodoc
abstract class $DataErrorCopyWith<T, $Res> {
  factory $DataErrorCopyWith(
          DataError<T> value, $Res Function(DataError<T>) then) =
      _$DataErrorCopyWithImpl<T, $Res>;
  $Res call({String message, StackTrace stackTrace});
}

/// @nodoc
class _$DataErrorCopyWithImpl<T, $Res> extends _$DataStateCopyWithImpl<T, $Res>
    implements $DataErrorCopyWith<T, $Res> {
  _$DataErrorCopyWithImpl(
      DataError<T> _value, $Res Function(DataError<T>) _then)
      : super(_value, (v) => _then(v as DataError<T>));

  @override
  DataError<T> get _value => super._value as DataError<T>;

  @override
  $Res call({
    Object message = freezed,
    Object stackTrace = freezed,
  }) {
    return _then(DataError<T>(
      message == freezed ? _value.message : message as String,
      stackTrace == freezed ? _value.stackTrace : stackTrace as StackTrace,
    ));
  }
}

/// @nodoc
class _$DataError<T> implements DataError<T> {
  const _$DataError(this.message, this.stackTrace)
      : assert(message != null),
        assert(stackTrace != null);

  @override
  final String message;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'DataState<$T>.error(message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataError<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(stackTrace);

  @override
  $DataErrorCopyWith<T, DataError<T>> get copyWith =>
      _$DataErrorCopyWithImpl<T, DataError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result ready(T data),
    @required Result error(String message, StackTrace stackTrace),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(error != null);
    return error(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result ready(T data),
    Result error(String message, StackTrace stackTrace),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(DataInitial<T> value),
    @required Result loading(DataLoading<T> value),
    @required Result ready(DataReady<T> value),
    @required Result error(DataError<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(DataInitial<T> value),
    Result loading(DataLoading<T> value),
    Result ready(DataReady<T> value),
    Result error(DataError<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DataError<T> implements DataState<T> {
  const factory DataError(String message, StackTrace stackTrace) =
      _$DataError<T>;

  String get message;
  StackTrace get stackTrace;
  $DataErrorCopyWith<T, DataError<T>> get copyWith;
}
