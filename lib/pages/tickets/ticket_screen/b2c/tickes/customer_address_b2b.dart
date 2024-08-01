
import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:kcell_fwa_mobile/pages/widgets/text_cell.dart';

class CustomerAddressB2B extends StatelessWidget {
  const CustomerAddressB2B({super.key, required this.ticketData});
  final NewTicketModel ticketData;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 193, 230, 250),
      body: ListView(
        children: [
          const TextCell(myText: 'Регион:', fontSize: 14, color:   Color.fromARGB(255, 80, 80, 80),),
          TextCell(myText: ticketData.regionName, fontSize: 16, color: const Color.fromARGB(255, 0, 18, 32),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Район:', fontSize: 14, color:  Color.fromARGB(255, 80, 80, 80),),
          TextCell(myText: ticketData.subareaName, fontSize: 16, color:const Color.fromARGB(255, 0, 18, 32),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Область:', fontSize: 14, color:  Color.fromARGB(255, 80, 80, 80)),
          TextCell(myText: ticketData.oblastName, fontSize: 16, color: const Color.fromARGB(255, 0, 18, 32),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Город/деревня:', fontSize: 14, color:   Color.fromARGB(255, 80, 80, 80),),
          TextCell(myText: ticketData.cityName, fontSize: 16, color: const Color.fromARGB(255, 0, 18, 32),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Улица:', fontSize: 14, color:  Color.fromARGB(255, 80, 80, 80),),
          TextCell(myText: ticketData.streetName, fontSize: 16, color:const Color.fromARGB(255, 0, 18, 32),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Номер дома/участка:', fontSize: 14, color:  Color.fromARGB(255, 80, 80, 80),),
          TextCell(myText: ticketData.houseId, fontSize: 16, color: const Color.fromARGB(255, 0, 18, 32),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(
              myText: 'Ближайший перекресток/Ближайшее адм. Здание:', fontSize: 14, color:   Color.fromARGB(255, 80, 80, 80),),
          TextCell(myText: ticketData.streetCroseName, fontSize: 16, color: const Color.fromARGB(255, 0, 18, 32),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Дата возникновения:', fontSize: 14, color:  Color.fromARGB(255, 80, 80, 80),),
          TextCell(myText: ticketData.ticketSetupDate, fontSize: 16, color:const Color.fromARGB(255, 0, 18, 32),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Полный адрес:', fontSize: 14, color:   Color.fromARGB(255, 80, 80, 80),),
          TextCell(myText: ticketData.fullAdress, fontSize: 16, color: const Color.fromARGB(255, 0, 18, 32),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Контакты абонента:', fontSize: 14, color:   Color.fromARGB(255, 80, 80, 80),),
          TextCell(myText: ticketData.phoneNumber, fontSize: 16, color: const Color.fromARGB(255, 0, 18, 32),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Координаты широта:', fontSize: 14, color:   Color.fromARGB(255, 80, 80, 80),),
          TextCell(myText: ticketData.lat, fontSize: 16, color:const Color.fromARGB(255, 0, 18, 32),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Координаты долгота:', fontSize: 14, color:  Color.fromARGB(255, 80, 80, 80),),
          TextCell(myText: ticketData.long, fontSize: 16, color:const Color.fromARGB(255, 0, 18, 32),),
          const SizedBox(height: 7,),
          const MyDivider(),
        ],
      ),
    );
  }
}