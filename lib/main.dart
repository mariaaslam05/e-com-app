import 'package:e_commerce_app/screens/products_screen.dart';
import 'package:e_commerce_app/screens/auth/login.dart';
import 'package:e_commerce_app/screens/auth/register.dart';
import 'package:e_commerce_app/screens/cart_display.dart'; 
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyAjKO46G5r-hI_jSWPrgmsbEGRvY_BFCDA',
      appId: '1:932975129256:android:53568c6f02b9cc69a3c89d',
      messagingSenderId: '932975129256',
      projectId: 'ecommerce-7cfbd',
      storageBucket: 'ecommerce-7cfbd.firebasestorage.app',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Commerce App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/products-screen': (context) => HomeScreen(),
        '/cart': (context) => CartScreen(), 
      },
    );
  }
}
