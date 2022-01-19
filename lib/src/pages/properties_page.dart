import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:remi/src/widget/navitation_drawer_widget.dart';

class PropertiesPage extends StatefulWidget {
  PropertiesPage({Key? key, required String title}) : super(key: key);

  @override
  _PropertiesPageState createState() => _PropertiesPageState();
}

class _PropertiesPageState extends State<PropertiesPage> {
  final appbar_green = Colors.green[700];
  final List<String> empresas = ['Empresa A\n100%', 'Empresa B\n75%'];
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
      body: Column(
        children: [
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
                      width: 300,
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
        ],
      ),
    );
  }
}
