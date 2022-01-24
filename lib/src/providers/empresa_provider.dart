import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:remi/src/models/empresa_model.dart';

class EmpresaProvider {
  Future<bool> crearEncuestaEmpresa(EmpresaModel empresa) async {
    final url =
        'https://bancayfinanzasflutter-default-rtdb.firebaseio.com/empresa.json';

    await http.post(Uri.parse(url), body: empresaModelToJson(empresa));

    return true;
  }
}
