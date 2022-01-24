// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:remi/src/models/generales_model.dart';
import 'package:remi/src/providers/generales_provider.dart';
import 'package:remi/src/widget/navitation_drawer_widget.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key, required String title}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

const padd = Padding(padding: EdgeInsets.all(30));
const title1 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline);

const title2 = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
const enunciado = TextStyle(fontSize: 16, fontStyle: FontStyle.italic);
final appbar_green = Colors.green[700];

class _FormPageState extends State<FormPage> {
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
  final generalesProvider = new GeneralProvider();
  GeneralesModel generales = new GeneralesModel();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
                child: Text('ANTECEDENTES GENERALES',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            const Text(
              '\n1. GENERALES\n',
              style: title1,
            ),
            const Text('1.1 NOMBRE:', style: title2),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese el nombre."),
              onSaved: (value) {
                generales.empNombre = value!;
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
                generales.empDireccion = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n1.3 TELÉFONO:', style: title2),
            TextFormField(
              decoration:
                  const InputDecoration(hintText: "Ingrese el teléfono."),
              onSaved: (value) {
                generales.empTelefono = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text(
              '\n2. ANTECEDENTES DEL EMPRESARIO\n',
              style: title1,
            ),
            const Text(
              '2.1 EL EMPRESARIO\n',
              style: title2,
            ),
            const Text('ORIGINARIO:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el dato ORIGINARIO del empresario."),
              onSaved: (value) {
                generales.empOriginario = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nLUGAR:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese el lugar."),
              onSaved: (value) {
                generales.empLugar = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nEDAD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese la edad."),
              onSaved: (value) {
                generales.empEdad = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nESTADO CIVIL:', style: enunciado),
            TextFormField(
              decoration:
                  const InputDecoration(hintText: "Ingrese el estado civil."),
              onSaved: (value) {
                generales.empEstado = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nOCUPACIÓN:', style: enunciado),
            TextFormField(
              decoration:
                  const InputDecoration(hintText: "Ingrese la ocupación."),
              onSaved: (value) {
                generales.empOcupacion = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nESCOLARIDAD:', style: enunciado),
            TextFormField(
              decoration:
                  const InputDecoration(hintText: "Ingrese la escolaridad."),
              onSaved: (value) {
                generales.empEscolaridad = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nESTADO DE SALUD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el estado de salud."),
              onSaved: (value) {
                generales.empSalud = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nCOMENTARIOS DEL EMPRESARIO:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el comentario del empresario."),
              onSaved: (value) {
                generales.empComentarios = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text(
              '\n2.2 LOS PADRES\n',
              style: title2,
            ),
            const Text('NOMBRES:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese los nombres de los padres."),
              onSaved: (value) {
                generales.padreNombre = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nORIGINARIOS:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el dato ORIGINARIO de los padres."),
              onSaved: (value) {
                generales.padreOriginario = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nVIVEN:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese los padres que viven."),
              onSaved: (value) {
                generales.padreViven = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nLUGAR:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el lugar de residencia."),
              onSaved: (value) {
                generales.padreLugar = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nEDAD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la edad respectiva."),
              onSaved: (value) {
                generales.padreEdad = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nOCUPACIÓN:', style: enunciado),
            TextFormField(
              decoration:
                  const InputDecoration(hintText: "Indique la ocupación."),
              onSaved: (value) {
                generales.padreOcupacion = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nESCOLARIDAD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el nivel de escolaridad."),
              onSaved: (value) {
                generales.padreEscolaridad = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nESTADO DE SALUD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el estado de salud."),
              onSaved: (value) {
                generales.padreSalud = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nCOMENTARIO DE LOS PADRES:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el comentario de los padres."),
              onSaved: (value) {
                generales.padreComentarios = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\n2.3 LOS HERMANOS", style: title2),
            const Text('\nNÚMERO DE HERMANOS NACIDOS:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el número de hermanos."),
              onSaved: (value) {
                generales.hermanos = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nNOMBRES:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese los nombres de cada hermano."),
              onSaved: (value) {
                generales.herNombres = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nEDAD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la edad de cada hermano."),
              onSaved: (value) {
                generales.herEdad = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nOCUPACIÓN:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la ocupación respectiva."),
              onSaved: (value) {
                generales.herOcupacion = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nLUGAR DENTRO DE SUS HERMANOS:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText:
                      "Ingrese el número del lugar que ocupa dentro de sus hermanos."),
              onSaved: (value) {
                generales.herLugar = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\n3. ANTECEDENTES DE LA PAREJA", style: title1),
            const Text("\n3.1 LA PAREJA", style: title2),
            const Text('\nNOMBRE:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el nombre de la pareja."),
              onSaved: (value) {
                generales.parNombre = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nORIGINARIA:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el lugar originario de la pareja."),
              onSaved: (value) {
                generales.parOriginaria = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nVIVE:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese en donde vive la pareja."),
              onSaved: (value) {
                generales.parVive = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nEN QUE LUGAR:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el lugar de la pareja."),
              onSaved: (value) {
                generales.parLugar = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nEDAD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la edad de la pareja."),
              onSaved: (value) {
                generales.parEdad = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nESTADO DE SALUD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el estado de salud de la pareja."),
              onSaved: (value) {
                generales.parSalud = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nOCUPACIÓN:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la ocupación de la pareja."),
              onSaved: (value) {
                generales.parOcupacion = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nESCOLARIDAD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la escolaridad de la pareja."),
              onSaved: (value) {
                generales.parEscolaridad = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nCOMENTARIO:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el comentario de la pareja."),
              onSaved: (value) {
                generales.parComentario = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\n3.2 LOS SUEGROS", style: title2),
            const Text('\nNOMBRE:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el nombre de los suegros."),
              onSaved: (value) {
                generales.suegroNombre = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nORIGINARIOS:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el lugar originario de los suegros."),
              onSaved: (value) {
                generales.suegroOriginarios = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nVIVEN:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese en donde viven los suegros."),
              onSaved: (value) {
                generales.suegroViven = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nLUGAR:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el lugar de los suegros."),
              onSaved: (value) {
                generales.suegroLugar = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nEDAD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la edad de los suegros."),
              onSaved: (value) {
                generales.suegroEdad = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nESTADO DE SALUD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el estado de salud de los suegros."),
              onSaved: (value) {
                generales.suegroSalud = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nOCUPACIÓN:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la ocupación de los suegros."),
              onSaved: (value) {
                generales.suegroOcupacion = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nESCOLARIDAD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la escolaridad de los suegros."),
              onSaved: (value) {
                generales.suegroEscolaridad = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nCOMENTARIO:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el comentario de los suegros."),
              onSaved: (value) {
                generales.suegroComentario = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\n3.3 LOS CUÑADOS", style: title2),
            const Text('\nNOMBRE:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el nombre de los cuñados."),
              onSaved: (value) {
                generales.cuNombre = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nEDAD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la edad de los cuñados."),
              onSaved: (value) {
                generales.cuEdad = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nOCUPACIÓN:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la ocupación respectiva."),
              onSaved: (value) {
                generales.cuOcupacion = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nLUGAR DENTRO DE SUS HERMANOS:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el número del lugar que ocupa."),
              onSaved: (value) {
                generales.cuLugar = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\n4. EL MATRIMONIO", style: title1),
            const Text('\n4.1 AÑOS DE CASADOS:', style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el tiempo de matrimonio."),
              onSaved: (value) {
                generales.mTiempo = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n4.2 SITUACIÓN AFECTIVA DEL MATRIMONIO:',
                style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la situación afectiva actual."),
              onSaved: (value) {
                generales.mSituacion = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\n4.3 HIJOS ", style: title2),
            const Text('\nNÚMERO DE HIJOS:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el número de hijos."),
              onSaved: (value) {
                generales.hijosNumero = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nEDAD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la edad respectiva."),
              onSaved: (value) {
                generales.hijosEdad = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nOCUPACIÓN:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la ocupación respectiva."),
              onSaved: (value) {
                generales.hijosOcupacion = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nESTADO CIVIL:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el estado civil respectivo."),
              onSaved: (value) {
                generales.hijosEstado = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nESCOLARIDAD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese la escolaridad de los hijos."),
              onSaved: (value) {
                generales.hijosEscolaridad = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nESTADO DE SALUD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el estado de salud de los hijos."),
              onSaved: (value) {
                generales.hijosSalud = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text(
              "\n5. FILOSOFÍA Y/O CARÁCTER",
              style: title1,
            ),
            const Text('\n5.1 HOBBIES, COLOR, PERSONAS:', style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese los hobbies, personas o color favorito."),
              onSaved: (value) {
                generales.filoHobbies = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n5.2 COMENTARIOS:', style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText:
                      "Ingrese el comentario de la filosofía y/o carácter."),
              onSaved: (value) {
                generales.filoComentarios = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\n6. METAS PERSONALES", style: title1),
            const Text('\n6.1 PROFESIONALES:', style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese las metas personales."),
              onSaved: (value) {
                generales.metasProfesionales = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n6.2 AFECTIVAS:', style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese las metas afectivas."),
              onSaved: (value) {
                generales.metasAfectivas = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n6.3 FÍSICAS:', style: title2),
            TextFormField(
              decoration:
                  const InputDecoration(hintText: "Ingrese las metas físicas."),
              onSaved: (value) {
                generales.metasFisicas = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n6.4 COMENTARIO:', style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Ingrese el comentario sobre las metas."),
              onSaved: (value) {
                generales.metasComentarios = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text("\n7. ADMINISTRACIÓN DEL TIEMPO", style: title1),
            const Text('\n7.1 DIA:', style: title2),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese el día."),
              onSaved: (value) {
                generales.tiempoDia = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n7.2 SEMANA:', style: title2),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese la semana."),
              onSaved: (value) {
                generales.tiempoSemana = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n7.3 MES:', style: title2),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese el mes."),
              onSaved: (value) {
                generales.tiempoMes = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n7.4 AÑO:', style: title2),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese el año."),
              onSaved: (value) {
                generales.tiempoAnio = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n7.5 COMENTARIO:', style: title2),
            TextFormField(
              decoration: const InputDecoration(
                  hintText:
                      "Ingrese el comentario de la administración del tiempo."),
              onSaved: (value) {
                generales.tiempoComentario = value!;
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
                      "Ingrese el comentario ejecutivo de antecedentes generales."),
              onSaved: (value) {
                generales.comentarioEjecutivo = value!;
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
                  generalesProvider.crearEncuestaGeneral(generales);
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
