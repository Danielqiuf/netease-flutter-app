import 'package:bloc/bloc.dart';
import 'package:flt_proj/app/routes/home/models/home.model.dart';
import 'package:equatable/equatable.dart';
import 'package:flt_proj/services/mock_services.dart';

part 'home_state.dart';
part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(): super(const HomeState.initialBanner()) {
    on<ExternalBannerEvent>(onFetchBannerList);
  }

  
  void onFetchBannerList(
    ExternalBannerEvent event, 
    Emitter<HomeState> emit
  ) async {
    print('fetchbanner>>>');
    try {
      ExternalBanner banner = await MockServices.getDJBanner();
      print('bannerReturn>>>${banner.data}');
      emit(HomeState.changeBanner(
        banner.data
      ));
    } on Exception catch(ext) {
      print('exception>>>>$ext');
    }
  }
}