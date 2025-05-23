import 'package:clonenubank/utils/colors_standard.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MenuIcons extends StatelessWidget {
  const MenuIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _itemMenu(icon: MdiIcons.clover, name: 'Area Pix', isfirst: true),
            _itemMenu(icon: MdiIcons.barcode, name: 'Pagar'),
            _itemMenu(icon: MdiIcons.cash, name: 'Trasferir'),
            _itemMenu(icon: MdiIcons.cash, name: 'Depositar'),
            _itemMenu(icon: MdiIcons.creditCard, name: 'Recarga'),
            _itemMenu(icon: MdiIcons.heartOutline, name: 'Doação'),
          ],
        ),
      ),
    );
  }
}

_itemMenu({required IconData icon, required String name, bool? isfirst}) {
  return Container(
    padding: (isfirst ?? false)
        ? const EdgeInsets.only(right: 7, left: 20)
        : const EdgeInsets.symmetric(horizontal: 7),
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: greyColor, borderRadius: BorderRadius.circular(48)),
          child: Icon(icon),
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
