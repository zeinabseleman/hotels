import 'dart:io';
import 'package:flutter/material.dart';

import '../../generated/assets.dart';


class ScreenMainWidget extends StatefulWidget {
  final Widget child;
  final Widget? bottomWidget;
  const ScreenMainWidget(
      {super.key,
      required this.child,
      this.bottomWidget});

  @override
  State<ScreenMainWidget> createState() => _ScreenMainWidgetState();
}

class _ScreenMainWidgetState extends State<ScreenMainWidget> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: Platform.isAndroid ? true : false,
        bottom: false,
        child: Scaffold(
          key: _scaffoldKey,
          resizeToAvoidBottomInset: true,
          bottomSheet: widget.bottomWidget,
          body:Container(
            width:MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height ,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.background),
                fit: BoxFit.cover,
              ),
            ),
            child:  widget.child,
          ),

        ));
  }
}
