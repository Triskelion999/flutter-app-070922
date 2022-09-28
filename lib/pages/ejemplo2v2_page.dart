import 'package:flutter/material.dart';

class Ejemplo2v2Page extends StatefulWidget {
  //const Ejemplo2v2Page({super.key});

  @override
  State<Ejemplo2v2Page> createState() => _Ejemplo2v2PageState();
}

class _Ejemplo2v2PageState extends State<Ejemplo2v2Page> {
  int index = 0;
  ButtonStyle style = ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Container(
            // color: Colors.lightGreen.shade100
            decoration: BoxDecoration(
              color: Colors.lightGreen.shade100,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/fondo.png')
              ),
            ),
            width: double.infinity,
            height: 200,
            child: Stack(
              children: [
                Container(
                  color: Colors.blue,
                  width: 180,
                  height: 180,
                ),
                Positioned(
                  bottom: 10,
                  right: 150,
                  child: Container(
                    decoration: BoxDecoration(
                       color: Colors.orange,
                       border: Border.all(color: Colors.white, width:3),
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    // color: Colors.orange,
                    width: 120,
                    height: 120,
                  ),
                ),
              ],
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 200,
              color: Colors.lightBlue.shade100,
              child: IndexedStack(
                index: index,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.purple.shade100,
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    //style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
                    color: Colors.red,
                    onPressed: () {setState(() { index = 0; }); },
                    child: Text('Rojo'),
                    ),
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                    onPressed: () {setState(() {index = 1; }); },
                    child: const Text('Verde'),
                    ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {setState(() {index = 2; }); },
                    child: const Text('Azul'),
                    ),
                    ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.purple),
                    onPressed: () {setState(() {index = 3; }); },
                    child: const Text('Púrpura'),
                    ),
                  
                ],
              ),
            ),
          ],
        ),
    );
  }
}
