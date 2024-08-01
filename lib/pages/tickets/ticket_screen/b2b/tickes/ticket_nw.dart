import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/model/new_tickcet_model.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:kcell_fwa_mobile/pages/widgets/text_cell.dart';

class TicketNW extends StatelessWidget {
  const TicketNW({super.key, required this.ticketData});
  final NewTicketModel ticketData;
 
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 155, 185, 170),
      body: ListView(
        children: [
          const TextCell(myText: 'Номер заявки:', fontSize: 14, color: Color.fromARGB(255, 80, 80, 80)),
          TextCell(myText: ticketData.ticketNumber, fontSize: 16, color: Colors.black),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Тип услуги:', fontSize: 14, color: Color.fromARGB(255, 80, 80, 80)),
          TextCell(myText: ticketData.serviceTypeKcell, fontSize: 16, color:   Colors.black),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Дата возникновения:', fontSize: 14,color: Color.fromARGB(255, 80, 80, 80)),
          TextCell(myText: ticketData.ticketSetupDate, fontSize: 16, color:  Colors.black),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Описание:', fontSize: 14, color: Color.fromARGB(255, 80, 80, 80)),
          TextCell(myText: ticketData.description, fontSize: 16, color:  Colors.black),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Создан:', fontSize: 14, color: Color.fromARGB(255, 80, 80, 80)),
          TextCell(myText: ticketData.creatorName, fontSize: 16, color:  Colors.black),
        ],
      ),
    );
  }
}

// class TicketNW extends StatelessWidget {
//   const TicketNW({super.key, required this.ticketData});
//   final NewTicketModel ticketData;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView(
//       children: [
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 30,
//               child: const Text('Номер заявки в SAO'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 30,
//               child: Text(ticketData.ticketNumber.toString()),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 30,
//               child: const Text('Тип услуги'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 30,
//               child: Text(ticketData.serviceTypeKcell),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 30,
//               child: const Text('Дата возникновения'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 30,
//               child: Text(ticketData.ticketRecivedDate),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 30,
//               child: const Text('Регион'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 30,
//               child: Text(ticketData.regionName),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 30,
//               child: const Text('Район'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 30,
//               child: Text(ticketData.subareaName),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 30,
//               child: const Text('Область'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 30,
//               child: Text(ticketData.oblastName),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 30,
//               child: const Text('Город/Деревня'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 30,
//               child: Text(ticketData.cityName),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 30,
//               child: const Text('Улица'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 30,
//               child: Text(ticketData.streetName),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 50,
//               child: const Text('Номер дома/участка'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 50,
//               child: Text(ticketData.houseId),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 90,
//               child: const Text('Ближайший перекресток/Ближайшее адм. Здание'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 90,
//               child: Text(ticketData.streetCroseName),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 30,
//               child: const Text('Полный адрес'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 30,
//               child: Text(ticketData.fullAdress),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 30,
//               child: const Text('Контакты абонента'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 30,
//               child: Text(ticketData.phoneNumber),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 30,
//               child: const Text('Координаты широта'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 30,
//               child: Text(ticketData.lat),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 30,
//               child: const Text('Координаты долгота'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 30,
//               child: Text(ticketData.long),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 129,
//               child: const Text('Описание'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 129,
//               child: Text(ticketData.description),
//             ),
//           ],
//         ),
//         const MyDivider(),
//         Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.grey,
//               width: 150,
//               height: 30,
//               child: const Text('Создан'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(5),
//               color: Colors.white24,
//               width: 261,
//               height: 30,
//               child: Text(ticketData.creatorName),
//             ),
//           ],
//         ),
//         const MyDivider(),
//       ],
//     ));
//   }
// }
