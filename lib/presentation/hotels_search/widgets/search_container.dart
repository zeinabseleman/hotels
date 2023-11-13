import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelstask/constants/app_colors.dart';


class SearchContainer extends StatelessWidget {
final Widget form;
final Widget search;
  const SearchContainer({super.key, required this.form,required this.search});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsetsDirectional.only(start: 16.w,end: 16.w,
            top: 300.h,bottom: 130.h),
        decoration: const BoxDecoration(
          color: orange,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 5.h),
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        primaryColor,
                        Colors.lightBlueAccent
                      ]),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                 ),
              child: form

            ),
            search

          ],
        ),
      ),
    );
  }
}
