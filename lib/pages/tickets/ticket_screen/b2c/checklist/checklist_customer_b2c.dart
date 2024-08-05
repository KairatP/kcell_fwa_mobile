import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/envirement/colors.dart';
import 'package:kcell_fwa_mobile/envirement/local_environment.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:kcell_fwa_mobile/pages/widgets/selector_widget.dart';
import 'package:kcell_fwa_mobile/pages/widgets/text_cell.dart';
import 'package:kcell_fwa_mobile/pages/widgets/textfield_cell.dart';

class ChecklistCustomerB2C extends StatelessWidget {
  ChecklistCustomerB2C({
     super.key,
    required this.ticketData,
    required this.customerChecklistSelectionAction,
    required this.rbsTextEditingController,
    required this.sectorTextEditingController,
    required this.customerComplainsOtheTextEditingController,
    required this.dataSpeedTextEditingController,
    required this.fieldActionOtheTextEditingController,
  });
  final NewTicketModel ticketData;
  final Function(String, String) customerChecklistSelectionAction;
  final LocalEnvironment environment = LocalEnvironment();
  final TextEditingController rbsTextEditingController;
  final TextEditingController sectorTextEditingController;
  final TextEditingController customerComplainsOtheTextEditingController;
  final TextEditingController dataSpeedTextEditingController;
  final TextEditingController fieldActionOtheTextEditingController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundChecklistCustomer,
      body: ListView(
        children: [
          const TextCell(
              myText: 'Ведущий оператор',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'Ведущий оператор',
            items: environment.neworkOwner,
            selectionAction: (value) =>
                customerChecklistSelectionAction(value, 'Ведущий оператор'),
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Тип сети',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'Тип сети',
            items: environment.networkType,
            selectionAction: (value) =>
                customerChecklistSelectionAction(value, 'Тип сети'),
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'ID сайта:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          TextFieldCell(
            myTextController: rbsTextEditingController,
            myTextChange: (value) =>
                customerChecklistSelectionAction(value, 'ID сайта:'),
          ),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Сектор:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          TextFieldCell(
            myTextController: sectorTextEditingController,
            myTextChange: (value) =>
                customerChecklistSelectionAction(value, 'Сектор:'),
          ),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Обращения абонента',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'Обращения абонента',
            items: environment.subscriberRequests,
            selectionAction: (value) =>
                customerChecklistSelectionAction(value, 'Обращения абонента'),
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Тип жалобы',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'Тип жалобы',
            items: environment.typeOfComplaint,
            selectionAction: (value) =>
                customerChecklistSelectionAction(value, 'Тип жалобы'),
            hintText: 'Выбрать значение',
          ),
          ticketData.customerRequestType == 'Другое'
              ? TextFieldCell(
                  myTextController: customerComplainsOtheTextEditingController,
                  myTextChange: (value) => customerChecklistSelectionAction(
                      value, 'Тип жалобы Другое'),
                )
              : const SizedBox(),
          const MyDivider(),
          const TextCell(
              myText: 'Замеренная скорость после проделанных работ (Мб/сек):',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          TextFieldCell(
            myTextController: dataSpeedTextEditingController,
            myTextChange: (value) => customerChecklistSelectionAction(
                value, 'Замеренная скорость после проделанных работ (Мб/сек):'),
          ),
          const SizedBox(
            height: 7,
          ),
          const MyDivider(),
          const TextCell(
              myText: 'RSRQ после проделанных работ:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'RSRQ',
            items: environment.rSRQ,
            selectionAction: (value) =>
                customerChecklistSelectionAction(value, 'after RSRQ'),
            hintText: 'Выбрать значение',
          ),
          const TextCell(
              myText: 'RSRP после проделанных работ:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'RSRP',
            items: environment.rSRP,
            selectionAction: (value) =>
                customerChecklistSelectionAction(value, 'after RSRP'),
            hintText: 'Выбрать значение',
          ),
          const TextCell(
              myText: 'RSSI после проделанных работ:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'RSSI',
            items: environment.rSSI,
            selectionAction: (value) =>
                customerChecklistSelectionAction(value, 'after RSSI'),
            hintText: 'Выбрать значение',
          ),
          const TextCell(
              myText: 'SINR после проделанных работ:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'SINR',
            items: environment.sINR,
            selectionAction: (value) =>
                customerChecklistSelectionAction(value, 'after SINR'),
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Качествo сигнала после проделанных работ:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'Качество сигнала',
            items: environment.qualityReceivedSignal,
            selectionAction: (value) => customerChecklistSelectionAction(
                value, 'Качествo сигнала после проделанных работ'),
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Выполненные работы:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'Выполненые работы',
            items: environment.workDone,
            selectionAction: (value) =>
                customerChecklistSelectionAction(value, 'Выполненые работы'),
            hintText: ticketData.fieldWorkAction.isEmpty
                ? 'Выбрать значение'
                : ticketData.fieldWorkAction,
          ),
          ticketData.fieldWorkAction == 'Другое'
              ? TextFieldCell(
                  myTextController: fieldActionOtheTextEditingController,
                  myTextChange: (value) => customerChecklistSelectionAction(
                      value, 'Выполненые работы Другое'),
                )
              : const SizedBox(),
          const MyDivider(),
          const MyDivider(),
          const TextCell(
              myText: 'Рекомендация по продаже в данной локации:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'Продать еще FWA?',
            items: environment.salesAdvice,
            selectionAction: (value) =>
                customerChecklistSelectionAction(value, 'Продать еще FWA?'),
            hintText: 'Выбрать значение',
          ),
          const MyDivider(),
          const TextCell(
              myText: 'Рекомендация по улучшению услуг связи:',
              fontSize: 14,
              color: AppColors.selectorTitleFontColor),
          MySelectorWidget(
            title: 'Рекомендация',
            items: environment.improvementAdvice,
            selectionAction: (value) =>
                customerChecklistSelectionAction(value, 'Что нужно для сети?'),
            hintText: 'Выбрать значение',
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
