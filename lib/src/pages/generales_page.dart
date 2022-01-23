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
            const Text('\n1.3 TELÉFONO:', style: title2),
            TextFormField(
              decoration:
                  const InputDecoration(hintText: "Ingrese el teléfono."),
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
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nLUGAR:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese el lugar."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\nEDAD:', style: enunciado),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese la edad."),
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
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n7.2 SEMANA:', style: title2),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese la semana."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n7.3 MES:', style: title2),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese el mes."),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
              },
            ),
            const Text('\n7.4 AÑO:', style: title2),
            TextFormField(
              decoration: const InputDecoration(hintText: "Ingrese el año."),
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
