import 'package:flutter/material.dart';
import 'package:news_app_test1/model/image.dart';
import 'package:news_app_test1/widget/info_horizonta.dart';
 class Vertical extends StatelessWidget {
    Vertical({super.key});
  final List<ImageModel>image=[
    ImageModel(imagePath: "asset/pic_1.jfif",text: "pic1"),
        ImageModel(imagePath: "asset/pic_2.jpg",),
        ImageModel(imagePath: "asset/pic3.jfif",text: "pic"),
          ImageModel(imagePath: "asset/pic4.jfif"),
          ImageModel(imagePath: "asset/pic4.jfif"),
          ImageModel(imagePath: "asset/pic4.jfif"),
          ImageModel(imagePath: "asset/pic4.jfif"),
          ImageModel(imagePath: "asset/pic4.jfif"),
          ImageModel(imagePath: "asset/pic4.jfif"),



  ];
  
  @override
  Widget build(BuildContext context) {
    return /*Expanded(
      child: SizedBox(
         width: double.infinity,
         //height: 400,
        child: ListView(
          scrollDirection: Axis.vertical,
         children: 
          image.map((e)=>InfoHorizonta(object: e )).toList(),
         
         ),
      ),
    );*/
    SliverList(delegate: SliverChildBuilderDelegate( 
      childCount: image.length,
      (context, index) {
      return Expanded(
        child: InfoHorizonta(object: image[index],imageHieght: 300,),
      );
    },));
  }
}