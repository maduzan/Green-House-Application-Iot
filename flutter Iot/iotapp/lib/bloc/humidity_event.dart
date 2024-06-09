part of 'humidity_bloc.dart';

@immutable
abstract class HumidityEvent {
  HumidityEvent();

  @override
  List<Object> get props => [];
}

class GetfirebaseHumidity extends HumidityEvent {
  final String keyy;
  GetfirebaseHumidity(this.keyy);
  @override
  List<Object> get props => [keyy];
}
