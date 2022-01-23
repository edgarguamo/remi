import 'dart:convert';

import "package:flutter/services.dart" show rootBundle;

class _FormProvider {
  List<dynamic> opciones = [];
  _FormProvider() {
    chargeData();
  }

  Future<List<dynamic>> chargeData() async {
    final route_data =
        await rootBundle.loadString('data/antecedentesgenerales.json');
    opciones = json.decode(route_data);

    return opciones;
  }
}

final formProvider = new _FormProvider();
