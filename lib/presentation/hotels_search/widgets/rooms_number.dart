import 'package:flutter/material.dart';

import '../../shared_widgets/numbers_item.dart';
import '../../shared_widgets/shared_container.dart';

class RoomsNumber extends StatefulWidget {
 int roomsNumber;

   RoomsNumber({super.key, required this.roomsNumber});

  @override
  State<RoomsNumber> createState() => _RoomsNumberState();
}

class _RoomsNumberState extends State<RoomsNumber> {
  @override
  Widget build(BuildContext context) {
    return SharedContainer(
      child: NumbersItem(
        title: 'Rooms',
        number: widget.roomsNumber,
        add: (){setState(() {
          widget.roomsNumber++;
        });},
        remove: (){setState(() {
          widget.roomsNumber--;
        });},

      ),
    );
  }
}
