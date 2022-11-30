part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({this.bannerList = const [], this.musicItem, this.count = 0});

  final List<ExternalBannerItem> bannerList;

  final int count;

  final MusicItem? musicItem;

  HomeState copyWith(
      {List<ExternalBannerItem>? bannerList,
      int? count,
      MusicItem? musicItem}) {
    return HomeState(
        bannerList: bannerList ?? this.bannerList,
        count: count ?? this.count,
        musicItem: musicItem ?? this.musicItem);
  }

  @override
  String toString() {
    return '''PostState { count: $count, bannerList: $bannerList, musicItem: $musicItem }''';
  }

  @override
  List<Object> get props => [bannerList, count];
}
