import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remi/src/models/mercado_model.dart';

import 'package:remi/src/pages/home_page.dart';
import 'package:remi/src/providers/mercado_provider.dart';
import 'package:remi/src/utils/style.dart' as gStyle;

class FormPage3 extends StatefulWidget {
  const FormPage3({Key key, String title}) : super(key: key);

  @override
  _FormPage3State createState() => _FormPage3State();
}

class _FormPage3State extends State<FormPage3> {
  final formMerc = GlobalKey<FormState>();
  final scaffoldMerc = GlobalKey<ScaffoldState>();
  final mercadoProvider = new MercadoProvider();

  MercadoModel mercados = new MercadoModel();

  @override
  Widget build(BuildContext context) {
    final List<dynamic> prod = ModalRoute.of(context).settings.arguments;
    if (prod != null) {
      mercados = prod[2];
    }

    return Scaffold(
      key: scaffoldMerc,
      appBar: AppBar(
        title: Center(child: Text('REMI', style: GoogleFonts.graduate())),
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
            key: formMerc,
            child: _crearForm(),
          ),
        ),
      ),
      backgroundColor: gStyle.background,
    );
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
          'SUBSISTEMA MERCADO',
          style: gStyle.getTytleTextStyle(),
          textAlign: TextAlign.center,
        )),
        Text(
          '\n1. TIENE POLITICAS DE PRODUCTO Y/O SERVICIO\n',
          style: gStyle.getSubTitleTextStyle(),
        ),
        Text('1.1 RENTABILIDAD DE LOS PRODUCTOS:',
            style: gStyle.getTextFormTextStyle()),
        TextFormField(
          initialValue: mercados.rentabilidad,
          decoration: InputDecoration(
            hintText: "Valor maximo: 3",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          keyboardType: TextInputType.number,
          onSaved: (value) {
            mercados.rentabilidad = value;
          },
          validator: (String value) {
            if (value == '' ||
                value == '0' ||
                value == '1' ||
                value == '2' ||
                value == '3') {
              return null;
            }
            return 'Ingrese un número entre 0 y 3';
          },
        ),
        Text('\n1.2 NUEVOS PRODUCTOS:', style: gStyle.getTextFormTextStyle()),
        TextFormField(
            initialValue: mercados.nuevoProd,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.nuevoProd = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 2';
            }),
        Text(
          '\n2. SEGMENTO\n',
          style: gStyle.getSubTitleTextStyle(),
        ),
        Text(
          '2.1 QUIEN ES SU CLIENTE, TIPIFICAR\n',
          style: gStyle.getTextFormTextStyle(),
        ),
        TextFormField(
            initialValue: mercados.cliente,
            decoration: InputDecoration(
              hintText: "Valor maximo: 5",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.cliente = value;
            },
            validator: (String value) {
              if (value == '' ||
                  value == '0' ||
                  value == '1' ||
                  value == '2' ||
                  value == '3' ||
                  value == '4' ||
                  value == '5') {
                return null;
              }
              return 'Ingrese un número entre 0 y 5';
            }),
        Text(
          '\n2.2 SABE LA DISTRIBUCION Y PROPORCION POR PRODUCTO Y/O SERVICIO\n',
          style: gStyle.getTextFormTextStyle(),
        ),
        TextFormField(
            initialValue: mercados.distribucion,
            decoration: InputDecoration(
              hintText: "Valor maximo: 5",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.distribucion = value;
            },
            validator: (String value) {
              if (value == '' ||
                  value == '0' ||
                  value == '1' ||
                  value == '2' ||
                  value == '3' ||
                  value == '4' ||
                  value == '5') {
                return null;
              }
              return 'Ingrese un número entre 0 y 5';
            }),
        Text("\n2.3 CONOCE LA MAGNITUD DE MERCADO",
            style: gStyle.getTextFormTextStyle()),
        TextFormField(
            initialValue: mercados.magnitud,
            decoration: InputDecoration(
              hintText: "Valor maximo: 5",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.magnitud = value;
            },
            validator: (String value) {
              if (value == '' ||
                  value == '0' ||
                  value == '1' ||
                  value == '2' ||
                  value == '3' ||
                  value == '4' ||
                  value == '5') {
                return null;
              }
              return 'Ingrese un número entre 0 y 5';
            }),
        Text("\n2.4 SABE LA TENDENCIA DEL MERCADO, EN BASE A QUE?",
            style: gStyle.getTextFormTextStyle()),
        Text('\nINDICADORES CLAVES DEL MERCADO',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.indClave,
            decoration: InputDecoration(
              hintText: "Valor maximo: 3",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.indClave = value;
            },
            validator: (String value) {
              if (value == '' ||
                  value == '0' ||
                  value == '1' ||
                  value == '2' ||
                  value == '3') {
                return null;
              }
              return 'Ingrese un número entre 0 y 3';
            }),
        Text('\nOTRAS FUENTES DE INFORMACION',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.otraInfo,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.indClave = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 2';
            }),
        Text("\n2.5 CONOCE SU MERCADO POTENCIAL",
            style: gStyle.getTextFormTextStyle()),
        Text('\nACTUAL', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.mercActual,
            decoration: InputDecoration(
              hintText: "Valor maximo: 3",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.mercActual = value;
            },
            validator: (String value) {
              if (value == '' ||
                  value == '0' ||
                  value == '1' ||
                  value == '2' ||
                  value == '3') {
                return null;
              }
              return 'Ingrese un número entre 0 y 3';
            }),
        Text('\nTENDENCIA', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.mercTendencia,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.mercTendencia = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 2';
            }),
        Text(
          '\n3. CLIENTE\n',
          style: gStyle.getSubTitleTextStyle(),
        ),
        Text(
          '3.1 USUARIO\n',
          style: gStyle.getTextFormTextStyle(),
        ),
        TextFormField(
            initialValue: mercados.clienteUsuario,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.clienteUsuario = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 2';
            }),
        Text(
          '\n3.2 DECISOR\n',
          style: gStyle.getTextFormTextStyle(),
        ),
        TextFormField(
            initialValue: mercados.clienteDecisor,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.clienteDecisor = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 52';
            }),
        Text("\n3.3 DA LOS RECURSOS", style: gStyle.getTextFormTextStyle()),
        TextFormField(
            initialValue: mercados.clienteRecursos,
            decoration: InputDecoration(
              hintText: "Valor maximo: 1",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.clienteRecursos = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1') {
                return null;
              }
              return 'Ingrese 0 o 1';
            }),
        Text('\n4. EXPECTATIVA:', style: gStyle.getSubTitleTextStyle()),
        Text("\n4.1 POR QUE COMPRAN SUS PRODUCTOS Y/O SERVICIOS",
            style: gStyle.getTextFormTextStyle()),
        Text('\nCALIDAD', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.expCalidad,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.expCalidad = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 2';
            }),
        Text('\nSERVICIO', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.expServicio,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.expServicio = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 2';
            }),
        Text('\nPRECIO', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.expPrecio,
            decoration: InputDecoration(
              hintText: "Valor maximo: 1",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.expPrecio = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1') {
                return null;
              }
              return 'Ingrese 0 o 1';
            }),
        Text(
            "\n4.2 COMO FIJA SUS PRECIOS\nMERCADO = 5\nCOMPETENCIA = 4\nCOSTO = 3\nLIRICO = 2",
            style: gStyle.getTextFormTextStyle()),
        TextFormField(
            initialValue: mercados.fijaPrecios,
            decoration: InputDecoration(
              hintText: "Valor maximo: 5",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.fijaPrecios = value;
            },
            validator: (String value) {
              if (value == '' ||
                  value == '2' ||
                  value == '3' ||
                  value == '4' ||
                  value == '5') {
                return null;
              }
              return 'Ingrese un número entre 2 y 5';
            }),
        Text(
            "\n4.3 COMO ES SU CANAL DE DISTRIBUCION, ES EL ADECUADO?\nOFERENTE, 1/2, 1/2, CONSUMIDOR = 5\nOFERENTE, 1/2, CONSUMIDOR = 4\nOFERENTE, CONSUMIDOR = 3",
            style: gStyle.getTextFormTextStyle()),
        TextFormField(
            initialValue: mercados.canalDistribucion,
            decoration: InputDecoration(
              hintText: "Valor maximo: 5",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.canalDistribucion = value;
            },
            validator: (String value) {
              if (value == '' || value == '3' || value == '4' || value == '5') {
                return null;
              }
              return 'Ingrese un número entre 3 y 5';
            }),
        Text("\n4.4 COMPETENCIA", style: gStyle.getTextFormTextStyle()),
        Text('\nLOS TIENE IDENTIFICADOS? QUIENES?',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.competenciaId,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.competenciaId = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 2';
            }),
        Text('\nLOS EVALUA COMO:\nCANTIDAD',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.evalCant,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.evalCant = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 2';
            }),
        Text('\nCALIDAD', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.evalCalidad,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.evalCalidad = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 2';
            }),
        Text('\PRECIO', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.evalPrecio,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.evalPrecio = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 2';
            }),
        Text('\nCONOCE LAS F/D DE SU COMPETENCIA?:\nFUERZAS',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.fuerza,
            decoration: InputDecoration(
              hintText: "Valor maximo: 1",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.fuerza = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1') {
                return null;
              }
              return 'Ingrese 0 o 1';
            }),
        Text('\nDEBILIDADES', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.debilidad,
            decoration: InputDecoration(
              hintText: "Valor maximo: 1",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.debilidad = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1') {
                return null;
              }
              return 'Ingrese 0 o 1';
            }),
        Text(
          '\n5. COMERCIALIZACION\n',
          style: gStyle.getSubTitleTextStyle(),
        ),
        Text(
          '5.1 SISTEMAS DE INFORMACION\n',
          style: gStyle.getTextFormTextStyle(),
        ),
        Text('\nCOMO SE ANUNCIA? MEDIOS (EN FUNCION AL SEGMENTO):\nPERSONALES',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.anuncPersonal,
            decoration: InputDecoration(
              hintText: "Valor maximo: 1",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.anuncPersonal = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1') {
                return null;
              }
              return 'Ingrese 0 o 1';
            }),
        Text('\nMASIVOS', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.anuncMasivo,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.anuncMasivo = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 2';
            }),
        Text('\nQUE DICE SU ANUNCIO? MENSAJE F/A LA EXPECTATIVA',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.anuncMensaje,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.anuncMensaje = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 2';
            }),
        Text(
          '\n5.2 TIENE IMAGEN CORPORATIVA\n',
          style: gStyle.getTextFormTextStyle(),
        ),
        Text('\nEMBLEMA', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.emblema,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.emblema = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 2';
            }),
        Text('\nLOGOTIPO', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.logotipo,
            decoration: InputDecoration(
              hintText: "Valor maximo: 3",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.logotipo = value;
            },
            validator: (String value) {
              if (value == '' ||
                  value == '0' ||
                  value == '1' ||
                  value == '2' ||
                  value == '3') {
                return null;
              }
              return 'Ingrese un número entre 0 y 3';
            }),
        Text("\n5.3 VENTAS", style: gStyle.getTextFormTextStyle()),
        Text('\nCOMO ADMINISTRA SUS VENTAS?:\nNUMERO DE VENDEDORES',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.numVendedores,
            decoration: InputDecoration(
              hintText: "Valor maximo: 1",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.numVendedores = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1') {
                return null;
              }
              return 'Ingrese 0 o 1';
            }),
        Text('\nREPARTO DE TERRITORIO', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.territorio,
            decoration: InputDecoration(
              hintText: "Valor maximo: 1",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.territorio = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1') {
                return null;
              }
              return 'Ingrese 0 o 1';
            }),
        Text('\nEQUIPO (FISICO) DE VENTAS',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.equipoVentas,
            decoration: InputDecoration(
              hintText: "Valor maximo: 1",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.equipoVentas = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1') {
                return null;
              }
              return 'Ingrese 0 o 1';
            }),
        Text('\nPLAN DE PRESENTACION', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.presentacion,
            decoration: InputDecoration(
              hintText: "Valor maximo: 1",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.presentacion = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1') {
                return null;
              }
              return 'Ingrese 0 o 1';
            }),
        Text('\nENTRENAMIENTO', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.entrenamiento,
            decoration: InputDecoration(
              hintText: "Valor maximo: 1",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.entrenamiento = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1') {
                return null;
              }
              return 'Ingrese 0 o 1';
            }),
        Text('COMO CONTROLA SUS VENTAS?\nCUOTAS',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.cuotas,
            decoration: InputDecoration(
              hintText: "Valor maximo: 1",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.cuotas = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1') {
                return null;
              }
              return 'Ingrese 0 o 1';
            }),
        Text('\nPRESUPUESTOS', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.presupuestos,
            decoration: InputDecoration(
              hintText: "Valor maximo: 1",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.presupuestos = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1') {
                return null;
              }
              return 'Ingrese 0 o 1';
            }),
        Text('\nREPORTES', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.reportes,
            decoration: InputDecoration(
              hintText: "Valor maximo: 2",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.reportes = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1' || value == '2') {
                return null;
              }
              return 'Ingrese un número entre 0 y 2';
            }),
        Text('\nRENTABILIDAD DE CADA VENDEDOR',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.rentVendedor,
            decoration: InputDecoration(
              hintText: "Valor maximo: 1",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.rentVendedor = value;
            },
            validator: (String value) {
              if (value == '' || value == '0' || value == '1') {
                return null;
              }
              return 'Ingrese 0 o 1';
            }),
        Text(
          '\n6. REPORTES DE MERCADO\n',
          style: gStyle.getSubTitleTextStyle(),
        ),
        Text(
          '6.1 QUIEN\n',
          style: gStyle.getTextFormTextStyle(),
        ),
        Text('\nCLIENTES', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.mercCliente,
            decoration: InputDecoration(
              hintText: "Valor maximo: 5",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.mercCliente = value;
            },
            validator: (String value) {
              if (value == '' ||
                  value == '0' ||
                  value == '1' ||
                  value == '2' ||
                  value == '3' ||
                  value == '4' ||
                  value == '5') {
                return null;
              }
              return 'Ingrese un número entre 0 y 5';
            }),
        Text('\nPRODUCTO Y/O SERVICIO', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.mercProd,
            decoration: InputDecoration(
              hintText: "Valor maximo: 5",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.mercProd = value;
            },
            validator: (String value) {
              if (value == '' ||
                  value == '0' ||
                  value == '1' ||
                  value == '2' ||
                  value == '3' ||
                  value == '4' ||
                  value == '5') {
                return null;
              }
              return 'Ingrese un número entre 0 y 5';
            }),
        Text('\nCANAL DE DISTRIBUCION', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.mercDist,
            decoration: InputDecoration(
              hintText: "Valor maximo: 5",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.mercDist = value;
            },
            validator: (String value) {
              if (value == '' ||
                  value == '0' ||
                  value == '1' ||
                  value == '2' ||
                  value == '3' ||
                  value == '4' ||
                  value == '5') {
                return null;
              }
              return 'Ingrese un número entre 0 y 5';
            }),
        Text('\nPRECIO', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.mercPrecio,
            decoration: InputDecoration(
              hintText: "Valor maximo: 5",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.mercPrecio = value;
            },
            validator: (String value) {
              if (value == '' ||
                  value == '0' ||
                  value == '1' ||
                  value == '2' ||
                  value == '3' ||
                  value == '4' ||
                  value == '5') {
                return null;
              }
              return 'Ingrese un número entre 0 y 5';
            }),
        Text('\nCOMPETENCIA', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.mercComp,
            decoration: InputDecoration(
              hintText: "Valor maximo: 5",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.mercComp = value;
            },
            validator: (String value) {
              if (value == '' ||
                  value == '0' ||
                  value == '1' ||
                  value == '2' ||
                  value == '3' ||
                  value == '4' ||
                  value == '5') {
                return null;
              }
              return 'Ingrese un número entre 0 y 5';
            }),
        Text('\nSISTEMAS DE INFORMACION', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.mercInfo,
            decoration: InputDecoration(
              hintText: "Valor maximo: 5",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.mercInfo = value;
            },
            validator: (String value) {
              if (value == '' ||
                  value == '0' ||
                  value == '1' ||
                  value == '2' ||
                  value == '3' ||
                  value == '4' ||
                  value == '5') {
                return null;
              }
              return 'Ingrese un número entre 0 y 5';
            }),
        Text('\nVENTAS', style: gStyle.getSentenceTextStyle()),
        TextFormField(
            initialValue: mercados.mercVentas,
            decoration: InputDecoration(
              hintText: "Valor maximo: 5",
              enabledBorder: gStyle.getBorderSizeSentenceStyle(),
              focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
              hintStyle: gStyle.getHintTextStyle(),
            ),
            style: gStyle.getSentenceTextStyle(),
            keyboardType: TextInputType.number,
            onSaved: (value) {
              mercados.mercVentas = value;
            },
            validator: (String value) {
              if (value == '' ||
                  value == '0' ||
                  value == '1' ||
                  value == '2' ||
                  value == '3' ||
                  value == '4' ||
                  value == '5') {
                return null;
              }
              return 'Ingrese un número entre 0 y 5';
            }),
        Text('\n7. COMENTARIOS DE MERCADO PARAMETRICO:',
            style: gStyle.getSubTitleTextStyle()),
        TextFormField(
          initialValue: mercados.comentario,
          decoration: InputDecoration(
            hintText:
                "Ingrese el comentario ejecutivo de antecedentes de la empresa.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
            hintStyle: gStyle.getHintTextStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            mercados.comentario = value;
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
    if (!formMerc.currentState.validate()) return;

    formMerc.currentState.save();

    if (mercados.id == null) {
      mercadoProvider.crearMercado(mercados);
    } else {
      mercadoProvider.editarMercado(mercados);
    }

    mostrarSnackbar('Información guardada');

    Navigator.pop(context);
    Navigator.pushNamed(context, '/prop');
  }

  void mostrarSnackbar(String mensaje) {
    final snackbar = SnackBar(
      content: Text(mensaje),
      duration: Duration(milliseconds: 1500),
    );

    scaffoldMerc.currentState.showSnackBar(snackbar);
  }
}
