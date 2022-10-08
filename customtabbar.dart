import 'package:flutter/material.dart';

class CutomTabBar extends StatefulWidget  {
  CutomTabBar(
      {required this.strList, required this.selectIndex, required this.onTap});

  final Function(int) onTap;
  int selectIndex;
  List<String> strList;

  @override
  _CutomTabBarState createState() => _CutomTabBarState();
}

class _CutomTabBarState extends State<CutomTabBar>  {
  var actrl;
  var deger;

  @override

  @override
  Widget build(BuildContext context) {
    List<Expanded> listWidget = [];
    for (int i = 0; i < widget.strList.length; i++) {
      listWidget.add(Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              widget.onTap(i);
              widget.selectIndex = i;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 3),
            child: Container(
              child: Center(
                child: Text(widget.strList[i],
                    style: TextStyle(
                      fontSize: 16,
                      color: widget.selectIndex == i
                          ? Color(0xFFFFFFFF)
                          : Color(0xFF435F75),
                    )),
              ),
              decoration: BoxDecoration(
                color: widget.selectIndex == i
                    ? Color(0xFFE7A707)
                    : Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
            ),
          ),
        ),
      ));
    }

    return Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: listWidget,
          ),
        ),
      ),
      height: 56,
      decoration: BoxDecoration(
        color: Color(0xFFF0EFEA),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    );
  }
}
