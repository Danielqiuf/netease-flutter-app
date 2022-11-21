import 'package:flt_proj/app/theme/my_colors.dart';
import 'package:flutter/material.dart';

class SearchFieldsWidget extends StatefulWidget {
  final String? hitText;
  final String? text;

  final Function(String)? onSubmit;

  const SearchFieldsWidget({Key? key, this.hitText, this.onSubmit, this.text})
      : super(key: key);

  @override
  State<SearchFieldsWidget> createState() => _SearchFieldsWidgetState();
}

class _SearchFieldsWidgetState extends State<SearchFieldsWidget> {
  TextEditingController textEditingController = TextEditingController();
  bool autoFocus = false;

  @override
  void initState() {
    super.initState();
    if (widget.text != null) {
      textEditingController = TextEditingController(text: widget.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 40, maxHeight: 40),
      decoration: BoxDecoration(
          color: ColorThemes.divider,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20.0)),
      child: TextField(
          enabled: true,
          autofocus: autoFocus,
          enableInteractiveSelection: false,
          maxLines: 1,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              hintText: widget.hitText ?? '发现更多精彩',
              hintStyle: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Theme.of(context).hintColor)),
          keyboardType: TextInputType.multiline,
          textInputAction: TextInputAction.search,
          onSubmitted: (String str) {
            print(">>>>>>str:$str");
          },
          controller: textEditingController,
          textCapitalization: TextCapitalization.sentences,
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: ColorThemes.surfaceTextColor, fontSize: 15)),
    );
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }
}
