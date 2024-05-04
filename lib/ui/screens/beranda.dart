import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  var _scrollController = ScrollController();

  List<bool> tabBarBadgeList = [
    false,
    false,
    false,
    true,
  ];

  List tabBarList = [
    "Beranda",
    "Promo",
    "Pesanan",
    "Chat",
  ];

  int tabBarIndex = 0;

  int balanceBalance = 0;

  bool isBrush = false;

  bool isCollapseNavBottom = true;

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels > 0) {
        isBrush = true;
        setState(() {});
      } else {
        isBrush = false;
      }
    });
    super.initState();
  }
}
