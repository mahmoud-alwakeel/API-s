import 'package:apis/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_results.freezed.dart';

@freezed
class ApiResults<T> with _$ApiResults<T> {
  const factory ApiResults.success(T data) = Success<T>;

  const factory ApiResults.failure(NetworkExceptions networkExceptions) = Failure<T>;
}