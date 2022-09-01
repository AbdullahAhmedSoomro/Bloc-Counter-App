import 'package:bloc/bloc.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<OnIncrementCounter>((event, emit) {
      emit(state.copyWith(count: state.count + 1));
    });

    on<OnDecrementCounter>((event, emit) {
      emit(state.copyWith(count: state.count - 1));
    });
  }
}
