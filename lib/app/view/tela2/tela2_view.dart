import 'package:flutter/material.dart';

class Tela2View extends StatefulWidget {
  @override
  _Tela2ViewState createState() => _Tela2ViewState();
}

class _Tela2ViewState extends State<Tela2View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFdde0e3),
      body: SingleChildScrollView(
        child: DataTable(
          dividerThickness: 5,
          columnSpacing: 10,
          horizontalMargin: 8,
          headingTextStyle: const TextStyle(fontSize: 10, color: Colors.black),
          dataTextStyle: const TextStyle(fontSize: 10, color: Colors.black),
          headingRowColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromARGB(255, 255, 243, 243)),
         // border: TableBorder.all(width: 1, color: Color.fromARGB(78, 0, 0, 0)),
          columns: const [
            DataColumn(
              label: Text('Código',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              // size: ColumnSize.L,
            ),
            DataColumn(
              label: Text('Descrição',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            DataColumn(
              label: Text('Qtd',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            DataColumn(
              label: Text('Vlr',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              numeric: true,
            ),
            DataColumn(
              label: Text('Venda',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            DataColumn(
              label: Text('Status',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          ],
          rows: [],

         // List<DataRow>.generate(
            // listaEmbalagem.length,
            //     (index) => DataRow(
            //   cells: [
            //     DataCell(
            //       Text(
            //         listaEmbalagem[index].id.toString(),
            //       ),
            //     ),
            //     DataCell(
            //       Text(
            //         listaEmbalagem[index].descricao!,
            //       ),
            //     ),
            //     DataCell(
            //       Text(
            //         listaEmbalagem[index].quantidade.toString(),
            //       ),
            //     ),
            //     DataCell(
            //       Text(
            //         listaEmbalagem[index].valorUnitario.toString(),
            //       ),
            //     ),
            //     DataCell(
            //       Text(
            //         listaEmbalagem[index].apelido.toString().toUpperCase(),
            //       ),
            //     ),
            //     DataCell(
            //       Text(
            //         listaEmbalagem[index].status.toString(),
            //       ),
            //     ),
            //  ],
            ),
          ),
        );
  }
}
