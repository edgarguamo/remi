// ignore_for_file: deprecated_member_use

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
      body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final formKey = GlobalKey<FormState>();
  final json = formProvider.chargeData();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('GENERALES'),
          Text('Nombre'),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter text';
              }
            },
          ),
          Text('Direccion'),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter text';
              }
            },
          ),
          Text('Telefono'),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter text';
              }
            },
          ),
          Text('Antecedentes del empresario'),
          Text('El Empresario'),
          Text('Originario'),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter text';
              }
            },
          ),
          Text('Lugar'),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter text';
              }
            },
          ),
          Text('Edad'),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter text';
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Procesing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
