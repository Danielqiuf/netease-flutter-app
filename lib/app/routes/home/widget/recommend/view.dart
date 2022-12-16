import 'package:flt_proj/app/routes/home/bloc/home_bloc.dart';
import 'package:flt_proj/app/routes/home/widget/recommend/ritem.dart';
import 'package:flt_proj/app/theme/my_colors.dart';
import 'package:flt_proj/app/widgets/refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RecommendView extends StatefulWidget {
  const RecommendView({super.key});

  @override
  RecommendViewState createState() => RecommendViewState();
}

class RecommendViewState extends State<RecommendView> {
  HomeBloc? homeBloc;

  @override
  void initState() {
    super.initState();
    homeBloc = BlocProvider.of<HomeBloc>(context);
    super.didChangeDependencies();
  }

  Widget _buildTitleContainer(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('推荐歌单',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.bold,
                color: ColorThemes.colorWhite,
                fontSize: 20)),
      ],
    );
  }

  Widget _buildRightContainer(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 4),
        decoration: BoxDecoration(
            border: Border.all(color: ColorThemes.divider),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('更多',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: const Color(0xFF999999))),
            const Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Color(0xFF999999),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    print('_buildFooter>>');
    return CustomFooter(
      height: 30,
      builder: (BuildContext context, LoadStatus? mode) {
        Widget body = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.arrow_back_ios,
              size: 13,
            ),
            SizedBox(
              width: 8,
              child: Text('左滑更多',
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
            )
          ],
        );

        return Container(
          height: 55.0,
          width: 100,
          margin: const EdgeInsets.only(left: 10),
          padding: const EdgeInsets.only(left: 30),
          decoration: const BoxDecoration(
              color: ColorThemes.divider,
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          child: body,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    double itemSie = (size - 70) / 3.0;

    return BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: ((context, state) {
          return Container(
            padding: const EdgeInsets.only(bottom: 20),
            margin: const EdgeInsets.only(bottom: 20),
            color: ColorThemes.colorBlack,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 20, bottom: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildTitleContainer(context),
                        _buildRightContainer(context)
                      ]),
                ),
                if (state.musicItem?.creatives != null &&
                    state.musicItem?.creatives?.isNotEmpty == true)
                  SizedBox(
                    width: size,
                    height: itemSie + 45,
                    child: RefreshIndicatorWidget(
                      controller: state.musicItem!.controller,
                      onLoading: () {
                        print('onLoading');
                        Future.delayed(const Duration(seconds: 3), () {
                          state.musicItem!.controller.loadComplete();
                        });
                      },
                      footer: _buildFooter(),
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: state.musicItem!.creatives!.map((e) {
                            return Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: RItemView(item: e, size: itemSie));
                          }).toList(),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          );
        }));
  }

  @override
  void dispose() {
    super.dispose();
    homeBloc!.close();
  }
}
