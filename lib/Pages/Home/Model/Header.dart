import 'package:clonenubank/Controllers/controller_homepage.dart';
import 'package:clonenubank/utils/colors_standard.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _Profile(),
              _options(),
            ],
          ),
          const SizedBox(height: 32),
          _welcome(),
        ],
      ),
    );
  }
}

_Profile() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      margin: const EdgeInsets.only(left: 20, top: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80), color: secondaryPurple),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            MdiIcons.accountOutline,
            color: Colors.white,
          )),
    ),
  );
}

_options() {
  return Row(
    children: [
      GetBuilder(
          init: ControllerHomepage(),
          builder: (ControllerHomepage) {
            return IconButton(
                onPressed: () => ControllerHomepage.showvalue(),
                icon: Icon(
                  ControllerHomepage.eyesvalue
                      ? MdiIcons.eyeOutline
                      : MdiIcons.eyeOff,
                  color: Colors.white,
                ));
          }),
      IconButton(
          onPressed: () {},
          icon: Icon(
            MdiIcons.helpCircleOutline,
            color: Colors.white,
          )),
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.person_add_alt_1_outlined,
            color: Colors.white,
          ))
    ],
  );
}

_welcome() {
  return Container(
    margin: const EdgeInsets.only(left: 20, bottom: 20),
    child: const Text(
      'Ola,Gustavo',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
