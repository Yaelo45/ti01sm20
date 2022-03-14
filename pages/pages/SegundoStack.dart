import 'package:flutter/material.dart';

class SegundoStack extends StatelessWidget {
  const SegundoStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos Stack'),
      ),
      body: Center(
        child: SizedBox(
          width: 300.0,
          height: 300.0,
          child: Center(
            child: Stack(
              clipBehavior: Clip.antiAliasWithSaveLayer, //suaviza los bordes
              fit:
                  StackFit.expand, //modifica el tamaño de horizontal y vertical
              overflow: Overflow.visible,
              children: <Widget>[
                Positioned(
                    top: 50.0,
                    left: 50.0,
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      padding: EdgeInsets.all(15.0),
                      alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/yael10.jpg'))),
                    )),
                Positioned(
                  top: 180.0,
                  left: 54.0,
                  child: Container(
                      padding: EdgeInsets.all(15.0),
                      alignment: Alignment.topRight,
                      child: Text('Alexis Yael Perez Avecillas',
                          style: TextStyle(color: Colors.black))),
                ),
                Positioned(
                    top: 220.0,
                    left: 105.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Regresar'),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
