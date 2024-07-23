import 'package:flutter/material.dart';
import 'package:kcell_fwa_mobile/pages/widgets/divider.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
 
class ChecklistB2B extends StatelessWidget {
  const ChecklistB2B({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [

        const MyDivider(),

        Row(

          children: [

            Container(

              padding: const EdgeInsets.all(5),

              color: Colors.grey,

              width: 150,

              height: 30,

              child: const Text('Тип сети'),

            ),

            Container(

              padding: const EdgeInsets.all(5),

              color: Colors.white24,

              width: 261,

              height: 30,

            ),

          ],

        ),

        const MyDivider(),

        Row(

          children: [

            Container(

              padding: const EdgeInsets.all(5),

              color: Colors.grey,

              width: 150,

              height: 120,

              child: const Text('Показатели подключения'),

            ),

            Column(

              children: [

                Container(

                  padding: const EdgeInsets.all(5),

                  color: Colors.white24,

                  width: 100,

                  height: 30,

                  child: const Text('RSRQ'),

                ),

                Container(

                  padding: const EdgeInsets.all(5),

                  color: Colors.white24,

                  width: 100,

                  height: 30,

                  child: const Text('RSRP'),

                ),

                Container(

                  padding: const EdgeInsets.all(5),

                  color: Colors.white24,

                  width: 100,

                  height: 30,

                  child: const Text('RSSI'),

                ),

                Container(

                  padding: const EdgeInsets.all(5),

                  color: Colors.white24,

                  width: 100,

                  height: 30,

                  child: const Text('SINR'),

                ),

              ],

            ),

            Column(

              children: [

                Container(

                  padding: const EdgeInsets.all(5),

                  color: Colors.white24,

                  width: 161,

                  height: 30,

                  child: const TextField(

                    decoration:

                        InputDecoration.collapsed(hintText: 'заполнить'),

                    style: TextStyle(fontSize: 14),

                    textAlign: TextAlign.left,

                    textAlignVertical: TextAlignVertical.center,

                  ),

                ),

                Container(

                  padding: const EdgeInsets.all(5),

                  color: Colors.white24,

                  width: 161,

                  height: 30,

                  child: const TextField(

                    decoration:

                        InputDecoration.collapsed(hintText: 'заполнить'),

                    style: TextStyle(fontSize: 14),

                    textAlign: TextAlign.left,

                    textAlignVertical: TextAlignVertical.center,

                  ),

                ),

                Container(

                  padding: const EdgeInsets.all(5),

                  color: Colors.white24,

                  width: 161,

                  height: 30,

                  child: const TextField(

                    decoration:

                        InputDecoration.collapsed(hintText: 'заполнить'),

                    style: TextStyle(fontSize: 14),

                    textAlign: TextAlign.left,

                    textAlignVertical: TextAlignVertical.center,

                  ),

                ),

                Container(

                  padding: const EdgeInsets.all(5),

                  color: Colors.white24,

                  width: 161,

                  height: 30,

                  child: const TextField(

                    decoration:

                        InputDecoration.collapsed(hintText: 'заполнить'),

                    style: TextStyle(fontSize: 14),

                    textAlign: TextAlign.left,

                    textAlignVertical: TextAlignVertical.center,

                  ),

                ),

              ],

            ),

          ],

        ),

        const MyDivider(),

        Row(

          children: <Widget>[

            SizedBox(

              width: 150.0,

              child: TextButton(

                child: const Align(

                  alignment: Alignment.center,

                  child: Text('Network Type'),

                ),

                onPressed: () => showMaterialRadioPicker(

                  context: context,

                  title: 'Pick',

                  items: networkType,

                  selectedItem: networkType,

                  onChanged: (value) =>

                      networkSelectionAction(value.toString()),

                ),

              ),

            ),

            Expanded(

              child: Text(

                '$Text()',

                textAlign: TextAlign.center,

              ),

            ),

          ],

        ),

        const MyDivider(),

      ],

    ));

  }
 
  networkSelectionAction(String selectedNetworkType) {}

}
 
final List networkType = ['4G', '5G', '4G + 5G'];
 