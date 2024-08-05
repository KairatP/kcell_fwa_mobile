import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/envirement/colors.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:kcell_fwa_mobile/pages/widgets/text_cell.dart';

class NWStatusNW extends StatelessWidget {
  const NWStatusNW({super.key, required this.ticketData});
  final NewTicketModel ticketData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundTicketInformation,
      body: ListView(
        children: [
          const TextCell(
              myText: 'Номер заявки:',
              fontSize: 14,
              color: AppColors.ticketTitleFontColor),
          TextCell(
              myText: ticketData.ticketNumber,
              fontSize: 16,
              color: Colors.black),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Тип сети:',
              fontSize: 14,
              color: AppColors.ticketTitleFontColor),
          TextCell(
              myText: ticketData.serviceTypeKcell,
              fontSize: 16,
              color: Colors.black),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Описания работ по замерам сети:',
              fontSize: 14,
              color: AppColors.ticketTitleFontColor),
          TextCell(
              myText: ticketData.ticketSetupDate,
              fontSize: 16,
              color: Colors.black),
        ],
      ),
    );
  }
}
