import 'package:flt_proj/app/routes/home/home.dart';
import 'package:flt_proj/app/routes/home/widget/banner/pagination.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flt_proj/app/routes/home/models/home.model.dart';
import 'package:provider/provider.dart';

class BannerView extends StatefulWidget {
  const BannerView({ Key? key }): super(key: key);

  @override
  BannerViewState createState() => BannerViewState();
}

class BannerViewState extends State<BannerView> {

  void _delayDataBuilder() {
    Future.delayed(Duration.zero).then((value) async {
      context.read<HomeBloc>().add(
        const ExternalBannerEvent()
      );
    });
  }

  @override
  void initState() {
    super.initState();
    _delayDataBuilder();
  }

  Widget _buildBannerItem(
    BuildContext context, 
    int index, 
    List<ExternalBannerItem> list
  ) {
    final ExternalBannerItem bannerItem = list[index];
    final double size = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4.0))
          ),
          child: Image.network(bannerItem.pic!, fit: BoxFit.fill, width: size),
        ),
        Positioned(bottom: 0, right: 0, child: Container(
          padding: const EdgeInsets.only(left: 7, right: 7, top: 3, bottom: 3),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0)
            ),
            color: bannerItem.bgColor()),
          child: Text(
            bannerItem.typeTitle ?? '',
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: const Color(0xFFdddddd),
              fontSize: 12
            ),
          ),  
        ))
      ]),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    final bannerList = context.select((HomeBloc bloc) => bloc.state.bannerList);

    final int itemCount = bannerList.length;
    final List<Widget> paginationList = [];
    for (int i = 0; i < itemCount; i++) {
      paginationList.add(Container(
        key: Key('pagination_$i'),
        margin: const EdgeInsets.only(top: 3.0, bottom: 6.0, left: 3.0, right: 3.0),
        child: Container(
            color: const Color(0xFF333333),
            width: 6.0,
            height: 3.0
          )
      ));
    }
   
    return Container(
      width: double.infinity,
      height: 160,
      color: Colors.transparent,
      child: Swiper(
        loop: true,
        autoplay: !!(itemCount != 1),
        index: 0,
        itemCount: itemCount,
        itemBuilder: ((context, index) => _buildBannerItem(context, index, bannerList)),
        pagination: const RectPagination()
      ),
    );
  }
}