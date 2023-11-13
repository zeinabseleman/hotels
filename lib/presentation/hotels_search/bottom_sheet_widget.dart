import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelstask/presentation/hotels_search/widgets/guests_number.dart';
import 'package:hotelstask/presentation/hotels_search/widgets/pet_friendly.dart';
import 'package:hotelstask/presentation/hotels_search/widgets/rooms_number.dart';
import 'package:hotelstask/presentation/shared_widgets/text_widget.dart';
import '../../constants/app_colors.dart';
import '../shared_widgets/btn_wiget.dart';
import '../shared_widgets/shared_container.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {

  int roomsNumber=1;
  int adultNumber=4;
  int childrenNumber=2;
  bool isSwitched = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 15.h,horizontal: 17.w),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            RoomsNumber(roomsNumber: roomsNumber,),
            SizedBox(height: 20.h,),
            GuestsNumber(adultNumber: adultNumber,childrenNumber: childrenNumber),
            SizedBox(height: 20.h,),
            PetFriendly(isSwitched: isSwitched),
            SizedBox(height: 100.h,),
            BtnWidget(
                width: double.infinity,
                height: 60.h,
                txt: 'Apply',
                onClicked: () {},
                colorTxt: white,
                colorBtn: primaryColor,
               )
          ],
        ),
      ),
    );
  }
}
