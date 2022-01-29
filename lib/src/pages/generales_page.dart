// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:remi/src/pages/home_page.dart';
import 'package:remi/src/models/generales_model.dart';
import 'package:remi/src/providers/generales_provider.dart';
import 'package:remi/src/widget/navitation_drawer_widget.dart';
import 'package:remi/src/utils/style.dart' as gStyle;

class FormPage extends StatefulWidget {
  const FormPage({Key key, String title}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final formGen = GlobalKey<FormState>();
  final scaffoldGen = GlobalKey<ScaffoldState>();
  final generalProvider = new GeneralProvider();

  GeneralesModel generales = new GeneralesModel();

  @override
  Widget build(BuildContext context) {
    final GeneralesModel gen = ModalRoute.of(context).settings.arguments;

    if (gen != null) {
      generales = gen;
    }

    return Scaffold(
      key: scaffoldGen,
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
            key: formGen,
            child: _crearForm(),
          ),
        ),
      ),
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
          'ANTECEDENTES GENERALES',
          style: gStyle.getTytleTextStyle(),
        )),
        Text(
          '\n1. GENERALES\n',
          style: gStyle.getSubTitleTextStyle(),
        ),
        Text('1.1 NOMBRE:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.empNombre,
          decoration: InputDecoration(
            hintText: "Ingrese el nombre.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.empNombre = value;
          },
        ),
        Text('\n1.2 DIRECCIÓN:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.empDireccion,
          decoration: InputDecoration(
            hintText: "Ingrese la dirección.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.empDireccion = value;
          },
        ),
        Text('\n1.3 TELÉFONO:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.empTelefono,
          decoration: InputDecoration(
            hintText: "Ingrese el teléfono.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.empTelefono = value;
          },
        ),
        Text(
          '\n2. ANTECEDENTES DEL EMPRESARIO\n',
          style: gStyle.getSubTitleTextStyle(),
        ),
        Text(
          '2.1 EL EMPRESARIO\n',
          style: gStyle.getSentenceTextStyle(),
        ),
        Text('ORIGINARIO:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.empOriginario,
          decoration: InputDecoration(
            hintText: "Ingrese el dato ORIGINARIO del empresario.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.empOriginario = value;
          },
        ),
        Text('\nLUGAR:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.empLugar,
          decoration: InputDecoration(
            hintText: "Ingrese el lugar.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.empLugar = value;
          },
        ),
        Text('\nEDAD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.empEdad,
          decoration: InputDecoration(
            hintText: "Ingrese la edad.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.empEdad = value;
          },
        ),
        Text('\nESTADO CIVIL:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.empEstado,
          decoration: InputDecoration(
            hintText: "Ingrese el estado civil.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.empEstado = value;
          },
        ),
        Text('\nOCUPACIÓN:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.empOcupacion,
          decoration: InputDecoration(
            hintText: "Ingrese la ocupación.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.empOcupacion = value;
          },
        ),
        Text('\nESCOLARIDAD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.empEscolaridad,
          decoration: InputDecoration(
            hintText: "Ingrese la escolaridad.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.empEscolaridad = value;
          },
        ),
        Text('\nESTADO DE SALUD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.empSalud,
          decoration: InputDecoration(
            hintText: "Ingrese el estado de salud.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.empSalud = value;
          },
        ),
        Text('\nCOMENTARIOS DEL EMPRESARIO:',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.empComentarios,
          decoration: InputDecoration(
            hintText: "Ingrese el comentario del empresario.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.empComentarios = value;
          },
        ),
        Text(
          '\n2.2 LOS PADRES\n',
          style: gStyle.getSentenceTextStyle(),
        ),
        Text('NOMBRES:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.padreNombre,
          decoration: InputDecoration(
            hintText: "Ingrese los nombres de los padres.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.padreNombre = value;
          },
        ),
        Text('\nORIGINARIOS:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.padreOriginario,
          decoration: InputDecoration(
            hintText: "Ingrese el dato ORIGINARIO de los padres.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.padreOriginario = value;
          },
        ),
        Text('\nVIVEN:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.padreViven,
          decoration: InputDecoration(
            hintText: "Ingrese los padres que viven.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.padreViven = value;
          },
        ),
        Text('\nLUGAR:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.padreLugar,
          decoration: InputDecoration(
            hintText: "Ingrese el lugar de residencia.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.padreLugar = value;
          },
        ),
        Text('\nEDAD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.padreEdad,
          decoration: InputDecoration(
            hintText: "Ingrese la edad respectiva.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.padreEdad = value;
          },
        ),
        Text('\nOCUPACIÓN:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.padreOcupacion,
          decoration: InputDecoration(
            hintText: "Indique la ocupación.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.padreOcupacion = value;
          },
        ),
        Text('\nESCOLARIDAD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.padreEscolaridad,
          decoration: InputDecoration(
            hintText: "Ingrese el nivel de escolaridad.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.padreEscolaridad = value;
          },
        ),
        Text('\nESTADO DE SALUD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.padreSalud,
          decoration: InputDecoration(
            hintText: "Ingrese el estado de salud.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.padreSalud = value;
          },
        ),
        Text('\nCOMENTARIO DE LOS PADRES:',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.padreComentarios,
          decoration: InputDecoration(
            hintText: "Ingrese el comentario de los padres.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.padreComentarios = value;
          },
        ),
        Text("\n2.3 LOS HERMANOS", style: gStyle.getSentenceTextStyle()),
        Text('\nNÚMERO DE HERMANOS NACIDOS:',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.hermanos,
          decoration: InputDecoration(
            hintText: "Ingrese el número de hermanos.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.hermanos = value;
          },
        ),
        Text('\nNOMBRES:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.herNombres,
          decoration: InputDecoration(
            hintText: "Ingrese los nombres de cada hermano.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.herNombres = value;
          },
        ),
        Text('\nEDAD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.herEdad,
          decoration: InputDecoration(
            hintText: "Ingrese la edad de cada hermano.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.herEdad = value;
          },
        ),
        Text('\nOCUPACIÓN:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.herOcupacion,
          decoration: InputDecoration(
            hintText: "Ingrese la ocupación respectiva.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.herOcupacion = value;
          },
        ),
        Text('\nLUGAR DENTRO DE SUS HERMANOS:',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.herLugar,
          decoration: InputDecoration(
            hintText:
                "Ingrese el número del lugar que ocupa dentro de sus hermanos.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.herLugar = value;
          },
        ),
        Text("\n3. ANTECEDENTES DE LA PAREJA",
            style: gStyle.getSubTitleTextStyle()),
        Text("\n3.1 LA PAREJA", style: gStyle.getSentenceTextStyle()),
        Text('\nNOMBRE:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.parNombre,
          decoration: InputDecoration(
            hintText: "Ingrese el nombre de la pareja.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.parNombre = value;
          },
        ),
        Text('\nORIGINARIA:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.parOriginaria,
          decoration: InputDecoration(
            hintText: "Ingrese el lugar originario de la pareja.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.parOriginaria = value;
          },
        ),
        Text('\nVIVE:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.parVive,
          decoration: InputDecoration(
            hintText: "Ingrese en donde vive la pareja.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.parVive = value;
          },
        ),
        Text('\nEN QUE LUGAR:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.parLugar,
          decoration: InputDecoration(
            hintText: "Ingrese el lugar de la pareja.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.parLugar = value;
          },
        ),
        Text('\nEDAD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.parEdad,
          decoration: InputDecoration(
            hintText: "Ingrese la edad de la pareja.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.parEdad = value;
          },
        ),
        Text('\nESTADO DE SALUD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.parSalud,
          decoration: InputDecoration(
            hintText: "Ingrese el estado de salud de la pareja.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.parSalud = value;
          },
        ),
        Text('\nOCUPACIÓN:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.parOcupacion,
          decoration: InputDecoration(
            hintText: "Ingrese la ocupación de la pareja.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.parOcupacion = value;
          },
        ),
        Text('\nESCOLARIDAD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.parEscolaridad,
          decoration: InputDecoration(
            hintText: "Ingrese la escolaridad de la pareja.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.parEscolaridad = value;
          },
        ),
        Text('\nCOMENTARIO:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.parComentario,
          decoration: InputDecoration(
            hintText: "Ingrese el comentario de la pareja.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.parComentario = value;
          },
        ),
        Text("\n3.2 LOS SUEGROS", style: gStyle.getSentenceTextStyle()),
        Text('\nNOMBRE:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.suegroNombre,
          decoration: InputDecoration(
            hintText: "Ingrese el nombre de los suegros.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.suegroNombre = value;
          },
        ),
        Text('\nORIGINARIOS:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.suegroOriginarios,
          decoration: InputDecoration(
            hintText: "Ingrese el lugar originario de los suegros.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.suegroOriginarios = value;
          },
        ),
        Text('\nVIVEN:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.suegroViven,
          decoration: InputDecoration(
            hintText: "Ingrese en donde viven los suegros.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.suegroViven = value;
          },
        ),
        Text('\nLUGAR:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.suegroLugar,
          decoration: InputDecoration(
            hintText: "Ingrese el lugar de los suegros.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.suegroLugar = value;
          },
        ),
        Text('\nEDAD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.suegroEdad,
          decoration: InputDecoration(
            hintText: "Ingrese la edad de los suegros.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.suegroEdad = value;
          },
        ),
        Text('\nESTADO DE SALUD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.suegroSalud,
          decoration: InputDecoration(
            hintText: "Ingrese el estado de salud de los suegros.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.suegroSalud = value;
          },
        ),
        Text('\nOCUPACIÓN:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.suegroOcupacion,
          decoration: InputDecoration(
            hintText: "Ingrese la ocupación de los suegros.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.suegroOcupacion = value;
          },
        ),
        Text('\nESCOLARIDAD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.suegroEscolaridad,
          decoration: InputDecoration(
            hintText: "Ingrese la escolaridad de los suegros.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.suegroEscolaridad = value;
          },
        ),
        Text('\nCOMENTARIO:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.suegroComentario,
          decoration: InputDecoration(
            hintText: "Ingrese el comentario de los suegros.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.suegroComentario = value;
          },
        ),
        Text("\n3.3 LOS CUÑADOS", style: gStyle.getSentenceTextStyle()),
        Text('\nNOMBRE:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.cuNombre,
          decoration: InputDecoration(
            hintText: "Ingrese el nombre de los cuñados.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.cuNombre = value;
          },
        ),
        Text('\nEDAD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.cuEdad,
          decoration: InputDecoration(
            hintText: "Ingrese la edad de los cuñados.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.cuEdad = value;
          },
        ),
        Text('\nOCUPACIÓN:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.cuOcupacion,
          decoration: InputDecoration(
            hintText: "Ingrese la ocupación respectiva.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.cuOcupacion = value;
          },
        ),
        Text('\nLUGAR DENTRO DE SUS HERMANOS:',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.cuLugar,
          decoration: InputDecoration(
            hintText: "Ingrese el número del lugar que ocupa.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.cuLugar = value;
          },
        ),
        Text("\n4. EL MATRIMONIO", style: gStyle.getSubTitleTextStyle()),
        Text('\n4.1 AÑOS DE CASADOS:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.mTiempo,
          decoration: InputDecoration(
            hintText: "Ingrese el tiempo de matrimonio.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.mTiempo = value;
          },
        ),
        Text('\n4.2 SITUACIÓN AFECTIVA DEL MATRIMONIO:',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.mSituacion,
          decoration: InputDecoration(
            hintText: "Ingrese la situación afectiva actual.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.mSituacion = value;
          },
        ),
        Text("\n4.3 HIJOS ", style: gStyle.getSentenceTextStyle()),
        Text('\nNÚMERO DE HIJOS:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.hijosNumero,
          decoration: InputDecoration(
            hintText: "Ingrese el número de hijos.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.hijosNumero = value;
          },
        ),
        Text('\nEDAD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.hijosOcupacion,
          decoration: InputDecoration(
            hintText: "Ingrese la edad respectiva.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.hijosEdad = value;
          },
        ),
        Text('\nOCUPACIÓN:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.hijosOcupacion,
          decoration: InputDecoration(
            hintText: "Ingrese la ocupación respectiva.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.hijosOcupacion = value;
          },
        ),
        Text('\nESTADO CIVIL:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.hijosEstado,
          decoration: InputDecoration(
            hintText: "Ingrese el estado civil respectivo.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.hijosEstado = value;
          },
        ),
        Text('\nESCOLARIDAD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.hijosEscolaridad,
          decoration: InputDecoration(
            hintText: "Ingrese la escolaridad de los hijos.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.hijosEscolaridad = value;
          },
        ),
        Text('\nESTADO DE SALUD:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.hijosSalud,
          decoration: InputDecoration(
            hintText: "Ingrese el estado de salud de los hijos.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.hijosSalud = value;
          },
        ),
        Text(
          "\n5. FILOSOFÍA Y/O CARÁCTER",
          style: gStyle.getSubTitleTextStyle(),
        ),
        Text('\n5.1 HOBBIES, COLOR, PERSONAS:',
            style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.filoHobbies,
          decoration: InputDecoration(
            hintText: "Ingrese los hobbies, personas o color favorito.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.filoHobbies = value;
          },
        ),
        Text('\n5.2 COMENTARIOS:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.filoComentarios,
          decoration: InputDecoration(
            hintText: "Ingrese el comentario de la filosofía y/o carácter.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.filoComentarios = value;
          },
        ),
        Text("\n6. METAS PERSONALES", style: gStyle.getSubTitleTextStyle()),
        Text('\n6.1 PROFESIONALES:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.metasProfesionales,
          decoration: InputDecoration(
            hintText: "Ingrese las metas personales.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.metasProfesionales = value;
          },
        ),
        Text('\n6.2 AFECTIVAS:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.metasAfectivas,
          decoration: InputDecoration(
            hintText: "Ingrese las metas afectivas.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.metasAfectivas = value;
          },
        ),
        Text('\n6.3 FÍSICAS:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.metasFisicas,
          decoration: InputDecoration(
            hintText: "Ingrese las metas físicas.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.metasFisicas = value;
          },
        ),
        Text('\n6.4 COMENTARIO:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.metasComentarios,
          decoration: InputDecoration(
            hintText: "Ingrese el comentario sobre las metas.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.metasComentarios = value;
          },
        ),
        Text("\n7. ADMINISTRACIÓN DEL TIEMPO",
            style: gStyle.getSubTitleTextStyle()),
        Text('\n7.1 DIA:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.tiempoDia,
          decoration: InputDecoration(
            hintText: "Ingrese el día.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.tiempoDia = value;
          },
        ),
        Text('\n7.2 SEMANA:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.tiempoSemana,
          decoration: InputDecoration(
            hintText: "Ingrese la semana.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.tiempoSemana = value;
          },
        ),
        Text('\n7.3 MES:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.tiempoMes,
          decoration: InputDecoration(
            hintText: "Ingrese el mes.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.tiempoMes = value;
          },
        ),
        Text('\n7.4 AÑO:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.tiempoAnio,
          decoration: InputDecoration(
            hintText: "Ingrese el año.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.tiempoAnio = value;
          },
        ),
        Text('\n7.5 COMENTARIO:', style: gStyle.getSentenceTextStyle()),
        TextFormField(
          initialValue: generales.tiempoComentario,
          decoration: InputDecoration(
            hintText: "Ingrese el comentario de la administración del tiempo.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.tiempoComentario = value;
          },
        ),
        Text('\n8. COMENTARIO EJECUTIVO:',
            style: gStyle.getSubTitleTextStyle()),
        TextFormField(
          initialValue: generales.comentarioEjecutivo,
          decoration: InputDecoration(
            hintText:
                "Ingrese el comentario ejecutivo de antecedentes generales.",
            enabledBorder: gStyle.getBorderSizeSentenceStyle(),
            focusedBorder: gStyle.getBorderRadiusSentenceStyle(),
          ),
          style: gStyle.getSentenceTextStyle(),
          onSaved: (value) {
            generales.comentarioEjecutivo = value;
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
    if (!formGen.currentState.validate()) return;

    formGen.currentState.save();

    if (generales.id == null) {
      generalProvider.crearEncuestaGeneral(generales);
    } else {
      generalProvider.editarGenerales(generales);
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

    scaffoldGen.currentState.showSnackBar(snackbar);
  }
}
