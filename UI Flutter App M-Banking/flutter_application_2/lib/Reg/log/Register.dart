import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Reg/log/Login.dart';

class Register extends StatelessWidget {
  const Register({super.key});
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
        resizeToAvoidBottomInset: false,
        //appBar: AppBar(title: Text('Register')),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/logo/Group24.png'),
              SizedBox(
                height: 0,
                width: 50,
              ),
              TextField(
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  //------------------------------------
                  labelText: "Username",
                  // hintStyle: TextStyle(
                  //     fontSize: 20,
                  //     color: const Color.fromARGB(255, 167, 159, 168)),
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 167, 159, 168)),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  //----------------------------------------
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5, //<-- SEE HERE
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
                width: 50,
              ),
              TextField(
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  prefixIcon: Icon(
                    //Icons.visibility_off,
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  //border: UnderlineInputBorder(),
                  //------------------------------------
                  helperText: "Password must contain special character",
                  helperStyle: TextStyle(color: Colors.green),
                  //------------------------------------
                  labelText: "Password",
                  // hintStyle: TextStyle(
                  //     fontSize: 20,
                  //     color: const Color.fromARGB(255, 167, 159, 168)),
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 167, 159, 168)),
                  //-------------------------------------
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5, //<-- SEE HERE
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  //--------------------------------------
                ),
              ),
              SizedBox(
                height: 10,
                width: 50,
              ),
              TextField(
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  prefixIcon: Icon(
                    //Icons.visibility_off,
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  //border: UnderlineInputBorder(),
                  //------------------------------------
                  // helperText: "Password must contain special character",
                  // helperStyle: TextStyle(color: Colors.green),
                  //------------------------------------
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 167, 159, 168)),
                  //labelStyle: TextStyle(color: Colors.purpleAccent),
                  //-------------------------------------
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5, //<-- SEE HERE
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  //--------------------------------------
                ),
              ),
              SizedBox(
                height: 15,
                width: 50,
              ),
              RichText(
                  text: TextSpan(
                text: "Already have an account ?",
                style: TextStyle(
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                    text: "  Log In",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
              SizedBox(
                height: 15,
                width: 50,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  //----------------------------------------------------
                  child: Text(
                    'Register',
                    style: TextStyle(color: Color.fromARGB(255, 67, 178, 178)),
                  ),
                  //----------------------------------------------------
                  style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 37),
                    shape: StadiumBorder(),
                    textStyle: TextStyle(
                      fontSize: 30,
                    ),
                    primary: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 185,
                      child: Image.asset('assets/logo/Moneyysignup.png')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
