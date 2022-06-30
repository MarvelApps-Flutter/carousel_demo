import 'dart:math';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  List<String> movieImageList = [
    'https://i.pinimg.com/originals/93/d3/30/93d330382e963458edb433ed100910d8.jpg',
    'https://images.squarespace-cdn.com/content/v1/55f32473e4b029b54a7228d2/1504141310256-ZUIG5Z8PTWFJWBUAQN0F/MINE+-+MOT+CREATIVE.jpg?format=1000w',
    'https://www.indiewire.com/wp-content/uploads/2017/09/imperial-dreams-2014.jpg?w=426',
    'https://m.media-amazon.com/images/I/91l6xNzLTbL._AC_SY679_.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBxAR7rqjTLrSO0MnrDZwzhdAOlgfc0kcfVQ&usqp=CAU',
  ];

  CarouselController? carouselController;

  double viewportFraction = 0.8;

  double? pageOffset = 0;

  @override
  void initState() {
    super.initState();
    carouselController = CarouselController(
        // initialPage: 0, viewportFraction: viewportFraction)
        // ..addListener(() {
        //   setState(() {
        //     pageOffset = pageController!.page;
        //   });
        // }
        );
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: carouselController,
      options: CarouselOptions(
        // height: AppConfig().rH(64.573),
        autoPlay: true,
        aspectRatio: 0.8,
        viewportFraction: viewportFraction,
        enlargeCenterPage: false,
        onPageChanged: (index, r) {
          setState(() {
            pageOffset = index.ceilToDouble();
          });
        },
      ),
      items: List<Widget>.generate(movieImageList.length, (index) {
        double scale = max(viewportFraction,
            (1 - (pageOffset! - index).abs()) + viewportFraction);

        return Container(
          padding: EdgeInsets.only(
            right: 10,
            left: 20,
            top: 100 - scale * 25,
            bottom: 50,
          ),
          child: Stack(
            children: <Widget>[
              Image.network(
                movieImageList[index],
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
                alignment: Alignment((pageOffset! - index).abs() * 0.5, 0),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
