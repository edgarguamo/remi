import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:remi/src/models/empresa_model.dart';
import 'package:remi/src/pages/empresa_page.dart';

class EmpresaProvider {
  final String _url =
      'https://bancayfinanzasflutter-default-rtdb.firebaseio.com/';
  Future<bool> editarEmpresa(EmpresaModel producto) async {
    final url = '$_url/empresa/${empresa.id}.json';
    final resp =
        await http.put(Uri.parse(url), body: empresaModelToJson(empresa));
    final decodedData = json.decode(resp.body);
    print(decodedData);

    return true;
  }

  Future<bool> crearEmpresa(EmpresaModel producto) async {
    final url = '$_url/empresa.json';
    final resp =
        await http.post(Uri.parse(url), body: empresaModelToJson(empresa));
    final decodedData = json.decode(resp.body);
    print(decodedData);

    return true;
  }

  Future<List<EmpresaModel>> cargarEmpresa() async {
    final url = '$_url/empresa.json';
    final resp = await http.get(Uri.parse(url));

    final Map<String, dynamic> decodedData = json.decode(resp.body);
    final List<EmpresaModel> empresas = new List();

    if (decodedData == null) return [];

    decodedData.forEach((id, empresa) {
      final prodTemp = EmpresaModel.fromJson(empresa);
      prodTemp.id = id;
      empresas.add(prodTemp);
    });
    return empresas;
  }

  Future<String> borrarEmpresa(String id) async {
    final url = '$_url/empresa/$id.json';
    final resp = await http.delete(Uri.parse(url));
    print(json.decode(resp.body));

    return 'deleted';
  }
}
