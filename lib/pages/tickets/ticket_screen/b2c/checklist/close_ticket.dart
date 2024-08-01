import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:kcell_fwa_mobile/pages/widgets/text_cell.dart';

class CloseTheTicket extends StatelessWidget {
  const CloseTheTicket({super.key});
 
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: const Color.fromARGB(55, 107, 90, 229),
      body: ListView(
        children: [
          const TextCell(myText: 'RSRQ:', fontSize: 14, color: Colors.grey),
          const TextCell(myText: '-5', fontSize: 16, color:   Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'RSRP:', fontSize: 14, color: Colors.grey),
          const TextCell(myText: '-71', fontSize: 16, color:   Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'RSSI:', fontSize: 14, color: Colors.grey),
          const TextCell(myText: '-61', fontSize: 16, color:   Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'SINR:', fontSize: 14, color: Colors.grey),
          const TextCell(myText: '14', fontSize: 16, color:   Color.fromARGB(255, 0, 3, 50),),
          // const MyDivider(),
          // TextCell(myText: 'ЧНН скорости (время события):', fontSize: fontSize, color: color),
          // TextCell(myText:  '09:05', fontSize: fontSize, color: color),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'ЧНН скорости (время события):', fontSize: 14, color: Colors.grey),
          const TextCell(myText: '09:05', fontSize: 16, color: Color.fromARGB(255, 0, 3, 50),),
          const TextCell(myText: '11:10', fontSize: 16, color: Color.fromARGB(255, 0, 3, 50),),
          const TextCell(myText: '15:55', fontSize: 16, color: Color.fromARGB(255, 0, 3, 50),),
          const TextCell(myText: '20:06', fontSize: 16, color: Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'ЧНН скорости (Mб/сек):', fontSize: 14, color: Colors.grey),
          const TextCell(myText: '105', fontSize: 16, color: Color.fromARGB(255, 0, 3, 50),),
          const TextCell(myText: '110', fontSize: 16, color:  Color.fromARGB(255, 0, 3, 50),),
          const TextCell(myText: '120', fontSize: 16, color:  Color.fromARGB(255, 0, 3, 50),),
          const TextCell(myText: '115', fontSize: 16, color:  Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'ID сайта:', fontSize: 14, color: Colors.grey),
          const TextCell(myText: '01964', fontSize: 16, color: Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Сектор:', fontSize: 14, color: Colors.grey),
          const TextCell(myText: '122', fontSize: 16, color: Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Ведущий оператор:', fontSize: 14, color: Colors.grey),
          const TextCell(myText: 'Kcell', fontSize: 16, color:  Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Качества сигнала, скорость до (Мб/с):', fontSize: 14, color: Colors.grey),
          const TextCell(myText: '80', fontSize: 16, color: Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Качества сигнала скорость после (Мб/с):', fontSize: 14, color: Colors.grey),
          const TextCell(myText: '900', fontSize: 16, color: Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Качества сигнала до (баллы):', fontSize: 14, color: Colors.grey),
          const TextCell(myText: '45', fontSize: 16, color: Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Качество сигнала после (баллы):', fontSize: 14, color: Colors.grey),
          const TextCell(myText: '400', fontSize: 16, color: Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Обращения абонента:', fontSize: 14, color: Colors.grey),
          const TextCell(myText: 'Первичное обращение', fontSize: 16, color: Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Тип жалобы:', fontSize: 14, color: Colors.grey),
          const TextCell(myText: 'Низкая скорость интернета', fontSize: 16, color: Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'История обращений:', fontSize: 14, color: Colors.grey),
          const TextCell(myText: 'Lorem ipsum dolor sit amet', fontSize: 16, color:  Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
          const MyDivider(),
          const TextCell(myText: 'Выполненные работы:', fontSize: 14, color: Colors.grey),
          const TextCell(myText: 'Перемещение роутера', fontSize: 16, color: Color.fromARGB(255, 0, 3, 50),),
          const SizedBox(height: 7,),
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
 