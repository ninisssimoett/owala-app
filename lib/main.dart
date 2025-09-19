import 'package:flutter/material.dart';
import 'package:owala_app/utils/consts.dart';
import 'package:owala_app/views/auth/login_screen.dart';
import 'package:owala_app/views/auth/register_screen.dart';
import 'package:owala_app/views/home/catalogue_screen.dart';
import 'package:owala_app/views/onboarding/onboarding_screen.dart';

void main() {
  runApp(OwalaApp());
}


class OwalaApp extends StatefulWidget {
  const OwalaApp({super.key});

  @override
  State<OwalaApp> createState() => _OwalaAppState();
}

class _OwalaAppState extends State<OwalaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Owala App",
      theme: ThemeData(
        fontFamily: 'Plus Jakarta Sans',
        visualDensity: VisualDensity.adaptivePlatformDensity, //untuk mengatur kepadatan disetiap platform
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: textColor
          ),
          bodySmall: TextStyle(
            color: textColor
          ),
        ),
        scaffoldBackgroundColor: Colors.white
      ),
      // kelas apa yg tampil pertama kali, 
      //saat aplikasi di tampilkan 
      initialRoute: '/login',
      routes:{
        '/onboarding':(context) => OnboardingScreen(),
        '/login':(context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/catalogue':(context) => CatalogueScreen(),
      } ,
    );
  }
}