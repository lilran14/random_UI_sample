import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui02_login/pages/home_page.dart';
import 'package:ui02_login/shared/color_pallete.dart';
import 'package:ui02_login/utils/material_color_converter.dart';

void main() {
  //hide status bar
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: createMaterialColor(ColorPallete.primaryColor),
      ),
      home: HomePage(),
    );
  }
}
