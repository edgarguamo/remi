// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:remi/src/models/empresa_model.dart';
import 'package:remi/src/providers/empresa_provider.dart';
import 'package:remi/src/widget/navitation_drawer_widget.dart';
import '';

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
  final empresaProvider = new EmpresaProvider();
  EmpresaModel empresa = new EmpresaModel();
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
              onSaved: (value) {
                empresa.nombre = value!;
              },
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
              onSaved: (value) {
                empresa.direccion = value!;
              },
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
              onSaved: (value) {
                empresa.contacto = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n1.4 R.F.C:', style: title2),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese el R.F.C."),
              onSaved: (value) {
                empresa.rfc = value!;
              },
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
              onSaved: (value) {
                empresa.fiscal = value!;
              },
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
              onSaved: (value) {
                empresa.antiguedad = int.parse(value!);
              },
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
              onSaved: (value) {
                empresa.estatus = value!;
              },
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
              onSaved: (value) {
                empresa.moral = value!;
              },
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
              onSaved: (value) {
                empresa.noRegistrada = value!;
              },
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
              onSaved: (value) {
                empresa.fiscal = value!;
              },
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
              onSaved: (value) {
                empresa.empleados = int.parse(value!);
              },
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
              onSaved: (value) {
                empresa.administrativos = int.parse(value!);
              },
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
              onSaved: (value) {
                empresa.otros = int.parse(value!);
              },
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
              onSaved: (value) {
                empresa.total = int.parse(value!);
              },
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
              onSaved: (value) {
                empresa.comentarios = value!;
              },
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
              onSaved: (value) {
                empresa.diarias = int.parse(value!);
              },
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
              onSaved: (value) {
                empresa.semanales = int.parse(value!);
              },
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
              onSaved: (value) {
                empresa.mensuales = int.parse(value!);
              },
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
              onSaved: (value) {
                empresa.terreno = int.parse(value!);
              },
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
              onSaved: (value) {
                empresa.bienes = int.parse(value!);
              },
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
              onSaved: (value) {
                empresa.otros = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n5.4 CÁLCULOS', style: title2),
            const Text("\nVENTAS / EMPLEADOS", style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el calculo de ventas sobre empleados"),
              onSaved: (value) {
                empresa.ventasEmp = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\nVENTAS / ACTIVOS", style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el calculo de ventas sobre activos"),
              onSaved: (value) {
                empresa.ventasActivos = int.parse(value!);
              },
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
              onSaved: (value) {
                empresa.local = value!;
              },
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
              onSaved: (value) {
                empresa.regional = value!;
              },
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
              onSaved: (value) {
                empresa.internacional = value!;
              },
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
              onSaved: (value) {
                empresa.cortoPlazo = value!;
              },
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
              onSaved: (value) {
                empresa.largoPlazo = value!;
              },
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
              onSaved: (value) {
                empresa.comentarioEjecutivo = value!;
              },
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
                    Scaffold.of(context).showSnackBar(const SnackBar(
                        content: Text('Datos cargados correctamente')));
                  }
                  formKey.currentState!.save();
                  empresaProvider.crearEncuestaEmpresa(empresa);
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
