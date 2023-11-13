import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelstask/constants/app_colors.dart';
import 'package:hotelstask/presentation/shared_widgets/text_widget.dart';

import 'btn_wiget.dart';

class NumbersItem extends StatelessWidget {
final String title;
final int number;
final Function() add;
final Function() remove;

  const NumbersItem({super.key,
required this.title,
required this.number,required this.add,required this.remove});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
          title,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            number!=1 ?BtnWidget(
              width: 35.w,
              height: 35.h,
              txt: '',
              radius: 15,
              borderColor: primaryColor,
              onClicked: remove,
              colorBtn: Colors.transparent,
              child: const Icon(Icons.remove,color: primaryColor,),
            ):BtnWidget(
              width: 35.w,
              height: 35.h,
              txt: '',
              radius: 15,
              borderColor: primaryColor.withOpacity(0.2),
              onClicked: (){},
              colorBtn: Colors.transparent,
              child:  Icon(Icons.remove,color: primaryColor.withOpacity(0.2),),
            ),
            SizedBox(width: 10.w,),
            TextWidget(number.toString()),
            SizedBox(width: 10.w,),
            number!=4 ?BtnWidget(
              width: 35.w,
              height: 35.h,
              txt: '',
              radius: 15,
              borderColor: primaryColor,
              onClicked: add,
              colorBtn: Colors.transparent,
              child: const Icon(Icons.add,color: primaryColor,),
            ):BtnWidget(
              width: 35.w,
              height: 35.h,
              txt: '',
              radius: 15,
              borderColor: primaryColor.withOpacity(0.2),
              onClicked: (){},
              colorBtn: Colors.transparent,
              child:  Icon(Icons.add,color: primaryColor.withOpacity(0.2),),
            )
          ],
        )
      ],

    );
  }
}
