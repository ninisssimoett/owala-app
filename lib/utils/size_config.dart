import 'package:flutter/material.dart';

class SizeConfig {
  // class MediaQuery adalah class yang berfungsi utk membuat aplikasi menjadi responsive
  // dengan cara mengambil ukuran aktual(real) pada layar platform
  static MediaQueryData _mediaQueryData = 
  MediaQueryData.fromView(
    // ignore: deprecated_member_use
    WidgetsBinding.instance.window
  );
 // variabel utk menampung default size dari aplikasi, sebelum di deploy ke platform yg spesifik 
 //dan mendapatkan ukuran aktual dari platform tersebut, (misal : dideploy ke platform android)
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double defaultSize = 0.0;

// fungsi dr function ini adalah utk pemanggilan awal ketika aplikasi dijalankan
// dan utk mendapatkan ukuran dari layar platform
  void init(BuildContext context) {
    // berfungsi utk mengambil ukuran aktual dari platform
    // karena didalam variabel _mediaQueryData...
    // didalam nya memanggil class media query
    // yg class media query itu sendiri berfungsi utk mengambil ukuran aktual dr platform
    _mediaQueryData = MediaQuery.of(context);
    // utk mengambil hanya data ukuran widht saja
    screenWidth = _mediaQueryData.size.width;
     // utk mengambil hanya data ukuran height saja
    screenHeight = _mediaQueryData.size.height;
  }
}
// menggunakan size standar dari handphone iphone x 812 x 375
double getProporsionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // ini adalah perhitungan utk menghasilkan nilai dan ukuran objek yang responsive sesuai dengan platform
  return (inputHeight / 812.0) * screenHeight;
}

double getProporsionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth;
}