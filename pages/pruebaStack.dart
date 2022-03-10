import 'package:flutter/material.dart';

class pruebaStack extends StatelessWidget {
  const pruebaStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Stack'),
      ),
      /* body: Center(
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
                    top: 40.0,
                    left: 40.0,
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.green,
                    )),
                Positioned(
                    top: 80.0,
                    left: 80.0,
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.black,
                      padding: EdgeInsets.all(15.0),
                      alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(
                          image: const DecorationImage(
                              image: NetworkImage('', scale: 10.0))),
                    ))
              ],
            ),
          ),
        ),
      ),*/

      body: Center(
        child: SizedBox(
          width: 300.0,
          height: 300.0,
          child: Center(
            child: Stack(
              // clipBehavior: Clip.antiAliasWithSaveLayer, //suaviza los bordes
              //fit:
              //  StackFit.expand, //modifica el tamaño de horizontal y vertical
              // overflow: Overflow.visible,
              children: <Widget>[
                Container(
                    width: 300.0,
                    height: 300.0,
                    color: Colors.red,
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.topRight,
                    child: Text('Uno', style: TextStyle(color: Colors.white))),
                Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.black,
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.topRight,
                    child: Text('dos', style: TextStyle(color: Colors.white))),
                Container(
                    width: 200.0,
                    height: 200.0,
                    color: Colors.purple,
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.topRight,
                    child: Text('tres', style: TextStyle(color: Colors.white))),
                Container(
                    width: 200.0,
                    height: 200.0,
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.bottomCenter,
                    decoration: const BoxDecoration(
                        color: Colors.purple,
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://i.pinimg.com/564x/18/2b/d9/182bd9f2bbbd7900089ae4a7a23f4cab.jpg',
                                scale: 10.0))),
                    child:
                        Text('cuatro', style: TextStyle(color: Colors.white)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
