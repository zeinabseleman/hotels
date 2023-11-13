import 'package:flutter/material.dart';
import 'package:hotelstask/presentation/shared_widgets/text_widget.dart';

class AgeItem extends StatelessWidget {
final String title;
final String age;

  const AgeItem({super.key, required this.title, required this.age});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(title),
        TextWidget(age),
      ],
    );
  }
}
