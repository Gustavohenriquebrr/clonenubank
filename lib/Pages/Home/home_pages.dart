import 'package:clonenubank/Pages/Home/Model/Header.dart';
import 'package:clonenubank/Pages/account/ACCOUNT.dart';
import 'package:clonenubank/Pages/account/actions/menu_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  background Color: backgroundColor,
      appBar: _appbar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Header(),
              AccountNubank(),
              MenuIcons(),
            ],
          ),
        ),
      ),
    );
  }
}

PreferredSize _appbar() {
  return PreferredSize(
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      preferredSize: const Size.fromHeight(0));
}
