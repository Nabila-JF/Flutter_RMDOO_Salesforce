import 'package:flutter/material.dart';

class InputTextField extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final hintText;
  const InputTextField({super.key, required this.hintText});

  @override
  // ignore: library_private_types_in_public_api
  _InputTextField createState() => _InputTextField();
}

class _InputTextField extends State<InputTextField> {
  String hintText = "";
  @override
  void initState() {
    super.initState();

    hintText = widget.hintText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height * 0.065,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
