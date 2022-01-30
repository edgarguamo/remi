// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remi/src/models/empresa_model.dart';
import 'package:remi/src/models/generales_model.dart';
import 'package:remi/src/pages/home_page.dart';
import 'package:remi/src/providers/empresa_provider.dart';
import 'package:remi/src/utils/style.dart' as gStyle;

class FormPage2 extends StatefulWidget {
  FormPage2({Key key, String title}) : super(key: key);

  @override
  _FormPage2State createState() => _FormPage2State();
}

class _FormPage2State extends State<FormPage2> {
  final formEmp = GlobalKey<FormState>();
  final scaffoldEmp = GlobalKey<ScaffoldState>();
  final empresaProvider = new EmpresaProvider();

  EmpresaModel empresa = new EmpresaModel();

  @override
  Widget build(BuildContext context) {
    final List<dynamic> prod = ModalRoute.of(context).settings.arguments;

    if (prod != null) {
      empresa = prod[0];
    }

    return Scaffold(
        key: scaffoldEmp,
        appBar: AppBar(
          title: Center(
              child: Text(
            'REMI',
            style: GoogleFonts.graduate(),
          )),
          backgroundColor: appbar_green,
          elevation: 0,
          actions: <Widget>[
            IconButton(
                tooltip: 'Ir a perfil',
                icon: const Icon(Icons.account_circle),
                onPressed: () {})
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Form(
              key: formEmp,
              child: _crearForm(),
            ),
          ),
        ),
        backgroundColor: Color.fromRGBO(250, 244, 232, 1));
  }

