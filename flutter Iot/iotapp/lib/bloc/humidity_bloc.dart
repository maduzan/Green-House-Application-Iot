import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';

part 'humidity_event.dart';
part 'humidity_state.dart';

class HumidityBloc extends Bloc<HumidityEvent, HumidityState> {
  final _db = FirebaseDatabase.instance.ref();

  HumidityBloc() : super(HumidityInitial()) {
    on<GetfirebaseHumidity>(_GetfirebaseHumidity);
  }

  Future<void> _GetfirebaseHumidity(
      GetfirebaseHumidity event, Emitter<HumidityState> emit) async {
    emit(HumidityInitial());
    try {
      final DataSnapshot snapshot = await _db.child(event.keyy).get();
      if (snapshot.exists) {
        final data = snapshot.value.toString();
        emit(LoardHumidity(data));
      } else {
        emit(ErrorHandleState('No data found for the provided key.'));
      }
    } catch (e) {
      emit(ErrorHandleState('Failed to fetch data from Firebase: $e'));
    }
  }
}
