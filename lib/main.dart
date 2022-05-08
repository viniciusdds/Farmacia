import 'package:farmacia/app/routes/app_pages.dart';
import 'package:farmacia/app/routes/app_routes.dart';
import 'package:farmacia/app/view/home/home_controller.dart';
import 'package:farmacia/app/view/home/home_view.dart';
import 'package:farmacia/app/view/pedidos/pedidos_controller.dart';
import 'package:farmacia/app/view/produtos/produtos_controller.dart';
import 'package:farmacia/app/view/vendas/vendas_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  Get.put(HomeController());
  Get.put(VendasController());
  Get.put(ProdutosController());
  Get.put(PedidosController());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) { //SystemChrome
    runApp(GetMaterialApp(
      title: "Farmácia",
      initialRoute: Routes.INITIAL,
      getPages: AppPages.routes,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0XFF6D3FFF),
        // accentColor: const Color(0XFF233C63),
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
    ));
  }); // SystemChrome
}


