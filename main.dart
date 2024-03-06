import 'package:flutter/material.dart';
import 'package:afrikadubl/grid.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyGridViewPage(),
    );
  }
}
class FourthRoute extends StatelessWidget {
  const FourthRoute({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
    
}



class GridItem extends StatelessWidget {
  final Item item;

  const GridItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 13, 0, 58),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            item.flag,
            width: 400,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text(
            item.name,
            style: const TextStyle(
              color: Colors.white,fontSize: 20.0),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Площадь: ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                item.sqr,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                      'Население: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    
              ),
                  Text(
                    item.population,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0),
              ),
            ],
          ),
          const SizedBox(height: 30),
      const Text(
        'Описание: ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
      Text(
            item.name,
            style: const TextStyle(
              color: Colors.white,fontSize: 20.0),
          ),
      Text( item.text,  style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        ),      
      ElevatedButton(
          child: const Text('...'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
        ),
            ],
      )
      
    ]
      ),
    );       
  }
}

