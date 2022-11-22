import 'package:bloc/bloc.dart';

abstract class SearchEvent {}


class SearchBloc extends Bloc<SearchEvent, int> {
  SearchBloc(): super(0);
}