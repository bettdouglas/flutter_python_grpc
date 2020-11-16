import 'package:chuck_api/chuck_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_states.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState.initial() = AppInitial;
  const factory AppState.loading() = AppLoading;
  const factory AppState.ready(List<String> categories,Joke joke) = AppReady;
  const factory AppState.error(String message) = AppError;
}

@freezed
abstract class DataState<T> with _$DataState<T> {
  const factory DataState.initial() = DataInitial;
  const factory DataState.loading() = DataLoading;
  const factory DataState.ready(T data) = DataReady;
  const factory DataState.error(String message,StackTrace stackTrace) = DataError;
}