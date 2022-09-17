import 'package:flutter/material.dart';
import 'package:ui/productDetails/details_screen.dart';
import 'package:ui/productDetails/pdt_details.dart';

import 'package:ui/productList/list_model.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<PdtListModel> pdtList = [
    PdtListModel(
      pdtImage: 'https://m.media-amazon.com/images/I/81oUvlsYcnL._SL1500_.jpg',
      pdtName: 'black polyester',
      orgPrice: '699',
    ),
    PdtListModel(
      pdtImage: 'https://m.media-amazon.com/images/I/81oUvlsYcnL._SL1500_.jpg',
      pdtName: 'black polyester',
      orgPrice: '686',
    ),
    PdtListModel(
      pdtImage: 'https://m.media-amazon.com/images/I/81oUvlsYcnL._SL1500_.jpg',
      pdtName: ' black polyester',
      orgPrice: '1384',
    ),
    PdtListModel(
      pdtImage: 'https://m.media-amazon.com/images/I/81oUvlsYcnL._SL1500_.jpg',
      pdtName: 'black polyester',
      orgPrice: '1274',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2 / 4,
        ),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
           return PdtDetails (
           pdtData: pdtList[index],
            );


          
          
        },
      ),
    );
  }
}
