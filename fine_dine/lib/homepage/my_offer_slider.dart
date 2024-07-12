
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyOfferSlider extends StatefulWidget {

  const MyOfferSlider({super.key});
  @override
  State<MyOfferSlider> createState() => _MyOfferSliderState();
}
class _MyOfferSliderState extends State<MyOfferSlider>{
   var myOfferFoodItems = [
    Image.asset('assets/images/a-plate-of-pasta-and-broccoli-on-a-table.jpg'),
   Image.asset('assets/images/bbq-summer-party.jpg'),
   Image.asset('assets/images/freshly-brewed-coffee-in-a-frothy-mug-generated.jpg'),
   Image.asset('assets/images/the-grilled-bbq-on-the-grill.jpg'),
   Image.asset('assets/images/spaghetti-with-tomato-sauce-and-cheese-on-a-wooden-table.jpg')];
  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                aspectRatio: 1.5,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 2),
                  onPageChanged: (index,reason){
                    setState(() {
                      myCurrentIndex = index;
                    });
                  },
                ),
                items: myOfferFoodItems,
                //     .map((item) {
                //   return Builder(
                //     builder: (BuildContext context) {
                //       return Container(
                //         width: MediaQuery.of(context).size.width,
                //         margin: EdgeInsets.symmetric(horizontal: 5.0),
                //         decoration: BoxDecoration(
                //           color: Colors.red,
                //         ),
                //         child: Image.asset(
                //           'assets/images/$item',
                //           fit: BoxFit.cover,
                //         ),
                //       );
                //     },
                //   );
                // }).toList(),
              ),
      
              Padding(
                padding: EdgeInsets.all(4.0),
                child: AnimatedSmoothIndicator(
                    activeIndex: myCurrentIndex,
                    count: myOfferFoodItems.length,
                    effect: WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 10,
                    dotColor: Colors.grey.shade200,
                    activeDotColor: Colors.deepPurple,
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              ),
            ],
          );
  }


}