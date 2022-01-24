import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:remi/src/models/generales_model.dart';

class GeneralProvider {
  Future<bool> crearEncuestaGeneral(GeneralesModel generales) async {
    final url =
        'https://bancayfinanzasflutter-default-rtdb.firebaseio.com/generales.json';

    await http.post(Uri.parse(url), body: generalesModelToJson(generales));

    return true;
  }
}
