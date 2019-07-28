import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget{
  final Product_Detail_name;
  final Product_Detail_picture;
  final Product_Detail_contact_number;
  final Product_Detail_rate;
  ProductDetails({
    this.Product_Detail_name,
    this.Product_Detail_contact_number,
    this.Product_Detail_picture,
    this.Product_Detail_rate,
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}
class _ProductDetailsState extends State<ProductDetails>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(
        backgroundColor: Colors.blue,
        title:Text('WaterKing'),
    actions:<Widget>[
    new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){}),
    new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: (){})

    ],
    ),
    body: new ListView(
     children: <Widget>[
      new Container(
     height: 300.0,
     child: GridTile(
    child:Container(
    color:Colors.white,
    child: Image.asset(widget.Product_Detail_picture ),
    ),
    ),
     )
    ],
    )
    );
  }
}