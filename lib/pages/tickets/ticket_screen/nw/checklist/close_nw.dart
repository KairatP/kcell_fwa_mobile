import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/envirement/colors.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:kcell_fwa_mobile/pages/widgets/text_cell.dart';

class CloseNW extends StatelessWidget {
  const CloseNW({super.key});

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
          const MyDivider(),
          const TextCell(myText: 'Сектор:', fontSize: 14, color: Colors.grey),
          const TextCell(
              myText: '122', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(myText: 'RSRQ:', fontSize: 14, color: Colors.grey),
          const TextCell(
              myText: '-5', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(myText: 'RSRP:', fontSize: 14, color: Colors.grey),
          const TextCell(
              myText: '-71', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(myText: 'RSSI:', fontSize: 14, color: Colors.grey),
          const TextCell(
              myText: '-61', fontSize: 16, color: AppColors.selectorFontColor),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(myText: 'SINR:', fontSize: 14, color: Colors.grey),
          const TextCell(
              myText: '14', fontSize: 16, color: AppColors.selectorFontColor),
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
