// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:remi/src/pages/generales_page.dart';
import 'package:remi/src/providers/form_provider.dart';
import 'package:remi/src/widget/navitation_drawer_widget.dart';

class FormPage2 extends StatefulWidget {
  FormPage2({Key? key, required String title}) : super(key: key);

  @override
  _FormPage2State createState() => _FormPage2State();
}

const padd = Padding(padding: EdgeInsets.all(30));
const title1 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline);

const title2 = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
const enunciado = TextStyle(fontSize: 16, fontStyle: FontStyle.italic);
final appbar_green = Colors.green[700];

class _FormPage2State extends State<FormPage2> {
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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
                child: Text('ANTECEDENTES DE LA EMPRESA\n',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            const Text(
              '1. GENERALES DE LA EMPRESA\n',
              style: title1,
            ),
            const Text('1.1 NOMBRE:', style: title2),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese el nombre."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n1.2 DIRECCIÓN:', style: title2),
            TextFormField(
              decoration:
                  const InputDecoration(hintText: "Ingrese la dirección."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n1.3 TELÉFONO Y FAX O MAIL:', style: title2),
            TextFormField(
              decoration:
                  const InputDecoration(hintText: "Ingrese el teléfono."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n1.4 R.F.C:', style: title2),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese el R.F.C."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n1.5 DOMICILIO FISCAL:', style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el domicilio fiscal."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text(
              '\n2. ANTIGÜEDAD DE LA EMPRESA',
              style: title1,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el tiempo de antigüedad de la empresa."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\n3. ESTATUS LEGAL DE LA EMPRESA", style: title1),
            const Text("\n3.1 PERSONA FÍSICA", style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText:
                      "Indique si el estatus legal de la empresa corresponde a una persona física."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\n3.2 PERSONAL MORAL", style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText:
                      "Indique si el estatus legal de la empresa corresponde a una persona moral."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\n3.3 NO REGISTRADA", style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText:
                      "Indique si el estatus legal de la empresa no se encuentra registrado."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\n4. ESTATUS FISCAL", style: title1),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el estatus fiscal de la empresa."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text(
              "\n5. TAMAÑO DE LA EMPRESA",
              style: title1,
            ),
            const Text('\n5.1 NÚMERO DE EMPLEADOS:', style: title2),
            const Text("\nOPERATIVOS", style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText:
                      "Ingrese la cantidad de empleados de tipo operativos."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\nADMINISTRATIVOS", style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText:
                      "Ingrese la cantidad de empleados de tipo administrativos."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\nOTROS", style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la cantidad de empleados de otro tipo."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\nTOTAL", style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el total de empleados."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\nCOMENTARIOS", style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el comentario sobre los empleados."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n5.2 VENTAS:', style: title2),
            const Text("\nDIARIAS", style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la cantidad de ventas diarias."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\nSEMANALES", style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la cantidad de ventas semanales."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\nMENSUALES", style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la cantidad de ventas mensuales."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n5.3 VALOR DE LOS ACTIVOS:', style: title2),
            const Text("\nTERRENO", style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el valor de los terrenos."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\nBIENES", style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el valor de los bienes."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\nOTROS", style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el valor de otros tipos."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n5.4 CÁLCULOS', style: title2),
            const Text("\nVENTAS / EMPLEADOS", style: enunciado),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\nVENTAS / ACTIVOS", style: enunciado),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\n6. COBERTURA DE MERCADO DE LA EMPRESA",
                style: title1),
            const Text('\n6.1 LOCAL:', style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Indique si la cobertura es de tipo local."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n6.2 REGIONAL:', style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Indique si la cobertura es de tipo regional."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n6.3 INTERNACIONAL:', style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText:
                      "Indique si la cobertura es de tipo internacional."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\n7. VISIÓN DE LA EMPRESA", style: title1),
            const Text('\n7.1 CORTO PLAZO:', style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la visión de la empresa a corto plazo."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n7.2 LARGO PLAZO:', style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la visión de la empresa a largo plazo."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n8. COMENTARIO EJECUTIVO:', style: title1),
            TextFormField(
              decoration: const InputDecoration(
                  hintText:
                      "Ingrese el comentario ejecutivo de antecedentes de la empresa."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                  child: RaisedButton.icon(
                icon: const Icon(
                  Icons.save,
                  color: Colors.white,
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Scaffold.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')));
                  }
                },
                label: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                color: appbar_green,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
