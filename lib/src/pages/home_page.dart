import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required String title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

const padd = Padding(padding: EdgeInsets.all(30));

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(1, 121, 59, 1),
        title: const Center(child: Text('REMI')),
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(Icons.app_blocking),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.account_circle_rounded),
            ),
          )
        ],
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            padd,
            SizedBox(
                width: 350,
                height: 195,
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
                height: 195,
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
