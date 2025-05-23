import 'package:clonenubank/Controllers/controller_homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AccountNubank extends StatefulWidget {
  const AccountNubank({Key? key}) : super(key: key);

  @override
  State<AccountNubank> createState() => _AccountState();
}

class _AccountState extends State<AccountNubank> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _accountChevron(),
          const SizedBox(
            height: 12,
          ),
          _moneyAccount(),
        ],
      ),
    );
  }

  _accountChevron() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Conta',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _moneyAccount() {
    return GetBuilder<ControllerHomepage>(
        init: ControllerHomepage(),
        builder: (controller) {
          return Text(
            controller.saldo,
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          );
        });
  }
}
