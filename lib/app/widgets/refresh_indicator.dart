import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RefreshIndicatorWidget extends StatelessWidget {
  final Widget? child;
  final Widget? header;
  final Widget? footer;

  final bool enablePullUp;
  final bool enablePullDown;
  final VoidCallback? onRefresh;
  final VoidCallback? onLoading;
  final RefreshController? controller;
  final Axis? scrollDirection;

  const RefreshIndicatorWidget(
      {super.key,
      required this.controller,
      this.child,
      this.header,
      this.footer,
      this.enablePullDown = false,
      this.enablePullUp = true,
      this.onRefresh,
      this.onLoading,
      this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: enablePullDown,
      enablePullUp: enablePullUp,
      controller: controller!,
      onRefresh: onRefresh,
      onLoading: onLoading,
      child: child,
      scrollDirection: scrollDirection,
      header: header ?? const WaterDropHeader(),
      footer: footer ??
          CustomFooter(builder: ((context, mode) {
            final Widget body;
            if (mode == LoadStatus.idle) {
              body = Text('上拉一下，发现新天地哦',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: Theme.of(context).hintColor));
            } else if (mode == LoadStatus.loading) {
              body = Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  CupertinoActivityIndicator(),
                  Text('等待有才期待')
                ],
              );
            } else if (mode == LoadStatus.failed) {
              body = Text(
                '失败是成功之母，再试一次吧！',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Theme.of(context).hintColor),
              );
            } else if (mode == LoadStatus.canLoading) {
              body = Text(
                '放手才会得到更多哦~',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Theme.of(context).hintColor),
              );
            } else {
              body = Text(
                '我是有底线的哦~',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Theme.of(context).hintColor),
              );
            }
            return Container(
              height: 55.0,
              child: Center(child: body),
            );
          })),
    );
  }
}
