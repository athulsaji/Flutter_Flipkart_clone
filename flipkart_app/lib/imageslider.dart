import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class sliderT extends StatefulWidget {
  const sliderT({Key? key}) : super(key: key);

  @override
  State<sliderT> createState() => _sliderState();
}

class _sliderState extends State<sliderT> {
  CarouselController buttonCarouselController = CarouselController();
  List<String> avatar = [
    "https://rukminim1.flixcart.com/fk-p-flap/844/140/image/d5183e7fe6543bd2.jpg?q=50",
    "https://cdn.zoutons.com/images/originals/blog/offerbanner2234_1656329162.png",
    "https://rukminim1.flixcart.com/fk-p-flap/844/140/image/d5183e7fe6543bd2.jpg?q=50",
    "https://cdn.zoutons.com/images/originals/blog/offerbanner2234_1656329162.png",
    "https://rukminim1.flixcart.com/fk-p-flap/844/140/image/d5183e7fe6543bd2.jpg?q=50",
    "https://cdn.zoutons.com/images/originals/blog/offerbanner2234_1656329162.png",
    "https://rukminim1.flixcart.com/fk-p-flap/844/140/image/d5183e7fe6543bd2.jpg?q=50",
    "https://cdn.zoutons.com/images/originals/blog/offerbanner2234_1656329162.png",
    "https://rukminim1.flixcart.com/fk-p-flap/844/140/image/d5183e7fe6543bd2.jpg?q=50",
    "https://cdn.zoutons.com/images/originals/blog/offerbanner2234_1656329162.png",
    "https://rukminim1.flixcart.com/fk-p-flap/844/140/image/d5183e7fe6543bd2.jpg?q=50",
    "https://cdn.zoutons.com/images/originals/blog/offerbanner2234_1656329162.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0),
      child: CarouselSlider.builder(
        itemCount: avatar.length,
        options: CarouselOptions(
          enlargeCenterPage: false,
          height: 200,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          reverse: false,
          aspectRatio: 5.0,
        ),
        itemBuilder: (context, i, id) {
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.white,
                  )),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  avatar[i],
                  width: 900,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onTap: () {
              var url = avatar[i];
              print(url.toString());
            },
          );
        },
      ),
    );
  }
}
