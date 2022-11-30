import 'package:flt_proj/app/routes/home/home.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class RectPagination extends SwiperPlugin {
  const RectPagination();

  Widget _builder(
      BuildContext context, SwiperPluginConfig config, HomeState state) {
    final bannerList = state.bannerList;
    final List<Widget> paginationList = [];
    final itemCount = bannerList.length;

    for (int i = 0; i < itemCount; i++) {
      final active = config.activeIndex == i;
      paginationList.add(Container(
          key: Key('pagination_$i'),
          margin: const EdgeInsets.only(
              top: 3.0, bottom: 6.0, left: 3.0, right: 3.0),
          child: Container(
              color: active ? const Color(0xFFdddddd) : const Color(0xFF333333),
              width: 6.0,
              height: 3.0)));
    }

    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: paginationList,
      ),
    );
  }

  @override
  Widget build(BuildContext context, SwiperPluginConfig config) {
    return BlocBuilder<HomeBloc, HomeState>(builder: ((context, state) {
      return _builder(context, config, state);
    }));
  }
}
