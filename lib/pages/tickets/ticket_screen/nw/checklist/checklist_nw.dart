import 'package:flutter/material.dart';
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
      backgroundColor: const Color.fromARGB(55, 248, 131, 121),
      body: ListView(
        children: [
          const TextCell(
              myText: 'Тип сети:',
              fontSize: 14,
              color: Color.fromARGB(255, 120, 120, 120)),
          MySelectorWidget(
            title: 'Тип сети',
            items: env.networkType,
            selectionAction: (value) {
              print(value);
            },
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'RSRQ:',
              fontSize: 14,
              color: Color.fromARGB(255, 120, 120, 120)),
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
              color: Color.fromARGB(255, 120, 120, 120)),
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
              color: Color.fromARGB(255, 120, 120, 120)),
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
              color: Color.fromARGB(255, 120, 120, 120)),
          MySelectorWidget(
            title: 'SINR',
            items: env.sINR,
            selectionAction: (value) {
              print(value);
            },
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Обращения абонента:',
              fontSize: 14,
              color: Color.fromARGB(255, 120, 120, 120)),
          MySelectorWidget(
            title: 'Обращения абонента',
            items: env.subscriberRequests,
            selectionAction: (value) {
              print(value);
            },
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Тип жалобы:',
              fontSize: 14,
              color: Color.fromARGB(255, 120, 120, 120)),
          MySelectorWidget(
            title: 'Тип жалобы',
            items: env.typeOfComplaint,
            selectionAction: (value) {
              print(value);
            },
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Выполненные работы:',
              fontSize: 14,
              color: Color.fromARGB(255, 120, 120, 120)),
          MySelectorWidget(
            title: 'Выполненные работы',
            items: env.workDone,
            selectionAction: (value) {
              print(value);
            },
            hintText: 'Выбрать значение',
          ),
          faltActionType == 'Другое' ? const TextFieldCell() : const SizedBox(),
          const MyDivider(),
          const TextCell(
              myText: 'Operator',
              fontSize: 14,
              color: Color.fromARGB(255, 120, 120, 120)),
          MySelectorWidget(
            title: 'Ведущий оператор',
            items: env.neworkOwner,
            selectionAction: (value) {
              print(value);
            },
            hintText: 'Выбрать значение',
          ),
        ],
      ),
    );
  }
}
