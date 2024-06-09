part of 'passdata_bloc.dart';

@immutable
abstract class PassdataEvent {
  const PassdataEvent();

  @override
  List<Object> get props => [];
}

class Getfirebasedata extends PassdataEvent {
  final String key;
  Getfirebasedata(this.key);
  @override
  List<Object> get props => [key];
}
