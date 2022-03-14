import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MyStateFulWidget extends StatefulWidget {
  const MyStateFulWidget({Key? key}) : super(key: key);

  @override
  State<MyStateFulWidget> createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  late TextEditingController _controller;

  bool _isChecket1 = true;
  bool _isChecket2 = true;
  bool _isChecket3 = true;

  var maskFormatter = MaskTextInputFormatter(
      mask: '####-####', filter: {"#": RegExp(r'[0-9]')});

  @override
  void initState() {
    //TODO: implement initState
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
          //padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              inputEmail(_controller),
              SizedBox(height: 10),
              inputPassword(),
              SizedBox(height: 10),
              inputCard(maskFormatter),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                margin: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CheckboxListTile(
                    title: const Text('Validar'),
                    value: _isChecket1,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecket1 = value!;
                      });
                    }),
              ),

              /*TextFormField(
                keyboardType: TextInputType.emailAddress,
                autocorrect: true,
                controller: _controller,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.contact_mail),
                    labelText: 'Correo',
                    hintText: 'micorreo@correo.com'),
              ),
              const SizedBox(height: 20.0),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'contraseña',
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
                  LengthLimitingTextInputFormatter(16)
                ],
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.credit_card),
                    labelText: 'Tarjeta',
                    hintText: "1234-1234-1234-1234"),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Primer checkBox',
                style: TextStyle(fontSize: 15.0, color: Colors.green),
              ),
              Checkbox(
                  value: _isChecket1,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecket1 = value!;
                    });
                  }),
              const SizedBox(height: 20.0),
              Text(
                'Segundo checkBox',
                style: TextStyle(fontSize: 15.0, color: Colors.green),
              ),
              Checkbox(
                  value: _isChecket2,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecket2 = value!;
                    });
                  }),
              const SizedBox(height: 20.0),
              Text(
                'Tercer checkBox',
                style: TextStyle(fontSize: 15.0, color: Colors.green),
              ),
              Checkbox(
                  value: _isChecket3,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecket3 = value!;
                    });
                  })*/
            ],
            // padding: const EdgeInsets.all(40.0),
            //child: TextField(
            // controller: _controller,
          ),
        ),
      ),
    );
    //);
  }
}

Widget inputCard(maskFormatter) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 3.0)),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        //FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
        //LengthLimitingTextInputFormatter(16)
        maskFormatter
      ],
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.credit_card),
          labelText: 'Tarjeta',
          hintText: "1234-1234-1234-1234"),
    ),
  );
}

Widget inputPassword() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 3.0)),
    child: TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.lock),
        labelText: 'contraseña',
      ),
    ),
  );
}

Widget inputEmail(_controller) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 3.0)),
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      controller: _controller,
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.contact_mail),
          labelText: 'Correo',
          hintText: 'micorreo@correo.com'),
    ),
  );
}

/*onSubmitted: (String value) async {
              await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Prueba dialogo'),
                      content: Text(
                          'Ha escrito "$value", de longitud: ${value.characters.length}'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Ok'),
                        )
                      ],
                    );
                  });
            },*/
