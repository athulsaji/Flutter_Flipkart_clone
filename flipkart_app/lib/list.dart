import 'package:flutter/material.dart';

class Listv extends StatefulWidget {
  const Listv({Key? key}) : super(key: key);

  @override
  State<Listv> createState() => _ListvState();
}

class _ListvState extends State<Listv> {
  List<String> avatar = [
    "https://rukminim1.flixcart.com/flap/128/128/image/71050627a56b4693.png?q=100",
    "https://rukminim1.flixcart.com/flap/128/128/image/f15c02bfeb02d15d.png?q=100",
    "https://rukminim1.flixcart.com/flap/128/128/image/29327f40e9c4d26b.png?q=100",
    "https://rukminim1.flixcart.com/flap/128/128/image/22fddf3c7da4c4f4.png?q=100",
    "https://rukminim1.flixcart.com/flap/128/128/image/c12afc017e6f24cb.png?q=100",
    "https://rukminim1.flixcart.com/flap/128/128/image/69c6589653afdb9a.png?q=100",
    "https://rukminim1.flixcart.com/flap/128/128/image/ab7e2b022a4587dd.jpg?q=100",
    "https://rukminim1.flixcart.com/flap/128/128/image/71050627a56b4693.png?q=100",
    "https://rukminim1.flixcart.com/flap/128/128/image/f15c02bfeb02d15d.png?q=100",
    "https://rukminim1.flixcart.com/flap/128/128/image/29327f40e9c4d26b.png?q=100",
    "https://rukminim1.flixcart.com/flap/128/128/image/22fddf3c7da4c4f4.png?q=100",
    "https://rukminim1.flixcart.com/flap/128/128/image/c12afc017e6f24cb.png?q=100",
    "https://rukminim1.flixcart.com/flap/128/128/image/69c6589653afdb9a.png?q=100",
  ];
  List<String> text = [
    "Travel",
    "Offer Zone",
    "Grocery",
    "Mobiles",
    "Fashion",
    "Electronics",
    "Home",
    "Travel",
    "Offer Zone",
    "Grocery",
    "Mobiles",
    "Fashion",
    "Electronics",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 100, // <-- you should put some value here
        child: Center(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: avatar.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  new CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(avatar[index]),
                    minRadius: 40,
                    maxRadius: 40,
                  ),
                  Text(text[index])
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
