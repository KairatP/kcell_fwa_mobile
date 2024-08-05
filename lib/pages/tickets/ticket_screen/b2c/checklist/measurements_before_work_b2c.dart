import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/envirement/colors.dart';
import 'package:kcell_fwa_mobile/envirement/local_environment.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:kcell_fwa_mobile/pages/widgets/selector_widget.dart';
import 'package:kcell_fwa_mobile/pages/widgets/text_cell.dart';
import 'package:kcell_fwa_mobile/pages/widgets/textfield_cell.dart';

class MeasurementsBeforeWorkB2C extends StatelessWidget {
  MeasurementsBeforeWorkB2C ({
    super.key, required this.ticketData,
        required this.selectionAction,
        required this.beforeActionDataSpeedTextEditingController,
        });
  final NewTicketModel ticketData;
  final Function(String, String) selectionAction;
  final LocalEnvironment environment = LocalEnvironment();
  final TextEditingController beforeActionDataSpeedTextEditingController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundMeasurementsBeforeWork,
      body: ListView(
        children: [
          const TextCell(myText: 'Замеренная скорость до проделанных работ (Мб/сек):', fontSize: 14, color: AppColors.selectorTitleFontColor),
          TextFieldCell(myTextController: beforeActionDataSpeedTextEditingController, myTextChange: (value) => selectionAction(value, 'Замеренная скорость до проделанных работ (Мб/сек):'),),
          const SizedBox(height: 7,),
          const MyDivider(),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 35,
            child: TextButton(
              child: const Text(
                "fdgd",
                style: TextStyle(
                  fontSize: 16, 
                  color: Color.fromARGB(255, 0, 3, 50),
                ),
              ),
              onPressed: () => showTimePicker,
            ),
          ),
          const TextCell(
            myText: 'Дата и время замеров RSRQ, RSRP, RSSI, SINR', fontSize: 14, color: AppColors.selectorTitleFontColor,),
          const TextCell(
              myText: 'RSRQ до проделанных работ:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(title: 'RSRQ',
            items: environment.rSRQ,
            selectionAction: (value) => selectionAction(value, 'before RSRQ'),
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'RSRP до проделанных работ:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(title: 'RSRP',
            items: environment.rSRP,
            selectionAction: (value) => selectionAction(value, 'before RSRP'),
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'RSSI до проделанных работ:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(title: 'RSSI',
            items: environment.rSSI,
            selectionAction: (value) => selectionAction(value, 'before RSSI'),
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'SINR до проделанных работ:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(title: 'SINR',
            items: environment.sINR,
            selectionAction: (value) => selectionAction(value, 'before SINR'),
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Качествo сигнала до проделанных работ:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(title: 'Качество сигнала',
            items: environment.qualityReceivedSignal,
            selectionAction: (value) => selectionAction(value, 'Качествo сигнала до проделанных работ'),
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
        ],
      ),
    );
  }
}