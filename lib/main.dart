import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp() : super();

  Widget createColum(String text, IconData icon, Color color) {
    double size = 25;
    return Column(
      children: [
        Icon(icon, textDirection: TextDirection.ltr),
        Text(
          text,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: color, fontSize: size),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.deepOrange),
      padding: EdgeInsets.all(50),
      child: Center(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(38)),
                  color: Colors.greenAccent,
                ),
                padding: EdgeInsets.all(15),
                width: 3000,
                height: 200,
                child: Text(
                  "Xin Chao các bạn ",
                  style: TextStyle(fontSize: 20),
                  textDirection: TextDirection.ltr,
                )),
            Container(
              height: 100,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  createColum("Call", Icons.call, Colors.brown),
                  createColum("Routes", Icons.place, Colors.green),
                  createColum("Share", Icons.share, Colors.orange)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
