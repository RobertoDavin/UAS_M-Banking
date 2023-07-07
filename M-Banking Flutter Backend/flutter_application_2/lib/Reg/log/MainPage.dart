import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Reg/log/Login.dart';
import 'package:flutter_application_2/Reg/log/Register.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Color.fromARGB(236, 67, 13, 167),
        body: Container(
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
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset('assets/logo/Group23.png'),
                SizedBox(
                  height: 10,
                  width: 50,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 45),
                        backgroundColor: Color.fromARGB(255, 67, 178, 178),
                        shape: StadiumBorder()),
                    icon: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 30,
                    ),
                    label: const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 37),
                          backgroundColor: Color.fromARGB(255, 67, 178, 178),
                          shape: StadiumBorder()),
                      icon: const Icon(
                        Icons.person_add_alt_1_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      label: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
