import 'package:flutter/material.dart';
import 'package:hotelstask/constants/app_colors.dart';
import 'package:hotelstask/presentation/shared_widgets/text_widget.dart';

class DropDownItem extends StatelessWidget {
  final String name;

  const DropDownItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextWidget(
         name,
        height: 1,
        align: TextAlign.start,
      ),
    );
  }
}
