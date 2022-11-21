import 'package:bloc/bloc.dart';

abstract class HomeEvent {}

class HomeIncrementPressed extends HomeEvent {}

class HomeBloc extends Bloc<HomeEvent, int> {
  HomeBloc(): super(0) {
    on<HomeIncrementPressed>((event, emit) => emit(state + 1));
  }
}