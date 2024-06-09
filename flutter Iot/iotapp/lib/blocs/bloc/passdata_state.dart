part of 'passdata_bloc.dart';

@immutable
abstract class PassdataState {}

final class PassdataInitial extends PassdataState {}

class DataLoadedState extends PassdataState {
  final String data;

  DataLoadedState(this.data);
}

class ErrorState extends PassdataState {
  final String error;

  ErrorState(this.error);
}
