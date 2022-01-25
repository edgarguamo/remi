import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:remi/src/models/generales_model.dart';
import 'package:remi/src/pages/generales_page.dart';

class GeneralProvider {
  final String _url =
      'https://bancayfinanzasflutter-default-rtdb.firebaseio.com/';

  Future<bool> crearEncuestaGeneral(GeneralesModel generales) async {
    final url = '{$_url}/generales.json';

    final resp =
        await http.post(Uri.parse(url), body: generalesModelToJson(generales));

    final decodedData = json.decode(resp.body);

    print(decodedData);
    return true;
  }

  Future<bool> editarGenerales(GeneralesModel producto) async {
    final url = '$_url/empresa/${generales.id}.json';
    final resp =
        await http.put(Uri.parse(url), body: generalesModelToJson(generales));
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

    decodedData.forEach((id, generales) {
      final prodTemp = GeneralesModel.fromJson(generales);
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
