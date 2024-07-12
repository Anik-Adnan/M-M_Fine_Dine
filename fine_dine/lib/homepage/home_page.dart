

import 'package:fine_dine/homepage/my_offer_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState  extends State<HomePage>{
  final  _restaurantName = "M&M Fine Dine";
  bool _pinned = true;
  bool _snap = true;
  bool _floating = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 200.0,
            centerTitle: true,
            title: Text(_restaurantName,style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.deepPurple,
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.photo)),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/images/plates-of-food-on-a-table-with-lights-in-the-background.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: MyOfferSlider(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child:
                    Text('$index', textScaler: const TextScaler.linear(5)),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
      ),
    );
  }
}
