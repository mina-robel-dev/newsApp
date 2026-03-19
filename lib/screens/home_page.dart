import 'package:flutter/material.dart';
import 'package:news_app_test1/widget/list_view_in_coloumn.dart';
import 'package:news_app_test1/widget/list_view_in_row.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("newsApp",style: TextStyle(color: Colors.black),),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: HorizontalList(),),
         Vertical(),

          //HorizontalList(),
          //Vertical(),
        ],
      ),
    );
  }
}