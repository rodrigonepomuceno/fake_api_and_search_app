import 'package:flutter/material.dart';
import 'package:news_app/app/core/theme/app_theme.dart';

class SearchBar extends StatefulWidget {
  final void Function(String)? onChanged;
  final String? hintText;
  final Function? onTapClose;
  final EdgeInsets margin;
  final ValueChanged<bool>? onChangeFocus;
  final TextEditingController textEditingController;
  const SearchBar({
    Key? key,
    required this.margin,
    this.onChanged,
    this.hintText,
    this.onTapClose,
    this.onChangeFocus,
    required this.textEditingController,
  }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  var textFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    textFocus.addListener(() {
      setState(() {});
      if (widget.onChangeFocus != null) widget.onChangeFocus!(textFocus.hasFocus);
    });
  }

  @override
  void dispose() {
    super.dispose();
    textFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: widget.margin,
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: AppThemes.instance.colors.whiteDefault,
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        border: Border.all(
          color: textFocus.hasFocus || widget.textEditingController.text.isNotEmpty ? AppThemes.instance.colors.blueDefault : AppThemes.instance.colors.grey3,
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 4, 0, 4),
        child: TextField(
          style: AppThemes.instance.fontStyles.bodyMedium,
          controller: widget.textEditingController,
          focusNode: textFocus,
          onChanged: (value) {
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
          },
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: AppThemes.instance.fontStyles.bodySmallMedium.copyWith(color: AppThemes.instance.colors.grey2),
            border: InputBorder.none,
            isDense: true,
            suffixIcon: !textFocus.hasFocus && widget.textEditingController.text.isEmpty
                ? Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(
                      Icons.search,
                      color: AppThemes.instance.colors.grey2,
                      size: 20,
                    ),
                  )
                : widget.textEditingController.text.isEmpty
                    ? InkWell(
                        onTap: () {
                          widget.textEditingController.text = '';
                          textFocus.unfocus();
                          widget.onTapClose!();
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 6, bottom: 6, right: 16),
                          child: Icon(
                            Icons.close,
                            color: AppThemes.instance.colors.grey2,
                            size: 20,
                          ),
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          widget.textEditingController.text = '';
                          widget.onChanged!('');
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 3, bottom: 3, right: 16),
                          child: Icon(
                            Icons.arrow_back,
                            color: AppThemes.instance.colors.grey2,
                            size: 20,
                          ),
                        ),
                      ),
            suffixIconConstraints: const BoxConstraints(),
          ),
        ),
      ),
    );
  }
}
