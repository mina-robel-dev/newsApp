import 'package:flutter/material.dart';
import 'package:news_app_test1/model/image.dart';

class InfoHorizonta extends StatelessWidget {
  const InfoHorizonta({
    super.key,
    required this.object,
      this.widthImage,
     required this.imageHieght,
  });
  final ImageModel object;
  final double ? widthImage;
  final double imageHieght;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5)),
          child: Image.asset(
            object.imagePath,
         height:imageHieght ,
         // height: double.infinity,
           width:widthImage??double.infinity,
           fit: BoxFit.cover,
             
          ),
        ),
        
        object.text != null ? Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: Text(object.text!),
        ) : SizedBox(),
      ],
    );
  }
}
