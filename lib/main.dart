import 'package:farmacia/app/view/home/home_controller.dart';
import 'package:farmacia/app/view/home/home_view.dart';
import 'package:farmacia/app/view/tela1/tela1_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  Get.put(HomeController());
  Get.put(Tela1Controller());

  runApp(GetMaterialApp(
    title: "Farmácia",
    localizationsDelegates: const [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: const [
      Locale('en', ''), // English, no country code
      Locale('es', ''), // Spanish, no country code
    ],
    home: Home(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: const Color(0XFF6D3FFF),
      // accentColor: const Color(0XFF233C63),
      fontFamily: 'Poppins',
    ),
    debugShowCheckedModeBanner: false,
  ));
}


