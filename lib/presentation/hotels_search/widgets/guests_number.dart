import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared_widgets/age_item.dart';
import '../../shared_widgets/numbers_item.dart';
import '../../shared_widgets/shared_container.dart';
import '../../shared_widgets/text_widget.dart';

class GuestsNumber extends StatefulWidget {
  int adultNumber;
  int childrenNumber;
  GuestsNumber({super.key, required this.adultNumber,required this.childrenNumber});


  @override
  State<GuestsNumber> createState() => _GuestsNumberState();
}

class _GuestsNumberState extends State<GuestsNumber> {
  @override
  Widget build(BuildContext context) {
    return SharedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget('ROOM 1'),
          SizedBox(height: 20.h,),
          NumbersItem(
            title: 'Adults',
            number: widget.adultNumber,
            add: (){setState(() {
              widget.adultNumber++;
            });},
            remove: (){setState(() {
              widget.adultNumber--;
            });},

          ),
          SizedBox(height: 20.h,),
          NumbersItem(
            title: 'Children',
            number: widget.childrenNumber,
            add: (){setState(() {
              widget.childrenNumber++;
            });},
            remove: (){setState(() {
              widget.childrenNumber--;
            });},

          ),
          SizedBox(height: 20.h,),

          const AgeItem(title: 'Age of child 1',age: '14years'),
          SizedBox(height: 20.h,),
          const AgeItem(title: 'Age of child 1',age: '14years'),

        ],
      ),
    );
  }
}
