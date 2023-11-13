import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelstask/constants/app_colors.dart';
import 'dropdown_item.dart';

class Dropdown extends StatefulWidget {
  final List data;
  final bool enabled;
  final dynamic selectedItem;
  final Function(dynamic)? onChanged;
  final String hint;
  const Dropdown(
      {required this.data,
      required this.selectedItem,
      required this.onChanged,
      required this.hint,
      this.enabled = true,
      Key? key})
      : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: white,
        borderRadius: BorderRadius.circular(15)
      ),

      child: DropdownSearch<dynamic>(
        enabled: widget.enabled,
        popupProps: PopupProps.menu(
          showSelectedItems: false,
          itemBuilder: (context, item, bool isSelected) {
            return DropDownItem(
              name: item.name.toString(),
            );
          },
        ),
        dropdownDecoratorProps: DropDownDecoratorProps(
          textAlignVertical: TextAlignVertical.top,
          baseStyle:  const TextStyle(color: primaryColor),
          dropdownSearchDecoration: InputDecoration(
              contentPadding: EdgeInsetsDirectional.only(start: 20.w, top: 20.h),
              hintText: widget.hint,
              hintStyle: const TextStyle(color: primaryColor),
              border: const OutlineInputBorder(
                  borderSide:  BorderSide.none
              ),
              isDense: true,
              isCollapsed: true),
        ),
        items: widget.data,
        selectedItem: widget.selectedItem,
        itemAsString: (u) => u.name.toString(),
        onChanged: widget.onChanged,
        autoValidateMode: AutovalidateMode.onUserInteraction,
        validator: (v) {
          return widget.selectedItem == null ? "choose" : null;
        },
        filterFn: (instance, filter) {
          if (((instance.name ?? "").toLowerCase())
              .contains(filter.toLowerCase())) {
            return true;
          } else {
            return false;
          }
        },
      ),
    );
  }
}
