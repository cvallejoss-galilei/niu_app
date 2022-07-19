import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    const fontsize30 = TextStyle(fontSize: 30);

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador de clics:',
              style: fontsize30,
            ),
            Text(
              '$counter',
              style: fontsize30,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: Icon(Icons.remove_circle),
            onPressed: () {
              counter--;
              setState(() {});
            },
          ),
          FloatingActionButton(
              child: Icon(Icons.restore_rounded),
              onPressed: () {
                counter = 0;
                setState(() {});
              }),
          FloatingActionButton(
            child: const Icon(Icons.add_circle),
            onPressed: () {
              counter++;
              print('oli');
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
