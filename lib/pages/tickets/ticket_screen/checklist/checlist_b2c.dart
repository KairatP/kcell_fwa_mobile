import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';

 
 
class ChecklistB2C extends StatelessWidget {

  ChecklistB2C({super.key});
 
  @override
  Widget build(BuildContext context) {

    networkSelectionAction(String selectedNetworkType) {}

    return Scaffold(

        body: ListView(

      children: [

        const MyDivider(),

        Row(

          children: [

            SizedBox(

              width: 411.0,

              height: 40,

              child: TextButton(

                child: const Align(

                  alignment: Alignment.center,

                  child: Text('Выбери тип сети'),

                ),

                onPressed: () => showMaterialRadioPicker(

                  context: context,

                  title: 'Тип сети',

                  items: networkType,

                  selectedItem: networkType,

                  onChanged: (value) =>

                      networkSelectionAction(value.toString()),

                ),

              ),

            ),

          ],

        ),

        const MyDivider(),

        Row(

          children: [

            Column(

              children: [

                Container(

                  padding: const EdgeInsets.all(5),

                  color: Colors.white24,

                  width: 150,

                  height: 40,

                  alignment: Alignment.center,

                  child: const Text('RSRQ'),

                ),

                Container(

                  padding: const EdgeInsets.all(5),

                  color: Colors.white24,

                  width: 150,

                  height: 40,

                  alignment: Alignment.center,

                  child: const Text('RSRP'),

                ),

                Container(

                  padding: const EdgeInsets.all(5),

                  color: Colors.white24,

                  width: 150,

                  height: 40,

                  alignment: Alignment.center,

                  child: const Text('RSSI'),

                ),

                Container(

                  padding: const EdgeInsets.all(5),

                  color: Colors.white24,

                  width: 150,

                  height: 40,

                  alignment: Alignment.center,

                  child: const Text('SINR'),

                ),

              ],

            ),

            Column(

              children: [

                SizedBox(

                  width: 261.0,

                  height: 40,

                  child: TextButton(

                    child: const Align(

                      alignment: Alignment.center,

                      child: Text('Выбери значение'),

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

                SizedBox(

                  width: 261.0,

                  height: 40,

                  child: TextButton(

                    child: const Align(

                      alignment: Alignment.center,

                      child: Text('Выбери значение'),

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

                SizedBox(

                  width: 261.0,

                  height: 40,

                  child: TextButton(

                    child: const Align(

                      alignment: Alignment.center,

                      child: Text('Выбери значение'),

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

                SizedBox(

                  width: 261.0,

                  height: 40,

                  child: TextButton(

                    child: const Align(

                      alignment: Alignment.center,

                      child: Text('Выбери значение'),

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

              ],

            ),

          ],

        ),        
const MyDivider(),

        Row(

          children: [

            Container(

              padding: const EdgeInsets.all(5),

              width: 411,

              height: 40,

              alignment: Alignment.center,

              child: const Text('ЧНН по скорости (Мб/сек, время события)'),

            )

          ],

        ),

        Row(

          children: [

            Container(

              width: 205.5,

              height: 160,

              // color: Colors.yellow,

              alignment: Alignment.topCenter,

              child: const Column(

                children: <Widget>[

                  SizedBox(

                    width: 205.5,

                    height: 40,

                    child: Align(

                      alignment: Alignment.center,

                      child: Text('Часы, ЧЧ:ММ'),

                    ),

                  ),

                  SizedBox(

                    width: 205.5,

                    height: 30,

                    child: Align(

                      alignment: Alignment.topCenter,

                      child: TextField(

                        decoration:

                        InputDecoration.collapsed(hintText: 'заполнить'),

                        style: TextStyle(fontSize: 14),

                        textAlign: TextAlign.center,

                        textAlignVertical: TextAlignVertical.center,

                      ),

                    ),

                  ),

                  SizedBox(

                    width: 205.5,

                    height: 30,

                    child: Align(

                      alignment: Alignment.topCenter,

                      child: TextField(

                        decoration:

                        InputDecoration.collapsed(hintText: 'заполнить'),

                        style: TextStyle(fontSize: 14),

                        textAlign: TextAlign.center,

                        textAlignVertical: TextAlignVertical.center,

                      ),

                    ),

                  ),

                  SizedBox(

                    width: 205.5,

                    height: 30,

                    child: Align(

                      alignment: Alignment.topCenter,

                      child: TextField(

                        decoration:

                        InputDecoration.collapsed(hintText: 'заполнить'),

                        style: TextStyle(fontSize: 14),

                        textAlign: TextAlign.center,

                        textAlignVertical: TextAlignVertical.center,

                      ),

                    ),

                  ),

                  SizedBox(

                    width: 205.5,

                    height: 30,

                    child: Align(

                      alignment: Alignment.topCenter,

                      child: TextField(

                        decoration:

                        InputDecoration.collapsed(hintText: 'заполнить'),

                        style: TextStyle(fontSize: 14),

                        textAlign: TextAlign.center,

                        textAlignVertical: TextAlignVertical.center,

                      ),

                    ),

                  ),

                ]

              ),

            ),

            const SizedBox(

              width: 205.5,

              height: 160,

              // color: Colors.pink,

              child: Column(

                children: <Widget>[

                  SizedBox(

                    width: 205.5,

                    height: 40,

                    child: Align(

                      alignment: Alignment.center,

                      child: Text('Скорость, Мб/сек'),

                    ),

                  ),

                  SizedBox(

                    width: 205.5,

                    height: 30,

                    child: Align(

                      alignment: Alignment.topCenter,

                      child: TextField(

                        decoration:

                        InputDecoration.collapsed(hintText: 'заполнить'),

                        style: TextStyle(fontSize: 14),

                        textAlign: TextAlign.center,

                        textAlignVertical: TextAlignVertical.center,

                      ),

                    ),

                  ),

                  SizedBox(

                    width: 205.5,

                    height: 30,

                    child: Align(

                      alignment: Alignment.topCenter,

                      child: TextField(

                        decoration:

                        InputDecoration.collapsed(hintText: 'заполнить'),

                        style: TextStyle(fontSize: 14),

                        textAlign: TextAlign.center,

                        textAlignVertical: TextAlignVertical.center,

                      ),

                    ),

                  ),

                  SizedBox(

                    width: 205.5,

                    height: 30,

                    child: Align(

                      alignment: Alignment.topCenter,

                      child: TextField(

                        decoration:

                        InputDecoration.collapsed(hintText: 'заполнить'),

                        style: TextStyle(fontSize: 14),

                        textAlign: TextAlign.center,

                        textAlignVertical: TextAlignVertical.center,

                      ),

                    ),

                  ),

                  SizedBox(

                    width: 205.5,

                    height: 30,

                    child: Align(

                      alignment: Alignment.topCenter,

                      child: TextField(

                        decoration:

                        InputDecoration.collapsed(hintText: 'заполнить'),

                        style: TextStyle(fontSize: 14),

                        textAlign: TextAlign.center,

                        textAlignVertical: TextAlignVertical.center,

                      ),

                    ),

                  ),

                ],

              ),

            )

          ],

        ),

        const MyDivider(),

      ],

    )

    );

  }

  final List networkType = ['4G', '5G', '4G + 5G'];
 
  final List rSRQ = ['>= -5 (Отлично)', 'от -5 до -10 (Хорошо)',
  'от -10 до -15 (Удовл.)', 'от -15 до -20 (Плохо)', '≤ -20 (Нет сигнала)' ];
 
  final List rSRP = ['>= -70 (Отлично)', 'от -70 до -90 (Хорошо)',
  'от -90 до -110 (Удовл.)', 'от -110 до -120 (Плохо)', '≤ -120 (Нет сигнала)' ];
 
  final List rSSI = ['>= -60 (Отлично)', 'от -60 до -80 (Хорошо)',
  'от -80 до -100 (Удовл.)', 'от -100 до -110 (Плохо)', '≤ -110 (Нет сигнала)' ];
 
  final List sINR = ['>= 15 (Отлично)', 'от 15 до 5 (Хорошо)',
  'от 5 до 0 (Удовл.)', 'от 0 до -5 (Плохо)', '≤ -5 (Нет сигнала)' ];

}
 