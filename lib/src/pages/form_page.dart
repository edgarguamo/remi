import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:remi/src/providers/form_provider.dart';
import 'package:remi/src/widget/navitation_drawer_widget.dart';

class FormPage extends StatefulWidget {
  FormPage({Key? key, required String title}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

const padd = Padding(padding: EdgeInsets.all(30));

class _FormPageState extends State<FormPage> {
  final appbar_green = Colors.green[700];

  late List<String> respuestas = [];

  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Center(child: Text('REMI')),
          backgroundColor: appbar_green,
          elevation: 0,
          actions: <Widget>[
            IconButton(
                tooltip: 'Ir a perfil',
                icon: const Icon(Icons.account_circle),
                onPressed: () {})
          ],
        ),
        body: _list());
  }

  _formQuestions() {
    return Container();
  }

  _crearBotonEnviar() {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(respuestas[0]),
            );
          },
        );
      },
      child: Row(children: [Icon(Icons.save), Text("Guardar")]),
    );
  }

  _crearNombre() {
    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Producto'),
    );
  }

  _crearPrecio() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: 'Precio'),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: formProvider.chargeData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> options = [];
    data?.forEach((element) {
      final textController = TextEditingController();
      final widgetTemp = SizedBox(
        child: Column(
          children: [
            ListTile(
              title: _formatText(element),
            ),
            TextFormField(
              controller: textController,
              validator: (value) {
                if (value == null) {
                  return 'Ingresar texto';
                }
              },
            ),
          ],
        ),
      );
      _getResp(textController.text);
      options.add(widgetTemp);
    });
    options.add(_crearBotonEnviar());
    return options;
  }

  List<String> _getResp(String a) {
    respuestas.add(a);
    return respuestas;
  }

  List<DropdownMenuItem<String>> _puntaje(int element) {
    List<DropdownMenuItem<String>> data = [];
    for (var i = 1; i <= element; i++) {
      final widgetTemp = DropdownMenuItem<String>(
        value: i.toString(),
        child: Text(i.toString()),
      );
      data.add(widgetTemp);
    }
    return data;
  }

  Widget _item(dynamic element) {
    Widget a = Text('');
    SizedBox(child: ListTile(title: _formatText(element)));
    return a;
  }

  Widget _formatText(dynamic element) {
    Widget text = Text(element['titulo'], style: TextStyle(fontSize: 16));
    if (element['tipo'] == 'titulo1') {
      text = Text(element['titulo'],
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20));
    } else if (element['tipo'] == 'titulo2') {
      text = Text(element['titulo'],
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18));
    }
    return text;
  }
}
