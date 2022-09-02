import 'package:flutter/material.dart';

class DefaultSubPagesAppBar extends StatelessWidget with PreferredSizeWidget{
  String pageTitle;

  DefaultSubPagesAppBar({super.key, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Expanded(
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xff242F9B),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      elevation: 0,
      centerTitle: true,
      backgroundColor: const Color(0x00000000),
      title: Text(
        pageTitle,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);

}