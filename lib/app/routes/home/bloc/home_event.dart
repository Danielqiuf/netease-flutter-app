part of 'home_bloc.dart';

abstract class HomeEvent {
  const HomeEvent();
}

class ExternalBannerEvent extends HomeEvent {
  const ExternalBannerEvent();
}