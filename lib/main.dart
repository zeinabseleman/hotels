import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelstask/presentation/hotels_search/hotels_search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (_, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Hotels',
            home:  HotelsSearch(),

          );
        });
  }
}

