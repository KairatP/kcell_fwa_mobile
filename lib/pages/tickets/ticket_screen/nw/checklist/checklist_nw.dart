import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/envirement/colors.dart';
import 'package:kcell_fwa_mobile/envirement/local_environment.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:kcell_fwa_mobile/pages/widgets/selector_widget.dart';
import 'package:kcell_fwa_mobile/pages/widgets/text_cell.dart';
import 'package:kcell_fwa_mobile/pages/widgets/textfield_cell.dart';

class ChecklistNW extends StatelessWidget {
  ChecklistNW(
      {super.key,
      required this.ticketData,
      required this.networkSelectionAction,
      required this.faltActionType});
  final NewTicketModel ticketData;
  final Function(String) networkSelectionAction;
  final String faltActionType;
  final LocalEnvironment env = LocalEnvironment();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundChecklistOffice,
      body: ListView(
        children: [
          const TextCell(
            myText: 'Ведущий оператор:',
            fontSize: 14,
            color: AppColors.selectorTitleFontColor,
          ),
          MySelectorWidget(
            title: 'Ведущий оператор',
            items: env.neworkOwner,
            selectionAction: (value) {
              print(value);
            },
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
            myText: 'Тип сети:',
            fontSize: 14,
            color: AppColors.selectorTitleFontColor,
          ),
          MySelectorWidget(
            title: 'Тип сети',
            items: env.networkType,
            selectionAction: (value) {
              print(value);
            },
            hintText: 'Выбрать значение',
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
                    'ID сайта',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.selectorTitleFontColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // const MyContainer(),
          TextFieldCell(
            myTextController: TextEditingController(),
            myTextChange: (value) {
              print(value);
            },
          ),
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
                    'Сектор',
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
            myTextController: TextEditingController(),
            myTextChange: (value) {
              print(value);
            },
          ),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'RSRQ:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'RSRQ',
            items: env.rSRQ,
            selectionAction: (value) {
              print(value);
            },
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'RSRP:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'RSRP',
            items: env.rSSI,
            selectionAction: (value) {
              print(value);
            },
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'RSSI:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'RSSI',
            items: env.rSSI,
            selectionAction: (value) {
              print(value);
            },
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'SINR:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'SINR',
            items: env.sINR,
            selectionAction: (value) {
              print(value);
            },
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
        ],
      ),
    );
  }
}
