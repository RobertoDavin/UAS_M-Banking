import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomePage/Transaksi/Transaksi.dart';
import 'package:flutter_application_2/HomePage/Transaksi/TransaksiBBfast.dart';
import 'package:flutter_application_2/HomePage/Transaksi/TransaksiMenu.dart';
import 'package:flutter_application_2/HomePage/Transaksi/TransaksiSKN.dart';

class TransaksiLayanan extends StatefulWidget {
  const TransaksiLayanan({super.key});

  @override
  State<StatefulWidget> createState() => _TransaksiLayananState();
}

class _TransaksiLayananState extends State<TransaksiLayanan> {
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
                          MaterialPageRoute(builder: (context) => Transaksi()))
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
            Container(
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  new GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TransaksiBBfast())),
                    },
                    child: Container(
                      width: 370.0,
                      height: 130.0,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("BB-Fast",
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 26, 64, 1),
                                    fontSize: 20)),
                            Text(
                                "Minimal Transaksi :                    Rp1\nBiaya Admin :                              Rp5500\nWaktu Pengerjaan :                    3jam",
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 26, 64, 1),
                                    fontSize: 16)),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TransaksiMenu())),
                    },
                    child: Container(
                      width: 370.0,
                      height: 130.0,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("BB-RTO",
                                style: TextStyle(
                                    color: Color.fromRGBO(79, 67, 172, 1),
                                    fontSize: 20)),
                            Text(
                                "Minimal Transaksi :                    Rp1\nBiaya Admin :                              Rp1500\nWaktu Pengerjaan :                    24jam",
                                style: TextStyle(
                                    color: Color.fromRGBO(79, 67, 172, 1),
                                    fontSize: 16)),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TransaksiSKN())),
                    },
                    child: Container(
                      width: 370.0,
                      height: 130.0,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("SKN",
                                style: TextStyle(
                                    color: Color.fromRGBO(111, 96, 226, 0.91),
                                    fontSize: 20)),
                            Text(
                                "Minimal Transaksi :                      Rp1000\nBiaya Admin :                                Rp1500\nWaktu Pengerjaan :                      Hari Kerja\n                                                     (08.00-17.00)",
                                style: TextStyle(
                                    color: Color.fromRGBO(111, 96, 226, 0.91),
                                    fontSize: 15)),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
