import 'package:flutter/material.dart';
import 'package:deneme/customtabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  int selectIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: CutomTabBar(
            strList: ["Döviz", "Fiyatlar", "Altın"],
            selectIndex: selectIndex,
            onTap: (index) {
              selectIndex = index;
              print("Seçili index : $index");
            },
          ),
        ),
      ),
    );
  }
}
