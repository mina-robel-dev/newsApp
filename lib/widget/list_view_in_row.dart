import 'package:flutter/material.dart';
import 'package:news_app_test1/model/image.dart';
import 'package:news_app_test1/widget/info_horizonta.dart';
 class HorizontalList extends StatelessWidget {
    HorizontalList({super.key});
  final List<ImageModel>image=[
    ImageModel(imagePath: "asset/pic_1.jfif"),
        ImageModel(imagePath: "asset/pic_2.jpg"),
        ImageModel(imagePath: "asset/pic3.jfif"),
          ImageModel(imagePath: "asset/pic4.jfif"),
          ImageModel(imagePath: "asset/pic4.jfif"),
          ImageModel(imagePath: "asset/pic4.jfif"),
          ImageModel(imagePath: "asset/pic4.jfif"),
          ImageModel(imagePath: "asset/pic4.jfif"),
          ImageModel(imagePath: "asset/pic4.jfif"),



  ];
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
       children: 
        image.map((e)=>InfoHorizonta(object: e,widthImage: 70 ,imageHieght: 95,)).toList(),
       
       ),
    );
  }
}