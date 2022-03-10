import 'package:flutter/material.dart';
import 'package:pertemuan_empat/detail_page.dart';

import 'model/sayur.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.lightGreen,
        padding: EdgeInsets.all(20),
        child: _createListCard(),
      ),
    );
  }

  Widget _createListCard() {
    var dataSayur = getData;

    return ListView.separated(
      itemBuilder: (context, index) {
        return _createCard(dataSayur[index], context);
      },
      itemCount: dataSayur.length,
      separatorBuilder: (context, index) {
        return Container(
          color: Colors.grey,
          height: 1,
          margin: EdgeInsets.symmetric(vertical: 4),
        );
      },
    );
  }

  // Widget _createGridCard() {
  //   return GridView.builder(
  //     gridDelegate:
  //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
  //     itemBuilder: (context, index){
  //       return _createCard();
  //     },
  //     itemCount: 20,
  //   );
  // }

  Widget _createCard(Sayur data, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(
              image: data.image,
              name: data.name,
              itemDetail: data.itemDetail,
              price: data.price,
            );
          }));
        },
        child: Container(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.network(data.image),
              ),
              Expanded(
                flex: 3,
                child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: Text(data.name)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
