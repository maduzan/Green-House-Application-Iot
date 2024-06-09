part of 'humidity_bloc.dart';

@immutable
sealed class HumidityState {}

final class HumidityInitial extends HumidityState {}

class LoardHumidity extends HumidityState {
  final String humidity;
  LoardHumidity(this.humidity);
}

class ErrorHandleState extends HumidityState {
  final String err;

  ErrorHandleState(this.err);
}
