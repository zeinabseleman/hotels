import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_colors.dart';
import '../presentation/shared_widgets/text_widget.dart';

class DialogsAndPopUp {
  const DialogsAndPopUp._();

  static void previewHomeBottomSheet(
      {required BuildContext context,
      required Widget child,
      required String title,
     }) async {
    return showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.r),
          topRight: Radius.circular(12.r),
        ),
      ),
      backgroundColor: bottomSheetColor,
      isScrollControlled: true,
      builder: (ctx) => SizedBox(
        height: MediaQuery.of(context).size.height - kToolbarHeight,
        child: Column(
          children: [
              Container(
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.r),
                      topRight: Radius.circular(12.r),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextWidget(
                      title,
                      fontSize: 17.sp,
                    ),
                    SizedBox(width: 80.w,),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        icon: Icon(
                          Icons.close,
                          size: 20.w,
                        )),
                  ],
                ),
              ),
            Expanded(
              child: SingleChildScrollView(
                child: child,
              ),
            )
          ],
        ),
      ),
    );
  }


}
