import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomePage/MainMenu.dart';

class CS extends StatefulWidget {
  const CS({super.key});

  @override
  State<CS> createState() => _CSState();
}

class _CSState extends State<CS> {
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
        // bottomNavigationBar: BottomNavigationBar(
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.call),
        //       label: 'Calls',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.camera),
        //       label: 'Camera',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.chat),
        //       label: 'Chats',
        //     ),
        //   ],
        // ),
        body: SingleChildScrollView(
          child: Container(
            child: Stack(children: [
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset('assets/logo/CSbar.png'),
                          width: 250,
                          height: 170,
                        ),
                        new GestureDetector(
                          onTap: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainMenu()))
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
                  Card(
                    // shape: RoundedRectangleBorder(
                    //   //<-- SEE HERE
                    //   side: BorderSide(
                    //     color: Colors.greenAccent,
                    //   ),
                    // ),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'QNA',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 1, 255, 255),
                                // foreground: Paint()
                                //   ..shader = const LinearGradient(colors: <Color>[
                                //     Color.fromRGBO(28, 199, 199, 0.122),
                                //     Color.fromRGBO(22, 203, 199, 0.663),
                                //     Color.fromRGBO(218, 217, 199, 1),
                                //   ]
                                // )
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: new BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(180, 180, 180, 0.123),
                              Color.fromRGBO(182, 182, 182, 0.664),
                              Color.fromRGBO(218, 217, 217, 1),
                            ],
                            begin: FractionalOffset(1.0, 1.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 5,
                            )
                          ]),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ExpandablePanel(
                          theme: ExpandableThemeData(
                            iconColor: Colors.white,
                          ),
                          header: Text(
                            "Bagaimana cara mendaftarkan akun?",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          collapsed: Text(
                            "",
                            style: TextStyle(fontSize: 0),
                          ),
                          expanded: Text(
                            List.generate(
                                1,
                                (_) =>
                                    "\n1. Untuk mendaftarkan akun silahkan ke BangBank terdekat untuk ditautkan ke akun yang akan di registrasi\n\n"
                                    "2. Masuk ke Aplikasi M-Banking BangBank untuk melakukan registrasi akun\n\n"
                                    "3. Tekan tombol Register/Sign-In dan masukkna Username, password, Confirm Password(masukkan password yang sama seperti sebelumnya) dan tekan tombol Register\n\n"
                                    "4. Kemudian, Tekan tombol Log In dan masukkan Username dan Password yang sesuai dengan registrasi akun sebelumnya\n\n"
                                    "5. Akun telah terdaftar/dibuat").join(
                                '\n'),
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ExpandablePanel(
                          theme: ExpandableThemeData(
                            iconColor: Colors.white,
                          ),
                          header: Text(
                            "Transaksi saya tidak berjalan",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          collapsed: Text(
                            "",
                            style: TextStyle(fontSize: 0),
                          ),
                          expanded: Text(
                            List.generate(
                                1,
                                (_) => "1. Koneksi Internet tidak stabil\n\n"
                                    "2. Aplikasi sedang sibuk\n\n"
                                    "3. Restart kembali aplikasi\n\n"
                                    "4. Restart kembali device anda").join(
                                '\n'),
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ExpandablePanel(
                          theme: ExpandableThemeData(
                            iconColor: Colors.white,
                          ),
                          header: Text(
                            "Aplikasi sering keluar sendiri",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          collapsed: Text(
                            "",
                            style: TextStyle(fontSize: 0),
                          ),
                          expanded: Text(
                            List.generate(
                                1,
                                (_) => "1. Koneksi Internet tidak stabil\n\n"
                                    "2. Tutup aplikasi lainnya yang memungkinkan Aplikasi tidak maksimal\n\n"
                                    "3. Restart kembali Aplikasi").join('\n'),
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ),
                ],
              ),
              // Align(
              //     alignment: Alignment.bottomRight,
              //     child: ElevatedButton.icon(
              //         onPressed: () {},
              //         icon: Image.asset('assets/logo/CS.png'),
              //         label: Text("Hubungi CS"))),
            ]),
          ),
        ),
        bottomNavigationBar: Container(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainMenu(),
                  ),
                );
              },
              color: Colors.blue,
              icon: Image.asset('assets/logo/callCS.png'),
              iconSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
