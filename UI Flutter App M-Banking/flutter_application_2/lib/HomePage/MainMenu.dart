import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/HomePage/CS/CS.dart';
import 'package:flutter_application_2/HomePage/History/Riwayat.dart';
import 'package:flutter_application_2/HomePage/Profil/Profil.dart';
import 'package:flutter_application_2/HomePage/Transaksi/Transaksi.dart';
import 'package:flutter_application_2/Reg/log/MainPage.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
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
        appBar: AppBar(
          leading: Image.asset('assets/logo/Group2.png'),
          leadingWidth: 170,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          toolbarHeight: 80,
          actions: <Widget>[
            Padding(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: Icon(Icons.exit_to_app_rounded),
              ),
              padding: EdgeInsets.only(
                right: 10.0,
              ),
            ),
          ],
          actionsIconTheme: IconThemeData(color: Colors.black, size: 60),
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 180,
            ),
            Container(
              decoration: const BoxDecoration(
                  //color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100))),
              child: GridView.count(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 40,
                children: [
                  itemDashboard1('Profil', CupertinoIcons.person, Colors.white),
                  itemDashboard2(
                      'Transaksi', CupertinoIcons.graph_circle, Colors.white),
                  itemDashboard3('Customer Service', CupertinoIcons.person_2,
                      Colors.white),
                  itemDashboard4(
                      'Riwayat', CupertinoIcons.chat_bubble_2, Colors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  itemDashboard1(String title, IconData iconData, Color background) => InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Profil()));
        },
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 5),
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // GestureDetector(
                      //   onTap: () {
                      //     Navigator.push(context,
                      //         MaterialPageRoute(builder: (context) => Profil()));
                      //   },
                      // ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: background,
                          shape: BoxShape.circle,
                        ),
                        // child: Icon(
                        //   iconData,
                        //   color: Colors.black,
                        //   size: 80,
                        // )
                        child: ImageIcon(
                          AssetImage('assets/logo/user-4.png'),
                          color: Colors.black,
                          size: 90,
                        ),
                      ),
                      const SizedBox(height: 0),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(title, style: TextStyle(fontSize: 14))
          ],
        ),
      );

  itemDashboard2(String title, IconData iconData, Color background) => InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Transaksi()));
        },
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 5),
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // GestureDetector(
                      //   onTap: () {
                      //     Navigator.push(context,
                      //         MaterialPageRoute(builder: (context) => Profil()));
                      //   },
                      // ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: background,
                          shape: BoxShape.circle,
                        ),
                        // child: Icon(
                        //   iconData,
                        //   color: Colors.black,
                        //   size: 80,
                        // )
                        child: ImageIcon(
                          AssetImage('assets/logo/transaction.png'),
                          color: Colors.black,
                          size: 90,
                        ),
                      ),
                      const SizedBox(height: 0),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(title, style: TextStyle(fontSize: 14))
          ],
        ),
      );

  itemDashboard3(String title, IconData iconData, Color background) => InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CS()));
        },
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 5),
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // GestureDetector(
                      //   onTap: () {
                      //     Navigator.push(context,
                      //         MaterialPageRoute(builder: (context) => Profil()));
                      //   },
                      // ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: background,
                          shape: BoxShape.circle,
                        ),
                        // child: Icon(
                        //   iconData,
                        //   color: Colors.black,
                        //   size: 80,
                        // )
                        child: ImageIcon(
                          AssetImage('assets/logo/CS.png'),
                          color: Colors.black,
                          size: 90,
                        ),
                      ),
                      const SizedBox(height: 0),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(title, style: TextStyle(fontSize: 14))
          ],
        ),
      );

  itemDashboard4(String title, IconData iconData, Color background) => InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Riwayat()));
        },
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 5),
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // GestureDetector(
                      //   onTap: () {
                      //     Navigator.push(context,
                      //         MaterialPageRoute(builder: (context) => Profil()));
                      //   },
                      // ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: background,
                          shape: BoxShape.circle,
                        ),
                        // child: Icon(
                        //   iconData,
                        //   color: Colors.black,
                        //   size: 80,
                        // )
                        child: ImageIcon(
                          AssetImage('assets/logo/history.png'),
                          color: Colors.black,
                          size: 90,
                        ),
                      ),
                      const SizedBox(height: 0),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(title, style: TextStyle(fontSize: 14))
          ],
        ),
      );
}
