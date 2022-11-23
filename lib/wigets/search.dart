import 'package:flt_proj/app/theme/my_colors.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});
  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  String keyword = '我们的决心永远在一起~';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/search-app', arguments: {
            'title':'我是222'
          });
        },
        child: Container(
          height: 40,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(22)),
              color: ColorThemes.foregoundColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.search),
              Text(keyword,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: ColorThemes.colorWhite))
            ],
          ),
        ));
  }
}
