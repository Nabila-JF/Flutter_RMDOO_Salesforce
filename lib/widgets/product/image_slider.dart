import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImageSLiderState();
  }
}

class _ImageSLiderState extends State<ImageSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> myData = [
    Container(
      decoration: BoxDecoration(
        color: Colors.indigo[300],
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        color: Colors.lightGreenAccent,
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(children: [
        CarouselSlider(
          items: myData,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.25,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: myData.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == entry.key
                        ? Color(0xFF242F9B)
                        : Color(0xFF9CA5FF)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
