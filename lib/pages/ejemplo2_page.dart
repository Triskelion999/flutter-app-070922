import 'package:flutter/material.dart';

class Ejemplo2Page extends StatelessWidget {
  // const Ejemplo2Page({super.key});
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
                index: 2,
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
                ],
              ),
            ),
          ],
        ),
    );
  }
}