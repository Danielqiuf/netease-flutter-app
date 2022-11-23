import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flt_proj/app/routes/home/models/home.model.dart';
import 'package:flt_proj/services/mock_services.dart';
import 'package:flt_proj/models/banner/banner.model.dart';

class BannerView extends StatefulWidget {
  BannerView({ Key? key }): super(key: key);

  @override
  _BannerViewState createState() => _BannerViewState();
}

class _BannerViewState extends State<BannerView> {

  Future<CommonModelBanner> _getBanner() async {
    try {
      CommonModelBanner banner = await MockServices.getDJBanner();
      print('bnanner<>>>>$banner');
      return banner;
    } catch (ext) {
      print(ext);
      rethrow;
    }

  }

  @override
  void initState() {
    super.initState();
    _getBanner();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      child: Swiper(
        loop: true,
        autoplay: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
            // ExternalBanner banner =
          return Text('12321');
        },
      ),
    );
  }
}