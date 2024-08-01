import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:kcell_fwa_mobile/pages/widgets/text_cell.dart';
import 'package:kcell_fwa_mobile/pages/widgets/textfield_cell.dart';

class ChecklistB2C extends StatelessWidget {
  ChecklistB2C(
      {super.key,
      required this.ticketData,
      required this.networkSelectionAction,
      required this.faltActionType});
  final NewTicketModel ticketData;
  final Function(String) networkSelectionAction;
  final String faltActionType;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(55, 248, 131, 121),
      body: ListView(
        children: [
          const TextCell(myText: 'Тип сети:', fontSize: 14, color: Color.fromARGB(255, 120, 120, 120)),
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 13),
                  height: 35,
                  child: TextButton(
                    child: const Text(
                      'Выбрать значение',
                      style: TextStyle(
                          fontSize: 16, 
                          color: Color.fromARGB(255, 0, 3, 50),
                        ),
                    ),
                    onPressed: () => showMaterialRadioPicker(
                      context: context,
                      title: 'Тип сети',
                      items: networkType,
                      onChanged: (value) =>
                          networkSelectionAction(value.toString()),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const MyDivider(),
          const TextCell(myText: 'RSRQ:', fontSize: 14, color: Color.fromARGB(255, 120, 120, 120)),
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 13),
                  height: 35,
                  child: TextButton(
                    child: const Text(
                      'Выбрать значение',
                      style: TextStyle(
                          fontSize: 16, 
                          color: Color.fromARGB(255, 0, 3, 50),
                        ),
                    ),
                    onPressed: () => showMaterialRadioPicker(
                      context: context,
                      title: 'RSRQ',
                      items: rSRQ,
                      onChanged: (value) =>
                          networkSelectionAction(value.toString()),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const MyDivider(),
          const TextCell(myText: 'RSRP:', fontSize: 14, color: Color.fromARGB(255, 120, 120, 120)),
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 13),
                  height: 35,
                  child: TextButton(
                    child: const Text(
                      'Выбрать значение',
                      style: TextStyle(
                          fontSize: 16, 
                          color: Color.fromARGB(255, 0, 3, 50),
                        ),
                    ),
                    onPressed: () => showMaterialRadioPicker(
                      context: context,
                      title: 'RSRP',
                      items: rSRP,
                      onChanged: (value) =>
                          networkSelectionAction(value.toString()),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const MyDivider(),
          const TextCell(myText: 'RSSI:', fontSize: 14, color: Color.fromARGB(255, 120, 120, 120)),
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 13),
                  height: 35,
                  child: TextButton(
                    child: const Text(
                      'Выбрать значение',
                      style: TextStyle(
                          fontSize: 16, 
                          color: Color.fromARGB(255, 0, 3, 50),
                        ),
                    ),
                    onPressed: () => showMaterialRadioPicker(
                      context: context,
                      title: 'RSSI',
                      items: rSSI,
                      onChanged: (value) =>
                          networkSelectionAction(value.toString()),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const MyDivider(),
          const TextCell(myText: 'SINR:', fontSize: 14, color: Color.fromARGB(255, 120, 120, 120)),
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 13),
                  height: 35,
                  child: TextButton(
                    child: const Text(
                      'Выбрать значение',
                      style: TextStyle(
                          fontSize: 16, 
                          color: Color.fromARGB(255, 0, 3, 50),
                        ),
                    ),
                    onPressed: () => showMaterialRadioPicker(
                      context: context,
                      title: 'SINR',
                      items: sINR,
                      onChanged: (value) =>
                          networkSelectionAction(value.toString()),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const MyDivider(),
          const TextCell(myText: 'Обращения абонента:', fontSize: 14, color: Color.fromARGB(255, 120, 120, 120)),
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 13),
                  height: 35,
                  child: TextButton(
                    child: const Text(
                      'Выбрать значение',
                      style: TextStyle(
                          fontSize: 16, 
                          color: Color.fromARGB(255, 0, 3, 50),
                        ),
                    ),
                    onPressed: () => showMaterialRadioPicker(
                      context: context,
                      title: 'Обращения абонента',
                      items: subscriberRequests,
                      onChanged: (value) =>
                          networkSelectionAction(value.toString()),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const MyDivider(),
          const TextCell(myText: 'Тип жалобы:', fontSize: 14, color: Color.fromARGB(255, 120, 120, 120)),
          Row(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 13),
                  alignment: Alignment.centerLeft,
                  height: 35,
                  child: TextButton(
                    child: const Text(
                      'Выбрать значение',
                      style: TextStyle(
                          fontSize: 16, 
                          color: Color.fromARGB(255, 0, 3, 50),
                        ),
                    ),
                    onPressed: () => showMaterialRadioPicker(
                      context: context,
                      title: 'Тип жалобы',
                      items: typeOfComplaint,
                      onChanged: (value) =>
                          networkSelectionAction(value.toString()),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const MyDivider(),
          const TextCell(myText: 'Выполненные работы:', fontSize: 14, color: Color.fromARGB(255, 120, 120, 120)),
          Row(
            children: [
              Flexible(
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 13),
                  height: 35,
                  child: TextButton(
                    child: const Text(
                      'Выбрать значение',
                      style: TextStyle(
                          fontSize: 16, 
                          color: Color.fromARGB(255, 0, 3, 50),
                        ),
                    ),
                    onPressed: () => showMaterialRadioPicker(
                      context: context,
                      title: 'Выполненные работы',
                      items: workDone,
                      onChanged: (value) =>
                          networkSelectionAction(value.toString()),
                    ),
                  ),
                ),
              ),
            ],
          ),
          faltActionType == 'Другое'
                  ? const TextFieldCell()
                  : const SizedBox(),
          const MyDivider(),
          const TextCell(myText: 'Operator', fontSize: 14, color: Color.fromARGB(255, 120, 120, 120)),
                Container(
                  alignment: Alignment.centerLeft,
                    height: 35,
                    child: TextButton(
                      child: const Text(
                        'Выбрать значение',
                         style: TextStyle(
                          fontSize: 16, 
                          color: Color.fromARGB(255, 0, 3, 50),
                        ),
                      ),
                      onPressed: () => showMaterialRadioPicker(
                        context: context,
                        title: 'Ведущий оператор',
                        items: neworkOwner,
                        onChanged: (value) =>
                          networkOwnerAction(value.toString()),
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  final List neworkOwner = [
    'Kcell',
    'Tele2',
    'Beeline',
  ];
 
  final List networkType = ['4G', '5G', '4G + 5G'];
 
  final List rSRQ = [
    '>= -5 (Отлично)',
    'от -5 до -10 (Хорошо)',
    'от -10 до -15 (Удовл.)',
    'от -15 до -20 (Плохо)',
    '≤ -20 (Нет сигнала)'
  ];
 
  final List rSRP = [
    '>= -70 (Отлично)',
    'от -70 до -90 (Хорошо)',
    'от -90 до -110 (Удовл.)',
    'от -110 до -120 (Плохо)',
    '≤ -120 (Нет сигнала)'
  ];
 
  final List rSSI = [
    '>= -60 (Отлично)',
    'от -60 до -80 (Хорошо)',
    'от -80 до -100 (Удовл.)',
    'от -100 до -110 (Плохо)',
    '≤ -110 (Нет сигнала)'
  ];
 
  final List sINR = [
    '>= 15 (Отлично)',
    'от 15 до 5 (Хорошо)',
    'от 5 до 0 (Удовл.)',
    'от 0 до -5 (Плохо)',
    '≤ -5 (Нет сигнала)'
  ];
 
  final List subscriberRequests = [
    'Первичное обращение',
    'Повторное обращение'
  ];
 
  final List typeOfComplaint = [
    'Низкий уровень сигнала',
    'Низкая скорость интернета',
    'Жалоба на работоспособность роутера',
    'Пропадание сети',
    'Пропадание сети 5G',
    'Другое'
  ];
 
  final List workDone = [
    'Замер скорости',
    'Перемещение роутера',
    'Изменение типа сети на 4G',
    'Изменение типа сети на 5G',
    'Изменение типа сети на 5G+4G',
    'Замер уровня сигнала',
    'Перезагрузка роутера',
    'Сброс до заводских настроек',
    'Данные о БС переданы оптимизаторам',
    'Другое'
  ];
  
  networkOwnerAction(String string) {}
}
 