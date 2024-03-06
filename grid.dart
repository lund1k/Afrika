import 'package:afrikadubl/main.dart';
import 'package:flutter/material.dart';

class Item {
  String id;
  String name;
  String flag;
  String sqr;
  String population;
  String text;
  String number;

  Item({required this.id, required this.name, required this.flag, required this.sqr, required this.population, required this.text, required this.number });
}

class MyGridViewPage extends StatelessWidget {
  final List<Item> items = [
    Item(id:'1',name: 'Египет',flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/170px-Flag_of_Egypt.svg.png',sqr:'1 010 407',population:'102 334 404', text: ' славится тем, что ', number: 'first' ),
    Item(id:'2',name: 'Конго',flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Flag_of_the_Republic_of_the_Congo.svg/170px-Flag_of_the_Republic_of_the_Congo.svg.png',sqr:'2 344 858',population:'89 561 403', text: ' славится тем, что ', number: 'second' ),
    Item(id:'3',name: 'Танзания',flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Flag_of_Tanzania.svg/170px-Flag_of_Tanzania.svg.png',sqr:'	945 087',population:'61 498 437', text: ' славится тем, что ', number: 'third' ),
    Item(id:'4',name: 'Южная Африка',flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Flag_of_South_Africa.svg/170px-Flag_of_South_Africa.svg.png',sqr:'	1 219 090',population:'59 308 690', text: ' славится тем, что ', number: 'fourth' ),
    Item(id:'5',name: 'Эфиопия',flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Flag_of_Ethiopia.svg/170px-Flag_of_Ethiopia.svg.png',sqr:'	1 104 300',population:'114 963 588', text: ' славится тем, что ', number: 'fifth' ),
    Item(id:'6',name: 'Нигерия',flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flag_of_Nigeria.svg/170px-Flag_of_Nigeria.svg.png',sqr:'923 768',population:'206 139 589', text: ' славится тем, что ', number: 'sixth' ),
    Item(id:'7',name: 'Кения',flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Kenya.svg/170px-Flag_of_Kenya.svg.png',sqr:'	580 367',population:'54 985 698', text: ' славится тем, что ', number: 'seventh' ),
    Item(id:'8',name: 'Алжир',flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Flag_of_Algeria.svg/170px-Flag_of_Algeria.svg.png',sqr:'	2 381 741',population:'43 851 044', text: ' славится тем, что ', number: 'eighth' ),
    Item(id:'9',name: 'Судан',flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_Sudan.svg/170px-Flag_of_Sudan.svg.png',sqr:'	1 861 484',population:'44 909 353' , text: ' славится тем, что ', number: 'nineth'),
    Item(id:'10',name: 'Мадагаскар',flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Madagascar.svg/170px-Flag_of_Madagascar.svg.png',sqr:'	587 041',population:'27 691 018', text: ' славится тем, что ', number: 'tenth' ),
    Item(id:'11',name: 'Уганда',flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Flag_of_Uganda.svg/170px-Flag_of_Uganda.svg.png',sqr:'	241 038',population:'46 103 165', text: ' славится тем, что ', number: 'eleventh' ),
    Item(id:'12',name: 'Марокко',flag: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Flag_of_Morocco.svg/170px-Flag_of_Morocco.svg.png',sqr:'446 550',population:'36 910 560', text: ' славится тем, что ', number: 'twelfth' ),
  ];

  MyGridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView country'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(items.length, (index) {
          return GridItem(
            item: items[index],
          );
        }),
      ),
    );
  }
}