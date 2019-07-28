import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 80.0,
        child: ListView(
          scrollDirection:Axis.horizontal,
          children: <Widget>[
          Category(
            image_location:'images/cats/cleaner.png',
            image_caption:'cleaner',
          ),
          Category(
            image_location:'images/cats/cook.png',
            image_caption:'cook',
          ),
          Category(
            image_location:'images/cats/doctor.png',
            image_caption:'doctor',
          ),
          Category(
            image_location:'images/cats/maid.png',
            image_caption:'maid',
          ),
          Category(
            image_location:'images/cats/nurse.png',
            image_caption:'nurse',
          ),
          Category(
            image_location:'images/cats/teacher.png',
            image_caption:'teacher',
          ),
          ],
    ),
    );
  }
}
class Category extends StatelessWidget{
  final String image_location;
  final String image_caption;
  
  Category ({
    this.image_location,
    this.image_caption,
  }
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(padding: const EdgeInsets.all(2.0), 
    child: InkWell(onTap: (){},
    child: Container(
      width: 100.0,
      child: ListTile(
      title: Image.asset(image_location,
         width: 100.0,
         height:80.0,
      ),
      subtitle: Container(
         alignment: Alignment.topCenter,
         child: Text(image_caption,style: new TextStyle(fontSize: 12.0),) ,
      ),

    ),  
    ),
    ),
    );
  }
}