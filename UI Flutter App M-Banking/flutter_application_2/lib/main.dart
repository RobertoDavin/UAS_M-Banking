import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_2/Reg/log/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        //primaryColor: Color.fromARGB(237, 109, 25, 219),
        scaffoldBackgroundColor: Color.fromARGB(0, 80, 47, 199),
      ),
      home: MainPage(),
    );
  }

  // Di bawah berikut merupakan code Backend untuk menghubungkan
  // Login/Register ke Firebase

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark().copyWith(
//         scaffoldBackgroundColor: Color.fromARGB(0, 80, 47, 199),
//       ),
//       home: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return MainPage();
//           } else {
//             return AuthScreen();
//           }
//         },
//       ),
//     );
//   }
// }

// class AuthScreen extends StatefulWidget {
//   const AuthScreen({Key? key}) : super(key: key);

//   @override
//   _AuthScreenState createState() => _AuthScreenState();
// }

// class _AuthScreenState extends State<AuthScreen> {
//   bool _isLogin = false;
//   bool _loading = false;
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmPasswordController =
//       TextEditingController();

//   Future<void> handleSubmit() async {
//     if (!_formKey.currentState!.validate()) return;
//     final email = _emailController.text;
//     final password = _passwordController.text;
//     final confirmPassword = _confirmPasswordController.text;

//     if (_isLogin) {
//       _signInWithEmailAndPassword(email, password);
//     } else {
//       if (password != confirmPassword) {
//         showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text('Password Mismatch'),
//               content: Text('The entered passwords do not match.'),
//               actions: [
//                 TextButton(
//                   child: Text('OK'),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 ),
//               ],
//             );
//           },
//         );
//       } else {
//         _registerWithEmailAndPassword(email, password);
//       }
//     }
//   }

//   Future<void> _signInWithEmailAndPassword(
//       String email, String password) async {
//     try {
//       setState(() => _loading = true);
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => MainPage()),
//       );
//     } catch (e) {
//       // Handle sign-in error
//     } finally {
//       setState(() => _loading = false);
//     }
//   }

//   Future<void> _registerWithEmailAndPassword(
//       String email, String password) async {
//     try {
//       setState(() => _loading = true);
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => MainPage()),
//       );
//     } catch (e) {
//       // Handle registration error
//     } finally {
//       setState(() => _loading = false);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_isLogin ? 'Login' : 'Register'),
//       ),
//       body: Form(
//         key: _formKey,
//         child: Column(
//           children: [
//             TextFormField(
//               controller: _emailController,
//               decoration: InputDecoration(labelText: 'Email'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your email';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: _passwordController,
//               decoration: InputDecoration(labelText: 'Password'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your password';
//                 }
//                 return null;
//               },
//             ),
//             if (!_isLogin)
//               TextFormField(
//                 controller: _confirmPasswordController,
//                 decoration: InputDecoration(labelText: 'Confirm Password'),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your password';
//                   } else if (value != _passwordController.text) {
//                     return 'Passwords do not match';
//                   }
//                   return null;
//                 },
//               ),
//             ElevatedButton(
//               onPressed: _loading ? null : handleSubmit,
//               child: _loading ? CircularProgressIndicator() : Text('Submit'),
//             ),
//             TextButton(
//               onPressed: () {
//                 setState(() {
//                   _isLogin = !_isLogin;
//                 });
//               },
//               child: Text(
//                   _isLogin ? 'Create an account' : 'Already have an account?'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MainPage extends StatelessWidget {
//   const MainPage({Key? key}) : super(key: key);

//   void _signOut(BuildContext context) async {
//     await FirebaseAuth.instance.signOut();
//     Navigator.pushAndRemoveUntil(
//       context,
//       MaterialPageRoute(builder: (context) => AuthScreen()),
//       (route) => false,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Main Page'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.logout),
//             onPressed: () => _signOut(context),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Text('Welcome to the main page!'),
//       ),
//     );
//   }
}
