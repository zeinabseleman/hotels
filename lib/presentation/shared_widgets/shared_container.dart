import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class SharedContainer extends StatelessWidget {
final Widget child;

  const SharedContainer({super.key,
required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 15.w,top: 10.h,end: 15.w,bottom: 15.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: white
      ),
      child: child
    );
  }
}
