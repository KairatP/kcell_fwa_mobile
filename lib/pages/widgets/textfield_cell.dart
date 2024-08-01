import 'package:flutter/material.dart';

class TextFieldCell extends StatelessWidget {
  const TextFieldCell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
      height: 40,
      child: Align(
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor:
                Colors.white, // Set the background color here
            contentPadding: const EdgeInsets.all(10),
            focusColor: Colors.black,
            hoverColor: Colors.black,
            hintText: "Заполнить...",
            hintStyle: const TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              gapPadding: 2,
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              gapPadding: 2,
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            border: InputBorder.none,
          ),
          style: const TextStyle(fontSize: 14),
          textAlign: TextAlign.left,
          textAlignVertical: TextAlignVertical.bottom,
        ),
      ),
    );
  }
}