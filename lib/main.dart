import 'package:flutter/material.dart';
import 'package:owala_app/models/products_model.dart';
import 'package:owala_app/utils/consts.dart';
import 'package:owala_app/views/auth/login_screen.dart';
import 'package:owala_app/views/auth/register_screen.dart';
import 'package:owala_app/views/detail/detail_screen.dart';
import 'package:owala_app/views/home/catalogue_screen.dart';
import 'package:owala_app/views/onboarding/onboarding_screen.dart';

void main() {
  runApp(TumblrrrApp());
}

class TumblrrrApp extends StatefulWidget {
  const TumblrrrApp({super.key});

  @override
  State<TumblrrrApp> createState() => _TumblrrrAppState();
}

class _TumblrrrAppState extends State<TumblrrrApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tumblrrr App",
      theme: ThemeData(
        fontFamily: 'Plus Jakarta Sans',
        visualDensity: VisualDensity.adaptivePlatformDensity, // mengatur kepadatan di setiap platform
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: textColor),
          bodySmall: TextStyle(color: textColor),
        ),
        scaffoldBackgroundColor: Colors.white
      ),
      // initialRoute: untuk mendefinisikan kelas apa yang akan tampil pertama kali
      // saat aplikasi dijalankan
      initialRoute: '/catalogue',
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/catalogue': (context) => CatalogueScreen(),
        '/detail': (context) => DetailScreen(
          // ModalRoute adalah class yang wajib dipanggil ketika akan melakukan navigasi dengan membawa data
          product: ModalRoute.of(context)!.settings.arguments as ProductsModel,
        ),
      },
    );
  }
}