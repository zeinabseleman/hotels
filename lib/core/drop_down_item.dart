import '../../generated/assets.dart';

class DropDownItem {
  int value;
  String name;


  DropDownItem(this.value,this.name);
}

final List<DropDownItem> nationality = [
  DropDownItem(1, 'Egypt'),
  DropDownItem(1, 'French'),
  DropDownItem(1, 'American'),
  DropDownItem(1, 'Egypt')
];

final List<DropDownItem> rooms = [
  DropDownItem(1, '1 Room, 2 Adult, 0Children'),
  DropDownItem(1, '2 Room, 4 Adult, 0Children'),
  DropDownItem(1, '1 Room, 2 Adult, 0Children'),
  DropDownItem(1, '1 Room, 2 Adult, 0Children')
];
