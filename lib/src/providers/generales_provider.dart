import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:remi/src/models/generales_model.dart';

class GeneralProvider {
  final String _url =
      'https://plataformas-moviles-d4eeb-default-rtdb.firebaseio.com/';

  Future<bool> editarGenerales(GeneralesModel generales) async {
    final url = '$_url/generales/${generales.id}.json';
    final resp =
        await http.put(Uri.parse(url), body: generalesModelToJson(generales));
    final decodedData = json.decode(resp.body);
    print(decodedData);

    return true;
  }

  Future<bool> crearGeneral(GeneralesModel generales) async {
    final url = '$_url/generales.json';
    final resp =
        await http.post(Uri.parse(url), body: generalesModelToJson(generales));
    final decodedData = json.decode(resp.body);
    print(decodedData);

    return true;
  }

  Future<List<GeneralesModel>> cargarGenerales() async {
    final url = '$_url/generales.json';
    final resp = await http.get(Uri.parse(url));

    final Map<String, dynamic> decodedData = json.decode(resp.body);
    final List<GeneralesModel> generales = new List();

    if (decodedData == null) return [];

    decodedData.forEach((id, general) {
      final prodTemp = GeneralesModel.fromJson(general);
      prodTemp.id = id;
      generales.add(prodTemp);
    });
    return generales;
  }

  Future<String> borrarGenerales(String id) async {
    final url = '$_url/generales/$id.json';
    final resp = await http.delete(Uri.parse(url));
    print(json.decode(resp.body));

    return 'deleted';
  }
}
