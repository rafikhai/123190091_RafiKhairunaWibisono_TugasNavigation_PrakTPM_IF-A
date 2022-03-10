import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/sayur.dart';

class DetailPage extends StatelessWidget {
  // final Movie movie;
  final String image;
  final String name;
  final String itemDetail;
  final String price;

  const DetailPage({
    Key? key,
    required this.image,
    required this.name,
    required this.itemDetail,
    required this.price,
    // this.price = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail Page"),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Center(
              child: Column(
                children: [
                  Image.network(image),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    itemDetail,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    price,
                  )
                  // Text("${price}"),
                ],
              ),
            ),
          ),
        ));
  }
}
