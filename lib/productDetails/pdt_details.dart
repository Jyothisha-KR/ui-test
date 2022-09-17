import 'package:flutter/material.dart';
import 'package:ui/productDetails/details_screen.dart';
import 'package:ui/productList/list_model.dart';





// import 'package:pjct1/homeScreen/productlist.dart';

class PdtDetails extends StatelessWidget {
  const PdtDetails({Key? key, required this.pdtData}) : super(key: key);
  final PdtListModel pdtData;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: (() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ItemDetailPage(productDetail: pdtData)));
        }),
        child: Card(
          child: Column(
            children: [
              Container(
                child: Image.network(pdtData.pdtImage!),
              ),
              const SizedBox(height: 10.0),
              
              const SizedBox(
                height: 5,
              ),
              Text(
                pdtData.pdtName!,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.currency_rupee,
                    size: 12,
                  ),
                  Text(
                    pdtData.orgPrice!,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 3),
                  const Icon(
                    Icons.currency_rupee,
                    size: 12,
                  ),
                  
                  const SizedBox(width: 3),
                  
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.discount,
                    size: 10,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  
                  ],
              )
            ],
          ),
        ),
      ),
    );
  }
}