 import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/helpers/show_radio_picker.dart';

class MySelectorWidget extends StatelessWidget {
   const MySelectorWidget({
    super.key, 
    required this.title, 
    required this.items, 
    required this.selectionAction, 
    required this.hintText
  });
 
   final String title;
   final String hintText;
   final List items;
   final Function(String) selectionAction;
 
   @override
   Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 35,
      child: TextButton(
        child: Text(
          hintText,
          style: const TextStyle(
            fontSize: 16, 
            color: Color.fromARGB(255, 0, 3, 50),
          ),
        ),
        onPressed: () => showMaterialRadioPicker(
          context: context,
          title: title,
          items: items,
          onChanged: (value) => selectionAction(value.toString()),
        ),
      ),
    );
  }
}