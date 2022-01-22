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
      body: _list(),
    );
  }

  _formQuestions() {
    return Container();
  }

  _crearBotonEnviar() {
    return ElevatedButton(
      onPressed: () {},
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
      final widgetTemp = SizedBox(
        child: ListTile(
          title: Text(element['titulo']),
        ),
        // DropdownButton(
        //   items: _puntaje(element['valorMax']),
        //   value: value,
        //   onChanged: (String? value) {
        //     this.value = value;
        //   },
        // )
      );
      options.add(widgetTemp);
    });
    return options;
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
}
