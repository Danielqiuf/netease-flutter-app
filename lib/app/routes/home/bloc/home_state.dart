part of 'home_bloc.dart';


class HomeState extends Equatable {
  const HomeState._({
    required this.bannerList,
    this.count = 0
  });

  const HomeState.initialBanner(): this._(bannerList: const []);

  const HomeState.changeBanner(
    List<ExternalBannerItem>? list
  ): this._(bannerList: list ?? const []);

  final List<ExternalBannerItem> bannerList;

  final int count;

  @override
  List<Object> get props => [bannerList, count];
}