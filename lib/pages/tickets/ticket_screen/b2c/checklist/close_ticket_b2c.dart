import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/envirement/colors.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:kcell_fwa_mobile/pages/widgets/text_cell.dart';

class CloseTheTicketB2C extends StatelessWidget {
  const CloseTheTicketB2C({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundTicketClose,
      body: ListView(
        children: [
          const TextCell(
              myText: 'Ведущий оператор:', fontSize: 14, color: Colors.grey),
          const TextCell(
              myText: 'Kcell',
              fontSize: 16,
              color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(myText: 'Тип сети:', fontSize: 14, color: Colors.grey),
          const TextCell(
              myText: '5G', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(myText: 'ID сайта:', fontSize: 14, color: Colors.grey),
          const TextCell(
              myText: '01964',
              fontSize: 16,
              color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const TextCell(myText: 'Сектор:', fontSize: 14, color: Colors.grey),
          const TextCell(
              myText: '122', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Обращения абонента:', fontSize: 14, color: Colors.grey),
          const TextCell(
              myText: 'Первичное обращение',
              fontSize: 16,
              color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Тип жалобы:', fontSize: 14, color: Colors.grey),
          const TextCell(
              myText: 'Низкая скорость интернета',
              fontSize: 16,
              color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Замеренная скорость до проделанных работ:',
              fontSize: 14,
              color: Colors.grey),
          const TextCell(
              myText: '30 Mбит/сек',
              fontSize: 16,
              color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'RSRQ до проделанных работ:',
              fontSize: 14,
              color: Colors.grey),
          const TextCell(
              myText: '-5', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'RSRP до проделанных работ:',
              fontSize: 14,
              color: Colors.grey),
          const TextCell(
              myText: '-71', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'RSSI до проделанных работ:',
              fontSize: 14,
              color: Colors.grey),
          const TextCell(
              myText: '-61', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'SINR до проделанных работ:',
              fontSize: 14,
              color: Colors.grey),
          const TextCell(
              myText: '14', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Качество сигнала до проделанных работ:',
              fontSize: 14,
              color: Colors.grey),
          const TextCell(
              myText: 'Удовлетворительно',
              fontSize: 16,
              color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const TextCell(
              myText: 'Замеренная скорость после проделанных работ:',
              fontSize: 14,
              color: Colors.grey),
          const TextCell(
              myText: '100 Mбит/сек',
              fontSize: 16,
              color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'RSRQ после проделанных работ:',
              fontSize: 14,
              color: Colors.grey),
          const TextCell(
              myText: '-5', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'RSRP после проделанных работ:',
              fontSize: 14,
              color: Colors.grey),
          const TextCell(
              myText: '-71', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'RSSI после проделанных работ:',
              fontSize: 14,
              color: Colors.grey),
          const TextCell(
              myText: '-61', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'SINR после проделанных работ:',
              fontSize: 14,
              color: Colors.grey),
          const TextCell(
              myText: '14', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Качество сигнала после проделанных работ:',
              fontSize: 14,
              color: Colors.grey),
          const TextCell(
              myText: 'Хорошо',
              fontSize: 16,
              color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const TextCell(
              myText: 'Выполненные работы:', fontSize: 14, color: Colors.grey),
          const TextCell(
              myText: 'Перемещение роутера',
              fontSize: 16,
              color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'ЧНН скорости (время события):',
              fontSize: 14,
              color: Colors.grey),
          const TextCell(
              myText: '09:05',
              fontSize: 16,
              color: AppColors.selectorFontColor),
          const TextCell(
              myText: '11:10',
              fontSize: 16,
              color: AppColors.selectorFontColor),
          const TextCell(
              myText: '15:55',
              fontSize: 16,
              color: AppColors.selectorFontColor),
          const TextCell(
              myText: '20:06',
              fontSize: 16,
              color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'ЧНН скорости (Mб/сек):',
              fontSize: 14,
              color: Colors.grey),
          const TextCell(
              myText: '105', fontSize: 16, color: AppColors.selectorFontColor),
          const TextCell(
              myText: '110', fontSize: 16, color: AppColors.selectorFontColor),
          const TextCell(
              myText: '120', fontSize: 16, color: AppColors.selectorFontColor),
          const TextCell(
              myText: '115', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20, bottom: 30),
                child: ElevatedButton(
                  onPressed: () => networkSelectionAction(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  child: const Text(
                    'Закрыть билет и отправить диспетчеру',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  networkSelectionAction() {}
}
