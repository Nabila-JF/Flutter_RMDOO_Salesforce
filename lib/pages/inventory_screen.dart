import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/widgets/inventory/inventory_icon_area.dart';

import '../layout/background.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        BackgroundColor(),
        SafeArea(child: InventoryIconArea()),
      ],
    );
  }
}
