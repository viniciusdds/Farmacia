import 'package:farmacia/app/view/produtos/produtos_controller.dart';
import 'package:farmacia/app/view/vendas/vendas_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProdutosView extends StatefulWidget {
  @override
  _ProdutosViewState createState() => _ProdutosViewState();
}

class _ProdutosViewState extends State<ProdutosView> {

  ProdutosController produtosController = Get.find();
  VendasController vendasController = Get.find();

  @override
  void initState() {
    produtosController.retornarVenda();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    produtosController.pedidos.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFdde0e3),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Obx((){

             if(produtosController.loading.value){
               return Center(
                 child: CircularProgressIndicator(
                   valueColor: AlwaysStoppedAnimation(
                       Colors.blue
                   ),
                 ),
               );
             }else if(produtosController.pedidos.isEmpty){
               return Center(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Icon(Icons.warning, color: Colors.orangeAccent),
                     Text(
                       "Não foi encontrado dados",
                       style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 18,
                           color: Colors.black87
                       ),
                     )
                   ],
                 ),
               );
             }else{
                return Column(
                  children: [
                    Container(
                      child: ListTile(
                        subtitle: Text(
                            "Vendas período ${DateFormat("dd-MM-yyyy").format(vendasController.currentDate.value)} "
                                "a ${DateFormat("dd-MM-yyyy").format(vendasController.currentDate2.value)}",
                            style: TextStyle(
                              fontSize: 12
                            ),
                        ),
                        title: Text(
                            "R\$ ${vendasController.resultadoPeriodo.value}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                        trailing: Icon(Icons.keyboard_arrow_down_rounded),
                      )
                    ),
                    Container(
                      child: Card(
                        elevation: 4,
                        shadowColor: Colors.red,
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                          Icons.calendar_today,
                                          color: Colors.blue,
                                          size: 18,
                                      ),
                                      SizedBox(width: 6),
                                      Text(
                                          "Diárias",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black87
                                          ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "R\$ ${vendasController.resultado.value}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                child: Text(
                                    "|",
                                    style: TextStyle(
                                      fontSize: 60,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w100
                                    ),
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.calendar_view_month_rounded, color: Colors.red),
                                      SizedBox(width: 6),
                                      Text(
                                          "Mensal",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black87
                                          ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "R\$ ${vendasController.resultadoMesAtual.value}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: produtosController.pedidos.length,
                        itemBuilder: (_, index){
                          return Card(
                            elevation: 4,
                            shadowColor: Colors.red,
                            child: ListTile(
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("ID", style: TextStyle(fontSize: 13)),
                                            Text(
                                                "${produtosController.pedidos[index].id}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14
                                                )
                                            ),
                                            Text("Preço de Venda", style: TextStyle(fontSize: 13)),
                                            Text(
                                                "R\$ ${produtosController.pedidos[index].itens![0].embalagem!.precoVenda}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14
                                                )
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Descrição", style: TextStyle(fontSize: 13)),
                                            SizedBox(
                                              width: 150,
                                              child: Text(
                                                 "${produtosController.pedidos[index].itens![0].embalagem!.descricao}",
                                                maxLines: 1,
                                                overflow: TextOverflow.clip,
                                                softWrap: false,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 14
                                                  ),

                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text("Data", style: TextStyle(
                                                      fontSize: 13
                                                    )),
                                                    Text(
                                                        "${produtosController.pedidos[index].itens![0].embalagem!.precoVenda}",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 14
                                                        )
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 50),
                                                Column(
                                                  children: [
                                                    Text("Qtde", style: TextStyle(fontSize: 13)),
                                                    Text(
                                                        "${produtosController.pedidos[index].itens![0].quantidade}",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 14
                                                        )
                                                    ),
                                                  ],
                                                )

                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  )

                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                );
             }

        }),
      ),
    );
  }
}
