import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TarjetaCred extends StatefulWidget {
  TarjetaCred({Key? key}) : super(key: key);
  @override
  State<TarjetaCred> createState() => _TarjetaCred();
}

class _TarjetaCred extends State<TarjetaCred> {
  late TextEditingController _controller;
  var tarjeta = MaskTextInputFormatter(
      mask: '####-####-####-####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var expiracion = MaskTextInputFormatter(
      mask: '##/##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var codigo = MaskTextInputFormatter(
      mask: '###',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Form(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Positioned(
                top: 50.0,
                left: 50.0,
                child: Container(
                  width: 400.0,
                  height: 400.0,
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/American.jpg'))),
                )),
            const SizedBox(height: 30.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: Colors.yellow)),
              child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle_outlined),
                      labelText: 'Nombre',
                      hintText: 'Pepe Cholo')),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: Colors.yellow)),
              child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [tarjeta],
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.credit_card),
                      labelText: 'Numero de tarjeta',
                      hintText: '0000-0000-0000-0000')),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Wrap(
              alignment: WrapAlignment.start,
              spacing: 50.0,
              direction: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 250.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Colors.purple)),
                  child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [expiracion],
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.date_range_outlined),
                          labelText: 'Fecha',
                          hintText: '20/12')),
                ),
                Container(
                  width: 250.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Colors.purple)),
                  child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [codigo],
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.numbers),
                          labelText: 'CVV',
                          hintText: '123')),
                )
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(child: const Text("Finalizar"), onPressed: () {})
          ])),
    ));
  }
}
