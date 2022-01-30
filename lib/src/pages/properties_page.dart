import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:remi/src/models/empresa_model.dart';
import 'package:remi/src/models/generales_model.dart';
import 'package:remi/src/models/mercado_model.dart';
import 'package:remi/src/providers/empresa_provider.dart';
import 'package:remi/src/providers/generales_provider.dart';
import 'package:remi/src/providers/mercado_provider.dart';
import 'package:remi/src/widget/navitation_drawer_widget.dart';
import 'package:remi/src/pages/home_page.dart';

class PropertiesPage extends StatefulWidget {
  PropertiesPage({Key key, String title}) : super(key: key);

  @override
  _PropertiesPageState createState() => _PropertiesPageState();
}

class _PropertiesPageState extends State<PropertiesPage> {
  final empresaProvider = new EmpresaProvider();
  final generalProvider = new GeneralProvider();
  final mercadoProvider = new MercadoProvider();

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
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(bottom: 50),
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: appbar_green,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: const Text(
                    'Informacion llenada',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                      size: 50,
                    ),
                    Container(
                      width: 250,
                      child: CarouselSlider(
                        items: const [
                          Text(
                            'ILE\n100%',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            'Ecolac\n75%',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                        options: CarouselOptions(
                            height: 80,
                            enlargeCenterPage: true,
                            viewportFraction: 0.8),
                      ),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      size: 50,
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              _crearListado(),
              SizedBox(
                  width: anchuraSizedBox,
                  height: alturaSizedBox,
                  child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/unsplash_empresa.png',
                            fit: BoxFit.fill,
                          ),
                          ElevatedButton.icon(
                              onPressed: () {
                                Navigator.pushNamed(context, '/enterprise');
                              },
                              icon: const Icon(Icons.add_business,
                                  color: Colors.black),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15))),
                                  minimumSize: const Size(350, 39)),
                              label: const Text(
                                "AÑADIR EMPRESA",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                        ],
                      )))
            ],
          ),
        ]),
      ),
    );
  }

  Widget _crearListado() {
    Future<List<EmpresaModel>> bar = empresaProvider.cargarEmpresa();
    Future<List<GeneralesModel>> foo = generalProvider.cargarGenerales();
    Future<List<MercadoModel>> mer = mercadoProvider.cargarMercado();
    return FutureBuilder(
        future: Future.wait([bar, foo]),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.hasData) {
            final empresas = snapshot.data[0];
            final generales = snapshot.data[1];
            final mercados = snapshot.data[2];
            return ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: empresas.length,
              itemBuilder: (context, i) =>
                  _crearCard(empresas[i], generales[i], mercados[i]),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Widget _crearCard(
      EmpresaModel empresa, GeneralesModel general, MercadoModel mercado) {
    return SizedBox(
        width: anchuraSizedBox,
        height: alturaSizedBox,
        child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'assets/images/diagrama_barras_1.jpg',
                  fit: BoxFit.fill,
                ),
                Text(
                  empresa.nombre,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/enterprise',
                            arguments: [empresa, general, mercado]);
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                          )),
                          minimumSize: const Size(175, 39)),
                      child: Text(
                        'Editar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {});
                        empresaProvider.borrarEmpresa(empresa.id);
                        generalProvider.borrarGenerales(general.id);
                        mercadoProvider.borrarMercado(mercado.id);
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15))),
                          minimumSize: const Size(175, 39)),
                      child: Text(
                        'Eliminar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ))
                ])
              ],
            )));
  }
}
