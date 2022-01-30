import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:remi/src/models/mercado_model.dart';

class MercadoProvider {
  final String _url =
      'https://bancayfinanzasflutter-default-rtdb.firebaseio.com/';

  Future<bool> editarMercado(MercadoModel mercados) async {
    final url = '$_url/mercado/${mercados.id}.json';
    final resp =
        await http.put(Uri.parse(url), body: mercadoModelToJson(mercados));
    final decodedData = json.decode(resp.body);

    return true;
  }

  Future<bool> crearMercado(MercadoModel mercados) async {
    final url = '$_url/mercado.json';
    final resp =
        await http.post(Uri.parse(url), body: mercadoModelToJson(mercados));
    final decodedData = json.decode(resp.body);

    return true;
  }

  Future<List<MercadoModel>> cargarMercado() async {
    final url = '$_url/mercado.json';
    final resp = await http.get(Uri.parse(url));

    final Map<String, dynamic> decodedData = json.decode(resp.body);
    final List<MercadoModel> mercados = new List();

    if (decodedData == null) return [];

    decodedData.forEach((id, mercado) {
      final prodTemp = MercadoModel.fromJson(mercado);
      prodTemp.id = id;
      mercados.add(prodTemp);
    });
    return mercados;
  }

  Future<String> borrarMercado(String id) async {
    final url = '$_url/mercado/$id.json';
    final resp = await http.delete(Uri.parse(url));
    print(json.decode(resp.body));

    return 'deleted';
  }
}
