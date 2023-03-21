import 'package:flutter/material.dart';
import 'package:kuispraktpm/detail_menu.dart';
import 'package:kuispraktpm/coffee_menu.dart';

class listDaftar extends StatefulWidget {
  const listDaftar({Key? key}) : super(key: key);

  @override
  State<listDaftar> createState() => _listDaftarState();
}

class _listDaftarState extends State<listDaftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Text('Coffe Shop',),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final CoffeeMenu coff = coffeeList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Detail(coff:coff)
              )
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      child: Image.network(coff.imageUrls[0],
                        width: 150,
                        height: 150,
                      ),
                    ),
                    Column(

                        children: <Widget>[
                          Row(
                            children: [
                              Text(coff.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            ],

                          ),
                          Row(
                            children: [
                              Text(coff.price, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),),
                            ],

                          ),

                        ]
                    ),

                  ],
                ),
              ),
            ),
          );
        },
        itemCount: coffeeList.length,

      ),
    );
  }
}