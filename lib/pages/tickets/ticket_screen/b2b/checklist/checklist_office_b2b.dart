import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/envirement/colors.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:kcell_fwa_mobile/pages/widgets/text_cell.dart';
import 'package:kcell_fwa_mobile/pages/widgets/textfield_cell.dart';

class ChecklistOfficeB2B extends StatelessWidget {
  const ChecklistOfficeB2B({
    super.key,
    required this.ticketData,
    required this.selectionAction,
    required this.hourOfDataSpeedMesurmentController,
    required this.dataSpeedBHController,
  });
  final NewTicketModel ticketData;
  final Function(String, String) selectionAction;
  final TextEditingController hourOfDataSpeedMesurmentController;
  final TextEditingController dataSpeedBHController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundChecklistOffice,
      body: ListView(
        children: [
          const TextCell(myText: 'ЧНН скорости (время события):', fontSize: 14, color: AppColors.selectorTitleFontColor),
          TextFieldCell(
            myTextController: hourOfDataSpeedMesurmentController,
            myTextChange: (value) => selectionAction(value,  'ЧНН скорости (время события):'),
          ),
          // TextFieldCell(myTextController: null, myTextChange: (value) => selectionAction(value, ''),),
          // TextFieldCell(myTextController: null, myTextChange: (value) => selectionAction(value, ''),),
          // TextFieldCell(myTextController: null, myTextChange: (value) => selectionAction(value, ''),),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(myText: 'ЧНН скорости (Мб/сек):', fontSize: 14, color: AppColors.selectorTitleFontColor),
          TextFieldCell(
            myTextController: dataSpeedBHController,
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
