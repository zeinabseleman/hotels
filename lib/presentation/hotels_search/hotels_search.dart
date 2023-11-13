import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelstask/presentation/hotels_search/widgets/date_container.dart';
import 'package:hotelstask/presentation/hotels_search/widgets/search_button.dart';
import 'package:hotelstask/presentation/hotels_search/widgets/search_container.dart';
import 'package:hotelstask/presentation/shared_widgets/text_widget.dart';
import 'package:intl/intl.dart';
import '../../constants/app_colors.dart';
import '../../core/drop_down_item.dart';
import '../../utils/dialogs_and_popups.dart';
import '../shared_widgets/dropdown_search.dart';
import '../shared_widgets/screen_main_widget.dart';
import '../shared_widgets/text_field.dart';
import 'bottom_sheet_widget.dart';

class HotelsSearch extends StatefulWidget {
  const HotelsSearch({Key? key}) : super(key: key);

  @override
  State<HotelsSearch> createState() => _HotelsSearchState();
}

class _HotelsSearchState extends State<HotelsSearch> {
  TextEditingController cityController = TextEditingController();
  DropDownItem? selectedNationality;
  DropDownItem? selectRoom;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  ScreenMainWidget(
        child: SearchContainer(
          form: Form(
            key: _formKey,
            child: Column(
              children: [
                BoxInputField(
                  errorMessage: '',
                  controller: cityController,
                  placeholder: 'Select City',
                ),
                SizedBox(height: 10.h,),
                DateContainer(
                  startDate: dateRange.start,
                  endDate: dateRange.end,
                  onTap:(){selectDateRange(context);} ,


                ),
                SizedBox(height: 10.h,),
                Dropdown(
                    hint: 'Select Nationality',
                    data: nationality,
                    selectedItem: selectedNationality,
                    onChanged: (v) {
                      setState(() {
                        selectedNationality = v;
                      });
                    }),
                SizedBox(height: 10.h,),
                Dropdown(
                    hint: '1 Room, 2 Adult, 0Children',
                    data: rooms,
                    selectedItem: selectRoom,
                    onChanged: (v) {
                      setState(() {
                        selectRoom = v;
                      });
                    }),
              ],
            ),
          ),
          search:  SearchButton(
            onTap: (){
                DialogsAndPopUp.previewHomeBottomSheet(
                    context: context,
                    child: const BottomSheetWidget(),
                    title: 'Rooms and Guests');

            },
          ),
        )
    );
  }

  DateTimeRange dateRange = DateTimeRange(
      start: DateTime(2023,11,13),
      end: DateTime(2023,11,14),);
  Future<DateTime?> selectDateRange(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
        context: context,
        initialDateRange: dateRange,
        firstDate: DateTime(2023),
        lastDate: DateTime(2050));
    if (picked != null) {
      setState(() {
        dateRange = picked;
      });

    }
  }

}
