import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/envirement/colors.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:kcell_fwa_mobile/pages/widgets/textfield_cell.dart';

class ChecklistOfficeB2C extends StatelessWidget {
  const ChecklistOfficeB2C ({
       super.key,
    required this.ticketData,
    required this.selectionAction,
    required this.bHourDataSpeedController,
    required this.dataSpeedBHController,
  });
  final NewTicketModel ticketData;
  final Function(String, String) selectionAction;
  final TextEditingController bHourDataSpeedController;
  final TextEditingController dataSpeedBHController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(105, 212, 232, 177),
      backgroundColor: AppColors.backgroundChecklistOffice,
      body: ListView(
        children: [
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  height: 25,
                  child: const Text(
                    overflow: TextOverflow.ellipsis,
                    'ЧНН скорости (время события):',
                    style: TextStyle(
                      fontSize: 14,
                      // color: Color.fromARGB(255, 120, 120, 120),
                      color: AppColors.selectorTitleFontColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // const MyContainer(),
          TextFieldCell(
            myTextController: dataSpeedBHController,
            myTextChange: (value) => selectionAction(value,  'ЧНН скорости (время события):'),
          ),
          // TextFieldCell(myTextController: null, myTextChange: (value) => selectionAction(value, ''),),
          // TextFieldCell(myTextController: null, myTextChange: (value) => selectionAction(value, ''),),
          // TextFieldCell(myTextController: null, myTextChange: (value) => selectionAction(value, ''),),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  height: 25,
                  child: const Text(
                    overflow: TextOverflow.ellipsis,
                    'ЧНН скорости (Мб/сек):',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.selectorTitleFontColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          TextFieldCell(
            myTextController: bHourDataSpeedController,
            myTextChange: (value) => selectionAction(value, 'ЧНН скорости (Мб/сек):'),
          ),
          // TextFieldCell(myTextController: null, myTextChange: (value) => selectionAction(value, ''),),
          // TextFieldCell(myTextController: null, myTextChange: (value) => selectionAction(value, ''),),
          // TextFieldCell(myTextController: null, myTextChange: (value) => selectionAction(value, ''),),
          const SizedBox(
            height: 7,
          ),
        ],
      ),
    );
  }
}
