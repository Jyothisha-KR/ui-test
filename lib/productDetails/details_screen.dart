 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/productDetails/customExpansion.dart';

import 'package:ui/productList/list_model.dart';

class ItemDetailPage extends StatefulWidget {
  const ItemDetailPage({Key? key, required this.productDetail,}) : super(key: key);
  final PdtListModel productDetail;

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.heart,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  widget.productDetail.pdtImage!,
                ),
                
                Text(widget.productDetail.pdtName!,
                    style: const TextStyle(fontSize: 12)),
                Row(
                  children: [
                    const Icon(
                      Icons.currency_rupee,
                      size: 12,
                    ),
                    Text(
                      widget.productDetail.orgPrice!,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.currency_rupee,
                      size: 12,
                    ),
                    
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Fabric choices, openings and fastenings, fit and ease, trimmings used are all major considerations when designing children  wear. Some other factors a designer designing for children  clothing should focus on are the changing shape of the growing kid and different proportions of the different parts of the body.',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomExpansionTile(
                  title: 'Delivery Details',
                  subtitle: 'Check Delivery Date',
                  explanation:
                      'your purchased item will be there on aug 22nd before 9 PM',
                  customTileExpanded: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                
                const SizedBox(
                  height: 10,
                ),
                CustomExpansionTile(
                  title: 'Product Details',
                  subtitle: 'more',
                  explanation:
                      '',
                  customTileExpanded: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 28,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: const Icon(
                          Icons.share,
                          color: Colors.black,
                        )),
                    const SizedBox(
                      width: 28,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: const Icon(
                          CupertinoIcons.heart,
                          color: Colors.black,
                        )),
                    const SizedBox(
                      width: 28,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_bag,
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                      label: const Text(
                        'Add to cart',
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
