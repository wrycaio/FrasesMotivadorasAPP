import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Algoritmo de gerar frases
  var _frases = [
    "O sucesso nasce do querer, da determinação e persistência em se chegar a um objetivo. Mesmo não atingindo o alvo, quem busca e vence obstáculos, no mínimo fará coisas admiráveis.",
    "Determinação, coragem e autoconfiança são fatores decisivos para o sucesso. Se estamos possuídos por uma inabalável determinação, conseguiremos superá-los. Independentemente das circunstâncias, devemos ser sempre humildes, recatados e despidos de orgulho.",
    "Agir, eis a inteligência verdadeira. Serei o que quiser. Mas tenho que querer o que for. O êxito está em ter êxito, e não em ter condições de êxito. Condições de palácio tem qualquer terra larga, mas onde estará o palácio se não o fizerem ali?",
    "Lute. Acredite. Conquiste. Perca. Deseje. Espere. Alcance. Invada. Caia. Seja tudo o quiser ser, mas acima de tudo, seja você sempre.",
    "Só existe um êxito: a capacidade de levar a vida que se quer.",
  ];

  var _fraseGerada = "Clique para gerar uma frase !";

  void _gerarFrase() {
    var randomnumber = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[randomnumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 65, 105, 255),
            title: Text("Frases Motivacionais"),
            elevation: 0,
            leading: IconButton(
                icon: SvgPicture.asset("assets/icons/menu.svg"),
                onPressed: null)),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration:
                BoxDecoration(border: Border.all(width: 3, color: Colors.blue)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("images/logo.png"),
                Text(_fraseGerada,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.black)),
                RaisedButton(
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.blueAccent,
                  onPressed: _gerarFrase,
                )
              ],
            ),
          ),
        ));
  }
}
