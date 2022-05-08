import 'package:farmacia/app/routes/app_routes.dart';
import 'package:farmacia/app/view/home/home_view.dart';
import 'package:farmacia/app/view/pedidos/pedidos_view.dart';
import 'package:farmacia/app/view/produtos/produtos_view.dart';
import 'package:farmacia/app/view/vendas/vendas_view.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => Home(),
    ),
    GetPage(
      name: Routes.VENDAS,
      page: () => VendasView(),
    ),
    GetPage(
      name: Routes.PRODUTOS,
      page: () => ProdutosView(),
    ),
    GetPage(
      name: Routes.PEDIDOS,
      page: () => PedidosView(),
    ),
  ];
}