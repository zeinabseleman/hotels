import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_colors.dart';
import '../../shared_widgets/shared_container.dart';
import '../../shared_widgets/text_widget.dart';

class PetFriendly extends StatefulWidget {
  bool isSwitched;
  PetFriendly({super.key, required this.isSwitched});

  @override
  State<PetFriendly> createState() => _PetFriendlyState();
}

class _PetFriendlyState extends State<PetFriendly> {

  @override
  Widget build(BuildContext context) {
    return SharedContainer(
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                'Pet-friendly',fontSize: 15.sp,
              ),
              SizedBox(height: 7.h,),
              TextWidget(
                'Only show stays that allow pets',fontSize: 12.sp,
                color: bottomSheetColor,
              ),
            ],
          ),
          Switch(
            value: widget.isSwitched,
            onChanged: (value) {
              setState(() {
                widget.isSwitched = value;
              });
            },
            activeTrackColor: primaryColor,
            activeColor: white,
          ),
        ],
      ),
    );
  }
}
