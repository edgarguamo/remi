import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:remi/src/widget/navitation_drawer_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required String title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

const padd = Padding(padding: EdgeInsets.all(30));

class _HomePageState extends State<HomePage> {
  final appbar_green = Colors.green[700];
  final List<String> novedades = [
    'La empresa de soluciones alimentarias ILE ha generado ganancias de 10,000 dolares',
    'La empresa de soluciones alimentarias ILE ha generado ganancias de 20,000 dolares'
  ];
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
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
                      'Novedades',
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
                              'La empresa de soluciones alimentarias ILE ha generado ganancias de 10,000 dolares',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            Text(
                              'La empresa de soluciones alimentarias ILE ha generado ganancias de 20,000 dolares',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ],
                          options: CarouselOptions(
                              height: 80,
                              enlargeCenterPage: true,
                              viewportFraction: 1),
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
            padd,
            SizedBox(
                width: 350,
                height: 230,
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
                        const Text(
                          "PROGRESO DE VENTAS",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15))),
                                minimumSize: const Size(350, 40)),
                            child: const Text(
                              "DETALLES",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                      ],
                    ))),
            padd,
            SizedBox(
                width: 350,
                height: 230,
                child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/diagrama_barras_2.jpg',
                          fit: BoxFit.fill,
                        ),
                        const Text(
                          "REPORTE ANUAL",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15))),
                                minimumSize: const Size(350, 40)),
                            child: const Text(
                              "DETALLES",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ))
                      ],
                    )))
          ],
        ),
      )),
    );
  }
}
