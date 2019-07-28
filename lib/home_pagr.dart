import 'package:exam_portal/auth_provider.dart';
import 'package:exam_portal/horizontal_listview.dart';
import 'package:exam_portal/product.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class HomePage extends StatelessWidget {
  HomePage({this.onSignedOut});
  final VoidCallback onSignedOut;

  void _signOut(BuildContext context) async {
    try {
      var auth = AuthProvider.of(context).auth;
      await auth.signOut();
      onSignedOut();
    } catch (e) {
      print(e);
    }
  }
  @override
@override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpg'),
        AssetImage('images/m2.jpg'),
        AssetImage('images/m3.jpg'),
        AssetImage('images/m4.jpg'),
      ],
      autoplay: true,
      //animationCurve:Curves.fastOutSlowIn,
      //animationDuration: Duration(microseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding:2.0 ,
    ),
  );
    return Scaffold(
        appBar: AppBar(
          title: Text('CookBook'),
          actions: <Widget>[
            FlatButton(
                child: Text('Logout',
                    style: TextStyle(fontSize: 17.0, color: Colors.white)),
                onPressed: () => _signOut(context)),
                new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){}),
                new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: (){})
          ],
        ),
        drawer: new Drawer(
        child: new ListView(
           children: <Widget>[
             //header
            new UserAccountsDrawerHeader(accountName: Text('dada'),
                accountEmail:Text('dada@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.lightBlue
              ),
              ),
              //   body
             InkWell(
               onTap: (){},
               child:ListTile(
                   title: Text('Home Page'),
                   leading: Icon(Icons.home),
               ),
             ),
              InkWell(
                onTap: (){},
                child:ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person),
                ),
              ),
               InkWell(
                 onTap: (){},
                 child:ListTile(
                    title: Text('My Orders'),
                    leading: Icon(Icons.shopping_basket),
                 ),
               ),
                InkWell(
                  onTap: (){},
                  child:ListTile(
                     title: Text('catagories'),
                     leading: Icon(Icons.dashboard),
                  ),
                ),
                 InkWell(
                   onTap: (){},
                   child:ListTile(
                     title: Text('catagories'),
                     leading: Icon(Icons.dashboard),
                   ),
                 ),
                 Divider(),
                 InkWell(
                   onTap: (){},
                   child:ListTile(
                      title: Text('Setting'),
                      leading: Icon(Icons.settings),
                   ),
                 ),
                  InkWell(
                    onTap: (){},
                    child:ListTile(
                      title: Text('About'),
                      leading: Icon(Icons.help),
                    ),
                  ),
            ],
        ),
      ),
    
      body: new ListView(
          children:<Widget>[
             imageCarousel,
             // padding widget
             new Padding(padding: const EdgeInsets.all(8.0),
             child: new Text('Categories'),),
             // horizontal listview begin here
             HorizontalList(),
             // paddind widget
             new Padding(padding: const EdgeInsets.all(20.0),
             child: new Text('recent product'),),
             // grid view
             Container(
               height: 320.0,
               child: Product(),
             )
          ]
        ));
  }
}