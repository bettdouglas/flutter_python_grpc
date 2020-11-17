import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_states.freezed.dart';

@freezed
abstract class DataState<T> with _$DataState<T> {
  const factory DataState.initial() = DataInitial;
  const factory DataState.loading() = DataLoading;
  const factory DataState.ready(T data) = DataReady;
  const factory DataState.error(String message,StackTrace stackTrace) = DataError;
}