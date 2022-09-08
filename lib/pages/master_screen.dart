import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/widgets/master/master_icon_area.dart';

import '../layout/background.dart';

class MasterScreen extends StatelessWidget {
  const MasterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        BackgroundColor(),
        SafeArea(child: SingleChildScrollView(child: MasterIconArea())),
      ],
    );
  }
}
