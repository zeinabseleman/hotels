import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../constants/app_colors.dart';
import '../../shared_widgets/text_widget.dart';

class DateContainer extends StatelessWidget {
final Function()? onTap;
final DateTime startDate;
final DateTime endDate;

  const DateContainer({super.key, this.onTap, required this.startDate, required this.endDate});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(7),
        decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Container(
          decoration:  BoxDecoration(
              color: white,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              border: Border.all(color: primaryColor)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 10.w,),
              TextWidget(
                '${DateFormat('yyyy-MM-dd').format(startDate)} ==> ${DateFormat('yyyy-MM-dd').format(endDate)}',
                color: primaryColor,
              ),
              const Icon(Icons.close,color: bottomSheetColor,),
            ],
          ),
        ),
      ),
    );
  }
}
