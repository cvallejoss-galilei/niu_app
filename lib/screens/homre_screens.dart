import 'package:flutter/material.dart';

class HomeSacreens extends StatelessWidget {
  const HomeSacreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontsize30 = TextStyle(fontSize: 30);

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Contador de clics:',
              style: fontsize30,
            ),
            Text(
              '10',
              style: fontsize30,
            ),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_circle),
        onPressed: () {
          print('oli');
        },
      ),
    );
  }
}
