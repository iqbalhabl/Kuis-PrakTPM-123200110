import 'package:flutter/material.dart';
import 'package:kuispraktpm/coffee_menu.dart';

class Detail extends StatefulWidget {
  final CoffeeMenu coff;
  const Detail({Key? key, required this.coff}) : super(key: key);


  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.coff.name),
          ],
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(widget.coff.imageUrls[0],
                    width: 250,
                    height: 250,),
                  Image.network(widget.coff.imageUrls[1],
                    width: 250,
                    height: 250,),
                  Image.network(widget.coff.imageUrls[2],
                    width: 250,
                    height: 250,),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.coff.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ],
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left:30, right: 30),
                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Description: '),
                        Text(widget.coff.description),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Price: '),
                        Text(widget.coff.price),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Ingredients: '),
                        Text(widget.coff.ingredients[0]),
                        Text(', '),
                        Text(widget.coff.ingredients[1]),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Nutrition: '),
                        Text(widget.coff.nutrition),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Average: '),
                        Text(widget.coff.reviewAverage),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Count: '),
                        Text(widget.coff.reviewCount),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Link store: '),
                        Text(widget.coff.linkStore),
                      ],
                    ),


                  ],
                ),
              ),

              SizedBox(height: 20,),

            ]
        ),

      ),
    );
  }
}