import 'package:flutter/material.dart';
import 'product_details.dart';
class Product extends StatefulWidget{
  @override
  _ProductState createState() => _ProductState();
}
class _ProductState extends State<Product>{
  var product_list = [
    {
      "name": "Aquafina",
      "picture": "images/product/aaya.jpg",
      "contact_number": 9211420420,
      "rate": 1500,
    },
    {
      "name": "Bisleri",
      "picture": "images/product/dada.jpg",
      "contact_number": 9212421421,
      "rate": 1500,
    }
  ];
  @override
  Widget build(BuildContext context){
  return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
      new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_pricture: product_list[index]['picture'],
          prod_contact_number: product_list[index]['contact_number'],
          prod_rate: product_list[index]['rate'],
        );
      });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_contact_number;
  final prod_rate;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_contact_number,
    this.prod_rate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                  new MaterialPageRoute(builder:(context)=>new ProductDetails(
                    // passing product details page
                      Product_Detail_name:prod_name,
                      Product_Detail_contact_number:prod_contact_number,
                      Product_Detail_picture:prod_pricture,
                      Product_Detail_rate:prod_rate,
                  ) )),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$prod_rate",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\@$prod_contact_number",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  ),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
