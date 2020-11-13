// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

// ignore: unused_element
  AppInitial initial() {
    return const AppInitial();
  }

// ignore: unused_element
  AppLoading loading() {
    return const AppLoading();
  }

// ignore: unused_element
  AppReady ready(List<String> categories, Joke joke) {
    return AppReady(
      categories,
      joke,
    );
  }

// ignore: unused_element
  AppError error(String message) {
    return AppError(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result ready(List<String> categories, Joke joke),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result ready(List<String> categories, Joke joke),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(AppInitial value),
    @required Result loading(AppLoading value),
    @required Result ready(AppReady value),
    @required Result error(AppError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(AppInitial value),
    Result loading(AppLoading value),
    Result ready(AppReady value),
    Result error(AppError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class $AppInitialCopyWith<$Res> {
  factory $AppInitialCopyWith(
          AppInitial value, $Res Function(AppInitial) then) =
      _$AppInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppInitialCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppInitialCopyWith<$Res> {
  _$AppInitialCopyWithImpl(AppInitial _value, $Res Function(AppInitial) _then)
      : super(_value, (v) => _then(v as AppInitial));

  @override
  AppInitial get _value => super._value as AppInitial;
}

/// @nodoc
class _$AppInitial implements AppInitial {
  const _$AppInitial();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result ready(List<String> categories, Joke joke),
    @required Result error(String message),
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
    Result ready(List<String> categories, Joke joke),
    Result error(String message),
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
    @required Result initial(AppInitial value),
    @required Result loading(AppLoading value),
    @required Result ready(AppReady value),
    @required Result error(AppError value),
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
    Result initial(AppInitial value),
    Result loading(AppLoading value),
    Result ready(AppReady value),
    Result error(AppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AppInitial implements AppState {
  const factory AppInitial() = _$AppInitial;
}

/// @nodoc
abstract class $AppLoadingCopyWith<$Res> {
  factory $AppLoadingCopyWith(
          AppLoading value, $Res Function(AppLoading) then) =
      _$AppLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLoadingCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppLoadingCopyWith<$Res> {
  _$AppLoadingCopyWithImpl(AppLoading _value, $Res Function(AppLoading) _then)
      : super(_value, (v) => _then(v as AppLoading));

  @override
  AppLoading get _value => super._value as AppLoading;
}

/// @nodoc
class _$AppLoading implements AppLoading {
  const _$AppLoading();

  @override
  String toString() {
    return 'AppState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result ready(List<String> categories, Joke joke),
    @required Result error(String message),
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
    Result ready(List<String> categories, Joke joke),
    Result error(String message),
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
    @required Result initial(AppInitial value),
    @required Result loading(AppLoading value),
    @required Result ready(AppReady value),
    @required Result error(AppError value),
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
    Result initial(AppInitial value),
    Result loading(AppLoading value),
    Result ready(AppReady value),
    Result error(AppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AppLoading implements AppState {
  const factory AppLoading() = _$AppLoading;
}

/// @nodoc
abstract class $AppReadyCopyWith<$Res> {
  factory $AppReadyCopyWith(AppReady value, $Res Function(AppReady) then) =
      _$AppReadyCopyWithImpl<$Res>;
  $Res call({List<String> categories, Joke joke});
}

/// @nodoc
class _$AppReadyCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppReadyCopyWith<$Res> {
  _$AppReadyCopyWithImpl(AppReady _value, $Res Function(AppReady) _then)
      : super(_value, (v) => _then(v as AppReady));

  @override
  AppReady get _value => super._value as AppReady;

  @override
  $Res call({
    Object categories = freezed,
    Object joke = freezed,
  }) {
    return _then(AppReady(
      categories == freezed ? _value.categories : categories as List<String>,
      joke == freezed ? _value.joke : joke as Joke,
    ));
  }
}

/// @nodoc
class _$AppReady implements AppReady {
  const _$AppReady(this.categories, this.joke)
      : assert(categories != null),
        assert(joke != null);

  @override
  final List<String> categories;
  @override
  final Joke joke;

  @override
  String toString() {
    return 'AppState.ready(categories: $categories, joke: $joke)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppReady &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.joke, joke) ||
                const DeepCollectionEquality().equals(other.joke, joke)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(joke);

  @override
  $AppReadyCopyWith<AppReady> get copyWith =>
      _$AppReadyCopyWithImpl<AppReady>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result ready(List<String> categories, Joke joke),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(error != null);
    return ready(categories, joke);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result ready(List<String> categories, Joke joke),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(categories, joke);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(AppInitial value),
    @required Result loading(AppLoading value),
    @required Result ready(AppReady value),
    @required Result error(AppError value),
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
    Result initial(AppInitial value),
    Result loading(AppLoading value),
    Result ready(AppReady value),
    Result error(AppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class AppReady implements AppState {
  const factory AppReady(List<String> categories, Joke joke) = _$AppReady;

  List<String> get categories;
  Joke get joke;
  $AppReadyCopyWith<AppReady> get copyWith;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(AppError _value, $Res Function(AppError) _then)
      : super(_value, (v) => _then(v as AppError));

  @override
  AppError get _value => super._value as AppError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(AppError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$AppError implements AppError {
  const _$AppError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'AppState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $AppErrorCopyWith<AppError> get copyWith =>
      _$AppErrorCopyWithImpl<AppError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result ready(List<String> categories, Joke joke),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result ready(List<String> categories, Joke joke),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(AppInitial value),
    @required Result loading(AppLoading value),
    @required Result ready(AppReady value),
    @required Result error(AppError value),
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
    Result initial(AppInitial value),
    Result loading(AppLoading value),
    Result ready(AppReady value),
    Result error(AppError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AppError implements AppState {
  const factory AppError(String message) = _$AppError;

  String get message;
  $AppErrorCopyWith<AppError> get copyWith;
}

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
