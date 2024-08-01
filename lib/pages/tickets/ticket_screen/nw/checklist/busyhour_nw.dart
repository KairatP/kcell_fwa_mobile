import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:kcell_fwa_mobile/pages/widgets/textfield_cell.dart';

class BusyHourNW extends StatelessWidget {
  const BusyHourNW({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(105, 212, 232, 177),
      body: ListView(
        children: [
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  height: 25,
                  child: const Text(
                    overflow: TextOverflow.ellipsis,
                    'ЧНН по скорости (время события):',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 120, 120, 120),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // const MyContainer(),
          const TextFieldCell(),
          const TextFieldCell(),
          const TextFieldCell(),
          const TextFieldCell(),
          const MyDivider(),
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  height: 25,
                  child: const Text(
                    overflow: TextOverflow.ellipsis,
                    'ЧНН по скорости (Мб/сек):',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const TextFieldCell(),
          const TextFieldCell(),
          const TextFieldCell(),
          const TextFieldCell(),
        ],
      ),
    );
  }
}


 