import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomePage/MainMenu.dart';
import 'package:flutter_application_2/HomePage/Transaksi/TransaksiLayanan.dart';
import 'package:flutter_application_2/HomePage/Transaksi/TransaksiVA.dart';

class Transaksi extends StatefulWidget {
  const Transaksi({super.key});

  @override
  State<Transaksi> createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(111, 96, 226, 0.91),
            Color.fromRGBO(79, 67, 172, 1),
            Color.fromRGBO(0, 26, 64, 1),
          ],
          begin: FractionalOffset(1.0, 1.0),
        ),
      ),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset('assets/logo/transaksiLogo.png'),
                    width: 200,
                    height: 170,
                  ),
                  new GestureDetector(
                    onTap: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MainMenu()))
                    },
                    child: Container(
                      child: Icon(
                        Icons.exit_to_app_rounded,
                        size: 50,
                      ),
                      height: 170,
                    ),
                  )
                ],
              ),
            ),
            new GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TransaksiLayanan()))
              },
              child: Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Transaksi Antar Bank",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TransaksiLayanan()))
              },
              child: Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Transaksi Antar Rekening",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TransaksiVA()))
              },
              child: Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Virtual Account",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
