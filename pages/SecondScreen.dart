import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Alexis Yael Perez Avecillas',
              style: TextStyle(fontSize: 25.0, color: Colors.green),
            ),
            SizedBox(
              height: 15.0,
            ),
            Image.asset(
              'assets/images/yael10.jpg',
              width: 200.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            )
          ],
        ),
      ),
    );
  }
}
