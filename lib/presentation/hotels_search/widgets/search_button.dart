import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../utils/dialogs_and_popups.dart';
import '../../shared_widgets/text_widget.dart';
import '../bottom_sheet_widget.dart';

class SearchButton extends StatelessWidget {
final Function()? onTap;

  const SearchButton({super.key, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextWidget('find hotels',color: white,fontSize: 15,),
          SizedBox(width: 15.w,),
          const Icon(Icons.search,size: 40,color: white,),
        ],
      ),
    );
  }
}


