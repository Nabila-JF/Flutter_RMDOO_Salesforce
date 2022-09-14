import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefaultSubPagesAppBar extends StatelessWidget with PreferredSizeWidget {
  String pageTitle;
  // ignore: prefer_typing_uninitialized_variables
  var pageSubtittle;

  DefaultSubPagesAppBar(
      {super.key, required this.pageTitle, this.pageSubtittle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 0)
            ],
          ),
          child: Expanded(
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
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
      title: pageSubtittle == ""
          ? Text(
              pageTitle,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  pageTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  pageSubtittle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}
