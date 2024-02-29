import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learning',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MiPaginaInicial(),
    );
  }
}

// Stateful

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} // MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tabbar Gregorio Campa"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              text: "Playeras",
              icon: Icon(Icons.call_missed_outgoing_rounded),
            ),
            Tab(
              text: "Polos",
              icon: Icon(Icons.cabin),
            ),
            Tab(
              text: "Gorras",
              icon: Icon(Icons.dangerous_rounded),
            ),
            Tab(
              text: "Ofertas",
              icon: Icon(Icons.campaign_rounded),
            ),
          ]), // Fin de tabs // Fin bottom tabbar
        ),
        body: TabBarView(
          children: const <Widget>[
            Center(
              child: Text("Ferrari",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Center(
              child: Text("Mclaren",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Center(
              child: Text("Mercedes",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Center(
              child: Text("Aston Martin",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          ], // Jardin de niños
        ), // Fin del tabbarview
      ), // Fin de scaffold
    ); // DefaultTabController
  } // Fin widgets
} // _MiPaginaInicialState
