import 'package:bloc/bloc.dart';
import 'package:flt_proj/app/routes/home/models/home.model.dart';
import 'package:equatable/equatable.dart';
import 'package:flt_proj/services/mock_services.dart';

part 'home_state.dart';
part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeSourceEvent>(onFetchHomeDataSource);
  }

  Future<void> onFetchHomeDataSource(
      HomeSourceEvent event, Emitter<HomeState> emit) async {
    try {
      MusicWrap? wrap = await MockServices.getHomeDataSource();
      ExternalBanner? banner = await MockServices.getDJBanner();

      return emit(state.copyWith(
          bannerList: banner.data, musicItem: wrap.data?.blocks?[1]));
    } on Exception catch (ext) {
      print('exc>>>>>$ext');
    }
  }
}