  Widget _crearForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            'ANTECEDENTES DE LA EMPRESA\n',
            style: gStyle.getTytleTextStyle(),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          '1. GENERALES DE LA EMPRESA\n',
          style: gStyle.getSubTitleTextStyle(),
        ),
        Text('1.1 NOMBRE:', style: gStyle.getTextFormTextStyle()),
        TextFormField(
          initialValue: empresa.nombre,
          decoration: InputDecoration(
            hintText: "Ingrese el nombre.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.nombre = value;
          },
          validator: (value) {
            if (value.isEmpty) {
              return 'Enter text';
            }
          },
        ),
        Text('\n1.2 DIRECCIÓN:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.direccion,
          decoration: InputDecoration(
            hintText: "Ingrese la dirección.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.direccion = value;
          },
        ),
        Text('\n1.3 TELÉFONO:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.contacto,
          decoration: InputDecoration(
            hintText: "Ingrese el teléfono.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          keyboardType: TextInputType.number,
          onSaved: (value) {
            empresa.contacto = value;
          },
        ),
        Text('\n1.4 R.F.C:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.rfc,
          decoration: InputDecoration(
            hintText: "Ingrese el R.F.C.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.rfc = value;
          },
        ),
        Text('\n1.5 DOMICILIO FISCAL:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.domicilio,
          decoration: InputDecoration(
            hintText: "Ingrese el domicilio fiscal.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.fiscal = value;
          },
        ),
        Text(
          '\n2. ANTIGÜEDAD DE LA EMPRESA',
          style: gStyle.getSubTitleTextStyle(),
        ),
        TextFormField(
          initialValue: empresa.antiguedad,
          decoration: InputDecoration(
            hintText: "Ingrese el tiempo de antigüedad de la empresa.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.antiguedad = value;
          },
        ),
        Text("\n3. ESTATUS LEGAL DE LA EMPRESA",
            style: gStyle.getSubTitleTextStyle()),
        Text("\n3.1 PERSONA FÍSICA", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.estatus,
          decoration: InputDecoration(
            hintText:
                "Indique si el estatus legal de la empresa corresponde a una persona física.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.estatus = value;
          },
        ),
        Text("\n3.2 PERSONAL MORAL", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.moral,
          decoration: InputDecoration(
            hintText:
                "Indique si el estatus legal de la empresa corresponde a una persona moral.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.moral = value;
          },
        ),
        Text("\n3.3 NO REGISTRADA", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.noRegistrada,
          decoration: InputDecoration(
            hintText:
                "Indique si el estatus legal de la empresa no se encuentra registrado.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.noRegistrada = value;
          },
        ),
        Text("\n4. ESTATUS FISCAL", style: gStyle.getSubTitleTextStyle()),
        TextFormField(
          initialValue: empresa.fiscal,
          decoration: InputDecoration(
            hintText: "Ingrese el estatus fiscal de la empresa.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.fiscal = value;
          },
        ),
        Text(
          "\n5. TAMAÑO DE LA EMPRESA",
          style: gStyle.getSubTitleTextStyle(),
        ),
        Text('\n5.1 NÚMERO DE EMPLEADOS:',
            style: gStyle.getSentenceTextStyle()),
        Text("\nOPERATIVOS", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.empleados,
          decoration: InputDecoration(
            hintText: "Ingrese la cantidad de empleados de tipo operativos.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          keyboardType: TextInputType.number,
          onSaved: (value) {
            empresa.empleados = value;
          },
        ),
        Text("\nADMINISTRATIVOS", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.administrativos,
          decoration: InputDecoration(
            hintText:
                "Ingrese la cantidad de empleados de tipo administrativos.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          keyboardType: TextInputType.number,
          onSaved: (value) {
            empresa.administrativos = value;
          },
        ),
        Text("\nOTROS", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.otros,
          decoration: InputDecoration(
            hintText: "Ingrese la cantidad de empleados de otro tipo.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          keyboardType: TextInputType.number,
          onSaved: (value) {
            empresa.otros = value;
          },
        ),
        Text("\nTOTAL", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.total,
          decoration: InputDecoration(
            hintText: "Ingrese el total de empleados.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          keyboardType: TextInputType.number,
          onSaved: (value) {
            empresa.total = value;
          },
        ),
        Text("\nCOMENTARIOS", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.comentarios,
          decoration: InputDecoration(
            hintText: "Ingrese el comentario sobre los empleados.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.comentarios = value;
          },
        ),
        Text('\n5.2 VENTAS:', style: gStyle.getSentenceTextStyle()),
        Text("\nDIARIAS", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.diarias,
          decoration: InputDecoration(
            hintText: "Ingrese la cantidad de ventas diarias.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          keyboardType: TextInputType.number,
          onSaved: (value) {
            empresa.diarias = value;
          },
        ),
        Text("\nSEMANALES", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.semanales,
          decoration: InputDecoration(
            hintText: "Ingrese la cantidad de ventas semanales.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          keyboardType: TextInputType.number,
          onSaved: (value) {
            empresa.semanales = value;
          },
        ),
        Text("\nMENSUALES", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.mensuales,
          decoration: InputDecoration(
            hintText: "Ingrese la cantidad de ventas mensuales.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          keyboardType: TextInputType.number,
          onSaved: (value) {
            empresa.mensuales = value;
          },
        ),
        Text('\n5.3 VALOR DE LOS ACTIVOS:',
            style: gStyle.getSentenceTextStyle()),
        Text("\nTERRENO", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.terreno,
          decoration: InputDecoration(
            hintText: "Ingrese el valor de los terrenos.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          keyboardType: TextInputType.number,
          onSaved: (value) {
            empresa.terreno = value;
          },
        ),
        Text("\nBIENES", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.bienes,
          decoration: InputDecoration(
            hintText: "Ingrese el valor de los bienes.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          keyboardType: TextInputType.number,
          onSaved: (value) {
            empresa.bienes = value;
          },
        ),
        Text("\nOTROS", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.aquellos,
          decoration: InputDecoration(
            hintText: "Ingrese el valor de otros tipos.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          keyboardType: TextInputType.number,
          onSaved: (value) {
            empresa.aquellos = value;
          },
        ),
        Text('\n5.4 CÁLCULOS', style: gStyle.getSentenceTextStyle()),
        Text("\nVENTAS / EMPLEADOS", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.ventasEmp,
          decoration: InputDecoration(
            hintText: "Ingrese el calculo de ventas sobre empleados",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          keyboardType: TextInputType.number,
          onSaved: (value) {
            empresa.ventasEmp = value;
          },
        ),
        Text("\nVENTAS / ACTIVOS", style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.ventasActivos,
          decoration: InputDecoration(
            hintText: "Ingrese el calculo de ventas sobre activos",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          keyboardType: TextInputType.number,
          onSaved: (value) {
            empresa.ventasActivos = value;
          },
        ),
        Text("\n6. COBERTURA DE MERCADO DE LA EMPRESA",
            style: gStyle.getSubTitleTextStyle()),
        Text('\n6.1 LOCAL:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.local,
          decoration: InputDecoration(
            hintText: "Indique si la cobertura es de tipo local.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.local = value;
          },
        ),
        Text('\n6.2 REGIONAL:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.regional,
          decoration: InputDecoration(
            hintText: "Indique si la cobertura es de tipo regional.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.regional = value;
          },
        ),
        Text('\n6.3 INTERNACIONAL:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.internacional,
          decoration: InputDecoration(
            hintText: "Indique si la cobertura es de tipo internacional.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.internacional = value;
          },
        ),
        Text("\n7. VISIÓN DE LA EMPRESA", style: gStyle.getSubTitleTextStyle()),
        Text('\n7.1 CORTO PLAZO:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.cortoPlazo,
          decoration: InputDecoration(
            hintText: "Ingrese la visión de la empresa a corto plazo.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.cortoPlazo = value;
          },
        ),
        Text('\n7.2 LARGO PLAZO:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: empresa.largoPlazo,
          decoration: InputDecoration(
            hintText: "Ingrese la visión de la empresa a largo plazo.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.largoPlazo = value;
          },
        ),
        Text('\n8. COMENTARIO EJECUTIVO:',
            style: gStyle.getSubTitleTextStyle()),
        TextFormField(
          initialValue: empresa.comentarioEjecutivo,
          decoration: InputDecoration(
            hintText:
                "Ingrese el comentario ejecutivo de antecedentes de la empresa.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            empresa.comentarioEjecutivo = value;
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
              _submit();
            },
            label: Text(
              'Submit',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            color: appbar_green,
          )),
        ),
      ],
    );
  }

  void _submit() {
    if (!formEmp.currentState.validate()) return;

    formEmp.currentState.save();

    if (empresa.id == null) {
      empresaProvider.crearEmpresa(empresa);
    } else {
      empresaProvider.editarEmpresa(empresa);
    }

    mostrarSnackbar('Información guardada');

    Navigator.pop(context);
    final List<dynamic> prod = ModalRoute.of(context).settings.arguments;
    if (prod == null) {
      Navigator.pushNamed(context, '/form');
    } else {
      Navigator.pushNamed(context, '/form', arguments: prod[1]);
    }
  }

  void mostrarSnackbar(String mensaje) {
    final snackbar = SnackBar(
      content: Text(mensaje),
      duration: Duration(milliseconds: 1500),
    );

    scaffoldEmp.currentState.showSnackBar(snackbar);
  }
}
