import 'package:flutter/material.dart';

class ComAppbar extends AppBar {
  ComAppbar({Key? key})
      : super(
          key: key,
          backgroundColor: Color.fromARGB(255, 21, 123, 206),
          toolbarHeight: 80,
          title: Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // do something
                        },
                      ),
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ65buwZ6L99zb6qtZXNiuWI3OflsY7cNjRDz1414a60oGbkz3J3D_wXLOTGeMLR9ZOTRE&usqp=CAU',
                        height: 50,
                        width: 120,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 35,
                          width: 800,
                          color: Colors.white,
                          child: const TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText:
                                    "Search for products, Brands and More",
                                hintStyle: TextStyle(
                                    fontSize: 18.0,
                                    color: Color.fromARGB(255, 134, 133, 133)),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Text("Become a seller"),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Text("More"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: IconButton(
                          icon: const Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("Cart"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        );
}
