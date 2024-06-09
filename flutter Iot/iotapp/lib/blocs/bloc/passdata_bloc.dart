import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:firebase_database/firebase_database.dart';

part 'passdata_event.dart';
part 'passdata_state.dart';

class PassdataBloc extends Bloc<PassdataEvent, PassdataState> {
  final _database = FirebaseDatabase.instance.ref();

  PassdataBloc() : super(PassdataInitial()) {
    on<Getfirebasedata>(_onGetFirebaseData);
  }

  Future<void> _onGetFirebaseData(
      Getfirebasedata event, Emitter<PassdataState> emit) async {
    emit(PassdataInitial());
    try {
      final DataSnapshot snapshot = await _database.child(event.key).get();
      if (snapshot.exists) {
        final data = snapshot.value.toString();
        emit(DataLoadedState(data));
      } else {
        emit(ErrorState('No data found for the provided key.'));
      }
    } catch (e) {
      emit(ErrorState('Failed to fetch data from Firebase: $e'));
    }
  }
}
